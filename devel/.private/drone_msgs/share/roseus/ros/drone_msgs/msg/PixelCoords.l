;; Auto-generated. Do not edit!


(when (boundp 'drone_msgs::PixelCoords)
  (if (not (find-package "DRONE_MSGS"))
    (make-package "DRONE_MSGS"))
  (shadow 'PixelCoords (find-package "DRONE_MSGS")))
(unless (find-package "DRONE_MSGS::PIXELCOORDS")
  (make-package "DRONE_MSGS::PIXELCOORDS"))

(in-package "ROS")
;;//! \htmlinclude PixelCoords.msg.html


(defclass drone_msgs::PixelCoords
  :super ros::object
  :slots (_x _y _width _heigth ))

(defmethod drone_msgs::PixelCoords
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:width __width) 0.0)
    ((:heigth __heigth) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _width (float __width))
   (setq _heigth (float __heigth))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:heigth
   (&optional __heigth)
   (if __heigth (setq _heigth __heigth)) _heigth)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _width
    4
    ;; float32 _heigth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heigth
       (sys::poke _heigth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heigth
     (setq _heigth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drone_msgs::PixelCoords :md5sum-) "0c97281618e5931c55747d57ada6af5b")
(setf (get drone_msgs::PixelCoords :datatype-) "drone_msgs/PixelCoords")
(setf (get drone_msgs::PixelCoords :definition-)
      "float32 x
float32 y
float32 width
float32 heigth
")



(provide :drone_msgs/PixelCoords "0c97281618e5931c55747d57ada6af5b")


