// Auto-generated. Do not edit!

// (in-package audio_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AudioData = require('./AudioData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AudioDataStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.audio = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('audio')) {
        this.audio = initObj.audio
      }
      else {
        this.audio = new AudioData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioDataStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [audio]
    bufferOffset = AudioData.serialize(obj.audio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioDataStamped
    let len;
    let data = new AudioDataStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [audio]
    data.audio = AudioData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += AudioData.getMessageSize(object.audio);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'audio_common_msgs/AudioDataStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cdd84a06846af0dca4d0434908f9d96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    audio_common_msgs/AudioData audio
    
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
    MSG: audio_common_msgs/AudioData
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AudioDataStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.audio !== undefined) {
      resolved.audio = AudioData.Resolve(msg.audio)
    }
    else {
      resolved.audio = new AudioData()
    }

    return resolved;
    }
};

module.exports = AudioDataStamped;
