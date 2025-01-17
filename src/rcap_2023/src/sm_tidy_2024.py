#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import os
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
from humanmodule import *

#sys.path.insert(0, os.path.join('~', 'tts_module'))
#from tts_HSRB59 import RobotHSRB

robot = hsrb_interface.Robot()
omni_base = robot.get('omni_base')
whole_body = robot.get('whole_body')
gripper = robot.get('gripper')
tts = robot.get('default_tts')
arm = Arm()

#------------------------------------------
pick_object = "strawberries"
#------------------------------------------

shape_list = ["soccer_ball","soft_ball","base_ball",
              "tennis_ball","racquet_ball","golf_ball","stacking_blocks","brick","dice","rope","chain","ball", "beach_ball"]
tool_list =["pen","padlock","clamp","plastic_bolt", "marker"]
food_list = ["cracker_box","box_of_sugar","chocolate_pudding",
             "gelatin_box","meat_can","coffee",
             "tuna_can","chips","mustard ",
             "soup_can","banana","strawberries","apple",
             "lemon","peach","pear","orange","plum","beer_can", "can", "bucket"]

kitchen_list = ["glass_cleaner","cleanser","sponge",
                "pitcher_base","pitcher_lid","metal_bowl","spatula",
                "wine_glass","mug"]
orientation_list = ["fork","spoon","knife","scissors"]
task_list = ["lego","wood_blocks","9-hole","airplane","magazine","t-shirt","timer"]

#locatin_list 辞書型で定義
location_list ={'start_potision':(-0.00015599728329665106, 0.002880327083552354, -0.001082919256885613),
		'entrance':(1.3594656126685734, 0.0614640933146179, 0.005403819655827733),
                'enter':(1.2665689822656732, -0.03874379822393036, -1.7258606588536878),
                'drawer_right':(1.5513370721147142, 0.012855950153572104, -1.677264638695136),
                'drawer_left':(1.9342324382070561, -0.027197207686224967, -1.6767528923773503),
                'cotainers_A':(2.5013116170676235, -0.0663181122729577, -1.6367925702352046),
                'cotainers_B':(2.786315416695007, -0.10362665356468137, -1.6411417173979423),
                'Trays_A':(3.2949631708494747, -0.12082371303376437, -1.6197493392778675),
                'Trays_B':(2.9921325177794476, -0.1022074430181617, -1.623438320656917),
                'bin_A':(3.8948470769055503, -0.15267617163396122, -1.6072357260843566),
                'bin_B':(4.4885770070134985, -0.1357564433709446, -1.5535839154607807),
                'pick_A':(1.5225252187006706, 0.4422721862792967, 1.535539711198856),
                'pick_Ad':(1.5225252187006706, 0.8493340916260321, 1.535539711198856),
                'pick_B':(2.3655225224810947, 0.49520111083984386, 1.4702218868260533),
                'pick_Bd':(2.3655225224810947, 0.7573672996398254, 1.4702218868260533),
                'pick_C':(3.1274632473353807, 0.5057277414160095, 1.5204637793143587),
                'pick_Cd':(3.1588966687560687, 0.7375716956745216, 1.4998615920422016),
                'table_B':(2.1037579497598538, 1.2794696599556121, 1.5249952219681961),
                'waypoint_1':(4.433216094970702, 0.900550842285156, 1.5435204018683168),
                'task2a_start':(3.700136780324349, 1.9313400273376218, 1.5213156770688085),
                'task2a_end':(3.6629467653550996, 3.692564971029578, 1.4208711519579684),
                'shelf_right':(3.2595201101875912, 3.982557296669328, 1.552463855003606),
                'shelf_center':(3.9536083237543767, 3.6821909473999264, 1.5393924927790927),
                'shelf_left':(2.801047491189583, 3.9277634025740573, 1.5072258200410695),
                'chair_center':(3.1422072500771847, 3.59923785518839, 3.100139454412367),
                'chair_left':(2.354176614420277, 3.2229506355108284, -3.0876748469193926),
                'chair_right':(2.414609019628616, 4.018040527636154, -3.0745113932426573)}


