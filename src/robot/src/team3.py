#!/usr/bin/env python3
# cooding: utf-8

#os
import time
import sys
import math

#ros
import rospy
from std_msgs.msg import String, Bool
import smach
import smach_ros

#import hsrb
from hsrb_interface import geometry
from hsrb_interface import Robot

#import my pkg
sys.path.append('/home/demulab/dspl_ws/src/hsr/robot/src')
from humanmodule import *
from function import *
from audiomodule import *
from manipulation import *

def main():
    whole_body = robot.get('whole_body')
    omni_base = robot.get('omni_base')

    arm = Arm()
    
    #instance_desk使う
    
    #横に2,1移動
    
    #ものを置く
    arm.place_object()
  
  
if __name__ == "__main__":
    main()
