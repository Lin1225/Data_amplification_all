// Auto-generated. Do not edit!

// (in-package rosserial_arduino.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class motorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Move = null;
    }
    else {
      if (initObj.hasOwnProperty('Move')) {
        this.Move = initObj.Move
      }
      else {
        this.Move = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorRequest
    // Serialize message field [Move]
    bufferOffset = _serializer.string(obj.Move, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorRequest
    let len;
    let data = new motorRequest(null);
    // Deserialize message field [Move]
    data.Move = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Move.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_arduino/motorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fba89113294e9937d5a469e528e7df7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Move
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorRequest(null);
    if (msg.Move !== undefined) {
      resolved.Move = msg.Move;
    }
    else {
      resolved.Move = ''
    }

    return resolved;
    }
};

class motorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorResponse
    // Serialize message field [done]
    bufferOffset = _serializer.string(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorResponse
    let len;
    let data = new motorResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.done.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_arduino/motorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6f8833c91017f802acaa131839007d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string done
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: motorRequest,
  Response: motorResponse,
  md5sum() { return '58ba11ff6615accf86f4ea6f489aba40'; },
  datatype() { return 'rosserial_arduino/motor'; }
};
