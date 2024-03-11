;; Auto-generated. Do not edit!


(when (boundp 'iiwa_tools::GetJacobians)
  (if (not (find-package "IIWA_TOOLS"))
    (make-package "IIWA_TOOLS"))
  (shadow 'GetJacobians (find-package "IIWA_TOOLS")))
(unless (find-package "IIWA_TOOLS::GETJACOBIANS")
  (make-package "IIWA_TOOLS::GETJACOBIANS"))
(unless (find-package "IIWA_TOOLS::GETJACOBIANSREQUEST")
  (make-package "IIWA_TOOLS::GETJACOBIANSREQUEST"))
(unless (find-package "IIWA_TOOLS::GETJACOBIANSRESPONSE")
  (make-package "IIWA_TOOLS::GETJACOBIANSRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iiwa_tools::GetJacobiansRequest
  :super ros::object
  :slots (_joint_angles _joint_velocities ))

(defmethod iiwa_tools::GetJacobiansRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_velocities __joint_velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _joint_velocities __joint_velocities)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:joint_velocities
   (&optional __joint_velocities)
   (if __joint_velocities (setq _joint_velocities __joint_velocities)) _joint_velocities)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_angles
    (* 8    (length _joint_angles)) 4
    ;; float64[] _joint_velocities
    (* 8    (length _joint_velocities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_velocities
     (write-long (length _joint_velocities) s)
     (dotimes (i (length _joint_velocities))
       (sys::poke (elt _joint_velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass iiwa_tools::GetJacobiansResponse
  :super ros::object
  :slots (_jacobian _jacobian_deriv ))

(defmethod iiwa_tools::GetJacobiansResponse
  (:init
   (&key
    ((:jacobian __jacobian) (instance std_msgs::Float64MultiArray :init))
    ((:jacobian_deriv __jacobian_deriv) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _jacobian __jacobian)
   (setq _jacobian_deriv __jacobian_deriv)
   self)
  (:jacobian
   (&rest __jacobian)
   (if (keywordp (car __jacobian))
       (send* _jacobian __jacobian)
     (progn
       (if __jacobian (setq _jacobian (car __jacobian)))
       _jacobian)))
  (:jacobian_deriv
   (&rest __jacobian_deriv)
   (if (keywordp (car __jacobian_deriv))
       (send* _jacobian_deriv __jacobian_deriv)
     (progn
       (if __jacobian_deriv (setq _jacobian_deriv (car __jacobian_deriv)))
       _jacobian_deriv)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _jacobian
    (send _jacobian :serialization-length)
    ;; std_msgs/Float64MultiArray _jacobian_deriv
    (send _jacobian_deriv :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _jacobian
       (send _jacobian :serialize s)
     ;; std_msgs/Float64MultiArray _jacobian_deriv
       (send _jacobian_deriv :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _jacobian
     (send _jacobian :deserialize buf ptr-) (incf ptr- (send _jacobian :serialization-length))
   ;; std_msgs/Float64MultiArray _jacobian_deriv
     (send _jacobian_deriv :deserialize buf ptr-) (incf ptr- (send _jacobian_deriv :serialization-length))
   ;;
   self)
  )

(defclass iiwa_tools::GetJacobians
  :super ros::object
  :slots ())

(setf (get iiwa_tools::GetJacobians :md5sum-) "7cd7b210d0e70924367a510d05e781d4")
(setf (get iiwa_tools::GetJacobians :datatype-) "iiwa_tools/GetJacobians")
(setf (get iiwa_tools::GetJacobians :request) iiwa_tools::GetJacobiansRequest)
(setf (get iiwa_tools::GetJacobians :response) iiwa_tools::GetJacobiansResponse)

(defmethod iiwa_tools::GetJacobiansRequest
  (:response () (instance iiwa_tools::GetJacobiansResponse :init)))

(setf (get iiwa_tools::GetJacobiansRequest :md5sum-) "7cd7b210d0e70924367a510d05e781d4")
(setf (get iiwa_tools::GetJacobiansRequest :datatype-) "iiwa_tools/GetJacobiansRequest")
(setf (get iiwa_tools::GetJacobiansRequest :definition-)
      "float64[] joint_angles
float64[] joint_velocities
---
std_msgs/Float64MultiArray jacobian
std_msgs/Float64MultiArray jacobian_deriv

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get iiwa_tools::GetJacobiansResponse :md5sum-) "7cd7b210d0e70924367a510d05e781d4")
(setf (get iiwa_tools::GetJacobiansResponse :datatype-) "iiwa_tools/GetJacobiansResponse")
(setf (get iiwa_tools::GetJacobiansResponse :definition-)
      "float64[] joint_angles
float64[] joint_velocities
---
std_msgs/Float64MultiArray jacobian
std_msgs/Float64MultiArray jacobian_deriv

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :iiwa_tools/GetJacobians "7cd7b210d0e70924367a510d05e781d4")


