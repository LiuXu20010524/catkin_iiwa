; Auto-generated. Do not edit!


(cl:in-package iiwa_driver-msg)


;//! \htmlinclude FRIState.msg.html

(cl:defclass <FRIState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (connection_quality
    :reader connection_quality
    :initarg :connection_quality
    :type iiwa_driver-msg:ConnectionQuality
    :initform (cl:make-instance 'iiwa_driver-msg:ConnectionQuality)))
)

(cl:defclass FRIState (<FRIState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FRIState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FRIState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_driver-msg:<FRIState> is deprecated: use iiwa_driver-msg:FRIState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FRIState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:header-val is deprecated.  Use iiwa_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'connection_quality-val :lambda-list '(m))
(cl:defmethod connection_quality-val ((m <FRIState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:connection_quality-val is deprecated.  Use iiwa_driver-msg:connection_quality instead.")
  (connection_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FRIState>) ostream)
  "Serializes a message object of type '<FRIState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'connection_quality) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FRIState>) istream)
  "Deserializes a message object of type '<FRIState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'connection_quality) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FRIState>)))
  "Returns string type for a message object of type '<FRIState>"
  "iiwa_driver/FRIState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FRIState)))
  "Returns string type for a message object of type 'FRIState"
  "iiwa_driver/FRIState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FRIState>)))
  "Returns md5sum for a message object of type '<FRIState>"
  "dfb94c18d53e239b6ba45eb1dfbb3c46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FRIState)))
  "Returns md5sum for a message object of type 'FRIState"
  "dfb94c18d53e239b6ba45eb1dfbb3c46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FRIState>)))
  "Returns full string definition for message of type '<FRIState>"
  (cl:format cl:nil "Header header~%~%ConnectionQuality connection_quality~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iiwa_driver/ConnectionQuality~%int8 connection_quality~%int8 POOR = 0       # poor connection quality~%int8 FAIR = 1       # connection quality insufficient for command mode~%int8 GOOD = 2       # connection quality sufficient for command mode~%int8 EXCELLENT = 3  # excellent connection quality~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FRIState)))
  "Returns full string definition for message of type 'FRIState"
  (cl:format cl:nil "Header header~%~%ConnectionQuality connection_quality~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iiwa_driver/ConnectionQuality~%int8 connection_quality~%int8 POOR = 0       # poor connection quality~%int8 FAIR = 1       # connection quality insufficient for command mode~%int8 GOOD = 2       # connection quality sufficient for command mode~%int8 EXCELLENT = 3  # excellent connection quality~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FRIState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'connection_quality))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FRIState>))
  "Converts a ROS message object to a list"
  (cl:list 'FRIState
    (cl:cons ':header (header msg))
    (cl:cons ':connection_quality (connection_quality msg))
))
