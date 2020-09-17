/*
 * rosserial Service Server
 */

#include <ros.h>
#include <std_msgs/String.h>
#include <rosserial_arduino/motor.h>
#include <DynamixelSerial1.h>

ros::NodeHandle  nh;
using rosserial_arduino::motor;
DynamixelClass Dxl(Serial3);

void callback(const motor::Request & req, motor::Response & res){
  // if((i++)%2)
  //   res.output = "hello";
  // else
  //   res.output = "world";
  //nh.loginfo(req.Move);
  //if(req.Move == "M"){
  if(String("M").equals(req.Move)){
    nh.loginfo("Move");
    Dxl.ledStatus(1, ON);

    Dxl.setEndless(1, ON);
    Dxl.turn(1, RIGTH, 100);
    delay(100);
    Dxl.turn(1, RIGTH, 0);
    

    // Dxl.setEndless(1, OFF);
    // Dxl.moveSpeedRW(1,2000,100);
    // Dxl.action();
    // delay(100);
    
    Dxl.ledStatus(1, OFF);
    res.done = "Y";
  }
  else{
    nh.loginfo("NOT Move");
    res.done = "N";
  }
}

ros::ServiceServer<motor::Request, motor::Response> server("test_srv",&callback);

void setup()
{
  Dxl.begin(1000000, 2);
  delay(1000);
  nh.initNode();
  nh.advertiseService(server);
}

void loop()
{
  nh.spinOnce();
  delay(10);
}
