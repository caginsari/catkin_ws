;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::drone)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'drone (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::DRONE")
  (make-package "ILK_PAKET::DRONE"))

(in-package "ROS")
;;//! \htmlinclude drone.msg.html


(defclass ilk_paket::drone
  :super ros::object
  :slots (_id _name _hiz _batarya_durumu _sicaklik ))

(defmethod ilk_paket::drone
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:hiz __hiz) 0)
    ((:batarya_durumu __batarya_durumu) 0.0)
    ((:sicaklik __sicaklik) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _hiz (round __hiz))
   (setq _batarya_durumu (float __batarya_durumu))
   (setq _sicaklik (float __sicaklik))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:hiz
   (&optional __hiz)
   (if __hiz (setq _hiz __hiz)) _hiz)
  (:batarya_durumu
   (&optional __batarya_durumu)
   (if __batarya_durumu (setq _batarya_durumu __batarya_durumu)) _batarya_durumu)
  (:sicaklik
   (&optional __sicaklik)
   (if __sicaklik (setq _sicaklik __sicaklik)) _sicaklik)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; int32 _hiz
    4
    ;; float32 _batarya_durumu
    4
    ;; float32 _sicaklik
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _hiz
       (write-long _hiz s)
     ;; float32 _batarya_durumu
       (sys::poke _batarya_durumu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sicaklik
       (sys::poke _sicaklik (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _hiz
     (setq _hiz (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _batarya_durumu
     (setq _batarya_durumu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sicaklik
     (setq _sicaklik (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ilk_paket::drone :md5sum-) "5e14cc4353272a97d0c5ccb4f3e85f29")
(setf (get ilk_paket::drone :datatype-) "ilk_paket/drone")
(setf (get ilk_paket::drone :definition-)
      "int32 id
string name
int32 hiz
float32 batarya_durumu
float32 sicaklik

")



(provide :ilk_paket/drone "5e14cc4353272a97d0c5ccb4f3e85f29")


