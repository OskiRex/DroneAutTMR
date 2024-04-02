#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseStamped
from mavros_msgs.msg import State
from mavros_msgs.srv import CommandBool, CommandBoolRequest, SetMode, SetModeRequest

from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""camara = cv2.VideoCapture(0)

if not camara.isOpened():
    print("No se pudo abrir la camara")
    exit()

print("La resolucion es :", camara.get(cv2.CAP_PROP_FRAME_WIDTH), "x", camara.get(cv2.CAP_PROP_FRAME_HEIGHT) )
camara.set(cv2.CAP_PROP_FRAME_WIDTH, 320)
camara.set(cv2.CAP_PROP_FRAME_WIDTH, 240)"""

def encontrarCentroVentana(msg):
    bridge = CvBridge()
    frame = bridge.imgmsg_to_cv2(msg, "bgr8")
    blur_size = 5
    mask_min = [0, 92, 20]
    mask_max = [24, 255, 255]
    frame_orig = frame
    frame = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
    frame = cv2.medianBlur(frame, blur_size)
    frame = cv2.inRange(frame, np.array(mask_min), np.array(mask_max))

    contours, hierarchy = cv2.findContours(frame, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)  # me regresa el numero de contornos y como estan ordenados

    min_contour_area = 800  # Ajusta este umbral según tus necesidades
    filtered_contours = [c for c in contours if cv2.contourArea(c) > min_contour_area]

    if len(filtered_contours) > 0:
        c = max(filtered_contours, key=cv2.contourArea)
        #  encontrar centro y dibujar la imagen
        M = cv2.moments(c)  # Para cada contorno c, se calculan sus momentos, lo que proporciona informacion sobre la geometria del contorno.
        cX = int(M["m10"] / M["m00"])  # Esto encuentra el centro horizontal del contorno.
        cY = int(M["m01"] / M["m00"])  # Esto encuentra el centro vertical del contorno.
        # cv2.circle(frame_orig, (cX, cY), 5, (0, 255, 255), 5)
        # cv2.imshow("TelloCam", frame_orig)

        return cX
    else:
        return -1

current_state = State()

def state_cb(msg):
    global current_state
    current_state = msg


if __name__ == "__main__":
    rospy.init_node("offb_node_py")

    state_sub = rospy.Subscriber("mavros/state", State, callback = state_cb)

    local_pos_pub = rospy.Publisher("mavros/setpoint_position/local", PoseStamped, queue_size=10)

    rospy.wait_for_service("/mavros/cmd/arming")
    arming_client = rospy.ServiceProxy("mavros/cmd/arming", CommandBool)

    rospy.wait_for_service("/mavros/set_mode")
    set_mode_client = rospy.ServiceProxy("mavros/set_mode", SetMode)

    image_topic = "/iris/down_camera_link/down_raw_image"
    rospy.Subscriber(image_topic, Image, encontrarCentroVentana)

    rospy.spin()

    # Setpoint publishing MUST be faster than 2Hz
    rate = rospy.Rate(20)

    # Wait for Flight Controller connection
    while(not rospy.is_shutdown() and not current_state.connected):
        rate.sleep()

    pose = PoseStamped()

    pose.pose.position.x = 0
    pose.pose.position.y = 0
    pose.pose.position.z = 2

    # Send a few setpoints before starting
    for i in range(100):
        if(rospy.is_shutdown()):
            break

        local_pos_pub.publish(pose)
        rate.sleep()

    offb_set_mode = SetModeRequest()
    offb_set_mode.custom_mode = 'OFFBOARD'

    arm_cmd = CommandBoolRequest()
    arm_cmd.value = True

    last_req = rospy.Time.now()

    while(not rospy.is_shutdown()):
        if(current_state.mode != "OFFBOARD" and (rospy.Time.now() - last_req) > rospy.Duration(5.0)):
            if(set_mode_client.call(offb_set_mode).mode_sent == True):
                rospy.loginfo("OFFBOARD enabled")

            last_req = rospy.Time.now()
        else:
            if(not current_state.armed and (rospy.Time.now() - last_req) > rospy.Duration(5.0)):
                if(arming_client.call(arm_cmd).success == True):
                    rospy.loginfo("Vehicle armed")

                last_req = rospy.Time.now()

        local_pos_pub.publish(pose)

        rate.sleep()

   