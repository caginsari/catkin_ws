; Auto-generated. Do not edit!


(cl:in-package ilk_paket-msg)


;//! \htmlinclude drone.msg.html

(cl:defclass <drone> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (hiz
    :reader hiz
    :initarg :hiz
    :type cl:integer
    :initform 0)
   (batarya_durumu
    :reader batarya_durumu
    :initarg :batarya_durumu
    :type cl:float
    :initform 0.0)
   (sicaklik
    :reader sicaklik
    :initarg :sicaklik
    :type cl:float
    :initform 0.0))
)

(cl:defclass drone (<drone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-msg:<drone> is deprecated: use ilk_paket-msg:drone instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <drone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:id-val is deprecated.  Use ilk_paket-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <drone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:name-val is deprecated.  Use ilk_paket-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'hiz-val :lambda-list '(m))
(cl:defmethod hiz-val ((m <drone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:hiz-val is deprecated.  Use ilk_paket-msg:hiz instead.")
  (hiz m))

(cl:ensure-generic-function 'batarya_durumu-val :lambda-list '(m))
(cl:defmethod batarya_durumu-val ((m <drone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:batarya_durumu-val is deprecated.  Use ilk_paket-msg:batarya_durumu instead.")
  (batarya_durumu m))

(cl:ensure-generic-function 'sicaklik-val :lambda-list '(m))
(cl:defmethod sicaklik-val ((m <drone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:sicaklik-val is deprecated.  Use ilk_paket-msg:sicaklik instead.")
  (sicaklik m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone>) ostream)
  "Serializes a message object of type '<drone>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'hiz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batarya_durumu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sicaklik))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone>) istream)
  "Deserializes a message object of type '<drone>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hiz) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batarya_durumu) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sicaklik) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone>)))
  "Returns string type for a message object of type '<drone>"
  "ilk_paket/drone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone)))
  "Returns string type for a message object of type 'drone"
  "ilk_paket/drone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone>)))
  "Returns md5sum for a message object of type '<drone>"
  "5e14cc4353272a97d0c5ccb4f3e85f29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone)))
  "Returns md5sum for a message object of type 'drone"
  "5e14cc4353272a97d0c5ccb4f3e85f29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone>)))
  "Returns full string definition for message of type '<drone>"
  (cl:format cl:nil "int32 id~%string name~%int32 hiz~%float32 batarya_durumu~%float32 sicaklik~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone)))
  "Returns full string definition for message of type 'drone"
  (cl:format cl:nil "int32 id~%string name~%int32 hiz~%float32 batarya_durumu~%float32 sicaklik~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone>))
  "Converts a ROS message object to a list"
  (cl:list 'drone
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':hiz (hiz msg))
    (cl:cons ':batarya_durumu (batarya_durumu msg))
    (cl:cons ':sicaklik (sicaklik msg))
))
