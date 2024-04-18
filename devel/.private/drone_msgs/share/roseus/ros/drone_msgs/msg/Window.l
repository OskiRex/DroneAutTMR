;; Auto-generated. Do not edit!


(when (boundp 'drone_msgs::Window)
  (if (not (find-package "DRONE_MSGS"))
    (make-package "DRONE_MSGS"))
  (shadow 'Window (find-package "DRONE_MSGS")))
(unless (find-package "DRONE_MSGS::WINDOW")
  (make-package "DRONE_MSGS::WINDOW"))

(in-package "ROS")
;;//! \htmlinclude Window.msg.html


(defclass drone_msgs::Window
  :super ros::object
  :slots (_type _x1 _y1 _x2 _y2 _area _horizontal_error _vertical_error ))

(defmethod drone_msgs::Window
  (:init
   (&key
    ((:type __type) "")
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:area __area) 0.0)
    ((:horizontal_error __horizontal_error) 0.0)
    ((:vertical_error __vertical_error) 0.0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _area (float __area))
   (setq _horizontal_error (float __horizontal_error))
   (setq _vertical_error (float __vertical_error))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
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
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:horizontal_error
   (&optional __horizontal_error)
   (if __horizontal_error (setq _horizontal_error __horizontal_error)) _horizontal_error)
  (:vertical_error
   (&optional __vertical_error)
   (if __vertical_error (setq _vertical_error __vertical_error)) _vertical_error)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _area
    8
    ;; float64 _horizontal_error
    8
    ;; float64 _vertical_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_error
       (sys::poke _horizontal_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_error
       (sys::poke _vertical_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_error
     (setq _horizontal_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_error
     (setq _vertical_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get drone_msgs::Window :md5sum-) "125dc6694452e1317a4f7b68ceb93345")
(setf (get drone_msgs::Window :datatype-) "drone_msgs/Window")
(setf (get drone_msgs::Window :definition-)
      "# Vertexs of window from top-right corner, clockwise 

string type

float64 x1
float64 y1

float64 x2
float64 y2

float64 area
float64 horizontal_error
float64 vertical_error
")



(provide :drone_msgs/Window "125dc6694452e1317a4f7b68ceb93345")


