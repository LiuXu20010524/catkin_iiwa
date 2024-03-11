// Auto-generated. Do not edit!

// (in-package iiwa_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AdditionalOutputs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.external_torques = null;
      this.commanded_torques = null;
      this.commanded_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('external_torques')) {
        this.external_torques = initObj.external_torques
      }
      else {
        this.external_torques = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('commanded_torques')) {
        this.commanded_torques = initObj.commanded_torques
      }
      else {
        this.commanded_torques = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('commanded_positions')) {
        this.commanded_positions = initObj.commanded_positions
      }
      else {
        this.commanded_positions = new std_msgs.msg.Float64MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdditionalOutputs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [external_torques]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.external_torques, buffer, bufferOffset);
    // Serialize message field [commanded_torques]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.commanded_torques, buffer, bufferOffset);
    // Serialize message field [commanded_positions]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.commanded_positions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdditionalOutputs
    let len;
    let data = new AdditionalOutputs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [external_torques]
    data.external_torques = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [commanded_torques]
    data.commanded_torques = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [commanded_positions]
    data.commanded_positions = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.external_torques);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.commanded_torques);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.commanded_positions);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iiwa_driver/AdditionalOutputs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c34331d511e328461cf6e053cfded8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    const resolved = new AdditionalOutputs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.external_torques !== undefined) {
      resolved.external_torques = std_msgs.msg.Float64MultiArray.Resolve(msg.external_torques)
    }
    else {
      resolved.external_torques = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.commanded_torques !== undefined) {
      resolved.commanded_torques = std_msgs.msg.Float64MultiArray.Resolve(msg.commanded_torques)
    }
    else {
      resolved.commanded_torques = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.commanded_positions !== undefined) {
      resolved.commanded_positions = std_msgs.msg.Float64MultiArray.Resolve(msg.commanded_positions)
    }
    else {
      resolved.commanded_positions = new std_msgs.msg.Float64MultiArray()
    }

    return resolved;
    }
};

module.exports = AdditionalOutputs;
