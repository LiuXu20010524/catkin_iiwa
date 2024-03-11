;; Auto-generated. Do not edit!


(when (boundp 'iiwa_tools::GetIK)
  (if (not (find-package "IIWA_TOOLS"))
    (make-package "IIWA_TOOLS"))
  (shadow 'GetIK (find-package "IIWA_TOOLS")))
(unless (find-package "IIWA_TOOLS::GETIK")
  (make-package "IIWA_TOOLS::GETIK"))
(unless (find-package "IIWA_TOOLS::GETIKREQUEST")
  (make-package "IIWA_TOOLS::GETIKREQUEST"))
(unless (find-package "IIWA_TOOLS::GETIKRESPONSE")
  (make-package "IIWA_TOOLS::GETIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iiwa_tools::GetIKRequest
  :super ros::object
  :slots (_poses _seed_angles _tolerance _max_iterations _slack _damping ))

(defmethod iiwa_tools::GetIKRequest
  (:init
   (&key
    ((:poses __poses) ())
    ((:seed_angles __seed_angles) (instance std_msgs::Float64MultiArray :init))
    ((:tolerance __tolerance) 0.0)
    ((:max_iterations __max_iterations) 0)
    ((:slack __slack) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:damping __damping) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _poses __poses)
   (setq _seed_angles __seed_angles)
   (setq _tolerance (float __tolerance))
   (setq _max_iterations (round __max_iterations))
   (setq _slack __slack)
   (setq _damping __damping)
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:seed_angles
   (&rest __seed_angles)
   (if (keywordp (car __seed_angles))
       (send* _seed_angles __seed_angles)
     (progn
       (if __seed_angles (setq _seed_angles (car __seed_angles)))
       _seed_angles)))
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:max_iterations
   (&optional __max_iterations)
   (if __max_iterations (setq _max_iterations __max_iterations)) _max_iterations)
  (:slack
   (&optional __slack)
   (if __slack (setq _slack __slack)) _slack)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; std_msgs/Float64MultiArray _seed_angles
    (send _seed_angles :serialization-length)
    ;; float32 _tolerance
    4
    ;; int32 _max_iterations
    4
    ;; float64[] _slack
    (* 8    (length _slack)) 4
    ;; float64[] _damping
    (* 8    (length _damping)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; std_msgs/Float64MultiArray _seed_angles
       (send _seed_angles :serialize s)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _max_iterations
       (write-long _max_iterations s)
     ;; float64[] _slack
     (write-long (length _slack) s)
     (dotimes (i (length _slack))
       (sys::poke (elt _slack i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _damping
     (write-long (length _damping) s)
     (dotimes (i (length _damping))
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Float64MultiArray _seed_angles
     (send _seed_angles :deserialize buf ptr-) (incf ptr- (send _seed_angles :serialization-length))
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _max_iterations
     (setq _max_iterations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _slack
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slack (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _slack i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _damping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _damping (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _damping i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass iiwa_tools::GetIKResponse
  :super ros::object
  :slots (_joints _accepted_tolerance _is_valid ))

(defmethod iiwa_tools::GetIKResponse
  (:init
   (&key
    ((:joints __joints) (instance std_msgs::Float64MultiArray :init))
    ((:accepted_tolerance __accepted_tolerance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:is_valid __is_valid) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _accepted_tolerance __accepted_tolerance)
   (setq _is_valid __is_valid)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:accepted_tolerance
   (&optional __accepted_tolerance)
   (if __accepted_tolerance (setq _accepted_tolerance __accepted_tolerance)) _accepted_tolerance)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _joints
    (send _joints :serialization-length)
    ;; float64[] _accepted_tolerance
    (* 8    (length _accepted_tolerance)) 4
    ;; bool[] _is_valid
    (* 1    (length _is_valid)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _joints
       (send _joints :serialize s)
     ;; float64[] _accepted_tolerance
     (write-long (length _accepted_tolerance) s)
     (dotimes (i (length _accepted_tolerance))
       (sys::poke (elt _accepted_tolerance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _is_valid
     (write-long (length _is_valid) s)
     (dotimes (i (length _is_valid))
       (if (elt _is_valid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _joints
     (send _joints :deserialize buf ptr-) (incf ptr- (send _joints :serialization-length))
   ;; float64[] _accepted_tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accepted_tolerance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accepted_tolerance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _is_valid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_valid (make-list n))
     (dotimes (i n)
     (setf (elt _is_valid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass iiwa_tools::GetIK
  :super ros::object
  :slots ())

(setf (get iiwa_tools::GetIK :md5sum-) "365217ef42b72f30ced052640d9bbe85")
(setf (get iiwa_tools::GetIK :datatype-) "iiwa_tools/GetIK")
(setf (get iiwa_tools::GetIK :request) iiwa_tools::GetIKRequest)
(setf (get iiwa_tools::GetIK :response) iiwa_tools::GetIKResponse)

(defmethod iiwa_tools::GetIKRequest
  (:response () (instance iiwa_tools::GetIKResponse :init)))

(setf (get iiwa_tools::GetIKRequest :md5sum-) "365217ef42b72f30ced052640d9bbe85")
(setf (get iiwa_tools::GetIKRequest :datatype-) "iiwa_tools/GetIKRequest")
(setf (get iiwa_tools::GetIKRequest :definition-)
      "# end-effector poses to request IK for
geometry_msgs/Pose[] poses

# (optional) initial joint position seeds for IK solver
# one for each pose
std_msgs/Float64MultiArray seed_angles

# (optional) optimization parameters
float32 tolerance
int32 max_iterations
float64[] slack
float64[] damping

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
---
# joints[i]      == joint angle solution for each pose_state[i]
std_msgs/Float64MultiArray joints
float64[] accepted_tolerance
bool[] is_valid

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

(setf (get iiwa_tools::GetIKResponse :md5sum-) "365217ef42b72f30ced052640d9bbe85")
(setf (get iiwa_tools::GetIKResponse :datatype-) "iiwa_tools/GetIKResponse")
(setf (get iiwa_tools::GetIKResponse :definition-)
      "# end-effector poses to request IK for
geometry_msgs/Pose[] poses

# (optional) initial joint position seeds for IK solver
# one for each pose
std_msgs/Float64MultiArray seed_angles

# (optional) optimization parameters
float32 tolerance
int32 max_iterations
float64[] slack
float64[] damping

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
---
# joints[i]      == joint angle solution for each pose_state[i]
std_msgs/Float64MultiArray joints
float64[] accepted_tolerance
bool[] is_valid

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



(provide :iiwa_tools/GetIK "365217ef42b72f30ced052640d9bbe85")


