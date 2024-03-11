;; Auto-generated. Do not edit!


(when (boundp 'iiwa_tools::GetMassMatrix)
  (if (not (find-package "IIWA_TOOLS"))
    (make-package "IIWA_TOOLS"))
  (shadow 'GetMassMatrix (find-package "IIWA_TOOLS")))
(unless (find-package "IIWA_TOOLS::GETMASSMATRIX")
  (make-package "IIWA_TOOLS::GETMASSMATRIX"))
(unless (find-package "IIWA_TOOLS::GETMASSMATRIXREQUEST")
  (make-package "IIWA_TOOLS::GETMASSMATRIXREQUEST"))
(unless (find-package "IIWA_TOOLS::GETMASSMATRIXRESPONSE")
  (make-package "IIWA_TOOLS::GETMASSMATRIXRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iiwa_tools::GetMassMatrixRequest
  :super ros::object
  :slots (_joint_angles ))

(defmethod iiwa_tools::GetMassMatrixRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_angles
    (* 8    (length _joint_angles)) 4
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
   ;;
   self)
  )

(defclass iiwa_tools::GetMassMatrixResponse
  :super ros::object
  :slots (_mass_matrix ))

(defmethod iiwa_tools::GetMassMatrixResponse
  (:init
   (&key
    ((:mass_matrix __mass_matrix) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _mass_matrix __mass_matrix)
   self)
  (:mass_matrix
   (&rest __mass_matrix)
   (if (keywordp (car __mass_matrix))
       (send* _mass_matrix __mass_matrix)
     (progn
       (if __mass_matrix (setq _mass_matrix (car __mass_matrix)))
       _mass_matrix)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _mass_matrix
    (send _mass_matrix :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _mass_matrix
       (send _mass_matrix :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _mass_matrix
     (send _mass_matrix :deserialize buf ptr-) (incf ptr- (send _mass_matrix :serialization-length))
   ;;
   self)
  )

(defclass iiwa_tools::GetMassMatrix
  :super ros::object
  :slots ())

(setf (get iiwa_tools::GetMassMatrix :md5sum-) "c2241a2536933b0e13a23c6758fa7bfe")
(setf (get iiwa_tools::GetMassMatrix :datatype-) "iiwa_tools/GetMassMatrix")
(setf (get iiwa_tools::GetMassMatrix :request) iiwa_tools::GetMassMatrixRequest)
(setf (get iiwa_tools::GetMassMatrix :response) iiwa_tools::GetMassMatrixResponse)

(defmethod iiwa_tools::GetMassMatrixRequest
  (:response () (instance iiwa_tools::GetMassMatrixResponse :init)))

(setf (get iiwa_tools::GetMassMatrixRequest :md5sum-) "c2241a2536933b0e13a23c6758fa7bfe")
(setf (get iiwa_tools::GetMassMatrixRequest :datatype-) "iiwa_tools/GetMassMatrixRequest")
(setf (get iiwa_tools::GetMassMatrixRequest :definition-)
      "float64[] joint_angles
---
std_msgs/Float64MultiArray mass_matrix

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

(setf (get iiwa_tools::GetMassMatrixResponse :md5sum-) "c2241a2536933b0e13a23c6758fa7bfe")
(setf (get iiwa_tools::GetMassMatrixResponse :datatype-) "iiwa_tools/GetMassMatrixResponse")
(setf (get iiwa_tools::GetMassMatrixResponse :definition-)
      "float64[] joint_angles
---
std_msgs/Float64MultiArray mass_matrix

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



(provide :iiwa_tools/GetMassMatrix "c2241a2536933b0e13a23c6758fa7bfe")


