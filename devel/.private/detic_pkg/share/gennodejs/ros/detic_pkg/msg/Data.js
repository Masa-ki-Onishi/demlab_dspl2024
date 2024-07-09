// Auto-generated. Do not edit!

// (in-package detic_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.class_ids = null;
      this.class_name = null;
      this.xyz = null;
      this.boxes = null;
    }
    else {
      if (initObj.hasOwnProperty('class_ids')) {
        this.class_ids = initObj.class_ids
      }
      else {
        this.class_ids = [];
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = [];
      }
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = [];
      }
      if (initObj.hasOwnProperty('boxes')) {
        this.boxes = initObj.boxes
      }
      else {
        this.boxes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Data
    // Serialize message field [class_ids]
    bufferOffset = _arraySerializer.int32(obj.class_ids, buffer, bufferOffset, null);
    // Serialize message field [class_name]
    bufferOffset = _arraySerializer.string(obj.class_name, buffer, bufferOffset, null);
    // Serialize message field [xyz]
    bufferOffset = _arraySerializer.float64(obj.xyz, buffer, bufferOffset, null);
    // Serialize message field [boxes]
    // Serialize the length for message field [boxes]
    bufferOffset = _serializer.uint32(obj.boxes.length, buffer, bufferOffset);
    obj.boxes.forEach((val) => {
      bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Data
    let len;
    let data = new Data(null);
    // Deserialize message field [class_ids]
    data.class_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [class_name]
    data.class_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [xyz]
    data.xyz = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [boxes]
    // Deserialize array length for message field [boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boxes[i] = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.class_ids.length;
    object.class_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.xyz.length;
    length += 17 * object.boxes.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'detic_pkg/Data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f65e8c43aa92c738d02da52bdabbf691';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # class_ids
    int32[] class_ids
    
    # class_name
    string[] class_name
    
    # xyz
    float64[] xyz
    
    # Bounding boxes in pixels
    sensor_msgs/RegionOfInterest[] boxes
    
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Data(null);
    if (msg.class_ids !== undefined) {
      resolved.class_ids = msg.class_ids;
    }
    else {
      resolved.class_ids = []
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = []
    }

    if (msg.xyz !== undefined) {
      resolved.xyz = msg.xyz;
    }
    else {
      resolved.xyz = []
    }

    if (msg.boxes !== undefined) {
      resolved.boxes = new Array(msg.boxes.length);
      for (let i = 0; i < resolved.boxes.length; ++i) {
        resolved.boxes[i] = sensor_msgs.msg.RegionOfInterest.Resolve(msg.boxes[i]);
      }
    }
    else {
      resolved.boxes = []
    }

    return resolved;
    }
};

module.exports = Data;
