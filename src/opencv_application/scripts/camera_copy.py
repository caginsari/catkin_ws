#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
#from opencv_application.msg import kinect
from geometry_msgs.msg import Point
import sys

pub = rospy.Publisher('rgbxy_topic',Point,queue_size=10)


bridge = CvBridge()
def click_event(event, x, y, flags, params):
  
    # checking for left mouse clicks
    if event == cv2.EVENT_LBUTTONDOWN:
        
        kinect_data = Point()

        kinect_data.x = x
        kinect_data.y = y
        #kinect_data.name = 'kinect_001'

        rospy.loginfo(kinect_data)

        pub.publish(kinect_data)

        #rate.sleep()

        # displaying the coordinates
        # on the Shell

        #print(x, y)

def func(ros_image):
  
  #print ('image received!')
  global bridge

  try:
    
    cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")

    (rows,cols,channels) = cv_image.shape
    if cols > 60 and rows > 60 :
        #cv_image = cv2.bitwise_not(cv_image)
        #imCopy = cv_image.copy()
        cv2_image = cv2.cvtColor(cv_image,cv2.COLOR_BGR2GRAY)

        ret,thresh = cv2.threshold(cv2_image,200,255,0)
        ret,cnts = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL,
            cv2.CHAIN_APPROX_SIMPLE)
  
  except CvBridgeError as e:
    print(e)
  
  cv2.imshow("camera", cv2_image)
  cv2.setMouseCallback('camera', click_event)
  
  
  if cv2.waitKey(1) & 0xFF == ord('q'):
    rospy.signal_shutdown('shutting down...')
 
def main(args):
  
  #rospy.init_node('camera', anonymous=True)

  rospy.Subscriber("/camera/rgb/image_raw",Image,func)
  rospy.init_node('publisher',anonymous=True)
  #rate = rospy.Rate(10)
  
  
  try:
    rospy.spin()
  
  except KeyboardInterrupt:
    
    print("shutting down...")
    cv2.destroyAllWindows()

if __name__ == '__main__':
  main(sys.argv)