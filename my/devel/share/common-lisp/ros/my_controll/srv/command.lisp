; Auto-generated. Do not edit!


(cl:in-package my_controll-srv)


;//! \htmlinclude command-request.msg.html

(cl:defclass <command-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0))
)

(cl:defclass command-request (<command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_controll-srv:<command-request> is deprecated: use my_controll-srv:command-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_controll-srv:command-val is deprecated.  Use my_controll-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_controll-srv:name-val is deprecated.  Use my_controll-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_controll-srv:channel-val is deprecated.  Use my_controll-srv:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command-request>) ostream)
  "Serializes a message object of type '<command-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command-request>) istream)
  "Deserializes a message object of type '<command-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command-request>)))
  "Returns string type for a service object of type '<command-request>"
  "my_controll/commandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command-request)))
  "Returns string type for a service object of type 'command-request"
  "my_controll/commandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command-request>)))
  "Returns md5sum for a message object of type '<command-request>"
  "4243c91da84ec104deba2b49ffd24ad2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command-request)))
  "Returns md5sum for a message object of type 'command-request"
  "4243c91da84ec104deba2b49ffd24ad2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command-request>)))
  "Returns full string definition for message of type '<command-request>"
  (cl:format cl:nil "string command~%string name~%int64 channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command-request)))
  "Returns full string definition for message of type 'command-request"
  (cl:format cl:nil "string command~%string name~%int64 channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'command-request
    (cl:cons ':command (command msg))
    (cl:cons ':name (name msg))
    (cl:cons ':channel (channel msg))
))
;//! \htmlinclude command-response.msg.html

(cl:defclass <command-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:integer
    :initform 0))
)

(cl:defclass command-response (<command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_controll-srv:<command-response> is deprecated: use my_controll-srv:command-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_controll-srv:done-val is deprecated.  Use my_controll-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command-response>) ostream)
  "Serializes a message object of type '<command-response>"
  (cl:let* ((signed (cl:slot-value msg 'done)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command-response>) istream)
  "Deserializes a message object of type '<command-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'done) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command-response>)))
  "Returns string type for a service object of type '<command-response>"
  "my_controll/commandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command-response)))
  "Returns string type for a service object of type 'command-response"
  "my_controll/commandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command-response>)))
  "Returns md5sum for a message object of type '<command-response>"
  "4243c91da84ec104deba2b49ffd24ad2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command-response)))
  "Returns md5sum for a message object of type 'command-response"
  "4243c91da84ec104deba2b49ffd24ad2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command-response>)))
  "Returns full string definition for message of type '<command-response>"
  (cl:format cl:nil "int64 done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command-response)))
  "Returns full string definition for message of type 'command-response"
  (cl:format cl:nil "int64 done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'command-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'command)))
  'command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'command)))
  'command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command)))
  "Returns string type for a service object of type '<command>"
  "my_controll/command")