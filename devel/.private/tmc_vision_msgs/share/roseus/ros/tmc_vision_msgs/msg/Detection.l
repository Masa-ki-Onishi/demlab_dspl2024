;; Auto-generated. Do not edit!


(when (boundp 'tmc_vision_msgs::Detection)
  (if (not (find-package "TMC_VISION_MSGS"))
    (make-package "TMC_VISION_MSGS"))
  (shadow 'Detection (find-package "TMC_VISION_MSGS")))
(unless (find-package "TMC_VISION_MSGS::DETECTION")
  (make-package "TMC_VISION_MSGS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html


(defclass tmc_vision_msgs::Detection
  :super ros::object
  :slots (_label _x _y _width _height ))

(defmethod tmc_vision_msgs::Detection
  (:init
   (&key
    ((:label __label) (instance tmc_vision_msgs::Label :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _label __label)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:label
   (&rest __label)
   (if (keywordp (car __label))
       (send* _label __label)
     (progn
       (if __label (setq _label (car __label)))
       _label)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; tmc_vision_msgs/Label _label
    (send _label :serialization-length)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tmc_vision_msgs/Label _label
       (send _label :serialize s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tmc_vision_msgs/Label _label
     (send _label :deserialize buf ptr-) (incf ptr- (send _label :serialization-length))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tmc_vision_msgs::Detection :md5sum-) "7b22e438fe4366fad4149fe0a76d2b35")
(setf (get tmc_vision_msgs::Detection :datatype-) "tmc_vision_msgs/Detection")
(setf (get tmc_vision_msgs::Detection :definition-)
      "tmc_vision_msgs/Label label
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



(provide :tmc_vision_msgs/Detection "7b22e438fe4366fad4149fe0a76d2b35")


