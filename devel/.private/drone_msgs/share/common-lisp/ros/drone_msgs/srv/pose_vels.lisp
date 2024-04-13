; Auto-generated. Do not edit!


(cl:in-package drone_msgs-srv)


;//! \htmlinclude pose_vels-request.msg.html

(cl:defclass <pose_vels-request> (roslisp-msg-protocol:ros-message)
  ((vx_linear
    :reader vx_linear
    :initarg :vx_linear
    :type cl:float
    :initform 0.0)
   (vy_linear
    :reader vy_linear
    :initarg :vy_linear
    :type cl:float
    :initform 0.0)
   (vz_linear
    :reader vz_linear
    :initarg :vz_linear
    :type cl:float
    :initform 0.0)
   (vz_angular
    :reader vz_angular
    :initarg :vz_angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_vels-request (<pose_vels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_vels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_vels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_msgs-srv:<pose_vels-request> is deprecated: use drone_msgs-srv:pose_vels-request instead.")))

(cl:ensure-generic-function 'vx_linear-val :lambda-list '(m))
(cl:defmethod vx_linear-val ((m <pose_vels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-srv:vx_linear-val is deprecated.  Use drone_msgs-srv:vx_linear instead.")
  (vx_linear m))

(cl:ensure-generic-function 'vy_linear-val :lambda-list '(m))
(cl:defmethod vy_linear-val ((m <pose_vels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-srv:vy_linear-val is deprecated.  Use drone_msgs-srv:vy_linear instead.")
  (vy_linear m))

(cl:ensure-generic-function 'vz_linear-val :lambda-list '(m))
(cl:defmethod vz_linear-val ((m <pose_vels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-srv:vz_linear-val is deprecated.  Use drone_msgs-srv:vz_linear instead.")
  (vz_linear m))

(cl:ensure-generic-function 'vz_angular-val :lambda-list '(m))
(cl:defmethod vz_angular-val ((m <pose_vels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-srv:vz_angular-val is deprecated.  Use drone_msgs-srv:vz_angular instead.")
  (vz_angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_vels-request>) ostream)
  "Serializes a message object of type '<pose_vels-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vz_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vz_angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_vels-request>) istream)
  "Deserializes a message object of type '<pose_vels-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx_linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy_linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz_linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz_angular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_vels-request>)))
  "Returns string type for a service object of type '<pose_vels-request>"
  "drone_msgs/pose_velsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_vels-request)))
  "Returns string type for a service object of type 'pose_vels-request"
  "drone_msgs/pose_velsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_vels-request>)))
  "Returns md5sum for a message object of type '<pose_vels-request>"
  "88c123551d9e9357bdc4af9e608ad391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_vels-request)))
  "Returns md5sum for a message object of type 'pose_vels-request"
  "88c123551d9e9357bdc4af9e608ad391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_vels-request>)))
  "Returns full string definition for message of type '<pose_vels-request>"
  (cl:format cl:nil "float32 vx_linear~%float32 vy_linear~%float32 vz_linear~%float32 vz_angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_vels-request)))
  "Returns full string definition for message of type 'pose_vels-request"
  (cl:format cl:nil "float32 vx_linear~%float32 vy_linear~%float32 vz_linear~%float32 vz_angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_vels-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_vels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_vels-request
    (cl:cons ':vx_linear (vx_linear msg))
    (cl:cons ':vy_linear (vy_linear msg))
    (cl:cons ':vz_linear (vz_linear msg))
    (cl:cons ':vz_angular (vz_angular msg))
))
;//! \htmlinclude pose_vels-response.msg.html

(cl:defclass <pose_vels-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pose_vels-response (<pose_vels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_vels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_vels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_msgs-srv:<pose_vels-response> is deprecated: use drone_msgs-srv:pose_vels-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_vels-response>) ostream)
  "Serializes a message object of type '<pose_vels-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_vels-response>) istream)
  "Deserializes a message object of type '<pose_vels-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_vels-response>)))
  "Returns string type for a service object of type '<pose_vels-response>"
  "drone_msgs/pose_velsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_vels-response)))
  "Returns string type for a service object of type 'pose_vels-response"
  "drone_msgs/pose_velsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_vels-response>)))
  "Returns md5sum for a message object of type '<pose_vels-response>"
  "88c123551d9e9357bdc4af9e608ad391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_vels-response)))
  "Returns md5sum for a message object of type 'pose_vels-response"
  "88c123551d9e9357bdc4af9e608ad391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_vels-response>)))
  "Returns full string definition for message of type '<pose_vels-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_vels-response)))
  "Returns full string definition for message of type 'pose_vels-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_vels-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_vels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_vels-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pose_vels)))
  'pose_vels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pose_vels)))
  'pose_vels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_vels)))
  "Returns string type for a service object of type '<pose_vels>"
  "drone_msgs/pose_vels")