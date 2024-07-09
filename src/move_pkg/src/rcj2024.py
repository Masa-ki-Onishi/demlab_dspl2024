#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#-----------------------------------------------------------
# Title: 目的地の名前と座標を設定するサービスサーバー
# Author: 
#-----------------------------------------------------------
import rospy
import rosparam
import sys
import os
import actionlib
import time
from std_msgs.msg import String, Float64
from std_srvs.srv import Empty
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
sys.path.append('/home/demulab-asus4070-2024/dspl2024_ws/src/move_pkg/srv')
print(sys.path)
from move_pkg.srv import NaviLocation, NaviLocationResponse

#import hsrb_interface
#from hsrb_interface import Robot, geometry
#robot = hsrb_interface.Robot()
#whole_body = robot.get('whole_body')
#omni_base = robot.get('omni_base')
#tts = robot.get("default_tts")
#gripper = robot.get('gripper')


def navigationAC(target_name):
    location_dict = rosparam.get_param('/location')
    if target_name in location_dict:
        coord_list = location_dict[target_name]
        rospy.loginfo("Start Navigation")

        ac = actionlib.SimpleActionClient('/move_base', MoveBaseAction)
        ac.wait_for_server()
        clear_costmaps = rospy.ServiceProxy('/move_base/clear_costmaps', Empty)
        
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = 'map'
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = coord_list[0]
        goal.target_pose.pose.position.y = coord_list[1]
        goal.target_pose.pose.orientation.z = coord_list[2]
        goal.target_pose.pose.orientation.w = coord_list[3]

        clear_costmaps()
        rospy.wait_for_service('move_base/clear_costmaps')
        rospy.sleep(0.3)
        ac.send_goal(goal)
        state = ac.get_state() # 1=running , 3=succeeded, 4=aborted(cancel)
        count = 0 # clear_costmapsの実行回数をカウンタ
        clear = 0 
        while not rospy.is_shutdown():
            state = ac.get_state()
            if state == 1:
                rospy.loginfo('Running...')
                rospy.sleep(1.0)
                clear += 1
            elif state == 3:
                rospy.loginfo('Navigation success!!')
                state = 0
                return True
            elif state == 4:
                if count == 3:
                    count = 0
                    rospy.loginfo('Navigation Failed')
                    return False
                else:
                    rospy.loginfo('Clearing Costmaps')
                    clear_costmaps()
                    ac.send_goal(goal)
                    rospy.loginfo('Send Goal')
                count += 1

            print("clear", clear)
            print("state", state)
            if clear == 15:
                clear_costmaps()
                clear = 0

    else:
        return False

if __name__ == '__main__':
    rospy.init_node('navi_action', anonymous = True)
    try:
        #omni_base.go_rel(5.0, 0.0, 0.0, 100.0)
        #rospy.sleep(3.0)
        navigationAC('start_position')
        print("-------------shelf1----------------")
        navigationAC('pick_A')
        navigationAC('pick_Ad') 
        navigationAC('pick_B')
        navigationAC('pick_Bd')
        navigationAC('pick_C')
        navigationAC('pick_Cd')
        navigationAC('pick_A') 
        print("-------------shelf2----------------")
        navigationAC('shelf_2')
        #navigationAC('table_1')
        #navigationAC('table_2')
        print("-------------box1----------------")
        navigationAC('box_1')
        print("-------------box2----------------")
        navigationAC('box_2')
        print("-------------road1----------------")
        navigationAC('road_1')
        print("-------------road2----------------")
        navigationAC('road_2')
        print("-------------shelf_a----------------")
        navigationAC('shelf_a')
        print("-------------chair_front----------------")
        navigationAC('chair_front')
        print("-------------chair_1----------------")
        navigationAC('chair_1')
        print("-------------chair_2----------------")
        navigationAC('chair_2')
        print("-------------return start----------------")
        navigationAC('road_2')
        navigationAC('road_1')
        navigationAC('start')
        rospy.sleep(5)
        tts.say("よろしくおねがいします")
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
