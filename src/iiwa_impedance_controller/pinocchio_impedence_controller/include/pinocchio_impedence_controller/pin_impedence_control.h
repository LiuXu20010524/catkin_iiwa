#ifndef PINIMPEDENCECONTROL_H   
#define PINIMPEDENCECONTROL_H

// ---  Standard  --- //
#include <iostream>
#include <vector>
#include <cmath>

// ---  Pinocchio  --- //
#include <pinocchio/parsers/urdf.hpp> //Note:The pinocchio declaration needs to precede the ros declaration.
#include <pinocchio/multibody/model.hpp>
#include <pinocchio/multibody/data.hpp>
#include <pinocchio/algorithm/crba.hpp>
#include <pinocchio/algorithm/rnea.hpp>
#include <pinocchio/algorithm/frames.hpp>
#include <pinocchio/algorithm/jacobian.hpp>
#include <pinocchio/algorithm/kinematics.hpp>

// ---  Eigen  --- //
#include <Eigen/Dense>

// ---  ROS  --- //
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <std_msgs/Float64MultiArray.h>

// ---  Constant Value  --- //
#define pi 3.14159265358979323846

// ---  Namespace  --- //
namespace pin = pinocchio;

// ---  Class  --- //
class Impedance_controller
{
private:
// ---  VARIABLES  --- //
    // ---  Command  --- //
    Eigen::Vector<double,7> q_command_; // Torque Command
    ros::AsyncSpinner* spinner_; // AsyncSpinner

public:
// ---  VARIABLES  --- //
    // ---  ROS Sub Msgs  --- //
    sensor_msgs::JointState joint_state_;
    std_msgs::Float64MultiArray cmd_msg_;
    // ---  Pinocchio Variables  --- //
    pin::Model model_; // Model of the robot
    std::string urdf_filename = "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_description/urdf/iiwa14.urdf"; // URDF file name
    Eigen::Matrix<double,7,7> pin_M_; // Inertia matrix
    Eigen::Matrix<double,7,7> pin_C_; // Coriolis matrix
    Eigen::Vector<double,7> pin_G_; // Gravity vector
    Eigen::Matrix<double,6,7> pin_J_; // Jacobian matrix
    Eigen::Matrix<double,7,6> pin_J_inverse_; // Inverse of the jacobian matrix
    Eigen::Matrix<double,6,7> pin_J_dot_; // Jacobian dot matrix
    pin::Data data_; // Data of the robot
    pin::FrameIndex end_frame_id_; // Frame index of the end-effector
    // ---  State Error  --- //
    Eigen::Vector<double,6> state_error_; // State error
    Eigen::Vector<double,6> state_error_dot_; // State error dot
    // ---  Impedence Parameters  --- //
    Eigen::Matrix<double,6,6> K_d_; // Stiffness matrix
    Eigen::Matrix<double,6,6> D_d_; // Damping matrix
    // ---  New Dynamic Matrix  --- //
    Eigen::Matrix<double,6,6> new_M_; // New inertia matrix
    Eigen::Matrix<double,6,6> new_C_; // New coriolis matrix
    // ---  subscribe mark  --- //
    bool sub_mark_ = false; // Subscribe mark


// ---  OBJECTS  --- //
    // ---  ROS Sub --- //
    ros::Subscriber joint_state_sub_;
    ros::Publisher cmd_pub_;

// ---  FUNCTIONS  --- //
    Impedance_controller(ros::NodeHandle &nh,Eigen::Matrix<double,6,6> &K_d_,Eigen::Matrix<double,6,6> &D_d_) ; // Constructor
    ~Impedance_controller(); // Destructor
    void Sub_joint_state_callback(const sensor_msgs::JointState::ConstPtr &msg); // Callback function for joint state subscriber
    void cmd_pub_fun(); // Publish the command message
    void pinocchio_dynamic_model(Eigen::Vector<double,7> &q,Eigen::Vector<double,7> &q_dot); // Calculate the dynamic model of the robot
    void pinocchio_jociobian(Eigen::Vector<double,7> &q); // Calculate the jacobian and jacobian_dot of the robot
    void compute_jociobian_inverse(); // Compute the inverse of the jacobian matrix
    void compute_state_error(Eigen::Vector<double,7> &q,Eigen::Vector<double,7> &target_); // Compute the state error
    /*
    Note:   The first three elements of target_ are the position target, and the last four elements are the quaternion
            target, make surethe quaternion is normalized before using it. And the internal representation order of
            quaternions in the Eigen library is [x, y, z, w], where w is the real part and x, y, z constitute the imaginary part
    */
    void compute_state_error_dot(Eigen::Vector<double,7> &q_dot,Eigen::Vector<double,6> &target_); // Compute the state error dot
    void compute_new_dynamic_matrix(); // Compute the new dynamic matrix
    void compute_torque_command(Eigen::Vector<double,6> &x_d_double_dot , Eigen::Vector<double,6> &x_d_dot); // Compute the torque command
    void main_control_func(Eigen::Vector<double,7> &x_d,Eigen::Vector<double,6> &x_d_dot,Eigen::Vector<double,6> &x_d_double_dot); // Main control function

    // PID Control in Joint Space
    void PID_joint_control();
    // Note:   The PID control is only used to control the robot away from the initial position(singular position). 
};

#endif