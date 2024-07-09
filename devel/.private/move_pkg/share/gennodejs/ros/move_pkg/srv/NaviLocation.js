// Auto-generated. Do not edit!

// (in-package move_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class NaviLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location_name = null;
    }
    else {
      if (initObj.hasOwnProperty('location_name')) {
        this.location_name = initObj.location_name
      }
      else {
        this.location_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviLocationRequest
    // Serialize message field [location_name]
    bufferOffset = _serializer.string(obj.location_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviLocationRequest
    let len;
    let data = new NaviLocationRequest(null);
    // Deserialize message field [location_name]
    data.location_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'move_pkg/NaviLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73faf335e0992a31df2e9630ffb73b0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviLocationRequest(null);
    if (msg.location_name !== undefined) {
      resolved.location_name = msg.location_name;
    }
    else {
      resolved.location_name = ''
    }

    return resolved;
    }
};

class NaviLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviLocationResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviLocationResponse
    let len;
    let data = new NaviLocationResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'move_pkg/NaviLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviLocationResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: NaviLocationRequest,
  Response: NaviLocationResponse,
  md5sum() { return 'bfc4f7f59a15d34fcc697e576374d757'; },
  datatype() { return 'move_pkg/NaviLocation'; }
};
