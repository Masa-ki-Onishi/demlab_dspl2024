;; Auto-generated. Do not edit!


(when (boundp 'move_pkg::NaviLocation)
  (if (not (find-package "MOVE_PKG"))
    (make-package "MOVE_PKG"))
  (shadow 'NaviLocation (find-package "MOVE_PKG")))
(unless (find-package "MOVE_PKG::NAVILOCATION")
  (make-package "MOVE_PKG::NAVILOCATION"))
(unless (find-package "MOVE_PKG::NAVILOCATIONREQUEST")
  (make-package "MOVE_PKG::NAVILOCATIONREQUEST"))
(unless (find-package "MOVE_PKG::NAVILOCATIONRESPONSE")
  (make-package "MOVE_PKG::NAVILOCATIONRESPONSE"))

(in-package "ROS")





(defclass move_pkg::NaviLocationRequest
  :super ros::object
  :slots (_location_name ))

(defmethod move_pkg::NaviLocationRequest
  (:init
   (&key
    ((:location_name __location_name) "")
    )
   (send-super :init)
   (setq _location_name (string __location_name))
   self)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:serialization-length
   ()
   (+
    ;; string _location_name
    4 (length _location_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass move_pkg::NaviLocationResponse
  :super ros::object
  :slots (_result ))

(defmethod move_pkg::NaviLocationResponse
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

(defclass move_pkg::NaviLocation
  :super ros::object
  :slots ())

(setf (get move_pkg::NaviLocation :md5sum-) "bfc4f7f59a15d34fcc697e576374d757")
(setf (get move_pkg::NaviLocation :datatype-) "move_pkg/NaviLocation")
(setf (get move_pkg::NaviLocation :request) move_pkg::NaviLocationRequest)
(setf (get move_pkg::NaviLocation :response) move_pkg::NaviLocationResponse)

(defmethod move_pkg::NaviLocationRequest
  (:response () (instance move_pkg::NaviLocationResponse :init)))

(setf (get move_pkg::NaviLocationRequest :md5sum-) "bfc4f7f59a15d34fcc697e576374d757")
(setf (get move_pkg::NaviLocationRequest :datatype-) "move_pkg/NaviLocationRequest")
(setf (get move_pkg::NaviLocationRequest :definition-)
      "string location_name
---
bool result

")

(setf (get move_pkg::NaviLocationResponse :md5sum-) "bfc4f7f59a15d34fcc697e576374d757")
(setf (get move_pkg::NaviLocationResponse :datatype-) "move_pkg/NaviLocationResponse")
(setf (get move_pkg::NaviLocationResponse :definition-)
      "string location_name
---
bool result

")



(provide :move_pkg/NaviLocation "bfc4f7f59a15d34fcc697e576374d757")


