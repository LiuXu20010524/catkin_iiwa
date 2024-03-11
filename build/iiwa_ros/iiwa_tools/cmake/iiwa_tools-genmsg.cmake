# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iiwa_tools: 0 messages, 6 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iiwa_tools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" NAME_WE)
add_custom_target(_iiwa_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iiwa_tools" "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" "std_msgs/Float64MultiArray:std_msgs/MultiArrayDimension:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" NAME_WE)
add_custom_target(_iiwa_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iiwa_tools" "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" "std_msgs/Float64MultiArray:std_msgs/MultiArrayDimension:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" NAME_WE)
add_custom_target(_iiwa_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iiwa_tools" "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" "std_msgs/MultiArrayLayout:std_msgs/MultiArrayDimension:std_msgs/Float64MultiArray"
)

get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" NAME_WE)
add_custom_target(_iiwa_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iiwa_tools" "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" "std_msgs/MultiArrayLayout:std_msgs/MultiArrayDimension:std_msgs/Float64MultiArray"
)

get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" NAME_WE)
add_custom_target(_iiwa_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iiwa_tools" "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" ""
)

get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" NAME_WE)
add_custom_target(_iiwa_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iiwa_tools" "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" "std_msgs/MultiArrayLayout:std_msgs/MultiArrayDimension:std_msgs/Float64MultiArray"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_cpp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_cpp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_cpp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_cpp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_cpp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
)

### Generating Module File
_generate_module_cpp(iiwa_tools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iiwa_tools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iiwa_tools_generate_messages iiwa_tools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_cpp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_cpp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_cpp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_cpp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_cpp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_cpp _iiwa_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iiwa_tools_gencpp)
add_dependencies(iiwa_tools_gencpp iiwa_tools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iiwa_tools_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
)
_generate_srv_eus(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
)
_generate_srv_eus(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
)
_generate_srv_eus(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
)
_generate_srv_eus(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
)
_generate_srv_eus(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
)

### Generating Module File
_generate_module_eus(iiwa_tools
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iiwa_tools_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iiwa_tools_generate_messages iiwa_tools_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_eus _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_eus _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_eus _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_eus _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_eus _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_eus _iiwa_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iiwa_tools_geneus)
add_dependencies(iiwa_tools_geneus iiwa_tools_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iiwa_tools_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_lisp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_lisp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_lisp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_lisp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
)
_generate_srv_lisp(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
)

### Generating Module File
_generate_module_lisp(iiwa_tools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iiwa_tools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iiwa_tools_generate_messages iiwa_tools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_lisp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_lisp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_lisp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_lisp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_lisp _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_lisp _iiwa_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iiwa_tools_genlisp)
add_dependencies(iiwa_tools_genlisp iiwa_tools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iiwa_tools_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
)
_generate_srv_nodejs(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
)
_generate_srv_nodejs(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
)
_generate_srv_nodejs(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
)
_generate_srv_nodejs(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
)
_generate_srv_nodejs(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
)

### Generating Module File
_generate_module_nodejs(iiwa_tools
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iiwa_tools_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iiwa_tools_generate_messages iiwa_tools_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_nodejs _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_nodejs _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_nodejs _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_nodejs _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_nodejs _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_nodejs _iiwa_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iiwa_tools_gennodejs)
add_dependencies(iiwa_tools_gennodejs iiwa_tools_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iiwa_tools_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
)
_generate_srv_py(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
)
_generate_srv_py(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
)
_generate_srv_py(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
)
_generate_srv_py(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
)
_generate_srv_py(iiwa_tools
  "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
)

### Generating Module File
_generate_module_py(iiwa_tools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iiwa_tools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iiwa_tools_generate_messages iiwa_tools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetFK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_py _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetIK.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_py _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobian.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_py _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetJacobians.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_py _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetGravity.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_py _iiwa_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/Documents/ROS/catkin_iiwa/src/iiwa_ros/iiwa_tools/srv/GetMassMatrix.srv" NAME_WE)
add_dependencies(iiwa_tools_generate_messages_py _iiwa_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iiwa_tools_genpy)
add_dependencies(iiwa_tools_genpy iiwa_tools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iiwa_tools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iiwa_tools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iiwa_tools_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(iiwa_tools_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(iiwa_tools_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iiwa_tools
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iiwa_tools_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(iiwa_tools_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(iiwa_tools_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iiwa_tools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iiwa_tools_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(iiwa_tools_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(iiwa_tools_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iiwa_tools
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iiwa_tools_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(iiwa_tools_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(iiwa_tools_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools)
  install(CODE "execute_process(COMMAND \"/home/liu_xu/anaconda3/envs/ros_env/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iiwa_tools
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iiwa_tools_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(iiwa_tools_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(iiwa_tools_generate_messages_py geometry_msgs_generate_messages_py)
endif()
