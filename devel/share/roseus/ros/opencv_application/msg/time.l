;; Auto-generated. Do not edit!


(when (boundp 'opencv_application::time)
  (if (not (find-package "OPENCV_APPLICATION"))
    (make-package "OPENCV_APPLICATION"))
  (shadow 'time (find-package "OPENCV_APPLICATION")))
(unless (find-package "OPENCV_APPLICATION::TIME")
  (make-package "OPENCV_APPLICATION::TIME"))

(in-package "ROS")
;;//! \htmlinclude time.msg.html


(defclass opencv_application::time
  :super ros::object
  :slots (_stamp _data ))

(defmethod opencv_application::time
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

(setf (get opencv_application::time :md5sum-) "bc5a8a0aefee54a11d41536be86744a6")
(setf (get opencv_application::time :datatype-) "opencv_application/time")
(setf (get opencv_application::time :definition-)
      "time stamp
int32 data
")



(provide :opencv_application/time "bc5a8a0aefee54a11d41536be86744a6")


