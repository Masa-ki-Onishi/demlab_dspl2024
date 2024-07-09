;; Auto-generated. Do not edit!


(when (boundp 'move_pkg::SetLocation)
  (if (not (find-package "MOVE_PKG"))
    (make-package "MOVE_PKG"))
  (shadow 'SetLocation (find-package "MOVE_PKG")))
(unless (find-package "MOVE_PKG::SETLOCATION")
  (make-package "MOVE_PKG::SETLOCATION"))
(unless (find-package "MOVE_PKG::SETLOCATIONREQUEST")
  (make-package "MOVE_PKG::SETLOCATIONREQUEST"))
(unless (find-package "MOVE_PKG::SETLOCATIONRESPONSE")
  (make-package "MOVE_PKG::SETLOCATIONRESPONSE"))

(in-package "ROS")





(defclass move_pkg::SetLocationRequest
  :super ros::object
  :slots (_state _name ))

(defmethod move_pkg::SetLocationRequest
  (:init
   (&key
    ((:state __state) "")
    ((:name __name) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _name (string __name))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass move_pkg::SetLocationResponse
  :super ros::object
  :slots (_result ))

(defmethod move_pkg::SetLocationResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass move_pkg::SetLocation
  :super ros::object
  :slots ())

(setf (get move_pkg::SetLocation :md5sum-) "209e42bb0d64821994967cc13541fa55")
(setf (get move_pkg::SetLocation :datatype-) "move_pkg/SetLocation")
(setf (get move_pkg::SetLocation :request) move_pkg::SetLocationRequest)
(setf (get move_pkg::SetLocation :response) move_pkg::SetLocationResponse)

(defmethod move_pkg::SetLocationRequest
  (:response () (instance move_pkg::SetLocationResponse :init)))

(setf (get move_pkg::SetLocationRequest :md5sum-) "209e42bb0d64821994967cc13541fa55")
(setf (get move_pkg::SetLocationRequest :datatype-) "move_pkg/SetLocationRequest")
(setf (get move_pkg::SetLocationRequest :definition-)
      "# req
string state
string name
---
# res
bool result

")

(setf (get move_pkg::SetLocationResponse :md5sum-) "209e42bb0d64821994967cc13541fa55")
(setf (get move_pkg::SetLocationResponse :datatype-) "move_pkg/SetLocationResponse")
(setf (get move_pkg::SetLocationResponse :definition-)
      "# req
string state
string name
---
# res
bool result

")



(provide :move_pkg/SetLocation "209e42bb0d64821994967cc13541fa55")


