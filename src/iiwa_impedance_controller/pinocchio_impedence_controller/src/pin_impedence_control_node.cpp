#include "pinocchio_impedence_controller/pin_impedence_control.h"

int main(int argc, char **argv)
{
       ros::init(argc, argv, "pin_impedence_control_node");
       ros::NodeHandle nh;

       Eigen::Matrix<double,6,6> K_d;
       K_d << 200,0  ,0  ,0  ,0  ,0  ,
              0  ,200,0  ,0  ,0  ,0  ,
              0  ,0  ,200,0  ,0  ,0  ,
              0  ,0  ,0  ,60,0  ,0  ,
              0  ,0  ,0  ,0  ,60,0  ,
              0  ,0  ,0  ,0  ,0 ,60;
       Eigen::Matrix<double,6,6> D_d;
       D_d << 110 ,0  ,0  ,0  ,0  ,0  ,
              0  ,110 ,0  ,0  ,0  ,0  ,
              0  ,0  ,110 ,0  ,0  ,0  ,
              0  ,0  ,0  ,20 ,0  ,0  ,
              0  ,0  ,0  ,0  ,20 ,0  ,
              0  ,0  ,0  ,0  ,0  ,20 ;
       Impedance_controller impedance_controller(nh,K_d,D_d);
       Eigen::Vector<double,7> x_d = {0.52587,-0.010012,0.77986,0.707,0.0086202,0.70715,-0.0000155696519601}; 
       Eigen::Vector<double,6> x_d_dot = {0,0,0,0,0,0};
       Eigen::Vector<double,6> x_d_double_dot = {0,0,0,0,0,0};
       ROS_INFO("Main function called");
       impedance_controller.PID_joint_control();
       impedance_controller.main_control_func(x_d, x_d_dot, x_d_double_dot);
  return 0;
}