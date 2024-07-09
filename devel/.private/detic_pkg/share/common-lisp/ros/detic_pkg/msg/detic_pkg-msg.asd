
(cl:in-package :asdf)

(defsystem "detic_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Data" :depends-on ("_package_Data"))
    (:file "_package_Data" :depends-on ("_package"))
    (:file "Result" :depends-on ("_package_Result"))
    (:file "_package_Result" :depends-on ("_package"))
  ))