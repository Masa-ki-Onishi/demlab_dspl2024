#!/usr/bin/env python3

import rospy
import cv2
import os, sys
import struct
from std_msgs.msg import Float64, String
from sensor_msgs.msg import PointCloud2 as pcd2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import PoseStamped
#from detectron2_ros.msg import Result
from detic_pkg.msg import Result
import numpy as np
import math
import tf
from tf2_msgs.msg import TFMessage

class Detectron2_Depth():
    def __init__(self):
        self.cv_bridge = CvBridge()
        self.width = 640
        self.height = 480
        self.hfov = math.radians(58)#xtion 58)
        self.vfov = math.radians(45)#xtion 45)
        self.data_flag = 0
        self.kanazawa_msg = 'start'
        self.br = tf.TransformBroadcaster()
        self.listener = tf.TransformListener()
        self.near_pub = rospy.Publisher("appear_list", String, queue_size = 1)
        rospy.Subscriber("/hsrb/head_rgbd_sensor/depth_registered/image", Image, self.depth_cb)
        rospy.Subscriber("/detectron2_ros/result", Result, self.bbox_cb)
        rospy.Subscriber("/tf", TFMessage, self.tf_cb)
        rospy.Subscriber("tf_updater", String, self.kanazawa_cb)

    def kanazawa_cb(self, msg):
        self.kanazawa_msg = msg.data

    def tf_cb(self, tf_data):
    #吐き出されるTFの基準座標の取得
        for data in tf_data.transforms:
            if data.child_frame_id == "head_tilt_link":
                a = data.transform.rotation
                self.obj_x = a.x
                self.obj_y = a.y
                self.obj_z = a.z
                self.obj_w = a.w
                self.obj_rot = [a.x, a.y, a.z, a.w]
                self.tf = tf.transformations.euler_from_quaternion(self.obj_rot)
                self.tf = list(self.tf)
                buf_x = self.tf[0]
                buf_y = self.tf[1]
                buf_z = self.tf[2]
                #座標を入れ替えて整理（あんまきにしないで）
                self.tf[0] = buf_y
                self.tf[1] = -buf_z
                self.tf[2] = buf_x
                self.align_rot = tf.transformations.quaternion_from_euler(self.tf[0], self.tf[1], self.tf[2])


    def depth_cb(self, d_image):
        try:
            self.m_depth_image = self.cv_bridge.imgmsg_to_cv2(d_image)
            self.data_flag = 1
        except CvBridgeError as e:
            rospy.logerr(e)
        

    def bbox_cb(self, result):
        # 検出結果を受け取り、中心座標を求め、カテゴリ数の分だけ点群処理関数の呼び出しを行う
        # 吐き出すもの：オブジェクト名 中心座標
        self.near_list = {}
        for i in range(len(result.class_names)):
            name = result.class_names[i]
            result_box = result.boxes[i]
            x_center = result_box.x_offset + result_box.width//2
            y_center = result_box.y_offset + result_box.height//2
            print("$$$$$$$$$$$$$")
                
            print("==============")
            print(result.class_names[i])
            print("center:", x_center, y_center)
            self.re_detect_cb(name, x_center, y_center)
            
            
            
            print("==============")
        print(self.near_list)
        pub_list = sorted(self.near_list.items(), key=lambda x:x[1])
        #print(pub_list)
        pub_str = ""
        for idx,d in enumerate(pub_list):
            if idx == 0:
                pub_str = d[0] + "," + str(d[1])
            else:
                pub_str = pub_str + "," + d[0] + "," + str(d[1])
        print(pub_str)
        self.near_pub.publish(pub_str)
        
    
    # マスクの中心座標を計算する関数
    def calculate_mask_center(self, mask):
        # マスクの輪郭を見つける

        print(mask)
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        
        if contours:
            # 最も外側の輪郭を選択し、その輪郭の中心を計算する
            contour = max(contours, key=cv2.contourArea)
            M = cv2.moments(contour)
            center_x = int(M["m10"] / M["m00"])
            center_y = int(M["m01"] / M["m00"])
            # マスクの中心座標を計算して、リストに追加する
            mask_centers = []
            for i, mask in enumerate(masks):
                if center_x:
                    mask_centers.append(center)
                    print(i)
                    print("\n")
                else:
                    print(f"No contour found for mask {i+1}.")
            return center_x, center_y
        else:
            return None,None
        
    def detect_cb(self, name, px, py):
        # ｛説明｝　　バウンディングボックスの中心点の距離をtfとして発行する標準的な関数
        if self.data_flag == 0:
            print('return')
            return
        print(self.data_flag)
        m_depth = self.m_depth_image[py][px]
        h_angle = (px - self.width/2) * (self.hfov/self.width)
        v_angle = (py - self.height/2) * (self.vfov/self.height)
        # 計算式01
        #x = m_depth * math.sin(h_angle) * 1
        #y = m_depth * math.sin(v_angle) * 1
        #z = m_depth * math.cos(h_angle) * 1
        # 計算式02
        x = m_depth * math.tan(h_angle) * 1
        y = m_depth * math.tan(v_angle) * 1
        z = m_depth * 1
        if x != float('nan'):
            self.br.sendTransform((x, y, z),
                    tf.transformations.quaternion_from_euler(0, 0, 0),
                    rospy.Time.now(),
                    name,
                    'head_rgbd_sensor_link'#"head_rgbd_sensor_depth_frame"
                    )
            print(x, y, z)
            print(name, 'pubbed')


    def re_detect_cb(self, name, px, py):
        # ｛説明｝　　点群を取れないときの処理を追加したバージョン
        #px = result.boxes.x_offset + result.boxes.width/2
        #py = result.boxes.y_offset + result.boxes.height/2
        if self.data_flag == 0:
            print('return')
            return
        def culc_tf(px, py):
            m_depth = self.m_depth_image[py][px]
            h_angle = (px - self.width/2) * (self.hfov/self.width)
            v_angle = (py - self.height/2) * (self.vfov/self.height)
            # 計算式01
            x = m_depth * math.sin(h_angle) * 1
            y = m_depth * math.sin(v_angle) * 1
            #z = x * math.tan(v_angle)#m_depth * math.cos(h_angle) * 1
            # 計算式02
            #x = m_depth * math.tan(h_angle) * 1
            #y = m_depth * math.tan(v_angle) * 1
            z = m_depth * 1
            return x, y, z
        x, y, z = culc_tf(px, py)
        box_size = int(math.sqrt(9))# 9x9の領域定義
        if np.isnan(x):
            print("detected nan")
            for i in range(box_size):
                print("i :", i)
                for j in range(box_size):
                    print("j :", j)
                    if np.isnan(x):# nanのとき
                        x, y, z = culc_tf(px -1 + i, py -1 + j)
                        if not(np.isnan(x)):
                            break
                else:# break以外で終了したループをcontinueする
                    continue
                break
        if np.isnan(x):
            print("cannot pub tf")
            return
        #print(x, type(x))
