; Auto-generated. Do not edit!


(cl:in-package iiwa_driver-msg)


;//! \htmlinclude AdditionalOutputs.msg.html

(cl:defclass <AdditionalOutputs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (external_torques
    :reader external_torques
    :initarg :external_torques
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (commanded_torques
    :reader commanded_torques
    :initarg :commanded_torques
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (commanded_positions
    :reader commanded_positions
    :initarg :commanded_positions
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass AdditionalOutputs (<AdditionalOutputs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdditionalOutputs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdditionalOutputs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_driver-msg:<AdditionalOutputs> is deprecated: use iiwa_driver-msg:AdditionalOutputs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AdditionalOutputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:header-val is deprecated.  Use iiwa_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'external_torques-val :lambda-list '(m))
(cl:defmethod external_torques-val ((m <AdditionalOutputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:external_torques-val is deprecated.  Use iiwa_driver-msg:external_torques instead.")
  (external_torques m))

(cl:ensure-generic-function 'commanded_torques-val :lambda-list '(m))
(cl:defmethod commanded_torques-val ((m <AdditionalOutputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:commanded_torques-val is deprecated.  Use iiwa_driver-msg:commanded_torques instead.")
  (commanded_torques m))

(cl:ensure-generic-function 'commanded_positions-val :lambda-list '(m))
(cl:defmethod commanded_positions-val ((m <AdditionalOutputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:commanded_positions-val is deprecated.  Use iiwa_driver-msg:commanded_positions instead.")
  (commanded_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdditionalOutputs>) ostream)
  "Serializes a message object of type '<AdditionalOutputs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'external_torques) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'commanded_torques) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'commanded_positions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdditionalOutputs>) istream)
  "Deserializes a message object of type '<AdditionalOutputs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'external_torques) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'commanded_torques) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'commanded_positions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdditionalOutputs>)))
  "Returns string type for a message object of type '<AdditionalOutputs>"
  "iiwa_driver/AdditionalOutputs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdditionalOutputs)))
  "Returns string type for a message object of type 'AdditionalOutputs"
  "iiwa_driver/AdditionalOutputs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdditionalOutputs>)))
  "Returns md5sum for a message object of type '<AdditionalOutputs>"
  "4c34331d511e328461cf6e053cfded8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdditionalOutputs)))
  "Returns md5sum for a message object of type 'AdditionalOutputs"
  "4c34331d511e328461cf6e053cfded8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdditionalOutputs>)))
  "Returns full string definition for message of type '<AdditionalOutputs>"
  (cl:format cl:nil "Header header~%std_msgs/Float64MultiArray external_torques~%std_msgs/Float64MultiArray commanded_torques~%std_msgs/Float64MultiArray commanded_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdditionalOutputs)))
  "Returns full string definition for message of type 'AdditionalOutputs"
  (cl:format cl:nil "Header header~%std_msgs/Float64MultiArray external_torques~%std_msgs/Float64MultiArray commanded_torques~%std_msgs/Float64MultiArray commanded_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdditionalOutputs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'external_torques))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'commanded_torques))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'commanded_positions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdditionalOutputs>))
  "Converts a ROS message object to a list"
  (cl:list 'AdditionalOutputs
    (cl:cons ':header (header msg))
    (cl:cons ':external_torques (external_torques msg))
    (cl:cons ':commanded_torques (commanded_torques msg))
    (cl:cons ':commanded_positions (commanded_positions msg))
))
