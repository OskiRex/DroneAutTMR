#!/usr/bin/env python3

import rospy
import smach
from sensor_msgs.msg import Image 
from std_msgs.msg import Float64
from fiducial_msgs.msg import FiducialTransformArray
from Drone_Armado_State.follow_line import FollowLine
from Drone_Armado_State.Failed import Finish
from Drone_Armado_State.cross_window import CrossWindow
from drone_msgs.msg import pose_vels
from drone_msgs.msg import Window


if __name__ == "__main__":
    try:
        ########################################################################################
        #                               follow_line                                            #
        line_error_sub = rospy.Subscriber("/Dronkab/line_detect/lateral_error", Float64, )
        red_area_sub = rospy.Subscriber("/Dronkab/line_detect/red_area", Float64, )
        aruco_sub = rospy.Subscriber("/Dronkab/fiducial_transforms", FiducialTransformArray,)
        ########################################################################################
        publisher = rospy.Publisher("/DronKab/pose_vels", pose_vels, queue_size=10)
        cone_detect_sub = rospy.Subscriber("/Dronkab/cone_center",) #incluir msg
        line_follower_sub = rospy.Subscriber("/Dronkab/line_error",) #incluir msg
        ########################################################################################
        #                               Window                                                 #
        window_sub = rospy.Subscriber("/Dronkab/window_detect/windows",Window, ) 
        Window_detection_sub = rospy.Subscriber("Dronkab/window_detect/detections", Image,)
        #######################################################################################
        aruco1_sub = rospy.Subscriber("/Dronkab/fiducial/transforms",) #incluir msg
        aruco2_sub = rospy.Subscriber("/Dronkab/fiducial/vertices",) #incluir msg
        rospy.init_node("Dronkab_state_machine", anonymous=False)

        # rate = rospy.Rate(20)  # 20 Hz

        # my_pose = pose_vels()

        # my_pose.vx_linear = 0.1
        # my_pose.vy_linear = 0.1
        # my_pose.vz_linear = 0.0
        # my_pose.vz_angular = 0.1

        # while not rospy.is_shutdown():

        #     publisher.publish(my_pose)

        #     rate.sleep()
        rospy.loginfo("Starting state machine node")
        sm = smach.StateMachine(outcomes=["completed"])

        with sm:
            smach.StateMachine.add( "FOLLOWLINE_1", FollowLine(), 
                                   transitions={"succeeded":"CROSSWINDOW",
                                                "failed":"FINISH"} )
            smach.StateMachine.add( "FINISH", Finish(), 
                                   transitions={"ended":"completed"} )
            smach.StateMachine.add( "CROSSWINDOW", CrossWindow(), 
                                   transitions={"succeeded":"FOLLOWLINE_2",
                                                "failed":"FINISH"} )
        result = sm.execute()

        rospy.loginfo("State machine node ended with result : ", result)
    
    except rospy.ROSInterruptException:
        pass

