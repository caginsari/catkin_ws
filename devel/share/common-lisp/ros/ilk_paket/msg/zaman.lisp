; Auto-generated. Do not edit!


(cl:in-package ilk_paket-msg)


;//! \htmlinclude zaman.msg.html

(cl:defclass <zaman> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass zaman (<zaman>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <zaman>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'zaman)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-msg:<zaman> is deprecated: use ilk_paket-msg:zaman instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <zaman>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:stamp-val is deprecated.  Use ilk_paket-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <zaman>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:data-val is deprecated.  Use ilk_paket-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <zaman>) ostream)
  "Serializes a message object of type '<zaman>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <zaman>) istream)
  "Deserializes a message object of type '<zaman>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<zaman>)))
  "Returns string type for a message object of type '<zaman>"
  "ilk_paket/zaman")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'zaman)))
  "Returns string type for a message object of type 'zaman"
  "ilk_paket/zaman")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<zaman>)))
  "Returns md5sum for a message object of type '<zaman>"
  "bc5a8a0aefee54a11d41536be86744a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'zaman)))
  "Returns md5sum for a message object of type 'zaman"
  "bc5a8a0aefee54a11d41536be86744a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<zaman>)))
  "Returns full string definition for message of type '<zaman>"
  (cl:format cl:nil "time stamp~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'zaman)))
  "Returns full string definition for message of type 'zaman"
  (cl:format cl:nil "time stamp~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <zaman>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <zaman>))
  "Converts a ROS message object to a list"
  (cl:list 'zaman
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
