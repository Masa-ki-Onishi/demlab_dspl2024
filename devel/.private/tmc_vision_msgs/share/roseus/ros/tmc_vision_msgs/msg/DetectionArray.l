;; Auto-generated. Do not edit!


(when (boundp 'tmc_vision_msgs::DetectionArray)
  (if (not (find-package "TMC_VISION_MSGS"))
    (make-package "TMC_VISION_MSGS"))
  (shadow 'DetectionArray (find-package "TMC_VISION_MSGS")))
(unless (find-package "TMC_VISION_MSGS::DETECTIONARRAY")
  (make-package "TMC_VISION_MSGS::DETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tmc_vision_msgs::DetectionArray
  :super ros::object
  :slots (_header _detections ))

(defmethod tmc_vision_msgs::DetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tmc_vision_msgs/Detection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tmc_vision_msgs/Detection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tmc_vision_msgs/Detection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance tmc_vision_msgs::Detection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tmc_vision_msgs::DetectionArray :md5sum-) "81ce6d024652b585c906e49f2c2eb09c")
(setf (get tmc_vision_msgs::DetectionArray :datatype-) "tmc_vision_msgs/DetectionArray")
(setf (get tmc_vision_msgs::DetectionArray :definition-)
      "Header header
Detection[] detections

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: tmc_vision_msgs/Detection
tmc_vision_msgs/Label label
float64 x
float64 y
float64 width
float64 height

================================================================================
MSG: tmc_vision_msgs/Label
# label name
string name

# confidence of this label
float64 confidence

")



(provide :tmc_vision_msgs/DetectionArray "81ce6d024652b585c906e49f2c2eb09c")


