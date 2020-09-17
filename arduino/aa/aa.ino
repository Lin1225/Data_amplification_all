#if defined(ARDUINO) && ARDUINO >= 100
  #include "Arduino.h"
#else
  #include <WProgram.h>
#endif


#include <ros.h>
#include <DynamixelSerial1.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>

std_msgs::String press_data;
ros::NodeHandle  nh;
DynamixelClass Dxl(Serial3);

void send_command( const std_msgs::String& cmd_msg){
  if(String("on").equals(cmd_msg.data)){
    
    Dxl.turn(1, RIGTH, 50);
    delay(100);
    Dxl.turn(1, RIGTH, 0);
    delay(200);

    nh.loginfo("ON");
  }else {
    nh.loginfo("OFF");
  }
}

ros::Subscriber <std_msgs::String> sub("motor_move", &send_command);  


void setup(){
  Dxl.begin(1000000, 2);
  delay(1000);
  nh.initNode();
  pinMode(9,OUTPUT);
  pinMode(10,INPUT_PULLUP);
  nh.subscribe(sub);
  
}

void loop(){
  
  delay(100);

  //nh_pub.spinOnce();
  nh.spinOnce();
}
