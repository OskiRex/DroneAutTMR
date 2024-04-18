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

class Window {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.x1 = null;
      this.y1 = null;
      this.x2 = null;
      this.y2 = null;
      this.area = null;
      this.horizontal_error = null;
      this.vertical_error = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
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
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = 0.0;
      }
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
    // Serializes a message object of type Window
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float64(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float64(obj.y1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float64(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float64(obj.y2, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = _serializer.float64(obj.area, buffer, bufferOffset);
    // Serialize message field [horizontal_error]
    bufferOffset = _serializer.float64(obj.horizontal_error, buffer, bufferOffset);
    // Serialize message field [vertical_error]
    bufferOffset = _serializer.float64(obj.vertical_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Window
    let len;
    let data = new Window(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_error]
    data.horizontal_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_error]
    data.vertical_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_msgs/Window';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '125dc6694452e1317a4f7b68ceb93345';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vertexs of window from top-right corner, clockwise 
    
    string type
    
    float64 x1
    float64 y1
    
    float64 x2
    float64 y2
    
    float64 area
    float64 horizontal_error
    float64 vertical_error
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Window(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
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

    if (msg.area !== undefined) {
      resolved.area = msg.area;
    }
    else {
      resolved.area = 0.0
    }

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

module.exports = Window;
