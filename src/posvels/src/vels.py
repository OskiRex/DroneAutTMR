#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseStamped, Quaternion
from mavros_msgs.msg import State
from mavros_msgs.srv import CommandBool, CommandBoolRequest, SetMode, SetModeRequest
from tf.transformations import quaternion_from_euler
from drone_msgs.msg import pose_vels

current_state = State()
speed_x = 0.0
speed_y = 0.0
speed_z = 0.0
speed_yaw = 0.0

def state_cb(msg):
    global current_state
    current_state = msg

def custom_msg_cb(msg):
    global speed_x, speed_y, speed_z, speed_yaw
    speed_x = msg.vx_linear
    speed_y = msg.vy_linear
    speed_z= msg.vz_linear
    speed_yaw = msg.vz_angular


if __name__ == "__main__":
    rospy.init_node("DronKab_pose_vels")

    state_sub = rospy.Subscriber("mavros/state", State, callback=state_cb)
    local_pos_pub = rospy.Publisher("mavros/setpoint_position/local", PoseStamped, queue_size=10)
    
    rospy.wait_for_service("/mavros/cmd/arming")
    arming_client = rospy.ServiceProxy("mavros/cmd/arming", CommandBool)
    
    rospy.wait_for_service("/mavros/set_mode")
    set_mode_client = rospy.ServiceProxy("mavros/set_mode", SetMode)

    # Setpoint publishing MUST be faster than 2Hz
    rate = rospy.Rate(20)

    # Wait for Flight Controller connection
    while not rospy.is_shutdown() and not current_state.connected:
        rate.sleep()

    pose = PoseStamped()

    pose.pose.position.x = 0
    pose.pose.position.y = 0
    pose.pose.position.z = 2

    # Send a few setpoints before starting
    for i in range(100):
        if rospy.is_shutdown():
            break

        local_pos_pub.publish(pose)
        rate.sleep()

    offb_set_mode = SetModeRequest()
    offb_set_mode.custom_mode = 'OFFBOARD'

    arm_cmd = CommandBoolRequest()
    arm_cmd.value = True

    last_req = rospy.Time.now()

    desired_speeds = rospy.Subscriber("/DronKab/pose_vels", pose_vels, callback=custom_msg_cb)

    start_time = rospy.Time.now()

    while not rospy.is_shutdown():
        pose.pose.position.x += speed_x / 20  # dividing by the rate to get the correct distance per loop iteration
        pose.pose.position.y += speed_y / 20
        pose.pose.position.z += speed_z / 20
            
        # Calculate the new quaternion representing the desired yaw angle
        yaw = pose.pose.orientation.z + speed_yaw / 20
        quaternion = quaternion_from_euler(0, 0, yaw)
        pose.pose.orientation = Quaternion(*quaternion)

        # Check if we need to switch to OFFBOARD mode
        if current_state.mode != "OFFBOARD" and (rospy.Time.now() - last_req) > rospy.Duration(5.0):
            if set_mode_client.call(offb_set_mode).mode_sent:
                rospy.loginfo("OFFBOARD enabled")
            last_req = rospy.Time.now()
        else:
            # Check if we need to arm the vehicle
            if not current_state.armed and (rospy.Time.now() - last_req) > rospy.Duration(5.0):
                if arming_client.call(arm_cmd).success:
                    rospy.loginfo("Vehicle armed")
                last_req = rospy.Time.now()

        # Publish the updated position setpoint
        local_pos_pub.publish(pose)

        rate.sleep()
