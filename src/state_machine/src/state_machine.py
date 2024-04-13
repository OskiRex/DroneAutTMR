#!/usr/bin/env python3

import rospy
from drone_msgs.msg import pose_vels

if __name__ == "__main__":
    try:
        publisher = rospy.Publisher("/DronKab/pose_vels", pose_vels, queue_size=10)

        rospy.init_node("Dronkab_state_machine", anonymous=False)

        rate = rospy.Rate(20)  # 20 Hz

        my_pose = pose_vels()

        my_pose.vx_linear = 0.1
        my_pose.vy_linear = 0.1
        my_pose.vz_linear = 0.0
        my_pose.vz_angular = 0.1

        while not rospy.is_shutdown():

            publisher.publish(my_pose)

            rate.sleep()
    
    except rospy.ROSInterruptException:
        pass

