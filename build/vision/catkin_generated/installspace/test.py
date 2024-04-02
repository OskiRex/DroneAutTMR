#!/usr/bin/env python3

import rospy
import time

from mavros_msgs.msg import OverrideRCIn
from mavros_msgs.srv import CommandTOL

def send_rc_control(forward_vel, left_right_vel, up_down_vel, 
                    ):
    try :
        rospy.init_node('drone_velocity_publisher', anonymous=True)
        vel_pub = rospy.Publisher('/mavros/rc/override', OverrideRCIn, queue_size=10)
        throttle = 1500 + up_down_vel
        pitch = 1500 + forward_vel
        roll = 1500 + left_right_vel
        yaw = 1500 + yaw_vel

        if not rospy.is_shutdown():
            vel_msg = OverrideRCIn()
            vel_msg.channels = [roll, pitch, throttle, yaw, 0, 0, 0, 0]
            vel_pub.publish(vel_msg)
    except rospy.ROSInterruptException:
        pass

def takeoff():
    rospy.init_node('takeoff_node', anonymous=True)
    rospy.wait_for_service('/mavros/cmd/takeoff')
    try:
        takeoff_service = rospy.ServiceProxy('/mavros/cmd/takeoff', CommandTOL)
        response = takeoff_service(altitude=2)  # Cambia la altitud según sea necesario
        return response.success
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)
        return False

def land():
    rospy.init_node('land_node', anonymous=True)
    rospy.wait_for_service('/mavros/cmd/land')
    try:
        land_service = rospy.ServiceProxy('/mavros/cmd/land', CommandTOL)
        response = land_service()  # Aterrizará en el lugar actual
        return response.success
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        return False

if __name__ == '__main__':
    if takeoff():
        send_rc_control(100,0,0,0)
        time.sleep(2)
        send_rc_control(0, 100, 0, 0)
        time.sleep(2)
        send_rc_control(-100, 0, 0, 0)
        time.sleep(2)
        send_rc_control(0, -100, 0, 0)
        time.sleep(2)
    land()
