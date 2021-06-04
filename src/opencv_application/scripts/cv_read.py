#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import numpy as np
import cv2
import sys


my_img = cv2.imread(alarm)
cv2.imshow('image', my_img)
k = cv2.waitKey(0) & 0xFF
# wait for ESC key to exit
if k == 27:
   cv2.destroyAllWindows()
