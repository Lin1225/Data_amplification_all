;; Auto-generated. Do not edit!


(when (boundp 'my_controll::motor)
  (if (not (find-package "MY_CONTROLL"))
    (make-package "MY_CONTROLL"))
  (shadow 'motor (find-package "MY_CONTROLL")))
(unless (find-package "MY_CONTROLL::MOTOR")
  (make-package "MY_CONTROLL::MOTOR"))
(unless (find-package "MY_CONTROLL::MOTORREQUEST")
  (make-package "MY_CONTROLL::MOTORREQUEST"))
(unless (find-package "MY_CONTROLL::MOTORRESPONSE")
  (make-package "MY_CONTROLL::MOTORRESPONSE"))

(in-package "ROS")





(defclass my_controll::motorRequest
  :super ros::object
  :slots (_Move ))

(defmethod my_controll::motorRequest
  (:init
   (&key
    ((:Move __Move) "")
    )
   (send-super :init)
   (setq _Move (string __Move))
   self)
  (:Move
   (&optional __Move)
   (if __Move (setq _Move __Move)) _Move)
  (:serialization-length
   ()
   (+
    ;; string _Move
    4 (length _Move)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Move
       (write-long (length _Move) s) (princ _Move s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Move
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Move (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_controll::motorResponse
  :super ros::object
  :slots (_done ))

(defmethod my_controll::motorResponse
  (:init
   (&key
    ((:done __done) "")
    )
   (send-super :init)
   (setq _done (string __done))
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; string _done
    4 (length _done)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _done
       (write-long (length _done) s) (princ _done s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _done
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _done (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_controll::motor
  :super ros::object
  :slots ())

(setf (get my_controll::motor :md5sum-) "58ba11ff6615accf86f4ea6f489aba40")
(setf (get my_controll::motor :datatype-) "my_controll/motor")
(setf (get my_controll::motor :request) my_controll::motorRequest)
(setf (get my_controll::motor :response) my_controll::motorResponse)

(defmethod my_controll::motorRequest
  (:response () (instance my_controll::motorResponse :init)))

(setf (get my_controll::motorRequest :md5sum-) "58ba11ff6615accf86f4ea6f489aba40")
(setf (get my_controll::motorRequest :datatype-) "my_controll/motorRequest")
(setf (get my_controll::motorRequest :definition-)
      "string Move
---
string done

")

(setf (get my_controll::motorResponse :md5sum-) "58ba11ff6615accf86f4ea6f489aba40")
(setf (get my_controll::motorResponse :datatype-) "my_controll/motorResponse")
(setf (get my_controll::motorResponse :definition-)
      "string Move
---
string done

")



(provide :my_controll/motor "58ba11ff6615accf86f4ea6f489aba40")


