;; Auto-generated. Do not edit!


(when (boundp 'my_controll::command)
  (if (not (find-package "MY_CONTROLL"))
    (make-package "MY_CONTROLL"))
  (shadow 'command (find-package "MY_CONTROLL")))
(unless (find-package "MY_CONTROLL::COMMAND")
  (make-package "MY_CONTROLL::COMMAND"))
(unless (find-package "MY_CONTROLL::COMMANDREQUEST")
  (make-package "MY_CONTROLL::COMMANDREQUEST"))
(unless (find-package "MY_CONTROLL::COMMANDRESPONSE")
  (make-package "MY_CONTROLL::COMMANDRESPONSE"))

(in-package "ROS")





(defclass my_controll::commandRequest
  :super ros::object
  :slots (_command _name _channel ))

(defmethod my_controll::commandRequest
  (:init
   (&key
    ((:command __command) "")
    ((:name __name) "")
    ((:channel __channel) 0)
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _name (string __name))
   (setq _channel (round __channel))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _name
    4 (length _name)
    ;; int64 _channel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int64 _channel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _channel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _channel) (= (length (_channel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_channel . bv) 0) 0) s)
              (write-long (ash (elt (_channel . bv) 1) -1) s))
             ((and (class _channel) (= (length (_channel . bv)) 1)) ;; big1
              (write-long (elt (_channel . bv) 0) s)
              (write-long (if (>= _channel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _channel s)(write-long (if (>= _channel 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _channel
#+(or :alpha :irix6 :x86_64)
      (setf _channel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _channel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass my_controll::commandResponse
  :super ros::object
  :slots (_done ))

(defmethod my_controll::commandResponse
  (:init
   (&key
    ((:done __done) 0)
    )
   (send-super :init)
   (setq _done (round __done))
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; int64 _done
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _done
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _done (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _done) (= (length (_done . bv)) 2)) ;; bignum
              (write-long (ash (elt (_done . bv) 0) 0) s)
              (write-long (ash (elt (_done . bv) 1) -1) s))
             ((and (class _done) (= (length (_done . bv)) 1)) ;; big1
              (write-long (elt (_done . bv) 0) s)
              (write-long (if (>= _done 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _done s)(write-long (if (>= _done 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _done
#+(or :alpha :irix6 :x86_64)
      (setf _done (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _done (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass my_controll::command
  :super ros::object
  :slots ())

(setf (get my_controll::command :md5sum-) "4243c91da84ec104deba2b49ffd24ad2")
(setf (get my_controll::command :datatype-) "my_controll/command")
(setf (get my_controll::command :request) my_controll::commandRequest)
(setf (get my_controll::command :response) my_controll::commandResponse)

(defmethod my_controll::commandRequest
  (:response () (instance my_controll::commandResponse :init)))

(setf (get my_controll::commandRequest :md5sum-) "4243c91da84ec104deba2b49ffd24ad2")
(setf (get my_controll::commandRequest :datatype-) "my_controll/commandRequest")
(setf (get my_controll::commandRequest :definition-)
      "string command
string name
int64 channel
---
int64 done

")

(setf (get my_controll::commandResponse :md5sum-) "4243c91da84ec104deba2b49ffd24ad2")
(setf (get my_controll::commandResponse :datatype-) "my_controll/commandResponse")
(setf (get my_controll::commandResponse :definition-)
      "string command
string name
int64 channel
---
int64 done

")



(provide :my_controll/command "4243c91da84ec104deba2b49ffd24ad2")


