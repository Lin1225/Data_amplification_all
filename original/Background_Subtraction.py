# encoding: utf-8
import cv2
import numpy as np
import matplotlib.pyplot as plt
import time
import os
from pathlib import Path

#遮罩
def pic_mask(img,x,y):
    mask = np.zeros([img.shape[0], img.shape[1]], dtype=np.uint8)
    mask[x[0]:x[1], y[0]:y[1]] = (255, 255, 255)
    img = cv2.add(img, np.zeros(np.shape(img), dtype=np.uint8), mask=mask)

#遮罩v2
def pic_mask_v2(img,A,B,C):
    p0x = A[0]
    p0y = A[1]
    p1x = B[0]
    p1y = B[1]
    p2x = C[0]
    p2y = C[1]
    for px in range(0,img.shape[0]):
        for py in range(0,img.shape[1]):
            Area = 0.5 *(-p1y*p2x + p0y*(-p1x + p2x) + p0x*(p1y - p2y) + p1x*p2y)
            u = 1/(2*Area)*(p0y*p2x - p0x*p2y + (p2y - p0y)*px + (p0x - p2x)*py)
            v = 1/(2*Area)*(p0x*p1y - p0y*p1x + (p0y - p1y)*px + (p1x - p0x)*py)
            if (u>0 and v>0 and u+v<1):
                img[px,py] = img[px,py]
            else:
                img[px,py] = [0,0,0]

#遮罩v3
def pic_mask_v3(img,A,B):
    mask = np.zeros(img.shape[:2], dtype=np.uint8)
    mask = cv2.circle(mask, A, B, (255, 255, 255), -1)
    img = cv2.add(img, np.zeros(np.shape(img), dtype=np.uint8), mask=mask)

#灰階
def pic_gray(img):
    _emptyimg = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    for x in range(0,_emptyimg.shape[0]):
        for y in range(0,_emptyimg.shape[1]):
            B = img[x,y,0]
            G = img[x,y,1]
            R = img[x,y,2]
            _emptyimg[x,y] = B*0.25+G*0.5+R*0.25
    return _emptyimg

#背景消去
def pic_sub(s1,s2,img,threshod):
    _emptyimg = np.zeros(img.shape,np.uint8)
    for x in range(0,_emptyimg.shape[0]):
        for y in range(0,_emptyimg.shape[1]):
            if(s2[x,y] > s1[x,y]):
                _emptyimg[x,y] = s2[x,y] - s1[x,y]
            else:
                _emptyimg[x,y] = s1[x,y] - s2[x,y]

            if(_emptyimg[x,y] < threshod):
                img[x,y] = 0
            else:
                img[x,y] = s2[x,y]

#背景消去_v2
def pic_sub_v2(s1,s2,img,threshod):
    _emptyimg = np.zeros(img.shape,np.uint8)
    _sub = np.uint8(np.abs(np.int32(s2) - np.int32(s1)))
    for x in range(0,_emptyimg.shape[0]):
        for y in range(0,_emptyimg.shape[1]):
            if(_sub[x,y] < threshod):
                img[x,y] = 0
            else:
                img[x,y] = s2[x,y]

#背景消去BGR
def pic_sub_bgr(s1,s2,img,threshod):
    _emptyimg = img.copy()
    for x in range(0,_emptyimg.shape[0]):
        for y in range(0,_emptyimg.shape[1]):
            b1 = s1[x,y,0]
            g1 = s1[x,y,1]
            r1 = s1[x,y,2]
            b2 = s2[x,y,0]
            g2 = s2[x,y,1]
            r2 = s2[x,y,2]
            if(b1 > b2):
                _emptyimg[x,y,0] = s1[x,y,0] - s2[x,y,0]
            else:
                _emptyimg[x,y,0] = s2[x,y,0] - s1[x,y,0]
            if(g1 > g2):
                _emptyimg[x,y,1] = s1[x,y,1] - s2[x,y,1]
            else:
                _emptyimg[x,y,1] = s2[x,y,1] - s1[x,y,1]
            if(r1 > r2):
                _emptyimg[x,y,2] = s1[x,y,2] - s2[x,y,2]
            else:
                _emptyimg[x,y,2] = s2[x,y,2] - s1[x,y,2]

            if(_emptyimg[x,y,0]<threshod or _emptyimg[x,y,1]<threshod or _emptyimg[x,y,2]<threshod):
                img[x,y] = 0
            else:
                img[x,y] = s2[x,y]

#自適應閾值
def pic_autoth(img):
    img = cv2.medianBlur(img,5)
    img = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,11,2)

#侵蝕
def pic_dilation(img):
    _kernel = cv2.getStructuringElement(cv2.MORPH_RECT,(3, 3))
    _eroded = cv2.erode(img,_kernel)
    img = _eroded

#開運算
def pic_op(img):
    _clone = img.copy()
    _kernel = cv2.getStructuringElement(cv2.MORPH_RECT,(3, 3))
    _opened = cv2.morphologyEx(_clone, cv2.MORPH_OPEN, _kernel)
    for x in range(img.shape[0]):
        for y in range(img.shape[1]):
            if(_opened[x,y] == 0):
                img[x,y] = 0

#切割原圖
def pic_fin(img,emp):
    for x in range(emp.shape[0]):
        for y in range(emp.shape[1]):
            if(emp[x,y] != 0):
                img[x,y] = img[x,y]
                emp[x,y] = 255
            else:
                img[x,y] = (0,0,0)
                emp[x,y] = 0

#切割原圖(white)
def pic_fin_v2(img,emp):
    for x in range(emp.shape[0]):
        for y in range(emp.shape[1]):
            if(emp[x,y] != 0):
                img[x,y] = img[x,y]
                emp[x,y] = 255
            else:
                img[x,y] = (255,255,255)
                emp[x,y] = 0

