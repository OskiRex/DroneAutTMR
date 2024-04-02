#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

from ultralytics import YOLO
import time
import cvzone
import math
import numpy as np

model = YOLO("../Yolo-Weights/yolov8n")

def image_callback(msg):
    try:
        bridge = CvBridge()
        cv_image = bridge.imgmsg_to_cv2(msg, "bgr8")

        results = model(cv_image, stream=True)

        for r in results:
            boxes = r.boxes
            for box in boxes:
                x1, y1, x2, y2 = box.xyxy[0]
                x1, y1, x2, y2 = int(x1), int(y1), int(x2), int(y2)
            
                w, h = x2 - x1, y2 - y1

                cvzone.cornerRect(cv_image, (x1, y1, w, h))

                conf = math.ceil((box.conf[0] * 100)) / 100
                cvzone.putTextRect(cv_image, f'{conf}', (x1,y1-20))

        cv2.imshow("Image from ROS Topic", cv_image)
        cv2.waitKey(1)

    except Exception as e:
        print(e)

def main():
    rospy.init_node('image_subscriber')

    image_topic = "/iris/down_camera_link/down_raw_image"
    rospy.Subscriber(image_topic, Image, image_callback)

    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass