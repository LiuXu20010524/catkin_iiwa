;; Auto-generated. Do not edit!


(when (boundp 'iiwa_tools::GetGravity)
  (if (not (find-package "IIWA_TOOLS"))
    (make-package "IIWA_TOOLS"))
  (shadow 'GetGravity (find-package "IIWA_TOOLS")))
(unless (find-package "IIWA_TOOLS::GETGRAVITY")
  (make-package "IIWA_TOOLS::GETGRAVITY"))
(unless (find-package "IIWA_TOOLS::GETGRAVITYREQUEST")
  (make-package "IIWA_TOOLS::GETGRAVITYREQUEST"))
(unless (find-package "IIWA_TOOLS::GETGRAVITYRESPONSE")
  (make-package "IIWA_TOOLS::GETGRAVITYRESPONSE"))

(in-package "ROS")





(defclass iiwa_tools::GetGravityRequest
  :super ros::object
  :slots (_joint_angles _joint_velocities _joint_torques _gravity ))

(defmethod iiwa_tools::GetGravityRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_velocities __joint_velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_torques __joint_torques) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gravity __gravity) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _joint_velocities __joint_velocities)
   (setq _joint_torques __joint_torques)
   (setq _gravity __gravity)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:joint_velocities
   (&optional __joint_velocities)
   (if __joint_velocities (setq _joint_velocities __joint_velocities)) _joint_velocities)
  (:joint_torques
   (&optional __joint_torques)
   (if __joint_torques (setq _joint_torques __joint_torques)) _joint_torques)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_angles
    (* 8    (length _joint_angles)) 4
    ;; float64[] _joint_velocities
    (* 8    (length _joint_velocities)) 4
    ;; float64[] _joint_torques
    (* 8    (length _joint_torques)) 4
    ;; float64[] _gravity
    (* 8    (length _gravity)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_velocities
     (write-long (length _joint_velocities) s)
     (dotimes (i (length _joint_velocities))
       (sys::poke (elt _joint_velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_torques
     (write-long (length _joint_torques) s)
     (dotimes (i (length _joint_torques))
       (sys::poke (elt _joint_torques i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _gravity
     (write-long (length _gravity) s)
     (dotimes (i (length _gravity))
       (sys::poke (elt _gravity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_torques
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_torques (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_torques i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _gravity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gravity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gravity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass iiwa_tools::GetGravityResponse
  :super ros::object
  :slots (_compensation_torques ))

(defmethod iiwa_tools::GetGravityResponse
  (:init
   (&key
    ((:compensation_torques __compensation_torques) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _compensation_torques __compensation_torques)
   self)
  (:compensation_torques
   (&optional __compensation_torques)
   (if __compensation_torques (setq _compensation_torques __compensation_torques)) _compensation_torques)
  (:serialization-length
   ()
   (+
    ;; float64[] _compensation_torques
    (* 8    (length _compensation_torques)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _compensation_torques
     (write-long (length _compensation_torques) s)
     (dotimes (i (length _compensation_torques))
       (sys::poke (elt _compensation_torques i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _compensation_torques
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _compensation_torques (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _compensation_torques i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass iiwa_tools::GetGravity
  :super ros::object
  :slots ())

(setf (get iiwa_tools::GetGravity :md5sum-) "3da8875e9eeb07327815c7e1e6ef0f85")
(setf (get iiwa_tools::GetGravity :datatype-) "iiwa_tools/GetGravity")
(setf (get iiwa_tools::GetGravity :request) iiwa_tools::GetGravityRequest)
(setf (get iiwa_tools::GetGravity :response) iiwa_tools::GetGravityResponse)

(defmethod iiwa_tools::GetGravityRequest
  (:response () (instance iiwa_tools::GetGravityResponse :init)))

(setf (get iiwa_tools::GetGravityRequest :md5sum-) "3da8875e9eeb07327815c7e1e6ef0f85")
(setf (get iiwa_tools::GetGravityRequest :datatype-) "iiwa_tools/GetGravityRequest")
(setf (get iiwa_tools::GetGravityRequest :definition-)
      "float64[] joint_angles
float64[] joint_velocities
float64[] joint_torques
float64[] gravity
---
float64[] compensation_torques
")

(setf (get iiwa_tools::GetGravityResponse :md5sum-) "3da8875e9eeb07327815c7e1e6ef0f85")
(setf (get iiwa_tools::GetGravityResponse :datatype-) "iiwa_tools/GetGravityResponse")
(setf (get iiwa_tools::GetGravityResponse :definition-)
      "float64[] joint_angles
float64[] joint_velocities
float64[] joint_torques
float64[] gravity
---
float64[] compensation_torques
")



(provide :iiwa_tools/GetGravity "3da8875e9eeb07327815c7e1e6ef0f85")


