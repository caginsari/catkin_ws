
(cl:in-package :asdf)

(defsystem "opencv_application-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "kinect" :depends-on ("_package_kinect"))
    (:file "_package_kinect" :depends-on ("_package"))
    (:file "time" :depends-on ("_package_time"))
    (:file "_package_time" :depends-on ("_package"))
  ))