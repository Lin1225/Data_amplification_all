#!/usr/bin/env python3
# license removed for brevity
#策略 機械手臂 四點來回跑

from std_msgs.msg import String
import rospy
from my_controll.srv import command,motor


sent_command = 2
pic_process_done = 0

def motor_check_ok(data):
    global sent_command
    if data.data == 'ok':
        sent_command = 1
    else :
        sent_command = 0
        
def get_image_process(now_command,name_item,channel):
    rospy.wait_for_service('get_image_from_FLIR')
    try:
        add_two_ints = rospy.ServiceProxy('get_image_from_FLIR', command)
        resp1 = add_two_ints(now_command,name_item,channel)
        return resp1.done
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
def get_motor_move(move):
    rospy.wait_for_service('test_srv')
    try:
        add_two_ints = rospy.ServiceProxy('test_srv', motor)
        resp1 = add_two_ints(move)
        return resp1.done
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    
if __name__ == '__main__':
    rospy.init_node('send_command_py', anonymous=True)
    
    i = 0
    item_name = ["a","b","c"]
    item_name_number = 0
    # while 1:
    #     input_key = input("background(b) or next_item(n) : ")
    #     if input_key == "b":
    #         item_name = input("enter name")
    #     print("--------- ",get_image_process(input_key,item_name,1))
    
    
    while i < 28 :
        kk = get_motor_move("M")
        if kk == "Y":
            get_image_process("b","item",i)
        i += 1
    
    # while 1:
    for item in item_name:  
        input("enter")
        # name_item = input("enter your item name")
        i = 0
        while i < 28 :
            kk = get_motor_move("M")
            if kk == "Y":
                kk_2 = get_image_process("s",item,item_name_number)
                if not kk_2:
                    print("fail")
                    break
            i += 1
        item_name_number +=1
        get_image_process("n","name_item",0)

    rospy.spin()
