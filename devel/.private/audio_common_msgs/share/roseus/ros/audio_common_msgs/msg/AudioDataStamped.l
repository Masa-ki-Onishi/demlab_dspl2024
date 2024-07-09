;; Auto-generated. Do not edit!


(when (boundp 'audio_common_msgs::AudioDataStamped)
  (if (not (find-package "AUDIO_COMMON_MSGS"))
    (make-package "AUDIO_COMMON_MSGS"))
  (shadow 'AudioDataStamped (find-package "AUDIO_COMMON_MSGS")))
(unless (find-package "AUDIO_COMMON_MSGS::AUDIODATASTAMPED")
  (make-package "AUDIO_COMMON_MSGS::AUDIODATASTAMPED"))

(in-package "ROS")
;;//! \htmlinclude AudioDataStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass audio_common_msgs::AudioDataStamped
  :super ros::object
  :slots (_header _audio ))

(defmethod audio_common_msgs::AudioDataStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:audio __audio) (instance audio_common_msgs::AudioData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _audio __audio)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:audio
   (&rest __audio)
   (if (keywordp (car __audio))
       (send* _audio __audio)
     (progn
       (if __audio (setq _audio (car __audio)))
       _audio)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; audio_common_msgs/AudioData _audio
    (send _audio :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; audio_common_msgs/AudioData _audio
       (send _audio :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; audio_common_msgs/AudioData _audio
     (send _audio :deserialize buf ptr-) (incf ptr- (send _audio :serialization-length))
   ;;
   self)
  )

(setf (get audio_common_msgs::AudioDataStamped :md5sum-) "3cdd84a06846af0dca4d0434908f9d96")
(setf (get audio_common_msgs::AudioDataStamped :datatype-) "audio_common_msgs/AudioDataStamped")
(setf (get audio_common_msgs::AudioDataStamped :definition-)
      "std_msgs/Header header
audio_common_msgs/AudioData audio

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
MSG: audio_common_msgs/AudioData
uint8[] data

")



(provide :audio_common_msgs/AudioDataStamped "3cdd84a06846af0dca4d0434908f9d96")


