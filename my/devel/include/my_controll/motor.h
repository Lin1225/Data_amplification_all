// Generated by gencpp from file my_controll/motor.msg
// DO NOT EDIT!


#ifndef MY_CONTROLL_MESSAGE_MOTOR_H
#define MY_CONTROLL_MESSAGE_MOTOR_H

#include <ros/service_traits.h>


#include <my_controll/motorRequest.h>
#include <my_controll/motorResponse.h>


namespace my_controll
{

struct motor
{

typedef motorRequest Request;
typedef motorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct motor
} // namespace my_controll


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_controll::motor > {
  static const char* value()
  {
    return "58ba11ff6615accf86f4ea6f489aba40";
  }

  static const char* value(const ::my_controll::motor&) { return value(); }
};

template<>
struct DataType< ::my_controll::motor > {
  static const char* value()
  {
    return "my_controll/motor";
  }

  static const char* value(const ::my_controll::motor&) { return value(); }
};


// service_traits::MD5Sum< ::my_controll::motorRequest> should match 
// service_traits::MD5Sum< ::my_controll::motor > 
template<>
struct MD5Sum< ::my_controll::motorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_controll::motor >::value();
  }
  static const char* value(const ::my_controll::motorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_controll::motorRequest> should match 
// service_traits::DataType< ::my_controll::motor > 
template<>
struct DataType< ::my_controll::motorRequest>
{
  static const char* value()
  {
    return DataType< ::my_controll::motor >::value();
  }
  static const char* value(const ::my_controll::motorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_controll::motorResponse> should match 
// service_traits::MD5Sum< ::my_controll::motor > 
template<>
struct MD5Sum< ::my_controll::motorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_controll::motor >::value();
  }
  static const char* value(const ::my_controll::motorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_controll::motorResponse> should match 
// service_traits::DataType< ::my_controll::motor > 
template<>
struct DataType< ::my_controll::motorResponse>
{
  static const char* value()
  {
    return DataType< ::my_controll::motor >::value();
  }
  static const char* value(const ::my_controll::motorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_CONTROLL_MESSAGE_MOTOR_H
