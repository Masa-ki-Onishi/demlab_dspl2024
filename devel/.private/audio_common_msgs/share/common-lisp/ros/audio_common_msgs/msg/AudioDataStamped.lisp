; Auto-generated. Do not edit!


(cl:in-package audio_common_msgs-msg)


;//! \htmlinclude AudioDataStamped.msg.html

(cl:defclass <AudioDataStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (audio
    :reader audio
    :initarg :audio
    :type audio_common_msgs-msg:AudioData
    :initform (cl:make-instance 'audio_common_msgs-msg:AudioData)))
)

(cl:defclass AudioDataStamped (<AudioDataStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioDataStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioDataStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_common_msgs-msg:<AudioDataStamped> is deprecated: use audio_common_msgs-msg:AudioDataStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AudioDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_common_msgs-msg:header-val is deprecated.  Use audio_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'audio-val :lambda-list '(m))
(cl:defmethod audio-val ((m <AudioDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_common_msgs-msg:audio-val is deprecated.  Use audio_common_msgs-msg:audio instead.")
  (audio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioDataStamped>) ostream)
  "Serializes a message object of type '<AudioDataStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'audio) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioDataStamped>) istream)
  "Deserializes a message object of type '<AudioDataStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'audio) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioDataStamped>)))
  "Returns string type for a message object of type '<AudioDataStamped>"
  "audio_common_msgs/AudioDataStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioDataStamped)))
  "Returns string type for a message object of type 'AudioDataStamped"
  "audio_common_msgs/AudioDataStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioDataStamped>)))
  "Returns md5sum for a message object of type '<AudioDataStamped>"
  "3cdd84a06846af0dca4d0434908f9d96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioDataStamped)))
  "Returns md5sum for a message object of type 'AudioDataStamped"
  "3cdd84a06846af0dca4d0434908f9d96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioDataStamped>)))
  "Returns full string definition for message of type '<AudioDataStamped>"
  (cl:format cl:nil "std_msgs/Header header~%audio_common_msgs/AudioData audio~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: audio_common_msgs/AudioData~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioDataStamped)))
  "Returns full string definition for message of type 'AudioDataStamped"
  (cl:format cl:nil "std_msgs/Header header~%audio_common_msgs/AudioData audio~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: audio_common_msgs/AudioData~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioDataStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'audio))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioDataStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioDataStamped
    (cl:cons ':header (header msg))
    (cl:cons ':audio (audio msg))
))
