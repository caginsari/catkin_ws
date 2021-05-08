
(cl:in-package :asdf)

(defsystem "ilk_paket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "drone" :depends-on ("_package_drone"))
    (:file "_package_drone" :depends-on ("_package"))
    (:file "zaman" :depends-on ("_package_zaman"))
    (:file "_package_zaman" :depends-on ("_package"))
  ))