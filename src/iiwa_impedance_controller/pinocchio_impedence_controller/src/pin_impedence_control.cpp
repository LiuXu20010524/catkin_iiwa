#include "pinocchio_impedence_controller/pin_impedence_control.h"

Impedance_controller::Impedance_controller(ros::NodeHandle &nh,Eigen::Matrix<double,6,6> &K_d,Eigen::Matrix<double,6,6> &D_d):K_d_(K_d),D_d_(D_d)
{
    ROS_INFO("Impedance_controller constructor called");
    // Initialize the subscriber and publisher
    joint_state_sub_ = nh.subscribe<sensor_msgs::JointState>("/iiwa/joint_states", 1, &Impedance_controller::Sub_joint_state_callback,this);
    cmd_pub_ = nh.advertise<std_msgs::Float64MultiArray>("/iiwa/TorqueController/command", 5);

    // load the urdf file to pinocchio model
    pin::urdf::buildModel(urdf_filename,model_);
    data_ = pin::Data(model_);
    end_frame_id_ = model_.getFrameId("iiwa_link_ee"); // Get the end-effector frame index

    // Initialize the cmd_msg_ size
    cmd_msg_.data.resize(7,0.0);

    // Initialize the AsyncSpinner
    spinner_ = new ros::AsyncSpinner(5);
    spinner_->start();
}

Impedance_controller::~Impedance_controller()
{
    ROS_INFO("Impedance_controller destructor called");
    delete spinner_;
}

void Impedance_controller::Sub_joint_state_callback(const sensor_msgs::JointState::ConstPtr &msg)
{
    (sub_mark_== true )? :sub_mark_ = true;
    joint_state_ = *msg;
}

void Impedance_controller::cmd_pub_fun()
{
    cmd_msg_.data.clear();
    cmd_msg_.data = {q_command_(0),q_command_(1),q_command_(2),q_command_(3),q_command_(4),q_command_(5),q_command_(6)};
    cmd_pub_.publish(cmd_msg_);
}

void Impedance_controller::pinocchio_dynamic_model(Eigen::Vector<double,7> &q,Eigen::Vector<double,7> &q_dot)
{
    pin::crba(model_,data_,q); // Compute the inertia matrix
    pin_M_ = (data_.M).selfadjointView<Eigen::Upper>(); // Get the inertia matrix
    pin::computeCoriolisMatrix(model_,data_,q,q_dot); // Compute the coriolis matrix
    pin_C_ = data_.C; // Get the coriolis vector
    pin::computeGeneralizedGravity(model_,data_,q); // Compute the gravity vector
    pin_G_ = data_.g; // Get the gravity vector
}

void Impedance_controller::pinocchio_jociobian(Eigen::Vector<double,7> &q)
{
    pin_J_.setZero(); // Initialize the jacobian matrix
    pin_J_dot_.setZero(); // Initialize the jacobian dot matrix
    pin::computeFrameJacobian(model_,data_,q,end_frame_id_,pin::WORLD,pin_J_); // Compute the jacobian matrix
    pin::getFrameJacobianTimeVariation(model_,data_,end_frame_id_,pin::WORLD,pin_J_dot_); // Compute the jacobian dot matrix
}

void Impedance_controller::compute_jociobian_inverse()
{
    static Eigen::Matrix<double,7,6> singular_matrix;
    singular_matrix = Eigen::Matrix<double,7,6>::Zero();
    static Eigen::Matrix<double,7,7> V;
    V = Eigen::Matrix<double,7,7>::Zero();
    Eigen::JacobiSVD<Eigen::MatrixXd> svd(pin_J_,Eigen::ComputeThinU | Eigen::ComputeThinV); // Compute the singular value decomposition
    singular_matrix.block(0,0,6,6) = (svd.singularValues().asDiagonal()).inverse();
    V.block(0,0,7,6) = svd.matrixV();
    pin_J_inverse_ = V * singular_matrix * (svd.matrixU().transpose()); // Compute the inverse of the jacobian matrix
}

void Impedance_controller::compute_state_error(Eigen::Vector<double,7> &q,Eigen::Vector<double,7> &target_)
{
    static Eigen::Quaternion<double> target_quaternion;
    target_quaternion = Eigen::Quaternion<double>(target_[3],target_[4],target_[5],target_[6]);
    pin::forwardKinematics(model_,data_,q); // Compute the forward kinematics
    const auto& end_effector_pose = data_.oMf[end_frame_id_];
    static Eigen::Vector<double,3> position; // Get the position of the end-effector
    position = end_effector_pose.translation();
    static Eigen::Quaternion<double> quaternion;
    quaternion = Eigen::Quaternion<double>(end_effector_pose.rotation());
    /*
    Note:   The internal representation order of quaternions in the Eigen library is 
            [x, y, z, w], where w is the real part and x, y, z constitute the imaginary part 
    */
    state_error_.head(3) = position - target_.head(3); // Compute the position error
    state_error_.tail(3) = (quaternion* target_quaternion.inverse()).vec(); // Compute the orientation error
}

void Impedance_controller::compute_state_error_dot(Eigen::Vector<double,7> &q_dot,Eigen::Vector<double,6> &target_)
{
    state_error_dot_ = pin_J_*q_dot - target_; // Compute the state error dot
}

