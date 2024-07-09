; Auto-generated. Do not edit!


(cl:in-package move_pkg-srv)


;//! \htmlinclude NaviCoord-request.msg.html

(cl:defclass <NaviCoord-request> (roslisp-msg-protocol:ros-message)
  ((loc_coord
    :reader loc_coord
    :initarg :loc_coord
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NaviCoord-request (<NaviCoord-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviCoord-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviCoord-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_pkg-srv:<NaviCoord-request> is deprecated: use move_pkg-srv:NaviCoord-request instead.")))

(cl:ensure-generic-function 'loc_coord-val :lambda-list '(m))
(cl:defmethod loc_coord-val ((m <NaviCoord-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:loc_coord-val is deprecated.  Use move_pkg-srv:loc_coord instead.")
  (loc_coord m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviCoord-request>) ostream)
  "Serializes a message object of type '<NaviCoord-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'loc_coord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'loc_coord))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviCoord-request>) istream)
  "Deserializes a message object of type '<NaviCoord-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'loc_coord) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'loc_coord)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviCoord-request>)))
  "Returns string type for a service object of type '<NaviCoord-request>"
  "move_pkg/NaviCoordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviCoord-request)))
  "Returns string type for a service object of type 'NaviCoord-request"
  "move_pkg/NaviCoordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviCoord-request>)))
  "Returns md5sum for a message object of type '<NaviCoord-request>"
  "c19bb617d86363fd7d4da46342cc0d3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviCoord-request)))
  "Returns md5sum for a message object of type 'NaviCoord-request"
  "c19bb617d86363fd7d4da46342cc0d3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviCoord-request>)))
  "Returns full string definition for message of type '<NaviCoord-request>"
  (cl:format cl:nil "# req~%float32[] loc_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviCoord-request)))
  "Returns full string definition for message of type 'NaviCoord-request"
  (cl:format cl:nil "# req~%float32[] loc_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviCoord-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loc_coord) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviCoord-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviCoord-request
    (cl:cons ':loc_coord (loc_coord msg))
))
;//! \htmlinclude NaviCoord-response.msg.html

(cl:defclass <NaviCoord-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NaviCoord-response (<NaviCoord-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviCoord-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviCoord-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_pkg-srv:<NaviCoord-response> is deprecated: use move_pkg-srv:NaviCoord-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <NaviCoord-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_pkg-srv:result-val is deprecated.  Use move_pkg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviCoord-response>) ostream)
  "Serializes a message object of type '<NaviCoord-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviCoord-response>) istream)
  "Deserializes a message object of type '<NaviCoord-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviCoord-response>)))
  "Returns string type for a service object of type '<NaviCoord-response>"
  "move_pkg/NaviCoordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviCoord-response)))
  "Returns string type for a service object of type 'NaviCoord-response"
  "move_pkg/NaviCoordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviCoord-response>)))
  "Returns md5sum for a message object of type '<NaviCoord-response>"
  "c19bb617d86363fd7d4da46342cc0d3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviCoord-response)))
  "Returns md5sum for a message object of type 'NaviCoord-response"
  "c19bb617d86363fd7d4da46342cc0d3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviCoord-response>)))
  "Returns full string definition for message of type '<NaviCoord-response>"
  (cl:format cl:nil "# res~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviCoord-response)))
  "Returns full string definition for message of type 'NaviCoord-response"
  (cl:format cl:nil "# res~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviCoord-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviCoord-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviCoord-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NaviCoord)))
  'NaviCoord-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NaviCoord)))
  'NaviCoord-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviCoord)))
  "Returns string type for a service object of type '<NaviCoord>"
  "move_pkg/NaviCoord")