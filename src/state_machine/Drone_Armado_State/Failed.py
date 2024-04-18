import rospy
import smach
from drone_msgs.msg import pose_vels
class Finish(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=["ended"])

    def execute(self, userdata):
        rospy.loginfo("FINISH state executing")
        pub_land = rospy.Publisher("/DronKab/pose_vels", pose_vels, queue_size= 10)
        pub_land.publish(pose_vels())
        rospy.sleep(1)

        rospy.loginfo("Sending continuous land messages")
        rate = rospy.Rate(30)
        while not rospy.is_shutdown():
            pub_land.publish(pose_vels())
            rate.sleep()

        return "ended"