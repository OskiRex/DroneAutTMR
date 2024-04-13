
(cl:in-package :asdf)

(defsystem "drone_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PixelCoords" :depends-on ("_package_PixelCoords"))
    (:file "_package_PixelCoords" :depends-on ("_package"))
    (:file "pose_vels" :depends-on ("_package_pose_vels"))
    (:file "_package_pose_vels" :depends-on ("_package"))
  ))