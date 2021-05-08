#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
from ilk_paket.msg import drone

def func(data):

    rospy.loginfo('alinan veriler: (%d,%s,%d,%.2f,%.2f)',
    data.id,data.name,data.hiz,data.sicaklik,data.batarya_durumu)

rospy.init_node('subscriber',anonymous=True)  

rospy.Subscriber('drone_topic',drone,func)
rospy.spin()