void Impedance_controller::compute_new_dynamic_matrix()
{
    new_M_ = pin_J_inverse_.transpose()*pin_M_*pin_J_inverse_; // Compute the new inertia matrix
    new_C_ = pin_J_inverse_.transpose()*(pin_C_ - pin_M_*pin_J_inverse_*pin_J_dot_)*pin_J_inverse_; // Compute the new coriolis matrix
}

void Impedance_controller::compute_torque_command(Eigen::Vector<double,6> &x_d_double_dot , Eigen::Vector<double,6> &x_d_dot)
{
    // Compute the torque command
    /*
    Note:   The iiwa_ros package compensates for the gravity term by default, so the gravity term is discarded when calculating the control moments. 
            If you don't want to compensate gravity, comment out "<robotSimType>iiwa_gazebo/GravityCompensationHWSim</robotSimType>" in "iiwa.gazebo.xacro" 
            in "urdf" folder of "iiwa_description" package.
    */
    // q_command_ = pin_G_ + pin_J_.transpose()*(new_M_ * x_d_double_dot + new_C_ * x_d_dot -K_d_ * state_error_ - D_d_ * state_error_dot_);
    q_command_ = pin_J_.transpose()*(new_M_ * x_d_double_dot + new_C_ * x_d_dot -K_d_ * state_error_ - D_d_ * state_error_dot_);
}

void Impedance_controller::main_control_func(Eigen::Vector<double,7> &x_d,Eigen::Vector<double,6> &x_d_dot,Eigen::Vector<double,6> &x_d_double_dot)
{
    ROS_INFO("Impedence Control Start"); 
    ros::Time time1;
    ros::Time time2;
    Eigen::Vector<double,7> q;
    Eigen::Vector<double,7> q_dot;
    while(sub_mark_ == false) { ros::Duration(0.0001).sleep(); }// Wait for the joint state subscriber to get the data
    while(ros::ok() && sub_mark_ == true)
    {
        time1 = ros::Time::now();
        q << joint_state_.position[0],joint_state_.position[1],joint_state_.position[2],joint_state_.position[3],\
        joint_state_.position[4],joint_state_.position[5],joint_state_.position[6];
        q_dot << joint_state_.velocity[0],joint_state_.velocity[1],joint_state_.velocity[2],joint_state_.velocity[3],\
        joint_state_.velocity[4],joint_state_.velocity[5],joint_state_.velocity[6];

        Impedance_controller::pinocchio_dynamic_model(q,q_dot);
        Impedance_controller::pinocchio_jociobian(q);
        Impedance_controller::compute_jociobian_inverse();
        Impedance_controller::compute_state_error(q,x_d);
        Impedance_controller::compute_state_error_dot(q_dot,x_d_dot);
        Impedance_controller::compute_new_dynamic_matrix();
        Impedance_controller::compute_torque_command(x_d_double_dot , x_d_dot);
        Impedance_controller::cmd_pub_fun();
        time2 = ros::Time::now();
        // ROS_INFO("Time: %f",(time2-time1).toSec());
    }
}

void Impedance_controller::PID_joint_control()
{
    Eigen::Vector<double,7> q, q_dot;
    Eigen::Vector<double,7> k_p = {500,500,200,200,10,10,10};
    Eigen::Vector<double,7> k_d = {100,100,20,20,5,5,5};
    ros::Rate rate(500);
    float time = 0;
    double x, x_dot, x_double_dot;
    Eigen::Vector<double,7> q_aim, q_dot_aim, q_double_dot_aim;
    while(sub_mark_ == false) { ros::Duration(0.0001).sleep(); } // Wait for the joint state subscriber to get the data
    while(!((-pi/2-0.004)< q[3] && q[3] < (-pi/2+0.004) && q_dot[3] < 0.001 && q_dot[3] > -0.001))
    {
        // define the desired trajectory, a simple sine wave of the joint 4
        if(time < pi/2)
        {
            x = (pi/4)*sin(2*time+pi/2) - pi/4;
            x_dot = (pi/4)*2*cos(2*time+pi/2);
            x_double_dot = (pi/4)*2*(-2)*sin(2*time+pi/2);
        }
        else
        {
            x = (pi/4)*sin(2*pi/2+pi/2) - pi/4;
            x_dot = 0;
            x_double_dot = 0;
        }
        q_aim << 0,0,0,x,0,0,0;
        q_dot_aim << 0,0,0,x_dot,0,0,0;
        q_double_dot_aim << 0,0,0,x_double_dot,0,0,0;

        q << joint_state_.position[0],joint_state_.position[1],joint_state_.position[2],joint_state_.position[3],\
        joint_state_.position[4],joint_state_.position[5],joint_state_.position[6];
        q_dot << joint_state_.velocity[0],joint_state_.velocity[1],joint_state_.velocity[2],joint_state_.velocity[3],\
        joint_state_.velocity[4],joint_state_.velocity[5],joint_state_.velocity[6];

        Impedance_controller::pinocchio_dynamic_model(q,q_dot);
        // compute the pd control command
        q_command_ = pin_M_* q_double_dot_aim + pin_C_* q_dot + k_p.cwiseProduct(q_aim - q) + k_d.cwiseProduct(q_dot_aim - q_dot);
        Impedance_controller::cmd_pub_fun();
        rate.sleep();
        time += 0.002;
    }
}