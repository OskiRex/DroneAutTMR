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

class Aruco {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aruco_id = null;
      this.x1 = null;
      this.y1 = null;
      this.x2 = null;
      this.y2 = null;
      this.x3 = null;
      this.y3 = null;
      this.x4 = null;
      this.y4 = null;
      this.yaw_error = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('aruco_id')) {
        this.aruco_id = initObj.aruco_id
      }
      else {
        this.aruco_id = 0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0.0;
      }
      if (initObj.hasOwnProperty('x3')) {
        this.x3 = initObj.x3
      }
      else {
        this.x3 = 0.0;
      }
      if (initObj.hasOwnProperty('y3')) {
        this.y3 = initObj.y3
      }
      else {
        this.y3 = 0.0;
      }
      if (initObj.hasOwnProperty('x4')) {
        this.x4 = initObj.x4
      }
      else {
        this.x4 = 0.0;
      }
      if (initObj.hasOwnProperty('y4')) {
        this.y4 = initObj.y4
      }
      else {
        this.y4 = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_error')) {
        this.yaw_error = initObj.yaw_error
      }
      else {
        this.yaw_error = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Aruco
    // Serialize message field [aruco_id]
    bufferOffset = _serializer.int32(obj.aruco_id, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float64(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float64(obj.y1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float64(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float64(obj.y2, buffer, bufferOffset);
    // Serialize message field [x3]
    bufferOffset = _serializer.float64(obj.x3, buffer, bufferOffset);
    // Serialize message field [y3]
    bufferOffset = _serializer.float64(obj.y3, buffer, bufferOffset);
    // Serialize message field [x4]
    bufferOffset = _serializer.float64(obj.x4, buffer, bufferOffset);
    // Serialize message field [y4]
    bufferOffset = _serializer.float64(obj.y4, buffer, bufferOffset);
    // Serialize message field [yaw_error]
    bufferOffset = _serializer.float64(obj.yaw_error, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Aruco
    let len;
    let data = new Aruco(null);
    // Deserialize message field [aruco_id]
    data.aruco_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x3]
    data.x3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y3]
    data.y3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x4]
    data.x4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y4]
    data.y4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_error]
    data.yaw_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_msgs/Aruco';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19ee4d4cf4e8225cc839c83895a4b2f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 aruco_id
    
    float64 x1
    float64 y1
    
    float64 x2
    float64 y2
    
    float64 x3
    float64 y3
    
    float64 x4
    float64 y4
    
    float64 yaw_error
    float64 distance
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Aruco(null);
    if (msg.aruco_id !== undefined) {
      resolved.aruco_id = msg.aruco_id;
    }
    else {
      resolved.aruco_id = 0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0.0
    }

    if (msg.x3 !== undefined) {
      resolved.x3 = msg.x3;
    }
    else {
      resolved.x3 = 0.0
    }

    if (msg.y3 !== undefined) {
      resolved.y3 = msg.y3;
    }
    else {
      resolved.y3 = 0.0
    }

    if (msg.x4 !== undefined) {
      resolved.x4 = msg.x4;
    }
    else {
      resolved.x4 = 0.0
    }

    if (msg.y4 !== undefined) {
      resolved.y4 = msg.y4;
    }
    else {
      resolved.y4 = 0.0
    }

    if (msg.yaw_error !== undefined) {
      resolved.yaw_error = msg.yaw_error;
    }
    else {
      resolved.yaw_error = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = Aruco;
