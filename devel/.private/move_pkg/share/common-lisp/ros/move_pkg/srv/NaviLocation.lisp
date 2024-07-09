; Auto-generated. Do not edit!


(cl:in-package move_pkg-srv)


;//! \htmlinclude NaviLocation-request.msg.html

(cl:defclass <NaviLocation-request> (roslisp-msg-protocol:ros-message)
  ((location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform ""))
)

(cl:defclass NaviLocation-request (<NaviLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_pkg-srv:<NaviLocation-request> is deprecated: use move_pkg-srv:NaviLocation-request instead.")))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <NaviLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:location_name-val is deprecated.  Use move_pkg-srv:location_name instead.")
  (location_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviLocation-request>) ostream)
  "Serializes a message object of type '<NaviLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviLocation-request>) istream)
  "Deserializes a message object of type '<NaviLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviLocation-request>)))
  "Returns string type for a service object of type '<NaviLocation-request>"
  "move_pkg/NaviLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviLocation-request)))
  "Returns string type for a service object of type 'NaviLocation-request"
  "move_pkg/NaviLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviLocation-request>)))
  "Returns md5sum for a message object of type '<NaviLocation-request>"
  "bfc4f7f59a15d34fcc697e576374d757")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviLocation-request)))
  "Returns md5sum for a message object of type 'NaviLocation-request"
  "bfc4f7f59a15d34fcc697e576374d757")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviLocation-request>)))
  "Returns full string definition for message of type '<NaviLocation-request>"
  (cl:format cl:nil "string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviLocation-request)))
  "Returns full string definition for message of type 'NaviLocation-request"
  (cl:format cl:nil "string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviLocation-request
    (cl:cons ':location_name (location_name msg))
))
;//! \htmlinclude NaviLocation-response.msg.html

(cl:defclass <NaviLocation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NaviLocation-response (<NaviLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_pkg-srv:<NaviLocation-response> is deprecated: use move_pkg-srv:NaviLocation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <NaviLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:result-val is deprecated.  Use move_pkg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviLocation-response>) ostream)
  "Serializes a message object of type '<NaviLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviLocation-response>) istream)
  "Deserializes a message object of type '<NaviLocation-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviLocation-response>)))
  "Returns string type for a service object of type '<NaviLocation-response>"
  "move_pkg/NaviLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviLocation-response)))
  "Returns string type for a service object of type 'NaviLocation-response"
  "move_pkg/NaviLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviLocation-response>)))
  "Returns md5sum for a message object of type '<NaviLocation-response>"
  "bfc4f7f59a15d34fcc697e576374d757")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviLocation-response)))
  "Returns md5sum for a message object of type 'NaviLocation-response"
  "bfc4f7f59a15d34fcc697e576374d757")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviLocation-response>)))
  "Returns full string definition for message of type '<NaviLocation-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviLocation-response)))
  "Returns full string definition for message of type 'NaviLocation-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviLocation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NaviLocation)))
  'NaviLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NaviLocation)))
  'NaviLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviLocation)))
  "Returns string type for a service object of type '<NaviLocation>"
  "move_pkg/NaviLocation")