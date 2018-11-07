#!/usr/bin/env python

"""
    A ROS Node - TESTING DRIVER

    http://www.gnu.org/licenses/gpl.html
"""

import rospy
from arduino_driver import Arduino
from srv import *
from base_controller import BaseController
from geometry_msgs.msg import Twist
import os, time
import thread
from serial.serialutil import SerialException

class ArduinoROS():
    def get_cmd_vel(self, data):
        x = data.linear.x
        angular = data.angular.z
        self.send_cmd_to_arduino(x, angular)
    
    def send_cmd_to_arduino(self, x, angular):
        # calculate right and left wheels' signal
        right = int((x + angular) * 50)
        left = int((x - angular) * 50)
        # format for arduino
        message = "{},{}*".format(right, left)
        print message
        # send by serial 
        self.ser.write(message)

    def __init__(self):
        rospy.init_node('arduino', log_level=rospy.INFO)
        self.ser = serial.Serial('/dev/ttyUSB0', 115200)
        self.get_arduino_message()

        # Get the actual node name in case it is set in the launch file
        self.name = rospy.get_name()

        # Subscribe for Keyboard Command - Test 
        rospy.Subscriber('/cmd_vel',Twist,self.get_cmd_vel)

        # Cleanup when termniating the node
        rospy.on_shutdown(self.shutdown)

        self.timeout = rospy.get_param("~timeout", 0.5)
        self.wheel_radius = rospy.get_param("~wheel_radius", 0.06)
        self.base_width = rospy.get_param("~base_width", 0.5)
        # Overall loop rate: should be faster than fastest sensor rate
        self.rate = int(rospy.get_param("~rate", 50))
        r = rospy.Rate(self.rate)

        # Initialize the controlller
        self.controller = Arduino(self.port, self.baud, self.timeout, self.motors_reversed)

        # Make the connection
        self.controller.connect()

        rospy.loginfo("Connected to Arduino on port " + self.port + " at " + str(self.baud) + " baud")

        # Reserve a thread lock
        mutex = thread.allocate_lock()

        # Initialize any sensors
        self.mySensors = list()

        sensor_params = rospy.get_param("~sensors", dict({}))

        for name, params in sensor_params.iteritems():
            # Set the direction to input if not specified
            try:
                params['direction']
            except:
                params['direction'] = 'input'

            if params['type'] == "Ping":
                sensor = Ping(self.controller, name, params['pin'], params['rate'], self.base_frame)
            elif params['type'] == "GP2D12":
                sensor = GP2D12(self.controller, name, params['pin'], params['rate'], self.base_frame)
            elif params['type'] == 'Digital':
                sensor = DigitalSensor(self.controller, name, params['pin'], params['rate'], self.base_frame, direction=params['direction'])
            elif params['type'] == 'Analog':
                sensor = AnalogSensor(self.controller, name, params['pin'], params['rate'], self.base_frame, direction=params['direction'])
            elif params['type'] == 'PololuMotorCurrent':
                sensor = PololuMotorCurrent(self.controller, name, params['pin'], params['rate'], self.base_frame)
            elif params['type'] == 'PhidgetsVoltage':
                sensor = PhidgetsVoltage(self.controller, name, params['pin'], params['rate'], self.base_frame)
            elif params['type'] == 'PhidgetsCurrent':
                sensor = PhidgetsCurrent(self.controller, name, params['pin'], params['rate'], self.base_frame)

#                if params['type'] == "MaxEZ1":
#                    self.sensors[len(self.sensors)]['trigger_pin'] = params['trigger_pin']
#                    self.sensors[len(self.sensors)]['output_pin'] = params['output_pin']
            try:
                self.mySensors.append(sensor)
                rospy.loginfo(name + " " + str(params) + " published on topic " + rospy.get_name() + "/sensor/" + name)
            except:
                rospy.logerr("Sensor type " + str(params['type']) + " not recognized.")

        # Initialize the base controller if used
        if self.use_base_controller:
            self.myBaseController = BaseController(self.controller, self.base_frame, self.name + "_base_controller")

        # Start polling the sensors and base controller
        while not rospy.is_shutdown():
            for sensor in self.mySensors:
                mutex.acquire()
                sensor.poll()
                mutex.release()

            if self.use_base_controller:
                mutex.acquire()
                self.myBaseController.poll()
                mutex.release()

            # Publish all sensor values on a single topic for convenience
            now = rospy.Time.now()

            if now > self.t_next_sensors:
                msg = SensorState()
                msg.header.frame_id = self.base_frame
                msg.header.stamp = now
                for i in range(len(self.mySensors)):
                    msg.name.append(self.mySensors[i].name)
                    msg.value.append(self.mySensors[i].value)
                try:
                    self.sensorStatePub.publish(msg)
                except:
                    pass

                self.t_next_sensors = now + self.t_delta_sensors

            r.sleep()

    # Service callback functions
    def ServoWriteHandler(self, req):
        self.controller.servo_write(req.id, req.value)
        return ServoWriteResponse()

    def ServoReadHandler(self, req):
        pos = self.controller.servo_read(req.id)
        return ServoReadResponse(pos)

    def DigitalSetDirectionHandler(self, req):
        self.controller.pin_mode(req.pin, req.direction)
        return DigitalSetDirectionResponse()

    def DigitalWriteHandler(self, req):
        self.controller.digital_write(req.pin, req.value)
        return DigitalWriteResponse()

    def DigitalReadHandler(self, req):
        value = self.controller.digital_read(req.pin)
        return DigitalReadResponse(value)

    def AnalogWriteHandler(self, req):
        self.controller.analog_write(req.pin, req.value)
        return AnalogWriteResponse()

    def AnalogReadHandler(self, req):
        value = self.controller.analog_read(req.pin)
        return AnalogReadResponse(value)

    def shutdown(self):
        rospy.loginfo("Shutting down Arduino Node...")

        # Stop the robot
        try:
            rospy.loginfo("Stopping the robot...")
            self.cmd_vel_pub.Publish(Twist())
            rospy.sleep(2)
        except:
            pass

        # Close the serial port
        try:
            self.controller.close()
        except:
            pass
        finally:
            rospy.loginfo("Serial port closed.")
            os._exit(0)

if __name__ == '__main__':
    try:
        myArduino = ArduinoROS()
    except SerialException:
        rospy.logerr("Serial exception trying to open port.")
        os._exit(0)
