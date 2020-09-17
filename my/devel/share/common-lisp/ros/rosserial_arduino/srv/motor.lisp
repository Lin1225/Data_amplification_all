; Auto-generated. Do not edit!


(cl:in-package rosserial_arduino-srv)


;//! \htmlinclude motor-request.msg.html

(cl:defclass <motor-request> (roslisp-msg-protocol:ros-message)
  ((Move
    :reader Move
    :initarg :Move
    :type cl:string
    :initform ""))
)

(cl:defclass motor-request (<motor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-srv:<motor-request> is deprecated: use rosserial_arduino-srv:motor-request instead.")))

(cl:ensure-generic-function 'Move-val :lambda-list '(m))
(cl:defmethod Move-val ((m <motor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-srv:Move-val is deprecated.  Use rosserial_arduino-srv:Move instead.")
  (Move m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor-request>) ostream)
  "Serializes a message object of type '<motor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Move))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Move))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor-request>) istream)
  "Deserializes a message object of type '<motor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Move) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Move) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor-request>)))
  "Returns string type for a service object of type '<motor-request>"
  "rosserial_arduino/motorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor-request)))
  "Returns string type for a service object of type 'motor-request"
  "rosserial_arduino/motorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor-request>)))
  "Returns md5sum for a message object of type '<motor-request>"
  "58ba11ff6615accf86f4ea6f489aba40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor-request)))
  "Returns md5sum for a message object of type 'motor-request"
  "58ba11ff6615accf86f4ea6f489aba40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor-request>)))
  "Returns full string definition for message of type '<motor-request>"
  (cl:format cl:nil "string Move~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor-request)))
  "Returns full string definition for message of type 'motor-request"
  (cl:format cl:nil "string Move~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Move))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motor-request
    (cl:cons ':Move (Move msg))
))
;//! \htmlinclude motor-response.msg.html

(cl:defclass <motor-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:string
    :initform ""))
)

(cl:defclass motor-response (<motor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-srv:<motor-response> is deprecated: use rosserial_arduino-srv:motor-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <motor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-srv:done-val is deprecated.  Use rosserial_arduino-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor-response>) ostream)
  "Serializes a message object of type '<motor-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'done))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'done))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor-response>) istream)
  "Deserializes a message object of type '<motor-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'done) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'done) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor-response>)))
  "Returns string type for a service object of type '<motor-response>"
  "rosserial_arduino/motorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor-response)))
  "Returns string type for a service object of type 'motor-response"
  "rosserial_arduino/motorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor-response>)))
  "Returns md5sum for a message object of type '<motor-response>"
  "58ba11ff6615accf86f4ea6f489aba40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor-response)))
  "Returns md5sum for a message object of type 'motor-response"
  "58ba11ff6615accf86f4ea6f489aba40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor-response>)))
  "Returns full string definition for message of type '<motor-response>"
  (cl:format cl:nil "string done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor-response)))
  "Returns full string definition for message of type 'motor-response"
  (cl:format cl:nil "string done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'done))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motor-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motor)))
  'motor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motor)))
  'motor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor)))
  "Returns string type for a service object of type '<motor>"
  "rosserial_arduino/motor")