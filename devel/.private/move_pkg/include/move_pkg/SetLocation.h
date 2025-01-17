// Generated by gencpp from file move_pkg/SetLocation.msg
// DO NOT EDIT!


#ifndef MOVE_PKG_MESSAGE_SETLOCATION_H
#define MOVE_PKG_MESSAGE_SETLOCATION_H

#include <ros/service_traits.h>


#include <move_pkg/SetLocationRequest.h>
#include <move_pkg/SetLocationResponse.h>


namespace move_pkg
{

struct SetLocation
{

typedef SetLocationRequest Request;
typedef SetLocationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLocation
} // namespace move_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::move_pkg::SetLocation > {
  static const char* value()
  {
    return "209e42bb0d64821994967cc13541fa55";
  }

  static const char* value(const ::move_pkg::SetLocation&) { return value(); }
};

template<>
struct DataType< ::move_pkg::SetLocation > {
  static const char* value()
  {
    return "move_pkg/SetLocation";
  }

  static const char* value(const ::move_pkg::SetLocation&) { return value(); }
};


// service_traits::MD5Sum< ::move_pkg::SetLocationRequest> should match
// service_traits::MD5Sum< ::move_pkg::SetLocation >
template<>
struct MD5Sum< ::move_pkg::SetLocationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::move_pkg::SetLocation >::value();
  }
  static const char* value(const ::move_pkg::SetLocationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::move_pkg::SetLocationRequest> should match
// service_traits::DataType< ::move_pkg::SetLocation >
template<>
struct DataType< ::move_pkg::SetLocationRequest>
{
  static const char* value()
  {
    return DataType< ::move_pkg::SetLocation >::value();
  }
  static const char* value(const ::move_pkg::SetLocationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::move_pkg::SetLocationResponse> should match
// service_traits::MD5Sum< ::move_pkg::SetLocation >
template<>
struct MD5Sum< ::move_pkg::SetLocationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::move_pkg::SetLocation >::value();
  }
  static const char* value(const ::move_pkg::SetLocationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::move_pkg::SetLocationResponse> should match
// service_traits::DataType< ::move_pkg::SetLocation >
template<>
struct DataType< ::move_pkg::SetLocationResponse>
{
  static const char* value()
  {
    return DataType< ::move_pkg::SetLocation >::value();
  }
  static const char* value(const ::move_pkg::SetLocationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MOVE_PKG_MESSAGE_SETLOCATION_H
