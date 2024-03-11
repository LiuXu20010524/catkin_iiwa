;; Auto-generated. Do not edit!


(when (boundp 'iiwa_driver::FRIState)
  (if (not (find-package "IIWA_DRIVER"))
    (make-package "IIWA_DRIVER"))
  (shadow 'FRIState (find-package "IIWA_DRIVER")))
(unless (find-package "IIWA_DRIVER::FRISTATE")
  (make-package "IIWA_DRIVER::FRISTATE"))

(in-package "ROS")
;;//! \htmlinclude FRIState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iiwa_driver::FRIState
  :super ros::object
  :slots (_header _connection_quality ))

(defmethod iiwa_driver::FRIState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:connection_quality __connection_quality) (instance iiwa_driver::ConnectionQuality :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _connection_quality __connection_quality)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:connection_quality
   (&rest __connection_quality)
   (if (keywordp (car __connection_quality))
       (send* _connection_quality __connection_quality)
     (progn
       (if __connection_quality (setq _connection_quality (car __connection_quality)))
       _connection_quality)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; iiwa_driver/ConnectionQuality _connection_quality
    (send _connection_quality :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; iiwa_driver/ConnectionQuality _connection_quality
       (send _connection_quality :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; iiwa_driver/ConnectionQuality _connection_quality
     (send _connection_quality :deserialize buf ptr-) (incf ptr- (send _connection_quality :serialization-length))
   ;;
   self)
  )

(setf (get iiwa_driver::FRIState :md5sum-) "dfb94c18d53e239b6ba45eb1dfbb3c46")
(setf (get iiwa_driver::FRIState :datatype-) "iiwa_driver/FRIState")
(setf (get iiwa_driver::FRIState :definition-)
      "Header header

ConnectionQuality connection_quality
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: iiwa_driver/ConnectionQuality
int8 connection_quality
int8 POOR = 0       # poor connection quality
int8 FAIR = 1       # connection quality insufficient for command mode
int8 GOOD = 2       # connection quality sufficient for command mode
int8 EXCELLENT = 3  # excellent connection quality
")



(provide :iiwa_driver/FRIState "dfb94c18d53e239b6ba45eb1dfbb3c46")


