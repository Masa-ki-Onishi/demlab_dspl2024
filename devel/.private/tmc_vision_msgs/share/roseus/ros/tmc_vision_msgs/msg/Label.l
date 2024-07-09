;; Auto-generated. Do not edit!


(when (boundp 'tmc_vision_msgs::Label)
  (if (not (find-package "TMC_VISION_MSGS"))
    (make-package "TMC_VISION_MSGS"))
  (shadow 'Label (find-package "TMC_VISION_MSGS")))
(unless (find-package "TMC_VISION_MSGS::LABEL")
  (make-package "TMC_VISION_MSGS::LABEL"))

(in-package "ROS")
;;//! \htmlinclude Label.msg.html


(defclass tmc_vision_msgs::Label
  :super ros::object
  :slots (_name _confidence ))

(defmethod tmc_vision_msgs::Label
  (:init
   (&key
    ((:name __name) "")
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _confidence (float __confidence))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tmc_vision_msgs::Label :md5sum-) "e57824c8cf63aef336f2ff71c7581ea6")
(setf (get tmc_vision_msgs::Label :datatype-) "tmc_vision_msgs/Label")
(setf (get tmc_vision_msgs::Label :definition-)
      "# label name
string name

# confidence of this label
float64 confidence

")



(provide :tmc_vision_msgs/Label "e57824c8cf63aef336f2ff71c7581ea6")


