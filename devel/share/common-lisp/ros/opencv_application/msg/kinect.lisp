; Auto-generated. Do not edit!


(cl:in-package opencv_application-msg)


;//! \htmlinclude kinect.msg.html

(cl:defclass <kinect> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass kinect (<kinect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opencv_application-msg:<kinect> is deprecated: use opencv_application-msg:kinect instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <kinect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_application-msg:x-val is deprecated.  Use opencv_application-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <kinect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_application-msg:y-val is deprecated.  Use opencv_application-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <kinect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_application-msg:name-val is deprecated.  Use opencv_application-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinect>) ostream)
  "Serializes a message object of type '<kinect>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinect>) istream)
  "Deserializes a message object of type '<kinect>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinect>)))
  "Returns string type for a message object of type '<kinect>"
  "opencv_application/kinect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinect)))
  "Returns string type for a message object of type 'kinect"
  "opencv_application/kinect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinect>)))
  "Returns md5sum for a message object of type '<kinect>"
  "328a8762c487b00a719cc4b35acd34d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinect)))
  "Returns md5sum for a message object of type 'kinect"
  "328a8762c487b00a719cc4b35acd34d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinect>)))
  "Returns full string definition for message of type '<kinect>"
  (cl:format cl:nil "int32 x~%int32 y~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinect)))
  "Returns full string definition for message of type 'kinect"
  (cl:format cl:nil "int32 x~%int32 y~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinect>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinect>))
  "Converts a ROS message object to a list"
  (cl:list 'kinect
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':name (name msg))
))