class EnterRoom(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['to_taskA'])
        rospy.Subscriber("/hsrb/base_scan",LaserScan,self.scan_callback)
        self.range =0.0
 
    def scan_callback(self,msg):
        self.range = msg.ranges 


    def execute(self, userdata):
        rospy.loginfo("------------Enter Room-------------------")
        tts.say('start tidy up')
        rospy.sleep(1.0)
        tts.say('please open the door')
        rospy.sleep(1.0)
        #self.rangeが0.5より小さいときはループ
        #while self.range[165] < 0.5:
        tts.say('please open the door')
        rospy.sleep(1.0)
        tts.say('thank you')
        rospy.sleep(1.0)
        #1m前進
        rospy.sleep(3.0)
        omni_base.go_rel(1.0,0.0,0.0, 300.0)
        rospy.sleep(5.0)

        return "to_taskA"

class TaskA(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['to_taskB'])
        self.update_up = rospy.Publisher('tf_updater', String, queue_size=1)

    def execute(self, userdata):
        rospy.loginfo("----------------Task A--------------------")
        tts.say('start task A')
        rospy.sleep(1.0)
        omni_base.go_abs(location_list['pick_C'][0],location_list['pick_C'][1],location_list['pick_C'][2])
        rospy.sleep(5.0)

        msg = String()
        while rospy.is_shutdown() == False:
            whole_body.move_to_go()
            #首を下に向ける
            whole_body.move_to_joint_positions({'head_tilt_joint': -0.9})
            rospy.sleep(3.0)
            #手を閉じる
            rospy.sleep(3.0)
            object_list = 'no_object'
            for i in range(5):
                object_list = arm.take_list()
                if object_list != 'no_object':
                    break
            if object_list != 'no_object':
                msg.data = 'stop'
                self.update_up.publish(msg)
            #手を開ける
            rospy.sleep(3.0)
            gripper.command(1.0)
            rospy.sleep(3.0)
            if object_list == "no_object":
                print("no object")
                break
            else:
                #object_listの中身を発話
                print(object_list[0][0])
            
                try:
                    arm.instance_floor(object_list[0][0])
                    rospy.sleep(3.0)
                except:
                    print("error")
                    pass
                msg.data = 'start'
                self.update_up.publish(msg)
                whole_body.move_to_go()
                rospy.sleep(3.0)
                
                if object_list[0][0] in shape_list:
                    try:
                        rospy.sleep(2.0)
                        omni_base.go_abs(location_list['drawer_left'][0],location_list['drawer_left'][1],location_list['drawer_left'][2])
                        rospy.sleep(2.0)
                        arm.place_object2()
                        rospy.sleep(2.0)
                    except:
                        pass


                elif object_list[0][0] in tool_list:
                    omni_base.go_abs(location_list['drawer_right'][0],location_list['drawer_right'][1],location_list['drawer_right'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in food_list:
                    omni_base.go_abs(location_list['Tray_A'][0],location_list['Tray_A'][1],location_list['Tray_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in kitchen_list:
                    omni_base.go_abs(location_list['cotainers_A'][0],location_list['cotainers_A'][1],location_list['cotainers_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in orientation_list:
                    omni_base.go_abs(location_list['cotainers_B'][0],location_list['cotainers_B'][1],location_list['cotainers_B'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in task_list:
                    omni_base.go_abs(location_list['bin_A'][0],location_list['bin_A'][1],location_list['bin_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)
                else:
                    omni_base.go_abs(location_list['bin_B'][0],location_list['bin_B'][1],location_list['bin_B'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                gripper.command(1.0)
                rospy.sleep(2.0)
                omni_base.go_abs(location_list['pick_A'][0],location_list['pick_A'][1],location_list['pick_A'][2])
                rospy.sleep(3.0)
            omni_base.go_abs(location_list['pick_B'][0],location_list['pick_B'][1],location_list['pick_B'][2])
            rospy.sleep(3.0)

        while rospy.is_shutdown() == False:
            whole_body.move_to_go()
            #首を下に向ける
            whole_body.move_to_joint_positions({'head_tilt_joint': -0.9})
            rospy.sleep(3.0)
            #手を閉じる
            rospy.sleep(3.0)
            object_list = 'no_object'
            for i in range(5):
                object_list = arm.take_list()
                if object_list != 'no_object':
                    break
            if object_list != 'no_object':
                msg.data = 'stop'
                self.update_up.publish(msg)
            #手を開ける
            rospy.sleep(3.0)
            gripper.command(1.0)
            rospy.sleep(3.0)
            if object_list == "no_object":
                print("no object")
                break
            else:
                #object_listの中身を発話
                print(object_list[0][0])
            
                try:
                    arm.instance_floor(object_list[0][0])
                    rospy.sleep(3.0)
                except:
                    print("error")
                    pass
                msg.data = 'start'
                self.update_up.publish(msg)
                whole_body.move_to_go()
                rospy.sleep(3.0)
                
                if object_list[0][0] in shape_list:
                    rospy.sleep(5.0)
                    omni_base.go_abs(location_list['drawer_left'][0],location_list['drawer_left'][1],location_list['drawer_left'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in tool_list:
                    omni_base.go_abs(location_list['drawer_right'][0],location_list['drawer_right'][1],location_list['drawer_right'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)
                    
                elif object_list[0][0] in food_list:
                    omni_base.go_abs(location_list['Tray_A'][0],location_list['Tray_A'][1],location_list['Tray_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in kitchen_list:
                    omni_base.go_abs(location_list['cotainers_A'][0],location_list['cotainers_A'][1],location_list['cotainers_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in orientation_list:
                    omni_base.go_abs(location_list['cotainers_B'][0],location_list['cotainers_B'][1],location_list['cotainers_B'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in task_list:
                    omni_base.go_abs(location_list['bin_A'][0],location_list['bin_A'][1],location_list['bin_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)
                else:
                    omni_base.go_abs(location_list['bin_B'][0],location_list['bin_B'][1],location_list['bin_B'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                gripper.command(1.0)
                rospy.sleep(2.0)
                omni_base.go_abs(location_list['pick_B'][0],location_list['pick_B'][1],location_list['pick_B'][2])
                rospy.sleep(3.0)
                whole_body.move_to_go()
            omni_base.go_abs(location_list['pick_B'][0],location_list['pick_B'][1],location_list['pick_B'][2])
            rospy.sleep(3.0)
            
        omni_base.go_abs(location_list['pick_C'][0],location_list['pick_C'][1],location_list['pick_C'][2])
        rospy.sleep(5.0)

        while rospy.is_shutdown() == False:
            whole_body.move_to_go()
            #首を下に向ける
            whole_body.move_to_joint_positions({'head_tilt_joint': -0.9})
            rospy.sleep(3.0)
            #手を閉じる
            rospy.sleep(3.0)
            object_list = 'no_object'
            for i in range(5):
                object_list = arm.take_list()
                if object_list != 'no_object':
                    break
            if object_list != 'no_object':
                msg.data = 'stop'
                self.update_up.publish(msg)
            #手を開ける
            rospy.sleep(3.0)
            gripper.command(1.0)
            rospy.sleep(3.0)
            if object_list == "no_object":
                print("no object")
                break
            else:
                #object_listの中身を発話
                print(object_list[0][0])
            
                try:
                    arm.instance_floor(object_list[0][0])
                    rospy.sleep(3.0)
                except:
                    print("error")
                    pass
                msg.data = 'start'
                self.update_up.publish(msg)
                whole_body.move_to_go()
                rospy.sleep(3.0)
                
                if object_list[0][0] in shape_list:
                    rospy.sleep(5.0)
                    omni_base.go_abs(location_list['drawer_left'][0],location_list['drawer_left'][1],location_list['drawer_left'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in tool_list:
                    omni_base.go_abs(location_list['drawer_right'][0],location_list['drawer_right'][1],location_list['drawer_right'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in food_list:
                    omni_base.go_abs(location_list['Tray_A'][0],location_list['Tray_A'][1],location_list['Tray_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in kitchen_list:
                    omni_base.go_abs(location_list['cotainers_A'][0],location_list['cotainers_A'][1],location_list['cotainers_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in orientation_list:
                    omni_base.go_abs(location_list['cotainers_B'][0],location_list['cotainers_B'][1],location_list['cotainers_B'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)

                elif object_list[0][0] in task_list:
                    omni_base.go_abs(location_list['bin_A'][0],location_list['bin_A'][1],location_list['bin_A'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                    rospy.sleep(2.0)
                else:
                    omni_base.go_abs(location_list['bin_B'][0],location_list['bin_B'][1],location_list['bin_B'][2])
                    rospy.sleep(2.0)
                    arm.place_object2()
                gripper.command(1.0)
                rospy.sleep(2.0)
                omni_base.go_abs(location_list['pick_C'][0],location_list['pick_C'][1],location_list['pick_C'][2])
                rospy.sleep(3.0)
                whole_body.move_to_go()
            rospy.sleep(3.0)
        


        return "to_taskB"
        
        


class TaskB(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['finish'])

    def execute(self,userdata):
        rospy.loginfo("----------------Task B--------------------")
        omni_base.go_abs(location_list['waypoint_1'][0],location_list['waypoint_1'][1],location_list['waypoint_1'][2])
        rospy.sleep(5.0)
        whole_body.move_to_go()
        rospy.sleep(1.0)
       # omni_base.go_abs(location_list[''][0]
        omni_base.go_abs(location_list['shelf_center'][0],location_list['shelf_center'][1],location_list['shelf_center'][2])
        rospy.sleep(2.0)
        whole_body.move_to_go()
        rospy.sleep(1.0)

        shelf_heights = [0.51, 0.795, 1.06]
        found_object = False
        for height in shelf_heights:
            whole_body.move_to_joint_positions({'arm_lift_joint': height})
            rospy.sleep(1.0)
            take_list = arm.take_object()
            if take_list != "no_object":
                found_object = True
                break

        if not found_object:
            rospy.loginfo("No object found on any shelf.")
            return "finish"

        arm.instance_shelf('object')
        omni_base.go_abs(location_list['chair_center'][0],location_list['chair_center'][1],location_list['chair_center'][2])

        rospy.sleep(2.0)
        result = "false"
        op = OpenPose()
        while result != "left" and result != "right":
            tts.say('please raise your hands')
            rospy.sleep(2.0)
            op = OpenPose()
            result = op.human()
            rospy.sleep(1.0)
        if result == "left":
            omni_base.go_abs(location_list['chair_left'][0],location_list['chair_left'][1],location_list['chair_left'][2])
            rospy.sleep(2.0)
            arm.place_object()
            gripper.command(1.0)
            rospy.sleep(2.0)
        elif result == "right":
            omni_base.go_abs(location_list['chair_right'][0],location_list['chair_right'][1],location_list['chair_right'][2])
            rospy.sleep(2.0)
            arm.place_object2()
            rospy.sleep(2.0)
            gripper.command(1.0)
            rospy.sleep(2.0)

        return "finish"


def main():
    sm_tidy_up = smach.StateMachine(outcomes=['FINISH'])

    with sm_tidy_up:
        #EnterRoom
        smach.StateMachine.add('ENTER',EnterRoom(),
                transitions={'to_taskA':'TASK_A'})

        #Task A
        smach.StateMachine.add('TASK_A',TaskA(),
                               transitions={'to_taskB':'TASK_B'})

        #Task 2A
        #smach.StateMachine.add('TASK_2A',Task2A(),
        #        transitions={'to_taskB':'TASK_B'})

        #Task B 
        smach.StateMachine.add('TASK_B',TaskB(),
                transitions={'finish':'FINISH'})

        outcome = sm_tidy_up.execute()


if __name__ =='__main__':
    #rospy.init_node('sm_tidy_up')
    main()
