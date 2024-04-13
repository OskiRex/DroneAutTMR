;; Auto-generated. Do not edit!


(when (boundp 'drone_msgs::pose_vels)
  (if (not (find-package "DRONE_MSGS"))
    (make-package "DRONE_MSGS"))
  (shadow 'pose_vels (find-package "DRONE_MSGS")))
(unless (find-package "DRONE_MSGS::POSE_VELS")
  (make-package "DRONE_MSGS::POSE_VELS"))
(unless (find-package "DRONE_MSGS::POSE_VELSREQUEST")
  (make-package "DRONE_MSGS::POSE_VELSREQUEST"))
(unless (find-package "DRONE_MSGS::POSE_VELSRESPONSE")
  (make-package "DRONE_MSGS::POSE_VELSRESPONSE"))

(in-package "ROS")





(defclass drone_msgs::pose_velsRequest
  :super ros::object
  :slots (_vx_linear _vy_linear _vz_linear _vz_angular ))

(defmethod drone_msgs::pose_velsRequest
  (:init
   (&key
    ((:vx_linear __vx_linear) 0.0)
    ((:vy_linear __vy_linear) 0.0)
    ((:vz_linear __vz_linear) 0.0)
    ((:vz_angular __vz_angular) 0.0)
    )
   (send-super :init)
   (setq _vx_linear (float __vx_linear))
   (setq _vy_linear (float __vy_linear))
   (setq _vz_linear (float __vz_linear))
   (setq _vz_angular (float __vz_angular))
   self)
  (:vx_linear
   (&optional __vx_linear)
   (if __vx_linear (setq _vx_linear __vx_linear)) _vx_linear)
  (:vy_linear
   (&optional __vy_linear)
   (if __vy_linear (setq _vy_linear __vy_linear)) _vy_linear)
  (:vz_linear
   (&optional __vz_linear)
   (if __vz_linear (setq _vz_linear __vz_linear)) _vz_linear)
  (:vz_angular
   (&optional __vz_angular)
   (if __vz_angular (setq _vz_angular __vz_angular)) _vz_angular)
  (:serialization-length
   ()
   (+
    ;; float32 _vx_linear
    4
    ;; float32 _vy_linear
    4
    ;; float32 _vz_linear
    4
    ;; float32 _vz_angular
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vx_linear
       (sys::poke _vx_linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy_linear
       (sys::poke _vy_linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz_linear
       (sys::poke _vz_linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz_angular
       (sys::poke _vz_angular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vx_linear
     (setq _vx_linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy_linear
     (setq _vy_linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz_linear
     (setq _vz_linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz_angular
     (setq _vz_angular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass drone_msgs::pose_velsResponse
  :super ros::object
  :slots ())

(defmethod drone_msgs::pose_velsResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass drone_msgs::pose_vels
  :super ros::object
  :slots ())

(setf (get drone_msgs::pose_vels :md5sum-) "88c123551d9e9357bdc4af9e608ad391")
(setf (get drone_msgs::pose_vels :datatype-) "drone_msgs/pose_vels")
(setf (get drone_msgs::pose_vels :request) drone_msgs::pose_velsRequest)
(setf (get drone_msgs::pose_vels :response) drone_msgs::pose_velsResponse)

(defmethod drone_msgs::pose_velsRequest
  (:response () (instance drone_msgs::pose_velsResponse :init)))

(setf (get drone_msgs::pose_velsRequest :md5sum-) "88c123551d9e9357bdc4af9e608ad391")
(setf (get drone_msgs::pose_velsRequest :datatype-) "drone_msgs/pose_velsRequest")
(setf (get drone_msgs::pose_velsRequest :definition-)
      "float32 vx_linear
float32 vy_linear
float32 vz_linear
float32 vz_angular
---
")

(setf (get drone_msgs::pose_velsResponse :md5sum-) "88c123551d9e9357bdc4af9e608ad391")
(setf (get drone_msgs::pose_velsResponse :datatype-) "drone_msgs/pose_velsResponse")
(setf (get drone_msgs::pose_velsResponse :definition-)
      "float32 vx_linear
float32 vy_linear
float32 vz_linear
float32 vz_angular
---
")



(provide :drone_msgs/pose_vels "88c123551d9e9357bdc4af9e608ad391")


