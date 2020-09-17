#!/usr/bin/env python3
# encoding: utf-8
import sys
sys.path.insert(0, '/opt/installer/open_cv/cv_bridge/lib/python3/dist-packages/')
sys.path.insert(1, "/home/lab/.local/lib/python3.5/site-packages/")

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image
import datetime 
import cv2
from cv_bridge import CvBridge, CvBridgeError
from my_controll.srv import command
import time 
import argparse
import numpy as np
import os

# parser = argparse.ArgumentParser()
# parser.add_argument('--Object_Name', type=str, default='.', help='Class name of training object.')
# FLAGS = parser.parse_args()


Train_Data_Dir = os.path.dirname(os.path.realpath(__file__)) + "/data" #+ '/Training_Data'
Test_Data = os.path.dirname(os.path.realpath(__file__)) + "/data" + '/background'

class Get_image():
    def __init__(self):
            rospy.init_node('get_image_from_FLIR_Server', anonymous=True)
            s = rospy.Service('get_image_from_FLIR', command, self.get_image_from_FLIR)
            self.now_command = 'e'
            self.Object_Name = "kkk"
            self.bridge = CvBridge()
            self.image = np.zeros((0,0,3), np.uint8)
            self.cls = 0
            self.ch = -1
            self.num = 0
            self.k = 0
            self.threshod = 60
            self.re = 4

            # rospy.Subscriber("/my_control_now", String, self.callback_2)
            #s = rospy.Service("request FLIR", FLIR_image, self.service_callback)

            rospy.Subscriber("/camera/image_color", Image, self.callback)
            
            # _Trainfolder = "%s/%s" % (Train_Data_Dir,self.cls)
            # _Testfolder = "%s/%s" % (Test_Data,self.cls)
            _Testfolder = Test_Data
            # if not os.path.exists(_Trainfolder):
            #     os.makedirs(_Trainfolder)
            if not os.path.exists(_Testfolder):
                os.makedirs(_Testfolder)
            cv2.destroyAllWindows()
            rospy.spin()

    def get_image_from_FLIR(self,req):
        self.Object_Name = req.name
        self.now_command = req.command
        self.ch = req.channel
        # print(self.now_command)
        test = self.get_image(self.cv_image)
        # print(self.ch)
        # test = self.test_f()
        
        if test == 1 :
            print("done once")
            return 1
        else:
            print("fail")
            return 0
    
    def test_f(self):
        return 0
        
    def callback(self, image):
        try:
            self.cv_image = self.bridge.imgmsg_to_cv2(image, "bgr8")
        except CvBridgeError as e:
            print(e)
        cv2.namedWindow("result", cv2.WINDOW_NORMAL)
        cv2.imshow("result", self.cv_image)
        # self.get_image(self.cv_image)
        cv2.waitKey(1)
    
    def get_image(self, crop_image):
        
        # if cv2.waitKey(33) & 0xFF == ord('b'):
        if self.now_command == 'b':
            # _Testfolder = "%s/%s" % (Test_Data,self.cls)
            _Testfolder = Test_Data
            # self.ch = self.ch + 1
            filename = "%s-%s.jpg" % (self.ch,self.k)
            re_img = self.pic_resize(crop_image,self.re)
            cv2.imwrite(_Testfolder+'/'+filename,re_img)
            
            name = str(_Testfolder+'/'+filename)
            cv2.imwrite(name,re_img)
            print("儲存背景")
            print("[Save] ", name)
            return 1
        # elif cv2.waitKey(33) & 0xFF == ord('n'):
        elif self.now_command == 'n':
            self.num = 0
            self.cls = self.cls + 1
            # _Trainfolder = "%s/%s" % (Train_Data_Dir,self.cls)
            # _Testfolder = "%s/%s" % (Test_Data,self.cls)
            _Testfolder = Test_Data
            # os.makedirs(_Trainfolder)
            if not os.path.exists(_Testfolder):
                os.makedirs(_Testfolder)
            print("下一元件")
            return 1
        # elif cv2.waitKey(33) & 0xFF == ord('s'):
        elif self.now_command == 's':
            _Trainfolder = "%s/%s/%s" % (Train_Data_Dir,self.Object_Name,"img")
            if not os.path.exists(_Trainfolder):
                os.makedirs(_Trainfolder)

            # _Testfolder = "%s/%s" % (Test_Data,self.cls)
            _Testfolder = Test_Data
            filename = "%s-%s.jpg" % (self.ch,self.num)
            re_img = self.pic_resize(crop_image,self.re)
            cv2.imwrite(_Trainfolder+'/'+filename,re_img)
            name_og = str(_Trainfolder+'/'+filename)
            print("儲存原圖")

            print("[Save] ", name_og)
            print(_Testfolder+'/'+str(self.ch)+'-'+str(self.k)+'.jpg')

            img_b = cv2.imread(_Testfolder+'/'+str(self.ch)+'-'+str(self.k)+'.jpg')
            img = cv2.imread(_Trainfolder+'/'+str(self.ch)+'-'+str(self.num)+'.jpg')
            print("讀取原圖和背景")
            gray_b = cv2.cvtColor(img_b,cv2.COLOR_BGR2GRAY)
            gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
            img_clone = gray.copy()
            img_fin = img.copy()
            #self.pic_sub(gray_b,gray,img_clone,self.threshod)

            ############################################################################
            ###### -------------- 可嘗試做修改的地方 -------------- ######

            self.pic_sub_v2(gray_b,gray,img_clone,self.threshod)
            print("背景消去")
            self.pic_autoth(img_clone)
            print("自適應閾值")
            self.pic_op(img_clone)
            print("開運算")
            self.pic_fin(img_fin,img_clone)

            ############################################################################

            _Trainfolder_data = "%s/%s/%s" % (Train_Data_Dir,self.Object_Name,"label")
            if not os.path.exists(_Trainfolder_data):
                os.makedirs(_Trainfolder_data)
            cv2.imwrite(_Trainfolder_data + "/" + filename,img_clone)
            print("切割原圖")

            
            # cv2.imshow("1",img_fin)
            # cv2.imshow("clone",img_clone)
            # cv2.waitKey(1)


            # x,y,w,h=cv2.boundingRect(img_clone)
            # cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,255),3)
            # print("取邊界")

            # listname="list.txt"
            # f = open(os.path.dirname(os.path.realpath(__file__))+'/'+listname,'a')
            # f.writelines('%s/%s-%s.jpg %d,%d,%d,%d\n'% (_Trainfolder,self.ch,self.num,x,y,x+w,y+h))
            # f.close()
            # print("寫入list")

            # cv2.imshow("fin",img)
            # cv2.waitKey()
            # name_ne = str(_Testfolder+'/'+filename)
            # cv2.imwrite(name_ne,img)
            print("儲存結果")
            # print("[Save] ", name_ne)
            self.num = self.num + 1
            
            return 1
        else:
            return 0

    #背景消去
    def pic_sub(self,s1,s2,img,threshod):
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
    def pic_sub_v2(self,s1,s2,img,threshod):
        _emptyimg = np.zeros(img.shape,np.uint8)
        _sub = np.uint8(np.abs(np.int32(s2) - np.int32(s1)))
        for x in range(0,_emptyimg.shape[0]):
           for y in range(0,_emptyimg.shape[1]):
                if(_sub[x,y] < threshod):
                    img[x,y] = 0
                else:
                    img[x,y] = s2[x,y]

    #自適應閾值
    def pic_autoth(self,img):
        img = cv2.medianBlur(img,5)
        img = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,11,2)

    #開運算
    def pic_op(self,img):
        _clone = img.copy()
        _kernel = cv2.getStructuringElement(cv2.MORPH_RECT,(3, 3))
        _opened = cv2.morphologyEx(_clone, cv2.MORPH_OPEN, _kernel)
        for x in range(img.shape[0]):
            for y in range(img.shape[1]):
                if(_opened[x,y] == 0):
                    img[x,y] = 0

    #切割原圖
    def pic_fin(self,img,emp):
        for x in range(emp.shape[0]):
            for y in range(emp.shape[1]):
                if(emp[x,y] != 0):
                    img[x,y] = img[x,y]
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
    def pic_resize(self,img,i):
        _x, _y = img.shape[0:2]
        _x = int(_x/i)
        _y = int(_y/i)
        return cv2.resize(img, (_y, _x))
    
if __name__ == '__main__':
    listener = Get_image()

