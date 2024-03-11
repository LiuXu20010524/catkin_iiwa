; Auto-generated. Do not edit!


(cl:in-package iiwa_tools-srv)


;//! \htmlinclude GetJacobian-request.msg.html

(cl:defclass <GetJacobian-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_velocities
    :reader joint_velocities
    :initarg :joint_velocities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetJacobian-request (<GetJacobian-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJacobian-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJacobian-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_tools-srv:<GetJacobian-request> is deprecated: use iiwa_tools-srv:GetJacobian-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <GetJacobian-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_tools-srv:joint_angles-val is deprecated.  Use iiwa_tools-srv:joint_angles instead.")
  (joint_angles m))

(cl:ensure-generic-function 'joint_velocities-val :lambda-list '(m))
(cl:defmethod joint_velocities-val ((m <GetJacobian-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_tools-srv:joint_velocities-val is deprecated.  Use iiwa_tools-srv:joint_velocities instead.")
  (joint_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJacobian-request>) ostream)
  "Serializes a message object of type '<GetJacobian-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_velocities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_velocities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJacobian-request>) istream)
  "Deserializes a message object of type '<GetJacobian-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_velocities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_velocities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJacobian-request>)))
  "Returns string type for a service object of type '<GetJacobian-request>"
  "iiwa_tools/GetJacobianRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJacobian-request)))
  "Returns string type for a service object of type 'GetJacobian-request"
  "iiwa_tools/GetJacobianRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJacobian-request>)))
  "Returns md5sum for a message object of type '<GetJacobian-request>"
  "4ac689c026bf654497c9712a1581dedc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJacobian-request)))
  "Returns md5sum for a message object of type 'GetJacobian-request"
  "4ac689c026bf654497c9712a1581dedc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJacobian-request>)))
  "Returns full string definition for message of type '<GetJacobian-request>"
  (cl:format cl:nil "float64[] joint_angles~%float64[] joint_velocities~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJacobian-request)))
  "Returns full string definition for message of type 'GetJacobian-request"
  (cl:format cl:nil "float64[] joint_angles~%float64[] joint_velocities~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJacobian-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_velocities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJacobian-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJacobian-request
    (cl:cons ':joint_angles (joint_angles msg))
    (cl:cons ':joint_velocities (joint_velocities msg))
))
;//! \htmlinclude GetJacobian-response.msg.html

(cl:defclass <GetJacobian-response> (roslisp-msg-protocol:ros-message)
  ((jacobian
    :reader jacobian
    :initarg :jacobian
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass GetJacobian-response (<GetJacobian-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJacobian-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJacobian-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_tools-srv:<GetJacobian-response> is deprecated: use iiwa_tools-srv:GetJacobian-response instead.")))

(cl:ensure-generic-function 'jacobian-val :lambda-list '(m))
(cl:defmethod jacobian-val ((m <GetJacobian-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_tools-srv:jacobian-val is deprecated.  Use iiwa_tools-srv:jacobian instead.")
  (jacobian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJacobian-response>) ostream)
  "Serializes a message object of type '<GetJacobian-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jacobian) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJacobian-response>) istream)
  "Deserializes a message object of type '<GetJacobian-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jacobian) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJacobian-response>)))
  "Returns string type for a service object of type '<GetJacobian-response>"
  "iiwa_tools/GetJacobianResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJacobian-response)))
  "Returns string type for a service object of type 'GetJacobian-response"
  "iiwa_tools/GetJacobianResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJacobian-response>)))
  "Returns md5sum for a message object of type '<GetJacobian-response>"
  "4ac689c026bf654497c9712a1581dedc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJacobian-response)))
  "Returns md5sum for a message object of type 'GetJacobian-response"
  "4ac689c026bf654497c9712a1581dedc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJacobian-response>)))
  "Returns full string definition for message of type '<GetJacobian-response>"
  (cl:format cl:nil "std_msgs/Float64MultiArray jacobian~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJacobian-response)))
  "Returns full string definition for message of type 'GetJacobian-response"
  (cl:format cl:nil "std_msgs/Float64MultiArray jacobian~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJacobian-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jacobian))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJacobian-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJacobian-response
    (cl:cons ':jacobian (jacobian msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJacobian)))
  'GetJacobian-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJacobian)))
  'GetJacobian-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJacobian)))
  "Returns string type for a service object of type '<GetJacobian>"
  "iiwa_tools/GetJacobian")