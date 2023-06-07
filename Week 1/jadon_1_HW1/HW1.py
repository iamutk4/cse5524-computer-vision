import cv2 as cv
import numpy as np
from skimage.color import rgb2gray


# Following section is for Q1
gray_img =cv.imread('buckeyes_gray.bmp')    #Reads gray-scale image
cv.imshow('Gray Scale Image', gray_img)     #Displays gray-scale image
cv.waitKey(0)                               #Awaits an input from user to proceed

rgb_img = cv.imread('buckeyes_rgb.bmp')
cv.imshow('RGB Image', rgb_img)
cv.waitKey(0)
#Q1 section ends

#Following section is for Q2
image_converted = rgb2gray(rgb_img)         #Converts input RGB image to gray-scale
cv.imshow('Converted image', image_converted)
cv.waitKey(0)
#Q2 section ends

#Following section is for Q3
black = np.zeros((500,500), dtype=np.uint8) #Creates big black image
white = np.zeros((50,50), dtype=np.uint8)
white[:]=255                                #Creates small white image

black[0:50, 0:50] = white                   #Makes corner box as white
black[50:100, 50:100] = white               #Makes diagonally opposite box as white

square = black[0:100, 0:100]                #Creates a small 2x2 checker-board image
chess = np.tile(square, (5,5))              #Repeats pattern 5 times to get a 10x10 checker board image
cv.imshow('Checker board', chess)
cv.waitKey(0)
#Q3 section ends


