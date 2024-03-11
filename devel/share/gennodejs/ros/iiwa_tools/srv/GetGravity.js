// Auto-generated. Do not edit!

// (in-package iiwa_tools.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetGravityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
      this.joint_velocities = null;
      this.joint_torques = null;
      this.gravity = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
      if (initObj.hasOwnProperty('joint_velocities')) {
        this.joint_velocities = initObj.joint_velocities
      }
      else {
        this.joint_velocities = [];
      }
      if (initObj.hasOwnProperty('joint_torques')) {
        this.joint_torques = initObj.joint_torques
      }
      else {
        this.joint_torques = [];
      }
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGravityRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float64(obj.joint_angles, buffer, bufferOffset, null);
    // Serialize message field [joint_velocities]
    bufferOffset = _arraySerializer.float64(obj.joint_velocities, buffer, bufferOffset, null);
    // Serialize message field [joint_torques]
    bufferOffset = _arraySerializer.float64(obj.joint_torques, buffer, bufferOffset, null);
    // Serialize message field [gravity]
    bufferOffset = _arraySerializer.float64(obj.gravity, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGravityRequest
    let len;
    let data = new GetGravityRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_velocities]
    data.joint_velocities = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_torques]
    data.joint_torques = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [gravity]
    data.gravity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_angles.length;
    length += 8 * object.joint_velocities.length;
    length += 8 * object.joint_torques.length;
    length += 8 * object.gravity.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iiwa_tools/GetGravityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '738487fbb5146bacce2e357c2b11e501';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_angles
    float64[] joint_velocities
    float64[] joint_torques
    float64[] gravity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGravityRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    if (msg.joint_velocities !== undefined) {
      resolved.joint_velocities = msg.joint_velocities;
    }
    else {
      resolved.joint_velocities = []
    }

    if (msg.joint_torques !== undefined) {
      resolved.joint_torques = msg.joint_torques;
    }
    else {
      resolved.joint_torques = []
    }

    if (msg.gravity !== undefined) {
      resolved.gravity = msg.gravity;
    }
    else {
      resolved.gravity = []
    }

    return resolved;
    }
};

class GetGravityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.compensation_torques = null;
    }
    else {
      if (initObj.hasOwnProperty('compensation_torques')) {
        this.compensation_torques = initObj.compensation_torques
      }
      else {
        this.compensation_torques = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGravityResponse
    // Serialize message field [compensation_torques]
    bufferOffset = _arraySerializer.float64(obj.compensation_torques, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGravityResponse
    let len;
    let data = new GetGravityResponse(null);
    // Deserialize message field [compensation_torques]
    data.compensation_torques = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.compensation_torques.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iiwa_tools/GetGravityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '923d65fbe90dce06205c35e62126536a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] compensation_torques
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGravityResponse(null);
    if (msg.compensation_torques !== undefined) {
      resolved.compensation_torques = msg.compensation_torques;
    }
    else {
      resolved.compensation_torques = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetGravityRequest,
  Response: GetGravityResponse,
  md5sum() { return '3da8875e9eeb07327815c7e1e6ef0f85'; },
  datatype() { return 'iiwa_tools/GetGravity'; }
};
