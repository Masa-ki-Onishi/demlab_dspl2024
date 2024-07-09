; Auto-generated. Do not edit!


(cl:in-package move_pkg-srv)


;//! \htmlinclude SetLocation-request.msg.html

(cl:defclass <SetLocation-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SetLocation-request (<SetLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_pkg-srv:<SetLocation-request> is deprecated: use move_pkg-srv:SetLocation-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:state-val is deprecated.  Use move_pkg-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:name-val is deprecated.  Use move_pkg-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLocation-request>) ostream)
  "Serializes a message object of type '<SetLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLocation-request>) istream)
  "Deserializes a message object of type '<SetLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLocation-request>)))
  "Returns string type for a service object of type '<SetLocation-request>"
  "move_pkg/SetLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocation-request)))
  "Returns string type for a service object of type 'SetLocation-request"
  "move_pkg/SetLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLocation-request>)))
  "Returns md5sum for a message object of type '<SetLocation-request>"
  "209e42bb0d64821994967cc13541fa55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLocation-request)))
  "Returns md5sum for a message object of type 'SetLocation-request"
  "209e42bb0d64821994967cc13541fa55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLocation-request>)))
  "Returns full string definition for message of type '<SetLocation-request>"
  (cl:format cl:nil "# req~%string state~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLocation-request)))
  "Returns full string definition for message of type 'SetLocation-request"
  (cl:format cl:nil "# req~%string state~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLocation-request
    (cl:cons ':state (state msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude SetLocation-response.msg.html

(cl:defclass <SetLocation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLocation-response (<SetLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_pkg-srv:<SetLocation-response> is deprecated: use move_pkg-srv:SetLocation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:result-val is deprecated.  Use move_pkg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLocation-response>) ostream)
  "Serializes a message object of type '<SetLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLocation-response>) istream)
  "Deserializes a message object of type '<SetLocation-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLocation-response>)))
  "Returns string type for a service object of type '<SetLocation-response>"
  "move_pkg/SetLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocation-response)))
  "Returns string type for a service object of type 'SetLocation-response"
  "move_pkg/SetLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLocation-response>)))
  "Returns md5sum for a message object of type '<SetLocation-response>"
  "209e42bb0d64821994967cc13541fa55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLocation-response)))
  "Returns md5sum for a message object of type 'SetLocation-response"
  "209e42bb0d64821994967cc13541fa55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLocation-response>)))
  "Returns full string definition for message of type '<SetLocation-response>"
  (cl:format cl:nil "# res~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLocation-response)))
  "Returns full string definition for message of type 'SetLocation-response"
  (cl:format cl:nil "# res~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLocation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLocation)))
  'SetLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLocation)))
  'SetLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocation)))
  "Returns string type for a service object of type '<SetLocation>"
  "move_pkg/SetLocation")