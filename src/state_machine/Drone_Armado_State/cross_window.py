import rospy
import smach
import math
from geometry_msgs.msg import Twist
from drone_msgs.msg import Window
from drone_msgs.msg import pose_vels
class CrossWindow(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=["succeeded","failed"])
        self.current_h_error = 0
        self.current_v_error = 0
        self.current_fw_error = 0
        self.current_area = 0

    def callback(self, message):
        self.current_h_error = message.horizontal_error
        self.current_v_error = message.vertical_error
        self.current_fw_error = 100000 - message.area
        self.current_area = message.area

    def execute(self, userdata):
        rospy.loginfo("CROSSWINDOW state executing")
        movement_pub = rospy.Publisher("/DronKab/pose_vels", pose_vels, queue_size=10)##modificada
        #camera_pub = rospy.Publisher("/bebop/camera_control", Twist, queue_size=10) camara fija
        window_error_sub = rospy.Subscriber("/Dronkab/window_detect/windows", Window, self.callback)
        rospy.sleep(1)

        # camera_angle = 0
        # rospy.loginfo(f"Setting camera angle to {camera_angle}")
        # camera_msg = Twist()
        # camera_msg.angular.y = camera_angle
        # camera_pub.publish(camera_msg)
        # rospy.loginfo(f"Command was : {camera_msg}")
        # rospy.loginfo("Waiting for camera to be moved")
        # rospy.sleep(3)

        rospy.loginfo("Entering control loop")
        tiempo_muestreo = 0.5
        kp_h = 0.00007
        kp_v = 0.0003
        kp_fw = 0.0000002
        rate = rospy.Rate(1/tiempo_muestreo)
        zero_error_h_counter = 0
        zero_error_v_counter = 0
        zero_error_fw_counter = 0
        minimal_counter = 200
        h_tolerance = 50
        v_tolerance = 20
        fw_tolerance = 10000
        max_area = 60000
        while not rospy.is_shutdown():
            """
            if self.current_h_error < h_tolerance:
                zero_error_h_counter = zero_error_h_counter + 1
            else:
                zero_error_h_counter = 0

            if self.current_v_error < v_tolerance:
                zero_error_v_counter = zero_error_v_counter + 1
            else:
                zero_error_v_counter = 0

            if self.current_fw_error < fw_tolerance:
                zero_error_fw_counter = zero_error_fw_counter + 1
            else:
                zero_error_fw_counter = 0
            """
            if self.current_area > max_area:
                rospy.loginfo("Yo cruzaria ahora")
                pos_msg = pose_vels()
                #msg.linear.x = 0.1
                pos_msg.vx_linear = 0.1
                #movement_pub.publish(msg)
                movement_pub.publish(pos_msg)
                ##############################?
                rospy.sleep(5)
                movement_pub.publish(pose_vels())
                return "succeeded"
                    

            #msg = Twist()
            msg = pose_vels()
            #if zero_error_h_counter > minimal_counter and zero_error_v_counter > minimal_counter and zero_error_fw_counter > minimal_counter:
            """
            if abs(zero_error_h_counter) < h_tolerance and  abs(zero_error_v_counter) < v_tolerance and abs(zero_error_fw_counter) < fw_tolerance:
                rospy.loginfo("Centrado")
                
                msg.linear.x = 0.05
                
                movement_pub.publish(msg)
                rospy.sleep(5)
                movement_pub.publish(Twist())
                return "succeeded"
                """
            

            # msg.linear.y = kp_h * self.current_h_error
            # msg.linear.z = kp_v * self.current_v_error
            # msg.linear.x = kp_fw * self.current_fw_error
            # movement_pub.publish(msg)
            # rate.sleep()
            msg.vz_angular = kp_h * self.current_h_error
            msg.vy_linear = kp_v * self.current_v_error
            msg.vx_linear= kp_fw * self.current_fw_error
            movement_pub.publish(msg)
            rate.sleep()


        return "failed"