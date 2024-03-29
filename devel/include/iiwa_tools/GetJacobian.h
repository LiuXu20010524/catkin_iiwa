// Generated by gencpp from file iiwa_tools/GetJacobian.msg
// DO NOT EDIT!


#ifndef IIWA_TOOLS_MESSAGE_GETJACOBIAN_H
#define IIWA_TOOLS_MESSAGE_GETJACOBIAN_H

#include <ros/service_traits.h>


#include <iiwa_tools/GetJacobianRequest.h>
#include <iiwa_tools/GetJacobianResponse.h>


namespace iiwa_tools
{

struct GetJacobian
{

typedef GetJacobianRequest Request;
typedef GetJacobianResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetJacobian
} // namespace iiwa_tools


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iiwa_tools::GetJacobian > {
  static const char* value()
  {
    return "4ac689c026bf654497c9712a1581dedc";
  }

  static const char* value(const ::iiwa_tools::GetJacobian&) { return value(); }
};

template<>
struct DataType< ::iiwa_tools::GetJacobian > {
  static const char* value()
  {
    return "iiwa_tools/GetJacobian";
  }

  static const char* value(const ::iiwa_tools::GetJacobian&) { return value(); }
};


// service_traits::MD5Sum< ::iiwa_tools::GetJacobianRequest> should match
// service_traits::MD5Sum< ::iiwa_tools::GetJacobian >
template<>
struct MD5Sum< ::iiwa_tools::GetJacobianRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iiwa_tools::GetJacobian >::value();
  }
  static const char* value(const ::iiwa_tools::GetJacobianRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iiwa_tools::GetJacobianRequest> should match
// service_traits::DataType< ::iiwa_tools::GetJacobian >
template<>
struct DataType< ::iiwa_tools::GetJacobianRequest>
{
  static const char* value()
  {
    return DataType< ::iiwa_tools::GetJacobian >::value();
  }
  static const char* value(const ::iiwa_tools::GetJacobianRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iiwa_tools::GetJacobianResponse> should match
// service_traits::MD5Sum< ::iiwa_tools::GetJacobian >
template<>
struct MD5Sum< ::iiwa_tools::GetJacobianResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iiwa_tools::GetJacobian >::value();
  }
  static const char* value(const ::iiwa_tools::GetJacobianResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iiwa_tools::GetJacobianResponse> should match
// service_traits::DataType< ::iiwa_tools::GetJacobian >
template<>
struct DataType< ::iiwa_tools::GetJacobianResponse>
{
  static const char* value()
  {
    return DataType< ::iiwa_tools::GetJacobian >::value();
  }
  static const char* value(const ::iiwa_tools::GetJacobianResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IIWA_TOOLS_MESSAGE_GETJACOBIAN_H
