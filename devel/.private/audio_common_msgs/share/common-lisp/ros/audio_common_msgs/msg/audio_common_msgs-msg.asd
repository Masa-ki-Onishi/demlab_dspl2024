
(cl:in-package :asdf)

(defsystem "audio_common_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AudioData" :depends-on ("_package_AudioData"))
    (:file "_package_AudioData" :depends-on ("_package"))
    (:file "AudioDataStamped" :depends-on ("_package_AudioDataStamped"))
    (:file "_package_AudioDataStamped" :depends-on ("_package"))
    (:file "AudioInfo" :depends-on ("_package_AudioInfo"))
    (:file "_package_AudioInfo" :depends-on ("_package"))
  ))