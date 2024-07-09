
(cl:in-package :asdf)

(defsystem "move_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NaviCoord" :depends-on ("_package_NaviCoord"))
    (:file "_package_NaviCoord" :depends-on ("_package"))
    (:file "NaviLocation" :depends-on ("_package_NaviLocation"))
    (:file "_package_NaviLocation" :depends-on ("_package"))
    (:file "SetLocation" :depends-on ("_package_SetLocation"))
    (:file "_package_SetLocation" :depends-on ("_package"))
  ))