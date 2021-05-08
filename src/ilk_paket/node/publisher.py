#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
from ilk_paket.msg import drone
import random

pub = rospy.Publisher('drone_topic',drone,queue_size=10)
rospy.init_node('publisher',anonymous=True)
rate = rospy.Rate(10)

i = 0

while(not rospy.is_shutdown()):

    drone_bilgi = drone()

    drone_bilgi.id = 1
    drone_bilgi.name = 'drone_001'
    drone_bilgi.hiz = random.randint(5,25)
    drone_bilgi.sicaklik = random.uniform(20,30)
    drone_bilgi.batarya_durumu = 4000-i

    rospy.loginfo(drone_bilgi)

    pub.publish(drone_bilgi)

    rate.sleep()

    i = i+1
    