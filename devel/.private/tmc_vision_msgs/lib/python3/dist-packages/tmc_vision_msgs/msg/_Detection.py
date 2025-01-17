# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tmc_vision_msgs/Detection.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import tmc_vision_msgs.msg

class Detection(genpy.Message):
  _md5sum = "7b22e438fe4366fad4149fe0a76d2b35"
  _type = "tmc_vision_msgs/Detection"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """tmc_vision_msgs/Label label
float64 x
float64 y
float64 width
float64 height

================================================================================
MSG: tmc_vision_msgs/Label
# label name
string name

# confidence of this label
float64 confidence
"""
  __slots__ = ['label','x','y','width','height']
  _slot_types = ['tmc_vision_msgs/Label','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       label,x,y,width,height

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Detection, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.label is None:
        self.label = tmc_vision_msgs.msg.Label()
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.width is None:
        self.width = 0.
      if self.height is None:
        self.height = 0.
    else:
      self.label = tmc_vision_msgs.msg.Label()
      self.x = 0.
      self.y = 0.
      self.width = 0.
      self.height = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.label.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5d().pack(_x.label.confidence, _x.x, _x.y, _x.width, _x.height))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.label is None:
        self.label = tmc_vision_msgs.msg.Label()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.label.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.label.name = str[start:end]
      _x = self
      start = end
      end += 40
      (_x.label.confidence, _x.x, _x.y, _x.width, _x.height,) = _get_struct_5d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.label.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5d().pack(_x.label.confidence, _x.x, _x.y, _x.width, _x.height))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.label is None:
        self.label = tmc_vision_msgs.msg.Label()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.label.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.label.name = str[start:end]
      _x = self
      start = end
      end += 40
      (_x.label.confidence, _x.x, _x.y, _x.width, _x.height,) = _get_struct_5d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5d = None
def _get_struct_5d():
    global _struct_5d
    if _struct_5d is None:
        _struct_5d = struct.Struct("<5d")
    return _struct_5d
