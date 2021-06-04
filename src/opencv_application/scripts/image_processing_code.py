#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
import cv2
import numpy as np
import imutils
from imutils import contours
import argparse
import operator
import matplotlib
from matplotlib import pyplot as plt
import time

A=0
B=1
C=2
D=3
E=4
F=5
G=6
H=7
I=8
J=9
K=10
L=11
M=12
N=13
O=14
P=15
Q=16
R=17
S=18
T=19
U=20
V=21
W=22
X=23
Y=24
Z=25
ZERO=26
ONE=27
TWO=28
THREE=29
FOUR=30
FIVE=31
SIX=32
SEVEN=33
EIGHT=34
NINE=35


alarm = 'C:\\Users\\ourus\\Documents\\4th_Year_project\\alarm.jpg'
close_door = 'C:\\Users\\ourus\\Documents\\4th_Year_project\\close_door1.jpg'
open_door = 'C:\\Users\\ourus\\Documents\\4th_Year_project\\open_door1.jpg'

coordinates = (-1,-1)


floor= SIX

def floor_number(floor, coordinates):
        im = cv2.imread('C:\\Users\\ourus\\Documents\\4th_Year_Project\\OCR-full.jpg')
        im = cv2.bitwise_not(im)
        imCopy = im.copy()
        imgray = cv2.cvtColor(im,cv2.COLOR_BGR2GRAY)
        ret,thresh = cv2.threshold(imgray,200,255,0)
        cnts = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL,
            cv2.CHAIN_APPROX_SIMPLE)
        #cnts = contours.sort_contours(cnts, method="left-to-right")[0]

        digits = {}
        locsx = []
        locsy = []
        locsw = []
        locsh = []
        locs = []
        cnts = imutils.grab_contours(cnts)


        for c in cnts:
        # compute the bounding box of the contour
            (x, y, w , h) = cv2.boundingRect(c)
        #    h = 75
        #    w = 60
        #    y = 22
        #    cv2.rectangle(im, (x - 10, y - 10), (x + w + 10, y + h + 10), (0, 0, 255), 2)          #Resized the bouding box 
        #    cv2.rectangle(thresh, (x - 10, y - 10), (x + w + 10, y + h + 10), (0, 0, 255), 1)     #by trial and erroring some values
            locs.append((x, y, w, h))
            locsx.append((x))
            locsy.append((y))
            locsw.append((w))
            locsh.append((h))
            


        #    print(x)
        
        locsx = sorted(locsx, key=lambda b:b)
        # locsy = sorted(locsy, key=lambda b:b)
        # locsw = sorted(locsw, key=lambda b:b)
        # locsh = sorted(locsh, key=lambda b:b)
        locs = sorted(locs, key=lambda b:b)



        idx = 0
        roi = im[y:y + h, locsx[floor]:locsx[floor] + w]

        cnts = sorted(cnts, key=cv2.contourArea, reverse=True)[:16]
        orig = im.copy()

        (cnts, boundingBoxes) = sort_contours(cnts, method = "left-to-right")

        cv2.imwrite('C:\\Users\\ourus\\Documents\\4th_Year_project\\roi.jpg', roi)

        output = []
        #img = cv2.imread('C:\\Users\\ourus\\Documents\\ssb1.jpg')
        #img = cv2.imread('C:\\Users\\ourus\\Documents\\panel.jpg')
        #img = cv2.imread('C:\\Users\\ourus\\Documents\\ssb.jpg')

        fps= (30*5)#*3*0


        while(True):
            cap = cv2.VideoCapture('C:\\Users\\ourus\\Documents\\4th_Year_project\\Demo\\I.P.demo.mp4')
            frame_per_second = cap.get(cv2.CAP_PROP_FPS)
            cap.set(1,fps)           #cap.set(1,fps+(frame_per_second*4))
            total_number_of_frames = cap.get(cv2.CAP_PROP_FRAME_COUNT)
            frame_per_second = cap.get(cv2.CAP_PROP_FPS)
            # print("fps=",fps)
            # print("total_number_of_frames=",total_number_of_frames)
            return_value,image = cap.read()#

            #standardise fram size
            width = 576
            height = 734
            dim = (width, height)
 
            # resize image
            image = cv2.resize(image, dim, interpolation = cv2.INTER_AREA)

        #    rotated = cv2.rotate(image, cv2.ROTATE_90_CLOCKWISE)
            cv2.imwrite( "C:\\Users\\ourus\\Documents\\4th_Year_Project\\img.png", image)
            time.sleep(10)

            img = cv2.imread('C:\\Users\\ourus\\Documents\\4th_Year_Project\\img.png')
            img = cv2.bitwise_not(img )
            img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
            imgcpy = cv2.GaussianBlur(img.copy(), (9, 9), 0)
            imgcpy = cv2.adaptiveThreshold(imgcpy, 225, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11,2) #adaptive thresholding after greyscaling
            imgcpy = cv2.bitwise_not(imgcpy)  
            kernel = np.array([[0., 1., 0.], [1., 1., 1.], [0., 1., 0.]],np.uint8)
            opening = cv2.morphologyEx(imgcpy, cv2.MORPH_OPEN, kernel)      #cleans up the image

            template = cv2.imread('C:\\Users\\ourus\\Documents\\4th_Year_project\\roi.jpg',0)
            #roi = cv2.bitwise_not(roi)
            # Resizes the letters so that they can match properly
            scale_percent = 140
            if floor == D:
                scale_percent = 50
            if floor == F or floor == K or floor == D or floor == H:
                scale_percent = 60
            if floor == E:
                scale_percent = scale_percent + 5
            elif scale_percent!= E:
                pass
        #    print(scale_percent)
            x=0
            n=1

            while scale_percent < 300:
                if fps >= total_number_of_frames:
                    break
                threshold = 0.8
                while threshold>=0.65 and x==0:     #while threshold>=0.65 and x==0:
                    print("threshold =", threshold)
                    width = int(template.shape[1]*scale_percent/100)
                    height = int(template.shape[0]*scale_percent/100)
                    dsize = (width, height)
                    output = cv2.resize(template, dsize)        #dsize is the desired size
                    cv2.imwrite('C:\\Users\\ourus\\Documents\\4th_Year_project\\j1.jpg', output)

                    # Matches the template to the clean image then draws the box on the original image
                    w, h = output.shape[::-1]
                    res = cv2.matchTemplate(opening,output,cv2.TM_CCOEFF_NORMED)
                    
                    loc = np.where(res >= threshold)
                    loc1 = list(zip(*loc[::-1]))
                    x=len(loc1)
        #            print(x)

                    for pt in zip(*loc[::-1]):
                        cv2.rectangle(img, pt, (pt[0] + w, pt[1] + h), (0,0,255), 2)

                    for pt in zip(*loc[::-1]):
                        cv2.rectangle(opening, pt, (pt[0] + w, pt[1] + h), (0,0,255), 2)
                        coordinates = ( ( ( (pt[0] + w, pt[1] + h)[0] - pt[0])/2 ) + pt[0] , ( ( (pt[0] + w, pt[1] + h)[1] - pt[1])/2 ) + pt[1] )
                        
                    threshold-=0.01
                scale_percent += 5
            cv2.imwrite('C:\\Users\\ourus\\Documents\\4th_Year_project\\img1.jpg', img)
            img1 = cv2.imread('C:\\Users\\ourus\\Documents\\4th_Year_Project\\img1.jpg')
            # scale_percent = 30 # percent of original size
            # width = int(img1.shape[1] * scale_percent / 100)
            # height = int(img1.shape[0] * scale_percent / 100)
            # dim = (width, height)
        
            # # resize image
            #img1 = cv2.resize(img1, dim, interpolation = cv2.INTER_AREA)
            #cv2.imshow("img1", img1)
            #cv2.waitKey(5000)
            
            cap.release()
            cv2.destroyAllWindows()

            
            print(x)
            if x > 0:
                break
            fps = fps + (frame_per_second*5)
            z = total_number_of_frames-fps
            print("difference =", z)
            print("fps =", fps)
            
            print("total_number_of_frames=",total_number_of_frames)
            if (total_number_of_frames-fps) < ((frame_per_second*4)):
                break 
            
        print("fps=", fps)


    
        # print(res)                                                                                    #TEST POINT
        scale_percent = 90 # percent of original size                                                     
        width = int(img.shape[1] * scale_percent / 100)
        height = int(img.shape[0] * scale_percent / 100)
        dim = (width, height)
        
        # resize image
        #img = cv2.resize(img, dim, interpolation = cv2.INTER_AREA)


       
        #print('Resized Dimensions : ',resized.shape)
        #HERE
        cv2.imshow("img", img)
        #cv2.imshow("img1", opening)
        #cv2.imshow("roi", roi)
        #cv2.imshow("OCR2", im)
        #cv2.imshow("threshold", thresh.copy)



        cv2.waitKey(0)
        #print(scale_percent)
        #########################################################################################################################

        # NOT TO SELF - keep the time of the video [number of frames] in mind when prepping the video for for the presentation#
        print("image1 size = ", img1.shape)
        print("image size = ", img.shape)
        return coordinates

