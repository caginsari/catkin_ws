#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
#from opencv_application.msg import kinect
from geometry_msgs.msg import Point
import sys

pub = rospy.Publisher('/camera/color/image_raw',Point,queue_size=10)
bridge = CvBridge()
def func(ros_image):
	global bridge
	
	try:
			cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")
	except CvBridgeError as e:
		 print(e)
	else:
		cv2.imwrite('snapshot.jpg', cv_image)
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