#############################################################################################
#ここでTFを出力している
#############################################################################################
        self.br.sendTransform((x*1.2, y*1.2, z*1),#オブジェクトの座標
                              self.align_rot,#基準となる座標（ロボットの頭）
                              rospy.Time.now(),#ここはそのまま
                              name,#オブジェクト名（クラス名）
                              "head_rgbd_sensor_rgb_frame"#基準座標のTF名
                             )
        #print(x, y, z)
        print(name, 'pubbed')
        self.near_list[name] = z

    def min_detect_cb(self, result, debug_px = None, debug_py = None):
        #これはいらない
        # ｛説明｝　　バウンディングボックス中心付近の点群の中から最低値を渡す
        px = debug_px
        py = debug_py
        #px = result.boxes.x_offset + result.boxes.width/2
        #py = result.boxes.y_offset + result.boxes.height/2 

        m_depth = self.m_depth_image[py][px]
        h_angle = (px - self.width/2) * (self.hfov/self.width)
        v_angle = (py - self.height/2) * (self.vfov/self.height)
        x = m_depth * math.sin(h_angle) * 1
        y = m_depth * math.sin(v_angle) * 1
        z = m_depth * math.cos(h_angle) * 1
        #x = m_depth * math.tan(h_angle) * 1
        #y = m_depth * math.tan(v_angle) * 1
        #z = m_depth * 1
        print(x,y)
        if x != float('nan'):
            self.br.sendTransform((x, y, z),
                    tf.transformations.quaternion_from_euler(0, 0, 0),
                    rospy.Time.now(),
                    "sample_object",
                   "head_rgbd_sensor_depth_frame"
                    )
    '''
    def get_center_pix(self):
        #width_is_even = box_width % 2 == 0
        #height_is_even = box_height % 2 == 0
        even_center_size = 10
        odd_center_size = 9
        if box_width % 2 == 0:
            x_center_offset = x_box_offset + (width / 2) - even_center_size / 2
            x_cell_size = even_center_size 
        else:
            x_center_offset = x_box_offset + width // 2 - (odd_center_size -1) / 2        
            x_cell_size = odd_center_size
        if box_height % 2 == 0:
            y_center_offset = y_box_offset + (height / 2) - even_center_size / 2
            y_cell_size = even_center_size
        else:
            y_center_offset = y_box_offset + height // 2 - (odd_center_size -1) / 2
            y_cell_sisze = odd_center_size
        center_depth = l[x_center_offset:x_center_offset + x_cell_size] for l in self.m_depth_image[y_center_offset:y_center_offset + y_cell_size]
    '''




if __name__=="__main__":
    rospy.init_node("tf_position")
    Detectron2_Depth()

    rospy.spin()
