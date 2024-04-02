#!/usr/bin/env python3

import rospy
from mavros_msgs.srv import CommandTOL
from mavros_msgs.msg import OverrideRCIn

def takeoff():
    rospy.wait_for_service('/mavros/cmd/takeoff')
    try:
        takeoff_service = rospy.ServiceProxy('/mavros/cmd/takeoff', CommandTOL)
        response = takeoff_service(altitude=2)  # Cambia la altitud según sea necesario
        return response.success
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        return False
    
def publish_velocities():
    # Inicializar el nodo ROS
    rospy.init_node('drone_velocity_publisher', anonymous=True)

    # Crear un publicador para el tópico de control de velocidad
    vel_pub = rospy.Publisher('/mavros/rc/override', OverrideRCIn, queue_size=10)

    # Velocidades deseadas (en PWM)
    # Se encuentran entre el rango de 1000 a 2000; 1500 valor neutro o posición de vuelo nivelada
    throttle = 1500  # Valor neutro para mantener la altitud
    pitch = 1500     # Valor neutro para mantener la posición horizontal
    roll = 1500      # Valor neutro para mantener la posición horizontal
    yaw = 1500       # Valor neutro para mantener la orientación

    # Publicar las velocidades
    while not rospy.is_shutdown():
        vel_msg = OverrideRCIn()
        vel_msg.channels = [roll, pitch, throttle, yaw, 0, 0, 0, 0]  # Se usan los primeros 4 canales para controlar el dron
        vel_pub.publish(vel_msg)
        rospy.sleep(0.1)  # Publicar a una frecuencia de 10 Hz


if __name__ == '__main__':
    rospy.init_node('takeoff_node', anonymous=True)
    if takeoff():
        print("Despegue exitoso")
        try:
            publish_velocities()
        except rospy.ROSInterruptException:
            pass
    else:
        print("No se pudo despegar")