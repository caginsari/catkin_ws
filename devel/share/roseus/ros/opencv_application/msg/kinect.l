;; Auto-generated. Do not edit!


(when (boundp 'opencv_application::kinect)
  (if (not (find-package "OPENCV_APPLICATION"))
    (make-package "OPENCV_APPLICATION"))
  (shadow 'kinect (find-package "OPENCV_APPLICATION")))
(unless (find-package "OPENCV_APPLICATION::KINECT")
  (make-package "OPENCV_APPLICATION::KINECT"))

(in-package "ROS")
;;//! \htmlinclude kinect.msg.html


(defclass opencv_application::kinect
  :super ros::object
  :slots (_x _y _name ))

(defmethod opencv_application::kinect
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _name (string __name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get opencv_application::kinect :md5sum-) "328a8762c487b00a719cc4b35acd34d1")
(setf (get opencv_application::kinect :datatype-) "opencv_application/kinect")
(setf (get opencv_application::kinect :definition-)
      "int32 x
int32 y
string name
")



(provide :opencv_application/kinect "328a8762c487b00a719cc4b35acd34d1")


