; Auto-generated. Do not edit!


(cl:in-package tmc_vision_msgs-msg)


;//! \htmlinclude DetectionArray.msg.html

(cl:defclass <DetectionArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector tmc_vision_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'tmc_vision_msgs-msg:Detection :initial-element (cl:make-instance 'tmc_vision_msgs-msg:Detection))))
)

(cl:defclass DetectionArray (<DetectionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tmc_vision_msgs-msg:<DetectionArray> is deprecated: use tmc_vision_msgs-msg:DetectionArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tmc_vision_msgs-msg:header-val is deprecated.  Use tmc_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tmc_vision_msgs-msg:detections-val is deprecated.  Use tmc_vision_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionArray>) ostream)
  "Serializes a message object of type '<DetectionArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionArray>) istream)
  "Deserializes a message object of type '<DetectionArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tmc_vision_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionArray>)))
  "Returns string type for a message object of type '<DetectionArray>"
  "tmc_vision_msgs/DetectionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionArray)))
  "Returns string type for a message object of type 'DetectionArray"
  "tmc_vision_msgs/DetectionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionArray>)))
  "Returns md5sum for a message object of type '<DetectionArray>"
  "81ce6d024652b585c906e49f2c2eb09c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionArray)))
  "Returns md5sum for a message object of type 'DetectionArray"
  "81ce6d024652b585c906e49f2c2eb09c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionArray>)))
  "Returns full string definition for message of type '<DetectionArray>"
  (cl:format cl:nil "Header header~%Detection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tmc_vision_msgs/Detection~%tmc_vision_msgs/Label label~%float64 x~%float64 y~%float64 width~%float64 height~%~%================================================================================~%MSG: tmc_vision_msgs/Label~%# label name~%string name~%~%# confidence of this label~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionArray)))
  "Returns full string definition for message of type 'DetectionArray"
  (cl:format cl:nil "Header header~%Detection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tmc_vision_msgs/Detection~%tmc_vision_msgs/Label label~%float64 x~%float64 y~%float64 width~%float64 height~%~%================================================================================~%MSG: tmc_vision_msgs/Label~%# label name~%string name~%~%# confidence of this label~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionArray
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
))
