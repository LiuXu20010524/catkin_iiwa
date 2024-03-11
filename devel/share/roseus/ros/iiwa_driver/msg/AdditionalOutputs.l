;; Auto-generated. Do not edit!


(when (boundp 'iiwa_driver::AdditionalOutputs)
  (if (not (find-package "IIWA_DRIVER"))
    (make-package "IIWA_DRIVER"))
  (shadow 'AdditionalOutputs (find-package "IIWA_DRIVER")))
(unless (find-package "IIWA_DRIVER::ADDITIONALOUTPUTS")
  (make-package "IIWA_DRIVER::ADDITIONALOUTPUTS"))

(in-package "ROS")
;;//! \htmlinclude AdditionalOutputs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iiwa_driver::AdditionalOutputs
  :super ros::object
  :slots (_header _external_torques _commanded_torques _commanded_positions ))

(defmethod iiwa_driver::AdditionalOutputs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:external_torques __external_torques) (instance std_msgs::Float64MultiArray :init))
    ((:commanded_torques __commanded_torques) (instance std_msgs::Float64MultiArray :init))
    ((:commanded_positions __commanded_positions) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _external_torques __external_torques)
   (setq _commanded_torques __commanded_torques)
   (setq _commanded_positions __commanded_positions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:external_torques
   (&rest __external_torques)
   (if (keywordp (car __external_torques))
       (send* _external_torques __external_torques)
     (progn
       (if __external_torques (setq _external_torques (car __external_torques)))
       _external_torques)))
  (:commanded_torques
   (&rest __commanded_torques)
   (if (keywordp (car __commanded_torques))
       (send* _commanded_torques __commanded_torques)
     (progn
       (if __commanded_torques (setq _commanded_torques (car __commanded_torques)))
       _commanded_torques)))
  (:commanded_positions
   (&rest __commanded_positions)
   (if (keywordp (car __commanded_positions))
       (send* _commanded_positions __commanded_positions)
     (progn
       (if __commanded_positions (setq _commanded_positions (car __commanded_positions)))
       _commanded_positions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64MultiArray _external_torques
    (send _external_torques :serialization-length)
    ;; std_msgs/Float64MultiArray _commanded_torques
    (send _commanded_torques :serialization-length)
    ;; std_msgs/Float64MultiArray _commanded_positions
    (send _commanded_positions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64MultiArray _external_torques
       (send _external_torques :serialize s)
     ;; std_msgs/Float64MultiArray _commanded_torques
       (send _commanded_torques :serialize s)
     ;; std_msgs/Float64MultiArray _commanded_positions
       (send _commanded_positions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64MultiArray _external_torques
     (send _external_torques :deserialize buf ptr-) (incf ptr- (send _external_torques :serialization-length))
   ;; std_msgs/Float64MultiArray _commanded_torques
     (send _commanded_torques :deserialize buf ptr-) (incf ptr- (send _commanded_torques :serialization-length))
   ;; std_msgs/Float64MultiArray _commanded_positions
     (send _commanded_positions :deserialize buf ptr-) (incf ptr- (send _commanded_positions :serialization-length))
   ;;
   self)
  )

(setf (get iiwa_driver::AdditionalOutputs :md5sum-) "4c34331d511e328461cf6e053cfded8c")
(setf (get iiwa_driver::AdditionalOutputs :datatype-) "iiwa_driver/AdditionalOutputs")
(setf (get iiwa_driver::AdditionalOutputs :definition-)
      "Header header
std_msgs/Float64MultiArray external_torques
std_msgs/Float64MultiArray commanded_torques
std_msgs/Float64MultiArray commanded_positions
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
uint32 stride  # stride of given dimension
")



(provide :iiwa_driver/AdditionalOutputs "4c34331d511e328461cf6e053cfded8c")


