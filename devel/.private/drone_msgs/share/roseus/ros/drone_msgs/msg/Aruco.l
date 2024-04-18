;; Auto-generated. Do not edit!


(when (boundp 'drone_msgs::Aruco)
  (if (not (find-package "DRONE_MSGS"))
    (make-package "DRONE_MSGS"))
  (shadow 'Aruco (find-package "DRONE_MSGS")))
(unless (find-package "DRONE_MSGS::ARUCO")
  (make-package "DRONE_MSGS::ARUCO"))

(in-package "ROS")
;;//! \htmlinclude Aruco.msg.html


(defclass drone_msgs::Aruco
  :super ros::object
  :slots (_aruco_id _x1 _y1 _x2 _y2 _x3 _y3 _x4 _y4 _yaw_error _distance ))

(defmethod drone_msgs::Aruco
  (:init
   (&key
    ((:aruco_id __aruco_id) 0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    ((:x4 __x4) 0.0)
    ((:y4 __y4) 0.0)
    ((:yaw_error __yaw_error) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _aruco_id (round __aruco_id))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _x4 (float __x4))
   (setq _y4 (float __y4))
   (setq _yaw_error (float __yaw_error))
   (setq _distance (float __distance))
   self)
  (:aruco_id
   (&optional __aruco_id)
   (if __aruco_id (setq _aruco_id __aruco_id)) _aruco_id)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:x4
   (&optional __x4)
   (if __x4 (setq _x4 __x4)) _x4)
  (:y4
   (&optional __y4)
   (if __y4 (setq _y4 __y4)) _y4)
  (:yaw_error
   (&optional __yaw_error)
   (if __yaw_error (setq _yaw_error __yaw_error)) _yaw_error)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _aruco_id
    4
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _x3
    8
    ;; float64 _y3
    8
    ;; float64 _x4
    8
    ;; float64 _y4
    8
    ;; float64 _yaw_error
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _aruco_id
       (write-long _aruco_id s)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x4
       (sys::poke _x4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y4
       (sys::poke _y4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_error
       (sys::poke _yaw_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _aruco_id
     (setq _aruco_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x3
     (setq _x3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y3
     (setq _y3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x4
     (setq _x4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y4
     (setq _y4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_error
     (setq _yaw_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get drone_msgs::Aruco :md5sum-) "19ee4d4cf4e8225cc839c83895a4b2f2")
(setf (get drone_msgs::Aruco :datatype-) "drone_msgs/Aruco")
(setf (get drone_msgs::Aruco :definition-)
      "int32 aruco_id

float64 x1
float64 y1

float64 x2
float64 y2

float64 x3
float64 y3

float64 x4
float64 y4

float64 yaw_error
float64 distance
")



(provide :drone_msgs/Aruco "19ee4d4cf4e8225cc839c83895a4b2f2")


