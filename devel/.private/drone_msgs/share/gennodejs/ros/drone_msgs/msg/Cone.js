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

class Cone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.horizontal_error = null;
      this.vertical_error = null;
    }
    else {
      if (initObj.hasOwnProperty('horizontal_error')) {
        this.horizontal_error = initObj.horizontal_error
      }
      else {
        this.horizontal_error = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_error')) {
        this.vertical_error = initObj.vertical_error
      }
      else {
        this.vertical_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cone
    // Serialize message field [horizontal_error]
    bufferOffset = _serializer.float64(obj.horizontal_error, buffer, bufferOffset);
    // Serialize message field [vertical_error]
    bufferOffset = _serializer.float64(obj.vertical_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cone
    let len;
    let data = new Cone(null);
    // Deserialize message field [horizontal_error]
    data.horizontal_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_error]
    data.vertical_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_msgs/Cone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbbfed3ab2dc6e420d9622629e096adc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 horizontal_error
    float64 vertical_error
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cone(null);
    if (msg.horizontal_error !== undefined) {
      resolved.horizontal_error = msg.horizontal_error;
    }
    else {
      resolved.horizontal_error = 0.0
    }

    if (msg.vertical_error !== undefined) {
      resolved.vertical_error = msg.vertical_error;
    }
    else {
      resolved.vertical_error = 0.0
    }

    return resolved;
    }
};

module.exports = Cone;
