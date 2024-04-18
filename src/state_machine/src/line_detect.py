#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import CompressedImage
from sensor_msgs.msg import Image
from std_msgs.msg import Float64

import cv2
import numpy as np
from cv_bridge import CvBridge

select_filter = 2 # 1 = rojo, 2 = amarilla, 3 = azul (default)

# Constantes para definir los valores de color según el número de filtro
COLOR_SET_1_MIN = np.array([0, 86, 39])   # Rojo en HSV
COLOR_SET_1_MAX = np.array([8, 250, 255])   # Rojo en HSV

COLOR_SET_2_MIN = np.array([25, 115, 9])   # Amarillo en HSV
COLOR_SET_2_MAX = np.array([32, 250, 255])   # Amarillo en HSV

COLOR_SET_3_MIN = np.array([91, 114, 10])   # Azul en HSV
COLOR_SET_3_MAX = np.array([128, 251, 255])   # Azul en HSV

#SIZE_FILTER_1_MAX = 40  # Tamaño del filtro para COLOR_SET_1
#SIZE_FILTER_2_MAX = 57  # Tamaño del filtro para COLOR_SET_2
#SIZE_FILTER_3_MAX = 20  # Tamaño del filtro para COLOR_SET_3

latest_message = None

def callback(message):
    global latest_message
    latest_message = message


def line_detect():
    global select_filter, latest_message

    rospy.init_node("line_detect")
    rospy.loginfo("Nodo de deteccion de linea incializando")

    line_pub = rospy.Publisher("/Dronkab/line_detect/lateral_error", Float64, queue_size=10)
    red_area_pub = rospy.Publisher("/Dronkab/line_detect/red_area", Float64, queue_size=10)
    image_pub = rospy.Publisher("/Dronkab/line_detect/detections", Image, queue_size=10)
    rospy.Subscriber("Dronkab/image_raw/compressed", CompressedImage, callback)
    rospy.sleep(1)
    
    rospy.loginfo("Nodo de linea inicializado correctamente")
    bridge = CvBridge()
    rate = rospy.Rate(30)
    while not rospy.is_shutdown():
        if latest_message is not None:
            frame = bridge.compressed_imgmsg_to_cv2(latest_message, desired_encoding="bgr8")

            ####################################################################################################

            hsv_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
            hsv_min1 = [0, 86, 39]
            hsv_max1 = [8, 250, 255]
            red_masked_frame =  cv2.inRange(hsv_frame, np.array(hsv_min1), np.array(hsv_max1))
            red_area = np.sum(red_masked_frame > 0)
            rospy.loginfo(f"Se encontraron {red_area} pixeles rojos")

            ####################################################################################################

            num_sections = 20 # Numero de secciones de pantalla (puedes ajustar según sea necesario)
            threshold_value = 50  # Umbral fijo (puedes ajustar según sea necesario)
            kernel_size = 3  # Tamaño de kernel fijo (puedes ajustar según sea necesario)

            lower_color = COLOR_SET_3_MIN
            upper_color = COLOR_SET_3_MAX
            
            if select_filter == 1:
                lower_color = COLOR_SET_1_MIN
                upper_color = COLOR_SET_1_MAX

            if select_filter == 2:
                lower_color = COLOR_SET_2_MIN
                upper_color = COLOR_SET_2_MAX

            #lower_color = selected_color - np.array([size_filter, size_filter, size_filter])
            #upper_color = selected_color + np.array([size_filter, size_filter, size_filter])
            binary_image = cv2.inRange(hsv_frame, lower_color, upper_color)

            blurred = cv2.GaussianBlur(binary_image, (kernel_size, kernel_size), 0)
            _, thresh = cv2.threshold(blurred, threshold_value, 255, cv2.THRESH_BINARY)

            half_width = frame.shape[1] // 2
            section_height = frame.shape[0] // num_sections

            error_sum = 0
            for i in range(num_sections):
                section_start = i * section_height
                section_end = (i + 1) * section_height
                section = thresh[section_start:section_end, :]
                contours, _ = cv2.findContours(section, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

                error = 0
                if contours:
                    largest_contour = max(contours, key=cv2.contourArea)
                    largest_contour[:, :, 1] += section_start
                    cv2.drawContours(frame, [largest_contour], -1, (0, 255, 0), 2)
                    M = cv2.moments(largest_contour)
                    if M["m00"] != 0:
                        center_x = int(M["m10"] / M["m00"])
                        center_y = int(M["m01"] / M["m00"])
                        cv2.circle(frame, (center_x, center_y), 5, (0, 0, 255), -1)
                        cv2.line(frame, (center_x, center_y), (half_width, center_y), (0, 255, 255), 1)
                        error = half_width - center_x
                error_sum += error
            error_avg = error_sum / num_sections

            ####################################################################################################

            image_pub.publish(bridge.cv2_to_imgmsg(frame, encoding="bgr8"))
            line_pub.publish(Float64(error_avg))
            red_area_pub.publish(Float64(red_area))
            rate.sleep() 
        else:
            rospy.loginfo("Esperando a recibir una imagen")
            rospy.sleep(1)
        
if __name__ == "__main__":
    try:
        line_detect()
    except rospy.ROSInterruptException:
        pass