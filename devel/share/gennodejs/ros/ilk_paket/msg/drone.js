// Auto-generated. Do not edit!

// (in-package ilk_paket.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class drone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.hiz = null;
      this.batarya_durumu = null;
      this.sicaklik = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('hiz')) {
        this.hiz = initObj.hiz
      }
      else {
        this.hiz = 0;
      }
      if (initObj.hasOwnProperty('batarya_durumu')) {
        this.batarya_durumu = initObj.batarya_durumu
      }
      else {
        this.batarya_durumu = 0.0;
      }
      if (initObj.hasOwnProperty('sicaklik')) {
        this.sicaklik = initObj.sicaklik
      }
      else {
        this.sicaklik = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [hiz]
    bufferOffset = _serializer.int32(obj.hiz, buffer, bufferOffset);
    // Serialize message field [batarya_durumu]
    bufferOffset = _serializer.float32(obj.batarya_durumu, buffer, bufferOffset);
    // Serialize message field [sicaklik]
    bufferOffset = _serializer.float32(obj.sicaklik, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone
    let len;
    let data = new drone(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hiz]
    data.hiz = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [batarya_durumu]
    data.batarya_durumu = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sicaklik]
    data.sicaklik = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ilk_paket/drone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e14cc4353272a97d0c5ccb4f3e85f29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string name
    int32 hiz
    float32 batarya_durumu
    float32 sicaklik
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new drone(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.hiz !== undefined) {
      resolved.hiz = msg.hiz;
    }
    else {
      resolved.hiz = 0
    }

    if (msg.batarya_durumu !== undefined) {
      resolved.batarya_durumu = msg.batarya_durumu;
    }
    else {
      resolved.batarya_durumu = 0.0
    }

    if (msg.sicaklik !== undefined) {
      resolved.sicaklik = msg.sicaklik;
    }
    else {
      resolved.sicaklik = 0.0
    }

    return resolved;
    }
};

module.exports = drone;