#切割原圖(r)
def pic_fin_v3(img,emp):
    for x in range(emp.shape[0]):
        for y in range(emp.shape[1]):
            if(emp[x,y] != 0):
                img[x,y] = (0,0,128)
                emp[x,y] = 255
            else:
                img[x,y] = (0,0,0)
                emp[x,y] = 0

#找邊界
def pic_xy(self,img,x_max,y_max,x_min,y_min):
    x,y,w,h=cv2.boundingRect(img)
    x_max=x
    y_max=y
    x_min=x+w
    y_min=y+h

#重設大小
def pic_resize(img,i):
    _x, _y = img.shape[0:2]
    _x = int(_x/i)
    _y = int(_y/i)
    return cv2.resize(img, (_y, _x))

if __name__ == "__main__":

    Train_Data_Dir = os.path.dirname(os.path.realpath(__file__)) + '/Training_Data'
    #Test_Data = os.path.dirname(os.path.realpath(__file__)) + '/Test_Data'

    cs = 0
    ch = 0
    num = 0
    k = 0

    num = 2
    n = 0
    c = 0
    no = 1

    testfolder = os.path.dirname(os.path.realpath(__file__)) + "/test_v1"
    testfolder_1 = os.path.dirname(os.path.realpath(__file__)) + "/test_v2"
    testfolder_2 = os.path.dirname(os.path.realpath(__file__)) + "/test_v3"
    if os.path.isdir(testfolder)==False:
        os.makedirs(testfolder,mode=0o777)
    if os.path.isdir(testfolder_1)==False:
        os.makedirs(testfolder_1,mode=0o777)
    if os.path.isdir(testfolder_2)==False:
        os.makedirs(testfolder_2,mode=0o777)

    threshod = 10
    img = cv2.imread(Train_Data_Dir+'/yolo_p-p2_'+str(num)+'.jpg')
    cv2.namedWindow("img")

    while True:
        key = cv2.waitKey(10)

        if os.path.isdir(Train_Data_Dir+str(cs)+str(k)+'.jpg')==True:
            img_b = cv2.imread(Train_Data_Dir+str(cs)+str(k)+'.jpg')
        
        if os.path.isdir(Train_Data_Dir+str(cs)+str(num)+'.jpg')==True:
            img = cv2.imread(Train_Data_Dir+str(cs)+str(num)+'.jpg')
        
        img_b = pic_resize(img_b,2)
        img = pic_resize(img,2)
        img_fin = np.zeros(img.shape,np.uint8)
        print("讀取原圖和背景")
        print("no.",no)
        A = [360 , 240]
        B = 200
        pic_mask_v3(img_b,A,B)
        pic_mask_v3(img,A,B)
        cv2.imshow("Mask_b",img_b)
        cv2.imshow("Mask",img)
        print("加入遮罩")
        gray_b = pic_gray(img_b)
        gray = pic_gray(img)
        cv2.imshow("gray",gray)
        img_clone = gray.copy()
        #img_clone = img.copy()
        img_fin = img.copy()
        img_fin_v2 = img.copy()
        pic_sub_v2(gray_b,gray,img_clone,threshod)
        #pic_sub_bgr(img_b,img,img_clone,threshod)
        cv2.imshow("Background_sub",img_clone)
        #img_clone = pic_gray(img_clone)
        print("背景消去")
        pic_autoth(img_clone)
        cv2.imshow("Adaptive_threshold",img_clone)
        print("自適應閾值")
        pic_op(img_clone)
        cv2.imshow("Morph_Open",img_clone)
        print("開運算")
        #pic_dilation(img_clone)
        #print("侵蝕")
    
        c_max = []  
        max_area = 0  
        max_cnt = 0  
        ret, binary = cv2.threshold(img_clone,127,255,cv2.THRESH_BINARY)
        contours,hierarchy = cv2.findContours(binary,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
        
        for i in range(len(contours)):  
            cnt = contours[i]  
            area = cv2.contourArea(cnt)  
            # find max countour  
            if (area>max_area):  
                if(max_area!=0):  
                    c_min = []  
                    c_min.append(max_cnt)  
                    cv2.drawContours(img_clone, c_min, -1, (0,0,0), cv2.FILLED)  
                max_area = area  
                max_cnt = cnt  
            else:  
                c_min = []  
                c_min.append(cnt)  
                cv2.drawContours(img_clone, c_min, -1, (0,0,0), cv2.FILLED) 
        c_max.append(max_cnt)

        #填充輪廓
        #img_clone = cv2.drawContours(img_clone, c_max, -1, 1, thickness=-1)
        #cv2.imshow("Contours",img_clone)

        pic_fin(img_fin,img_clone)
        print("切割原圖")
        cv2.imshow("Cutting",img_fin)
        cv2.imshow("Cutting(Binarization)",img_clone)

        pic_fin_v2(img_fin_v2,img_clone)

        filename = "test_%s.jpg" % (num)
        cv2.imwrite(testfolder_1+'/'+filename,img_fin)
        filename = "test_%s.jpg" % (num)
        cv2.imwrite(testfolder_2+'/'+filename,img_fin_v2)

        x,y,w,h=cv2.boundingRect(img_clone)
        cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
        print("取邊界")

        cv2.imshow("fin",img)
        filename = "test_%s.jpg" % (num)
        cv2.imwrite(testfolder+'/'+filename,img)
        print("儲存結果")
        num = num + 1

        no = no + 1

    cv2.waitKey(0)
    cv2.destroyAllWindows()
