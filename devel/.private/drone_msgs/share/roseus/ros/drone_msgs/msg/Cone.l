;; Auto-generated. Do not edit!


(when (boundp 'drone_msgs::Cone)
  (if (not (find-package "DRONE_MSGS"))
    (make-package "DRONE_MSGS"))
  (shadow 'Cone (find-package "DRONE_MSGS")))
(unless (find-package "DRONE_MSGS::CONE")
  (make-package "DRONE_MSGS::CONE"))

(in-package "ROS")
;;//! \htmlinclude Cone.msg.html


(defclass drone_msgs::Cone
  :super ros::object
  :slots (_horizontal_error _vertical_error ))

(defmethod drone_msgs::Cone
  (:init
   (&key
    ((:horizontal_error __horizontal_error) 0.0)
    ((:vertical_error __vertical_error) 0.0)
    )
   (send-super :init)
   (setq _horizontal_error (float __horizontal_error))
   (setq _vertical_error (float __vertical_error))
   self)
  (:horizontal_error
   (&optional __horizontal_error)
   (if __horizontal_error (setq _horizontal_error __horizontal_error)) _horizontal_error)
  (:vertical_error
   (&optional __vertical_error)
   (if __vertical_error (setq _vertical_error __vertical_error)) _vertical_error)
  (:serialization-length
   ()
   (+
    ;; float64 _horizontal_error
    8
    ;; float64 _vertical_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _horizontal_error
       (sys::poke _horizontal_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_error
       (sys::poke _vertical_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _horizontal_error
     (setq _horizontal_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_error
     (setq _vertical_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get drone_msgs::Cone :md5sum-) "cbbfed3ab2dc6e420d9622629e096adc")
(setf (get drone_msgs::Cone :datatype-) "drone_msgs/Cone")
(setf (get drone_msgs::Cone :definition-)
      "float64 horizontal_error
float64 vertical_error
")



(provide :drone_msgs/Cone "cbbfed3ab2dc6e420d9622629e096adc")


