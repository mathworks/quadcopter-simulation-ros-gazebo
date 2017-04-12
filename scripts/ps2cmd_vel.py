#!/usr/bin/env python

import sys

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Vector3

from sensor_msgs.msg import Joy



class ps_forward:

	def callback(self,data):
		ps_axes = data.axes;
		command = Twist(Vector3(ps_axes[3]*self.scaling,ps_axes[2]*self.scaling,ps_axes[1]*self.scaling),Vector3(0,0,ps_axes[0]*self.scaling))
		#print(command)
		self.pub.publish(command)
    
	def __init__(self,id):

		rospy.init_node('ps_forward', anonymous=True)

		self.scaling = 10
		rospy.Subscriber("joy", Joy, self.callback)
		self.pub = rospy.Publisher('/quadrotor_' + id + '/cmd_vel', Twist, queue_size=10)

		rospy.spin()

if __name__ == '__main__':
	ps_f=ps_forward(sys.argv[1])
