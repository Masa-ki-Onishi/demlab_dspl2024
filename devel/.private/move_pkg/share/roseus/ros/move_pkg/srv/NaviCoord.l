;; Auto-generated. Do not edit!


(when (boundp 'move_pkg::NaviCoord)
  (if (not (find-package "MOVE_PKG"))
    (make-package "MOVE_PKG"))
  (shadow 'NaviCoord (find-package "MOVE_PKG")))
(unless (find-package "MOVE_PKG::NAVICOORD")
  (make-package "MOVE_PKG::NAVICOORD"))
(unless (find-package "MOVE_PKG::NAVICOORDREQUEST")
  (make-package "MOVE_PKG::NAVICOORDREQUEST"))
(unless (find-package "MOVE_PKG::NAVICOORDRESPONSE")
  (make-package "MOVE_PKG::NAVICOORDRESPONSE"))

(in-package "ROS")





(defclass move_pkg::NaviCoordRequest
  :super ros::object
  :slots (_loc_coord ))

(defmethod move_pkg::NaviCoordRequest
  (:init
   (&key
    ((:loc_coord __loc_coord) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _loc_coord __loc_coord)
   self)
  (:loc_coord
   (&optional __loc_coord)
   (if __loc_coord (setq _loc_coord __loc_coord)) _loc_coord)
  (:serialization-length
   ()
   (+
    ;; float32[] _loc_coord
    (* 4    (length _loc_coord)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _loc_coord
     (write-long (length _loc_coord) s)
     (dotimes (i (length _loc_coord))
       (sys::poke (elt _loc_coord i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _loc_coord
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loc_coord (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _loc_coord i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass move_pkg::NaviCoordResponse
  :super ros::object
  :slots (_result ))

(defmethod move_pkg::NaviCoordResponse
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

(defclass move_pkg::NaviCoord
  :super ros::object
  :slots ())

(setf (get move_pkg::NaviCoord :md5sum-) "c19bb617d86363fd7d4da46342cc0d3b")
(setf (get move_pkg::NaviCoord :datatype-) "move_pkg/NaviCoord")
(setf (get move_pkg::NaviCoord :request) move_pkg::NaviCoordRequest)
(setf (get move_pkg::NaviCoord :response) move_pkg::NaviCoordResponse)

(defmethod move_pkg::NaviCoordRequest
  (:response () (instance move_pkg::NaviCoordResponse :init)))

(setf (get move_pkg::NaviCoordRequest :md5sum-) "c19bb617d86363fd7d4da46342cc0d3b")
(setf (get move_pkg::NaviCoordRequest :datatype-) "move_pkg/NaviCoordRequest")
(setf (get move_pkg::NaviCoordRequest :definition-)
      "# req
float32[] loc_coord
---
# res
bool result

")

(setf (get move_pkg::NaviCoordResponse :md5sum-) "c19bb617d86363fd7d4da46342cc0d3b")
(setf (get move_pkg::NaviCoordResponse :datatype-) "move_pkg/NaviCoordResponse")
(setf (get move_pkg::NaviCoordResponse :definition-)
      "# req
float32[] loc_coord
---
# res
bool result

")



(provide :move_pkg/NaviCoord "c19bb617d86363fd7d4da46342cc0d3b")


