// Auto-generated. Do not edit!

// (in-package iiwa_tools.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poses = null;
      this.seed_angles = null;
      this.tolerance = null;
      this.max_iterations = null;
      this.slack = null;
      this.damping = null;
    }
    else {
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
      if (initObj.hasOwnProperty('seed_angles')) {
        this.seed_angles = initObj.seed_angles
      }
      else {
        this.seed_angles = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
      if (initObj.hasOwnProperty('max_iterations')) {
        this.max_iterations = initObj.max_iterations
      }
      else {
        this.max_iterations = 0;
      }
      if (initObj.hasOwnProperty('slack')) {
        this.slack = initObj.slack
      }
      else {
        this.slack = [];
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKRequest
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [seed_angles]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.seed_angles, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float32(obj.tolerance, buffer, bufferOffset);
    // Serialize message field [max_iterations]
    bufferOffset = _serializer.int32(obj.max_iterations, buffer, bufferOffset);
    // Serialize message field [slack]
    bufferOffset = _arraySerializer.float64(obj.slack, buffer, bufferOffset, null);
    // Serialize message field [damping]
    bufferOffset = _arraySerializer.float64(obj.damping, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKRequest
    let len;
    let data = new GetIKRequest(null);
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [seed_angles]
    data.seed_angles = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_iterations]
    data.max_iterations = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [slack]
    data.slack = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [damping]
    data.damping = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.poses.length;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.seed_angles);
    length += 8 * object.slack.length;
    length += 8 * object.damping.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iiwa_tools/GetIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '025eec0a15f1fb0f0427b8ebfade6c5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # end-effector poses to request IK for
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
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKRequest(null);
    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.Pose.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    if (msg.seed_angles !== undefined) {
      resolved.seed_angles = std_msgs.msg.Float64MultiArray.Resolve(msg.seed_angles)
    }
    else {
      resolved.seed_angles = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    if (msg.max_iterations !== undefined) {
      resolved.max_iterations = msg.max_iterations;
    }
    else {
      resolved.max_iterations = 0
    }

    if (msg.slack !== undefined) {
      resolved.slack = msg.slack;
    }
    else {
      resolved.slack = []
    }

    if (msg.damping !== undefined) {
      resolved.damping = msg.damping;
    }
    else {
      resolved.damping = []
    }

    return resolved;
    }
};

class GetIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.accepted_tolerance = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('accepted_tolerance')) {
        this.accepted_tolerance = initObj.accepted_tolerance
      }
      else {
        this.accepted_tolerance = [];
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKResponse
    // Serialize message field [joints]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.joints, buffer, bufferOffset);
    // Serialize message field [accepted_tolerance]
    bufferOffset = _arraySerializer.float64(obj.accepted_tolerance, buffer, bufferOffset, null);
    // Serialize message field [is_valid]
    bufferOffset = _arraySerializer.bool(obj.is_valid, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKResponse
    let len;
    let data = new GetIKResponse(null);
    // Deserialize message field [joints]
    data.joints = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [accepted_tolerance]
    data.accepted_tolerance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [is_valid]
    data.is_valid = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.joints);
    length += 8 * object.accepted_tolerance.length;
    length += object.is_valid.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iiwa_tools/GetIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3e928e318e2d510381df70b3943ee9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKResponse(null);
    if (msg.joints !== undefined) {
      resolved.joints = std_msgs.msg.Float64MultiArray.Resolve(msg.joints)
    }
    else {
      resolved.joints = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.accepted_tolerance !== undefined) {
      resolved.accepted_tolerance = msg.accepted_tolerance;
    }
    else {
      resolved.accepted_tolerance = []
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIKRequest,
  Response: GetIKResponse,
  md5sum() { return '365217ef42b72f30ced052640d9bbe85'; },
  datatype() { return 'iiwa_tools/GetIK'; }
};
