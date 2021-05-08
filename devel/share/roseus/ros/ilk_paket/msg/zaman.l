;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::zaman)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'zaman (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::ZAMAN")
  (make-package "ILK_PAKET::ZAMAN"))

(in-package "ROS")
;;//! \htmlinclude zaman.msg.html


(defclass ilk_paket::zaman
  :super ros::object
  :slots (_stamp _data ))

(defmethod ilk_paket::zaman
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (round __data))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ilk_paket::zaman :md5sum-) "bc5a8a0aefee54a11d41536be86744a6")
(setf (get ilk_paket::zaman :datatype-) "ilk_paket/zaman")
(setf (get ilk_paket::zaman :definition-)
      "time stamp
int32 data
")



(provide :ilk_paket/zaman "bc5a8a0aefee54a11d41536be86744a6")


