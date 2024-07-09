;; Auto-generated. Do not edit!


(when (boundp 'detic_pkg::Data)
  (if (not (find-package "DETIC_PKG"))
    (make-package "DETIC_PKG"))
  (shadow 'Data (find-package "DETIC_PKG")))
(unless (find-package "DETIC_PKG::DATA")
  (make-package "DETIC_PKG::DATA"))

(in-package "ROS")
;;//! \htmlinclude Data.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass detic_pkg::Data
  :super ros::object
  :slots (_class_ids _class_name _xyz _boxes ))

(defmethod detic_pkg::Data
  (:init
   (&key
    ((:class_ids __class_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:class_name __class_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:xyz __xyz) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:boxes __boxes) ())
    )
   (send-super :init)
   (setq _class_ids __class_ids)
   (setq _class_name __class_name)
   (setq _xyz __xyz)
   (setq _boxes __boxes)
   self)
  (:class_ids
   (&optional __class_ids)
   (if __class_ids (setq _class_ids __class_ids)) _class_ids)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:xyz
   (&optional __xyz)
   (if __xyz (setq _xyz __xyz)) _xyz)
  (:boxes
   (&rest __boxes)
   (if (keywordp (car __boxes))
       (send* _boxes __boxes)
     (progn
       (if __boxes (setq _boxes (car __boxes)))
       _boxes)))
  (:serialization-length
   ()
   (+
    ;; int32[] _class_ids
    (* 4    (length _class_ids)) 4
    ;; string[] _class_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _class_name)) 4
    ;; float64[] _xyz
    (* 8    (length _xyz)) 4
    ;; sensor_msgs/RegionOfInterest[] _boxes
    (apply #'+ (send-all _boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _class_ids
     (write-long (length _class_ids) s)
     (dotimes (i (length _class_ids))
       (write-long (elt _class_ids i) s)
       )
     ;; string[] _class_name
     (write-long (length _class_name) s)
     (dolist (elem _class_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _xyz
     (write-long (length _xyz) s)
     (dotimes (i (length _xyz))
       (sys::poke (elt _xyz i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; sensor_msgs/RegionOfInterest[] _boxes
     (write-long (length _boxes) s)
     (dolist (elem _boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _class_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _class_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _class_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _class_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _xyz
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xyz (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xyz i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; sensor_msgs/RegionOfInterest[] _boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boxes (let (r) (dotimes (i n) (push (instance sensor_msgs::RegionOfInterest :init) r)) r))
     (dolist (elem- _boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get detic_pkg::Data :md5sum-) "f65e8c43aa92c738d02da52bdabbf691")
(setf (get detic_pkg::Data :datatype-) "detic_pkg/Data")
(setf (get detic_pkg::Data :definition-)
      "# class_ids
int32[] class_ids

# class_name
string[] class_name

# xyz
float64[] xyz

# Bounding boxes in pixels
sensor_msgs/RegionOfInterest[] boxes


================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :detic_pkg/Data "f65e8c43aa92c738d02da52bdabbf691")


