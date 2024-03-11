// Auto-generated. Do not edit!

// (in-package iiwa_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConnectionQuality = require('./ConnectionQuality.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FRIState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.connection_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('connection_quality')) {
        this.connection_quality = initObj.connection_quality
      }
      else {
        this.connection_quality = new ConnectionQuality();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FRIState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [connection_quality]
    bufferOffset = ConnectionQuality.serialize(obj.connection_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FRIState
    let len;
    let data = new FRIState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [connection_quality]
    data.connection_quality = ConnectionQuality.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iiwa_driver/FRIState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfb94c18d53e239b6ba45eb1dfbb3c46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    ConnectionQuality connection_quality
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
    MSG: iiwa_driver/ConnectionQuality
    int8 connection_quality
    int8 POOR = 0       # poor connection quality
    int8 FAIR = 1       # connection quality insufficient for command mode
    int8 GOOD = 2       # connection quality sufficient for command mode
    int8 EXCELLENT = 3  # excellent connection quality
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FRIState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.connection_quality !== undefined) {
      resolved.connection_quality = ConnectionQuality.Resolve(msg.connection_quality)
    }
    else {
      resolved.connection_quality = new ConnectionQuality()
    }

    return resolved;
    }
};

module.exports = FRIState;
