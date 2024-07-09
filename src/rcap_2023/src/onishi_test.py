#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import time
import sys

import rospy
from std_msgs.msg import String
import smach
import smach_ros

import hsrb_interface
from hsrb_interface import Robot
from hsrb_interface import geometry

sys.path.append("/home/demulab-asus4070-2024/dspl2024_ws/src/robot/src")
#from module import *
from sensor_msgs.msg import LaserScan
from manipulation import *
#from humanmodule import *

robot = hsrb_interface.Robot()
omni_base = robot.get('omni_base')
whole_body = robot.get('whole_body')
gripper = robot.get('gripper')
tts = robot.get('default_tts')
arm = Arm()


def main():
    whole_body.move_to_go()
    whole_body.move_to_joint_positions({'head_tilt_joint': -0.9})

    rospy.sleep(3.0)
    object_list = arm.take_list()
    print(object_list)

    if object_list == "no_object":
        print("no object")
    

    else:
        #object_listの中身を発話
        print(object_list[0][0])
    arm.instance_floor(object_list[0][0])

if __name__ =='__main__':
    main()
