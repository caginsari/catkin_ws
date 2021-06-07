#author: Cagin Sari
# camera.py is used to simulate the coordinate coming from the detected letter by publishing the coordinate of the left
# mouse click on the image frame as geometry_msgs

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
        
        kinect_data = Point() # assigns x and y values of the point of the mouse click to the geometry_msgs

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
    
    cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8") #To work with the openCV library ROS image received from the camera is converted to a CV image

    #(rows,cols,channels) = cv_image.shape
    #if cols > 60 and rows > 60 :
    #    cv2.circle(cv_image, (320,240), 60, (220,30,255))
  
  except CvBridgeError as e:
    print(e)
  
  cv2.imshow("camera", cv_image)
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