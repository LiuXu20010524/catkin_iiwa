// Auto-generated. Do not edit!

// (in-package iiwa_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConnectionQuality {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_quality')) {
        this.connection_quality = initObj.connection_quality
      }
      else {
        this.connection_quality = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionQuality
    // Serialize message field [connection_quality]
    bufferOffset = _serializer.int8(obj.connection_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionQuality
    let len;
    let data = new ConnectionQuality(null);
    // Deserialize message field [connection_quality]
    data.connection_quality = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iiwa_driver/ConnectionQuality';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36b844413f3c0379a097d5209770c460';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ConnectionQuality(null);
    if (msg.connection_quality !== undefined) {
      resolved.connection_quality = msg.connection_quality;
    }
    else {
      resolved.connection_quality = 0
    }

    return resolved;
    }
};

// Constants for message
ConnectionQuality.Constants = {
  POOR: 0,
  FAIR: 1,
  GOOD: 2,
  EXCELLENT: 3,
}

module.exports = ConnectionQuality;