def symbols(floor, coordinates):
        im = cv2.imread(floor)
        im = cv2.bitwise_not(im)
        imCopy = im.copy()
        imgray = cv2.cvtColor(im,cv2.COLOR_BGR2GRAY)
        ret,thresh = cv2.threshold(imgray,200,255,0)

        fps=                                                           (30*4)*0


        while(True):
            cap = cv2.VideoCapture('C:\\Users\\ourus\\Documents\\4th_Year_project\\Demo\\I.P.demo.mp4')
            frame_per_second = cap.get(cv2.CAP_PROP_FPS)
            cap.set(1,fps)           #cap.set(1,fps+(frame_per_second*4))
            total_number_of_frames = cap.get(cv2.CAP_PROP_FRAME_COUNT)
            frame_per_second = cap.get(cv2.CAP_PROP_FPS)
            # print("fps=",fps)
            # print("total_number_of_frames=",total_number_of_frames)
            return_value,image = cap.read()

            #standardise fram size
            width = 1080                   #1950                          #1080
            height =  1920                 #1110                         #1920
            dim = (width, height)
 
            # resize image
            image = cv2.resize(image, dim, interpolation = cv2.INTER_AREA)


            cv2.imwrite( "C:\\Users\\ourus\\Documents\\4th_Year_Project\\img.png", image)
            #time.sleep(10)

            img = cv2.imread('C:\\Users\\ourus\\Documents\\4th_Year_Project\\img.png')
            img = cv2.bitwise_not(img )
            img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
            imgcpy = cv2.GaussianBlur(img.copy(), (9, 9), 0)
            imgcpy = cv2.adaptiveThreshold(imgcpy, 225, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11,2) #adaptive thresholding after greyscaling
            imgcpy = cv2.bitwise_not(imgcpy)  
            kernel = np.array([[0., 1., 0.], [1., 1., 1.], [0., 1., 0.]],np.uint8)
            opening = cv2.morphologyEx(imgcpy, cv2.MORPH_OPEN, kernel)      #cleans up the image

            template = imgray
            #roi = cv2.bitwise_not(roi)
            # Resizes the letters so that they can match properly
            scale_percent = 15                  #20
            if floor == alarm:
                scale_percent = 70
            elif scale_percent!= alarm:
                pass
            if floor == E:
                scale_percent = scale_percent + 5
            elif scale_percent!= E:
                pass

            x=0
            n=1

            while scale_percent < 500:
                if fps >= total_number_of_frames:
                    break
                threshold = 0.6
                while threshold>=0.47 and x==0:     #while threshold>=0.66 and x==0:
                    print("threshold =", threshold)
                    width = int(template.shape[1]*scale_percent/100)
                    height = int(template.shape[0]*scale_percent/100)
                    dsize = (width, height)
                    output = cv2.resize(template, dsize)        #dsize is the desired size
                    cv2.imwrite('C:\\Users\\ourus\\Documents\\4th_Year_project\\j1.jpg', output)

                    # Matches the template to the clean image then draws the box on the original image
                    w, h = output.shape[::-1]
                    res = cv2.matchTemplate(opening,output,cv2.TM_CCOEFF_NORMED)
                    
                    loc = np.where(res >= threshold)
                    loc1 = list(zip(*loc[::-1]))
                    x=len(loc1)
        #            print(x)

                    for pt in zip(*loc[::-1]):
                        cv2.rectangle(img, pt, (pt[0] + w, pt[1] + h), (0,0,255), 2)

                    for pt in zip(*loc[::-1]):
                        cv2.rectangle(opening, pt, (pt[0] + w, pt[1] + h), (0,0,255), 2)
                        coordinates = ( ( ( (pt[0] + w, pt[1] + h)[0] - pt[0])/2 ) + pt[0] , ( ( (pt[0] + w, pt[1] + h)[1] - pt[1])/2 ) + pt[1] )
                        # print("TL =", pt)
                        # print("BR =", (pt[0] + w, pt[1] + h))
                        # jx = ( ( (pt[0] + w, pt[1] + h)[0] - pt[0])/2 ) + pt[0]
                        # jy = ( ( (pt[0] + w, pt[1] + h)[1] - pt[1])/2 ) + pt[1]
                        # print("j.x =", jx)
                        # print("j.y = ", jy)
                    threshold-=0.01
                scale_percent += 5
            
            cv2.imwrite('C:\\Users\\ourus\\Documents\\4th_Year_project\\img1.jpg', img)
            img1 = cv2.imread('C:\\Users\\ourus\\Documents\\4th_Year_Project\\img1.jpg')
            scale_percent = 30 # percent of original size
            width = int(img1.shape[1] * scale_percent / 100)
            height = int(img1.shape[0] * scale_percent / 100)
            dim = (width, height)
        
            # resize image
            img1 = cv2.resize(img1, dim, interpolation = cv2.INTER_AREA)
            #cv2.imshow("img1", img1)
            #cv2.waitKey(5000)
            
            cap.release()
            cv2.destroyAllWindows()

            
            print(x)
            if x > 0:
                break
            fps = fps + (frame_per_second*5)
            z = total_number_of_frames-fps
            print("difference =", z)
            print("fps =", fps)
            
            print("total_number_of_frames=",total_number_of_frames)
            if (total_number_of_frames-fps) < ((frame_per_second*4)):
                break 
            
        print("fps=", fps)
  


        # print(res)

                                        # scale_percent = 30 # percent of original size
                                        # width = int(img.shape[1] * scale_percent / 100)
                                        # height = int(img.shape[0] * scale_percent / 100)
                                        # dim = (width, height)
                                        
                                        # # resize image
                                        # img = cv2.resize(img, dim, interpolation = cv2.INTER_AREA)
        scale_percent = 30 # percent of original size
        width = int(img.shape[1] * scale_percent / 100)
        height = int(img.shape[0] * scale_percent / 100)
        dim = (width, height)
        
        # resize image
        #        img = cv2.resize(img, dim, interpolation = cv2.INTER_AREA)
        
        #        img = cv2.circle(img, (186,1489), radius=20, color=(255, 255,255), thickness=-500)
        
        #print('Resized Dimensions : ',resized.shape)
        #HERE
        cv2.imshow("img", img)
        #cv2.imshow("img1", opening)
        #cv2.imshow("roi", template)
        #cv2.imshow("OCR2", im)
        #cv2.imshow("threshold", thresh.copy)



        cv2.waitKey(0)
        #print(scale_percent)
        #########################################################################################################################

        # NOT TO SELF - keep the time of the video [number of frames] in mind when prepping the video for for the presentation#
        print("image size = ", img1.shape)
        print("image size = ", img.shape)

        return coordinates
        
def sort_contours(cnts, method="left-to-right"):
    reverse = False
    i = 0
    boundingBoxes = [cv2.boundingRect(c) for c in cnts]
    (cnts, boundingBoxes) = zip(*sorted(zip(cnts, boundingBoxes),
    key=lambda b:b[1][i], reverse=reverse))
    return (cnts, boundingBoxes)



################################## MAIN ######################################
if floor == alarm or floor == close_door or floor == open_door :    
    coordinates = symbols(floor, coordinates)
else:
    coordinates = floor_number(floor, coordinates)

if coordinates == (-1,-1):
    print("No button found")
else:
    print("coordinates = ", coordinates)
