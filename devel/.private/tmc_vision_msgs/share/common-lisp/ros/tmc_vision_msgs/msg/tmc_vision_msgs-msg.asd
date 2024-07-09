
(cl:in-package :asdf)

(defsystem "tmc_vision_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
    (:file "DetectionArray" :depends-on ("_package_DetectionArray"))
    (:file "_package_DetectionArray" :depends-on ("_package"))
    (:file "Label" :depends-on ("_package_Label"))
    (:file "_package_Label" :depends-on ("_package"))
  ))