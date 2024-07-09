; Auto-generated. Do not edit!


(cl:in-package tmc_vision_msgs-msg)


;//! \htmlinclude Label.msg.html

(cl:defclass <Label> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Label (<Label>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Label>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Label)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tmc_vision_msgs-msg:<Label> is deprecated: use tmc_vision_msgs-msg:Label instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Label>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tmc_vision_msgs-msg:name-val is deprecated.  Use tmc_vision_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Label>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tmc_vision_msgs-msg:confidence-val is deprecated.  Use tmc_vision_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Label>) ostream)
  "Serializes a message object of type '<Label>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Label>) istream)
  "Deserializes a message object of type '<Label>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Label>)))
  "Returns string type for a message object of type '<Label>"
  "tmc_vision_msgs/Label")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Label)))
  "Returns string type for a message object of type 'Label"
  "tmc_vision_msgs/Label")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Label>)))
  "Returns md5sum for a message object of type '<Label>"
  "e57824c8cf63aef336f2ff71c7581ea6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Label)))
  "Returns md5sum for a message object of type 'Label"
  "e57824c8cf63aef336f2ff71c7581ea6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Label>)))
  "Returns full string definition for message of type '<Label>"
  (cl:format cl:nil "# label name~%string name~%~%# confidence of this label~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Label)))
  "Returns full string definition for message of type 'Label"
  (cl:format cl:nil "# label name~%string name~%~%# confidence of this label~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Label>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Label>))
  "Converts a ROS message object to a list"
  (cl:list 'Label
    (cl:cons ':name (name msg))
    (cl:cons ':confidence (confidence msg))
))
