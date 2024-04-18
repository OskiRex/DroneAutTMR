
(cl:in-package :asdf)

(defsystem "drone_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Aruco" :depends-on ("_package_Aruco"))
    (:file "_package_Aruco" :depends-on ("_package"))
    (:file "Cone" :depends-on ("_package_Cone"))
    (:file "_package_Cone" :depends-on ("_package"))
    (:file "PixelCoords" :depends-on ("_package_PixelCoords"))
    (:file "_package_PixelCoords" :depends-on ("_package"))
    (:file "Window" :depends-on ("_package_Window"))
    (:file "_package_Window" :depends-on ("_package"))
    (:file "pose_vels" :depends-on ("_package_pose_vels"))
    (:file "_package_pose_vels" :depends-on ("_package"))
  ))