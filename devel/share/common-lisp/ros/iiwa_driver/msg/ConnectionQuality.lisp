; Auto-generated. Do not edit!


(cl:in-package iiwa_driver-msg)


;//! \htmlinclude ConnectionQuality.msg.html

(cl:defclass <ConnectionQuality> (roslisp-msg-protocol:ros-message)
  ((connection_quality
    :reader connection_quality
    :initarg :connection_quality
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ConnectionQuality (<ConnectionQuality>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionQuality>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionQuality)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_driver-msg:<ConnectionQuality> is deprecated: use iiwa_driver-msg:ConnectionQuality instead.")))

(cl:ensure-generic-function 'connection_quality-val :lambda-list '(m))
(cl:defmethod connection_quality-val ((m <ConnectionQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_driver-msg:connection_quality-val is deprecated.  Use iiwa_driver-msg:connection_quality instead.")
  (connection_quality m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectionQuality>)))
    "Constants for message type '<ConnectionQuality>"
  '((:POOR . 0)
    (:FAIR . 1)
    (:GOOD . 2)
    (:EXCELLENT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectionQuality)))
    "Constants for message type 'ConnectionQuality"
  '((:POOR . 0)
    (:FAIR . 1)
    (:GOOD . 2)
    (:EXCELLENT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionQuality>) ostream)
  "Serializes a message object of type '<ConnectionQuality>"
  (cl:let* ((signed (cl:slot-value msg 'connection_quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionQuality>) istream)
  "Deserializes a message object of type '<ConnectionQuality>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'connection_quality) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionQuality>)))
  "Returns string type for a message object of type '<ConnectionQuality>"
  "iiwa_driver/ConnectionQuality")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionQuality)))
  "Returns string type for a message object of type 'ConnectionQuality"
  "iiwa_driver/ConnectionQuality")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionQuality>)))
  "Returns md5sum for a message object of type '<ConnectionQuality>"
  "36b844413f3c0379a097d5209770c460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionQuality)))
  "Returns md5sum for a message object of type 'ConnectionQuality"
  "36b844413f3c0379a097d5209770c460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionQuality>)))
  "Returns full string definition for message of type '<ConnectionQuality>"
  (cl:format cl:nil "int8 connection_quality~%int8 POOR = 0       # poor connection quality~%int8 FAIR = 1       # connection quality insufficient for command mode~%int8 GOOD = 2       # connection quality sufficient for command mode~%int8 EXCELLENT = 3  # excellent connection quality~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionQuality)))
  "Returns full string definition for message of type 'ConnectionQuality"
  (cl:format cl:nil "int8 connection_quality~%int8 POOR = 0       # poor connection quality~%int8 FAIR = 1       # connection quality insufficient for command mode~%int8 GOOD = 2       # connection quality sufficient for command mode~%int8 EXCELLENT = 3  # excellent connection quality~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionQuality>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionQuality>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionQuality
    (cl:cons ':connection_quality (connection_quality msg))
))
