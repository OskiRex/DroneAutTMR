; Auto-generated. Do not edit!


(cl:in-package drone_msgs-msg)


;//! \htmlinclude PixelCoords.msg.html

(cl:defclass <PixelCoords> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (heigth
    :reader heigth
    :initarg :heigth
    :type cl:float
    :initform 0.0))
)

(cl:defclass PixelCoords (<PixelCoords>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixelCoords>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixelCoords)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_msgs-msg:<PixelCoords> is deprecated: use drone_msgs-msg:PixelCoords instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PixelCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-msg:x-val is deprecated.  Use drone_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PixelCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-msg:y-val is deprecated.  Use drone_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <PixelCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-msg:width-val is deprecated.  Use drone_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'heigth-val :lambda-list '(m))
(cl:defmethod heigth-val ((m <PixelCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-msg:heigth-val is deprecated.  Use drone_msgs-msg:heigth instead.")
  (heigth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixelCoords>) ostream)
  "Serializes a message object of type '<PixelCoords>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heigth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixelCoords>) istream)
  "Deserializes a message object of type '<PixelCoords>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heigth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixelCoords>)))
  "Returns string type for a message object of type '<PixelCoords>"
  "drone_msgs/PixelCoords")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixelCoords)))
  "Returns string type for a message object of type 'PixelCoords"
  "drone_msgs/PixelCoords")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixelCoords>)))
  "Returns md5sum for a message object of type '<PixelCoords>"
  "0c97281618e5931c55747d57ada6af5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixelCoords)))
  "Returns md5sum for a message object of type 'PixelCoords"
  "0c97281618e5931c55747d57ada6af5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixelCoords>)))
  "Returns full string definition for message of type '<PixelCoords>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 width~%float32 heigth~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixelCoords)))
  "Returns full string definition for message of type 'PixelCoords"
  (cl:format cl:nil "float32 x~%float32 y~%float32 width~%float32 heigth~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixelCoords>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixelCoords>))
  "Converts a ROS message object to a list"
  (cl:list 'PixelCoords
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':width (width msg))
    (cl:cons ':heigth (heigth msg))
))
