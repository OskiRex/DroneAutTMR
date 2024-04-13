// Auto-generated. Do not edit!

// (in-package drone_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pose_vels {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx_linear = null;
      this.vy_linear = null;
      this.vz_linear = null;
      this.vz_angular = null;
    }
    else {
      if (initObj.hasOwnProperty('vx_linear')) {
        this.vx_linear = initObj.vx_linear
      }
      else {
        this.vx_linear = 0.0;
      }
      if (initObj.hasOwnProperty('vy_linear')) {
        this.vy_linear = initObj.vy_linear
      }
      else {
        this.vy_linear = 0.0;
      }
      if (initObj.hasOwnProperty('vz_linear')) {
        this.vz_linear = initObj.vz_linear
      }
      else {
        this.vz_linear = 0.0;
      }
      if (initObj.hasOwnProperty('vz_angular')) {
        this.vz_angular = initObj.vz_angular
      }
      else {
        this.vz_angular = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose_vels
    // Serialize message field [vx_linear]
    bufferOffset = _serializer.float32(obj.vx_linear, buffer, bufferOffset);
    // Serialize message field [vy_linear]
    bufferOffset = _serializer.float32(obj.vy_linear, buffer, bufferOffset);
    // Serialize message field [vz_linear]
    bufferOffset = _serializer.float32(obj.vz_linear, buffer, bufferOffset);
    // Serialize message field [vz_angular]
    bufferOffset = _serializer.float32(obj.vz_angular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose_vels
    let len;
    let data = new pose_vels(null);
    // Deserialize message field [vx_linear]
    data.vx_linear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy_linear]
    data.vy_linear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vz_linear]
    data.vz_linear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vz_angular]
    data.vz_angular = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_msgs/pose_vels';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88c123551d9e9357bdc4af9e608ad391';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vx_linear
    float32 vy_linear
    float32 vz_linear
    float32 vz_angular
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose_vels(null);
    if (msg.vx_linear !== undefined) {
      resolved.vx_linear = msg.vx_linear;
    }
    else {
      resolved.vx_linear = 0.0
    }

    if (msg.vy_linear !== undefined) {
      resolved.vy_linear = msg.vy_linear;
    }
    else {
      resolved.vy_linear = 0.0
    }

    if (msg.vz_linear !== undefined) {
      resolved.vz_linear = msg.vz_linear;
    }
    else {
      resolved.vz_linear = 0.0
    }

    if (msg.vz_angular !== undefined) {
      resolved.vz_angular = msg.vz_angular;
    }
    else {
      resolved.vz_angular = 0.0
    }

    return resolved;
    }
};

module.exports = pose_vels;
