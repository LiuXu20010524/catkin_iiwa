; Auto-generated. Do not edit!


(cl:in-package iiwa_tools-srv)


;//! \htmlinclude GetMassMatrix-request.msg.html

(cl:defclass <GetMassMatrix-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetMassMatrix-request (<GetMassMatrix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMassMatrix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMassMatrix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_tools-srv:<GetMassMatrix-request> is deprecated: use iiwa_tools-srv:GetMassMatrix-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <GetMassMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_tools-srv:joint_angles-val is deprecated.  Use iiwa_tools-srv:joint_angles instead.")
  (joint_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMassMatrix-request>) ostream)
  "Serializes a message object of type '<GetMassMatrix-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMassMatrix-request>) istream)
  "Deserializes a message object of type '<GetMassMatrix-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMassMatrix-request>)))
  "Returns string type for a service object of type '<GetMassMatrix-request>"
  "iiwa_tools/GetMassMatrixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMassMatrix-request)))
  "Returns string type for a service object of type 'GetMassMatrix-request"
  "iiwa_tools/GetMassMatrixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMassMatrix-request>)))
  "Returns md5sum for a message object of type '<GetMassMatrix-request>"
  "c2241a2536933b0e13a23c6758fa7bfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMassMatrix-request)))
  "Returns md5sum for a message object of type 'GetMassMatrix-request"
  "c2241a2536933b0e13a23c6758fa7bfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMassMatrix-request>)))
  "Returns full string definition for message of type '<GetMassMatrix-request>"
  (cl:format cl:nil "float64[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMassMatrix-request)))
  "Returns full string definition for message of type 'GetMassMatrix-request"
  (cl:format cl:nil "float64[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMassMatrix-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMassMatrix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMassMatrix-request
    (cl:cons ':joint_angles (joint_angles msg))
))
;//! \htmlinclude GetMassMatrix-response.msg.html

(cl:defclass <GetMassMatrix-response> (roslisp-msg-protocol:ros-message)
  ((mass_matrix
    :reader mass_matrix
    :initarg :mass_matrix
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass GetMassMatrix-response (<GetMassMatrix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMassMatrix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMassMatrix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iiwa_tools-srv:<GetMassMatrix-response> is deprecated: use iiwa_tools-srv:GetMassMatrix-response instead.")))

(cl:ensure-generic-function 'mass_matrix-val :lambda-list '(m))
(cl:defmethod mass_matrix-val ((m <GetMassMatrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iiwa_tools-srv:mass_matrix-val is deprecated.  Use iiwa_tools-srv:mass_matrix instead.")
  (mass_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMassMatrix-response>) ostream)
  "Serializes a message object of type '<GetMassMatrix-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mass_matrix) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMassMatrix-response>) istream)
  "Deserializes a message object of type '<GetMassMatrix-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mass_matrix) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMassMatrix-response>)))
  "Returns string type for a service object of type '<GetMassMatrix-response>"
  "iiwa_tools/GetMassMatrixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMassMatrix-response)))
  "Returns string type for a service object of type 'GetMassMatrix-response"
  "iiwa_tools/GetMassMatrixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMassMatrix-response>)))
  "Returns md5sum for a message object of type '<GetMassMatrix-response>"
  "c2241a2536933b0e13a23c6758fa7bfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMassMatrix-response)))
  "Returns md5sum for a message object of type 'GetMassMatrix-response"
  "c2241a2536933b0e13a23c6758fa7bfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMassMatrix-response>)))
  "Returns full string definition for message of type '<GetMassMatrix-response>"
  (cl:format cl:nil "std_msgs/Float64MultiArray mass_matrix~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMassMatrix-response)))
  "Returns full string definition for message of type 'GetMassMatrix-response"
  (cl:format cl:nil "std_msgs/Float64MultiArray mass_matrix~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMassMatrix-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mass_matrix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMassMatrix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMassMatrix-response
    (cl:cons ':mass_matrix (mass_matrix msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMassMatrix)))
  'GetMassMatrix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMassMatrix)))
  'GetMassMatrix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMassMatrix)))
  "Returns string type for a service object of type '<GetMassMatrix>"
  "iiwa_tools/GetMassMatrix")