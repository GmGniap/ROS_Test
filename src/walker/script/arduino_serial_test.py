#!/usr/bin/env python
'''
Created on November 20, 2010
 
@author: Dr. Rainer Hessmer
'''
 
import roslib
import rospy
from std_msgs.msg import String
#from playground.msg import Encoder
 
from SerialDataGateway import SerialDataGateway
 
class Arduino(object):
	def _HandleReceivedLine(self, line):
		rospy.logdebug(line)
		self._Publisher.publish(String(line))
	
	def __init__(self, port="/dev/ttyACM0", baudrate=115200):
		self._Publisher = rospy.Publisher('serial', String, queue_size=10)
 		rospy.init_node('arduino')
		self._SerialDataGateway = SerialDataGateway(port, baudrate,  self._HandleReceivedLine)
	
	def Start(self):
		rospy.logdebug("Starting")
		self._SerialDataGateway.Start()

 	def Stop(self):
		 rospy.logdebug("Stopping")
		 self._SerialDataGateway.Stop()
 
if __name__ == '__main__':
	arduino = Arduino("/dev/ttyACM0", 115200)
	try:
		arduino.Start()
		rospy.spin()
 
 	except rospy.ROSInterruptException:
		 arduino.Stop()