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

class NaviCoordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loc_coord = null;
    }
    else {
      if (initObj.hasOwnProperty('loc_coord')) {
        this.loc_coord = initObj.loc_coord
      }
      else {
        this.loc_coord = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviCoordRequest
    // Serialize message field [loc_coord]
    bufferOffset = _arraySerializer.float32(obj.loc_coord, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviCoordRequest
    let len;
    let data = new NaviCoordRequest(null);
    // Deserialize message field [loc_coord]
    data.loc_coord = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.loc_coord.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'move_pkg/NaviCoordRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06aaf524d004b42fe9541758311ce6dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # req
    float32[] loc_coord
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviCoordRequest(null);
    if (msg.loc_coord !== undefined) {
      resolved.loc_coord = msg.loc_coord;
    }
    else {
      resolved.loc_coord = []
    }

    return resolved;
    }
};

class NaviCoordResponse {
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
    // Serializes a message object of type NaviCoordResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviCoordResponse
    let len;
    let data = new NaviCoordResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'move_pkg/NaviCoordResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # res
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviCoordResponse(null);
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
  Request: NaviCoordRequest,
  Response: NaviCoordResponse,
  md5sum() { return 'c19bb617d86363fd7d4da46342cc0d3b'; },
  datatype() { return 'move_pkg/NaviCoord'; }
};
