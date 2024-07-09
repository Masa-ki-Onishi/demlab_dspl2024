import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import mediapipe as mp
from std_msgs.msg import String
mp_drawing = mp.solutions.drawing_utils
mp_hands = mp.solutions.hands

class HandGestureDetector(object):
    def __init__(self):
        topic_name = '/hsrb/head_rgbd_sensor/rgb/image_rect_color'
        self._input_image = None
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber(topic_name, Image, self.image_callback)
        rospy.wait_for_message(topic_name, Image, timeout=5.0)
        self.pub = rospy.Publisher('/raising_hand', String, queue_size=10)
        
    def image_callback(self, data):
        try:
            self._input_image = self.bridge.imgmsg_to_cv2(data, 'bgr8')
        except CvBridgeError as cv_bridge_exception:
            rospy.logerr(cv_bridge_exception)
    def get_image(self):
        return  self._input_image
                
def main(msg):
    image_rgb = cv2.cvtColor(cv_image, cv2.COLOR_BGR2RGB)
    results = self.hands.process(image_rgb)
    hands = mp_hands.Hands(
    static_image_mode=False,
            max_num_hands=4,
            min_detection_confidence=0.5,
            min_tracking_confidence=0.5)
        if results.multi_hand_world_landmarks:
            for hand_landmarks in results.multi_hand_world_landmarks:
                self.mp_drawing.draw_landmarks(
                    cv_image, hand_landmarks, self.mp_hands.HAND_CONNECTIONS,
                    self.mp_drawing.DrawingSpec(color=(0,255,255), thickness=2, circle_radius=2),
                    self.mp_drawing.DrawingSpec(color=(255,255,0), thickness=2, circle_radius=2),
                )       

        # Extract y-coordinates of specified landmarks (8, 12, 16, 20)
        self.y_coordinates = [hand_landmarks.landmark[i].y for i in [8, 12, 16, 20]]
        # Extract y-coordinates of corresponding landmarks (5, 9, 13, 17)
        self.corresponding_y_coordinates = [hand_landmarks.landmark[i].y for i in [5, 9, 13, 17]]

        if all(y < cy for y, cy in zip(y_coordinates, corresponding_y_coordinates)):
            cv2.putText(image, "Raising hand", (10, 30),
            cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
            rospy.loginfo("Raising hand")
            self.pub.publish("Raising hand")
        else:
            cv2.putText(image, "Other", (10, 30),
            cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
            rospy.loginfo("Other")
            self.pub.publish("Other")            
            
        
        cv2.waitKey(1)   
        return results 
        
if __name__ == '__main__':
    main()
            


