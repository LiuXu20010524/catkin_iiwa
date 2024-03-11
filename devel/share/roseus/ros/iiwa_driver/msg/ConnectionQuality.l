;; Auto-generated. Do not edit!


(when (boundp 'iiwa_driver::ConnectionQuality)
  (if (not (find-package "IIWA_DRIVER"))
    (make-package "IIWA_DRIVER"))
  (shadow 'ConnectionQuality (find-package "IIWA_DRIVER")))
(unless (find-package "IIWA_DRIVER::CONNECTIONQUALITY")
  (make-package "IIWA_DRIVER::CONNECTIONQUALITY"))

(in-package "ROS")
;;//! \htmlinclude ConnectionQuality.msg.html


(intern "*POOR*" (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(shadow '*POOR* (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(defconstant iiwa_driver::ConnectionQuality::*POOR* 0)
(intern "*FAIR*" (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(shadow '*FAIR* (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(defconstant iiwa_driver::ConnectionQuality::*FAIR* 1)
(intern "*GOOD*" (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(shadow '*GOOD* (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(defconstant iiwa_driver::ConnectionQuality::*GOOD* 2)
(intern "*EXCELLENT*" (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(shadow '*EXCELLENT* (find-package "IIWA_DRIVER::CONNECTIONQUALITY"))
(defconstant iiwa_driver::ConnectionQuality::*EXCELLENT* 3)

(defun iiwa_driver::ConnectionQuality-to-symbol (const)
  (cond
        ((= const 0) 'iiwa_driver::ConnectionQuality::*POOR*)
        ((= const 1) 'iiwa_driver::ConnectionQuality::*FAIR*)
        ((= const 2) 'iiwa_driver::ConnectionQuality::*GOOD*)
        ((= const 3) 'iiwa_driver::ConnectionQuality::*EXCELLENT*)
        (t nil)))

(defclass iiwa_driver::ConnectionQuality
  :super ros::object
  :slots (_connection_quality ))

(defmethod iiwa_driver::ConnectionQuality
  (:init
   (&key
    ((:connection_quality __connection_quality) 0)
    )
   (send-super :init)
   (setq _connection_quality (round __connection_quality))
   self)
  (:connection_quality
   (&optional __connection_quality)
   (if __connection_quality (setq _connection_quality __connection_quality)) _connection_quality)
  (:serialization-length
   ()
   (+
    ;; int8 _connection_quality
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _connection_quality
       (write-byte _connection_quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _connection_quality
     (setq _connection_quality (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _connection_quality 127) (setq _connection_quality (- _connection_quality 256)))
   ;;
   self)
  )

(setf (get iiwa_driver::ConnectionQuality :md5sum-) "36b844413f3c0379a097d5209770c460")
(setf (get iiwa_driver::ConnectionQuality :datatype-) "iiwa_driver/ConnectionQuality")
(setf (get iiwa_driver::ConnectionQuality :definition-)
      "int8 connection_quality
int8 POOR = 0       # poor connection quality
int8 FAIR = 1       # connection quality insufficient for command mode
int8 GOOD = 2       # connection quality sufficient for command mode
int8 EXCELLENT = 3  # excellent connection quality
")



(provide :iiwa_driver/ConnectionQuality "36b844413f3c0379a097d5209770c460")


