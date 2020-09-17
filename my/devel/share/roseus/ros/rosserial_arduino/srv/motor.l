;; Auto-generated. Do not edit!


(when (boundp 'rosserial_arduino::motor)
  (if (not (find-package "ROSSERIAL_ARDUINO"))
    (make-package "ROSSERIAL_ARDUINO"))
  (shadow 'motor (find-package "ROSSERIAL_ARDUINO")))
(unless (find-package "ROSSERIAL_ARDUINO::MOTOR")
  (make-package "ROSSERIAL_ARDUINO::MOTOR"))
(unless (find-package "ROSSERIAL_ARDUINO::MOTORREQUEST")
  (make-package "ROSSERIAL_ARDUINO::MOTORREQUEST"))
(unless (find-package "ROSSERIAL_ARDUINO::MOTORRESPONSE")
  (make-package "ROSSERIAL_ARDUINO::MOTORRESPONSE"))

(in-package "ROS")





(defclass rosserial_arduino::motorRequest
  :super ros::object
  :slots (_Move ))

(defmethod rosserial_arduino::motorRequest
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

(defclass rosserial_arduino::motorResponse
  :super ros::object
  :slots (_done ))

(defmethod rosserial_arduino::motorResponse
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

(defclass rosserial_arduino::motor
  :super ros::object
  :slots ())

(setf (get rosserial_arduino::motor :md5sum-) "58ba11ff6615accf86f4ea6f489aba40")
(setf (get rosserial_arduino::motor :datatype-) "rosserial_arduino/motor")
(setf (get rosserial_arduino::motor :request) rosserial_arduino::motorRequest)
(setf (get rosserial_arduino::motor :response) rosserial_arduino::motorResponse)

(defmethod rosserial_arduino::motorRequest
  (:response () (instance rosserial_arduino::motorResponse :init)))

(setf (get rosserial_arduino::motorRequest :md5sum-) "58ba11ff6615accf86f4ea6f489aba40")
(setf (get rosserial_arduino::motorRequest :datatype-) "rosserial_arduino/motorRequest")
(setf (get rosserial_arduino::motorRequest :definition-)
      "string Move
---
string done

")

(setf (get rosserial_arduino::motorResponse :md5sum-) "58ba11ff6615accf86f4ea6f489aba40")
(setf (get rosserial_arduino::motorResponse :datatype-) "rosserial_arduino/motorResponse")
(setf (get rosserial_arduino::motorResponse :definition-)
      "string Move
---
string done

")



(provide :rosserial_arduino/motor "58ba11ff6615accf86f4ea6f489aba40")


