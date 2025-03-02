#!/usr/bin/env python3
import sys
import threading
import time

import cv2 as cv
import numpy as np
import rospy
from detectron2.config import get_cfg
from detectron2.data import MetadataCatalog
from cv_bridge import CvBridge, CvBridgeError
# import some common detectron2 utilities
from detectron2.engine import DefaultPredictor
from detectron2.utils.logger import setup_logger
from detectron2.utils.visualizer import Visualizer
from detectron2_ros.msg import Result
from sensor_msgs.msg import Image, RegionOfInterest
from detectron2.data.datasets import register_coco_instances
from detectron2.engine import DefaultTrainer


class Detectron2node(object):
    def __init__(self):
        rospy.logwarn("Initializing")
        setup_logger()
        self._bridge = CvBridge()
        self._last_msg = None
        self._msg_lock = threading.Lock()
        self._image_counter = 0

        self.cfg = get_cfg()
        #register_coco_instances("takenoko", {}, "/home/demulab/dspl_ws/include/takenoko/coco_annotations.json", "/home/demulab/dspl_ws/include/takenoko")
        register_coco_instances("ycb_01", {}, "/home/demulab/dspl_ws/include/v3_all_ycb/_annotations.coco.json", "")
        ##############################
        self.cfg.DATASETS.TRAIN = ("ycb_01",)
        self.cfg.DATASETS.TEST = ()
        self.cfg.DATALOADER.NUM_WORKERS = 2
        self.cfg.SOLVER.IMS_PER_BATCH = 2  
        self.cfg.SOLVER.BASE_LR = 0.00025
        self.cfg.SOLVER.MAX_ITER = 100  
        self.cfg.SOLVER.STEPS = []
        self.cfg.MODEL.ROI_HEADS.BATCH_SIZE_PER_IMAGE = 128 
        self.cfg.MODEL.ROI_HEADS.NUM_CLASSES = 56
        #MetadataCatalog.get("takenoko").thing_classes = ["takenoko", "cola", "pocky", "noodle", "tea"]
        #MetadataCatalog.get("ycb_all").thing_classes = ["background", "9_hole","apple" ,"banana" ,"base_ball" ,"box_of_sugar", "brick", "chain", "chips", "chocolate_pudding","clamp","cleanser","cleanser-","coffee","cracker_box","dice","flat_screw","fork","gelatin_box","glass_cleaner","golf_ball","hammer","knife","lego","lemon","meat_can","metal_bowl","mug", "mustard", "orange","padlock", "peach", "pear", "pen", "plastic_bolt" ,"plum", "plus_screw", "racquet_ball", "rope", "rubick_cube", "scissors", "soccer_ball", "soft_ball", "soup_can", "spatula", "sponge", "spoon", "stacking_blocks", "strawberries", "t-shirt", "tennis_ball", "timer", "tuna_can", "wine_glass", "wood_block", "wrench"]


        #trainer = DefaultTrainer(self.cfg) 
        #trainer.train()
        #################################

        self.cfg.merge_from_file(self.load_param('~config'))
        self.cfg.MODEL.ROI_HEADS.SCORE_THRESH_TEST = self.load_param('~detection_threshold') # set threshold for this model
        #self.cfg.DATASETS.TRAIN = ("takenoko")
        self.cfg.MODEL.WEIGHTS = self.load_param('~model')
        self.predictor = DefaultPredictor(self.cfg)
        #MetadataCatalog.get("ycb_all").set(thing_classes = ["background", "9_hole","apple","banana" ,"base_ball" ,"box_of_sugar", "brick", "chain", "chips", "chocolate_pudding","clamp","cleanser","cleanser-","coffee","cracker_box","dice","flat_screw","fork","gelatin_box","glass_cleaner","golf_ball","hammer","knife","lego","lemon","meat_can","metal_bowl","mug", "mustard", "orange","padlock", "peach", "pear", "pen", "plastic_bolt" ,"plum", "plus_screw", "racquet_ball", "rope", "rubick_cube", "scissors", "soccer_ball", "soft_ball", "soup_can", "spatula", "sponge", "spoon", "stacking_blocks", "strawberries", "t-shirt", "tennis_ball", "timer", "tuna_can", "wine_glass", "wood_block", "wrench"])


        #self._class_names = MetadataCatalog.get(self.cfg.DATASETS.TRAIN[0]).get("thing_classes", None)
        self._class_names = ["background", "9_hole","apple","banana" ,"base_ball" ,"box_of_sugar", "brick", "chain", "chips", "chocolate_pudding","clamp","cleanser","cleanser-","coffee","cracker_box","dice","flat_screw","fork","gelatin_box","glass_cleaner","golf_ball","hammer","knife","lego","lemon","meat_can","metal_bowl","mug", "mustard", "orange","padlock", "peach", "pear", "pen", "plastic_bolt" ,"plum", "plus_screw", "racquet_ball", "rope", "rubick_cube", "scissors", "soccer_ball", "soft_ball", "soup_can", "spatula", "sponge", "spoon", "stacking_blocks", "strawberries", "t-shirt", "tennis_ball", "timer", "tuna_can", "wine_glass", "wood_block", "wrench"]
        print(self._class_names)
        self._visualization = self.load_param('~visualization',True)
        self._result_pub = rospy.Publisher('~result', Result, queue_size=1)
        self._vis_pub = rospy.Publisher('~visualization', Image, queue_size=1)
        self._sub = rospy.Subscriber(self.load_param('~input'), Image, self.callback_image, queue_size=1)

        self.start_time = time.time()
        rospy.logwarn("Initialized")
    def run(self):

        rate = rospy.Rate(100)
        while not rospy.is_shutdown():
            if self._msg_lock.acquire(False):
                img_msg = self._last_msg
                self._last_msg = None
                self._msg_lock.release()
            else:
                rate.sleep()
                continue

            if img_msg is not None:
                self._image_counter = self._image_counter + 1
                if (self._image_counter % 11) == 10:
                    rospy.loginfo("Images detected per second=%.2f",
                                  float(self._image_counter) / (time.time() - self.start_time))

                np_image = self.convert_to_cv_image(img_msg)

                outputs = self.predictor(np_image)
                result = outputs["instances"].to("cpu")
                result_msg = self.getResult(result)
                
                print("#####################################")
                print(result)
                print("#####################################")
                
                self._result_pub.publish(result_msg)

                # Visualize results
                if self._visualization:
                    v = Visualizer(np_image[:, :, ::-1], metadata = MetadataCatalog.get("ycb_01"), scale=1.2)
                    #v = Visualizer(np_image[:, :, ::-1], MetadataCatalog.get(self.cfg.DATASETS.TRAIN[0]), scale=1.2)
                    v = v.draw_instance_predictions(outputs["instances"].to("cpu"))
                    img = v.get_image()[:, :, ::-1]

                    image_msg = self._bridge.cv2_to_imgmsg(img)
                    self._vis_pub.publish(image_msg)

            rate.sleep()

    def getResult(self, predictions):

        boxes = predictions.pred_boxes if predictions.has("pred_boxes") else None

        if predictions.has("pred_masks"):
            masks = np.asarray(predictions.pred_masks)
        else:
            return

        result_msg = Result()
        result_msg.header = self._header
        result_msg.class_ids = predictions.pred_classes if predictions.has("pred_classes") else None
        print(result_msg.class_ids)
        #print(np.array(self._class_names))
        result_msg.class_names = np.array(self._class_names)[result_msg.class_ids.numpy()]
        print(result_msg.class_names)
        result_msg.scores = predictions.scores if predictions.has("scores") else None

        for i, (x1, y1, x2, y2) in enumerate(boxes):
            mask = np.zeros(masks[i].shape, dtype="uint8")
            mask[masks[i, :, :]]=255
            mask = self._bridge.cv2_to_imgmsg(mask)
            result_msg.masks.append(mask)

            box = RegionOfInterest()
            box.x_offset = np.uint32(x1)
            box.y_offset = np.uint32(y1)
            box.height = np.uint32(y2 - y1)
            box.width = np.uint32(x2 - x1)
            result_msg.boxes.append(box)

        return result_msg

    def convert_to_cv_image(self, image_msg):

        if image_msg is None:
            return None

        self._width = image_msg.width
        self._height = image_msg.height
        channels = int(len(image_msg.data) / (self._width * self._height))

        encoding = None
        if image_msg.encoding.lower() in ['rgb8', 'bgr8']:
            encoding = np.uint8
        elif image_msg.encoding.lower() == 'mono8':
            encoding = np.uint8
        elif image_msg.encoding.lower() == '32fc1':
            encoding = np.float32
            channels = 1

        cv_img = np.ndarray(shape=(image_msg.height, image_msg.width, channels),
                            dtype=encoding, buffer=image_msg.data)

        if image_msg.encoding.lower() == 'mono8':
            cv_img = cv.cvtColor(cv_img, cv.COLOR_RGB2GRAY)
        else:
            cv_img = cv.cvtColor(cv_img, cv.COLOR_RGB2BGR)

        return cv_img

    def callback_image(self, msg):
        rospy.logdebug("Get an image")
        if self._msg_lock.acquire(False):
            self._last_msg = msg
            self._header = msg.header
            self._msg_lock.release()

    @staticmethod
    def load_param(param, default=None):
        new_param = rospy.get_param(param, default)
        rospy.loginfo("[Detectron2] %s: %s", param, new_param)
        return new_param

def main(argv):
    rospy.init_node('detectron2_ros')
    node = Detectron2node()
    node.run()

if __name__ == '__main__':
    main(sys.argv)
