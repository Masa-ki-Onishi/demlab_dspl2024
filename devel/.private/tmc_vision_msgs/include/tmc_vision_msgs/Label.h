// Generated by gencpp from file tmc_vision_msgs/Label.msg
// DO NOT EDIT!


#ifndef TMC_VISION_MSGS_MESSAGE_LABEL_H
#define TMC_VISION_MSGS_MESSAGE_LABEL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tmc_vision_msgs
{
template <class ContainerAllocator>
struct Label_
{
  typedef Label_<ContainerAllocator> Type;

  Label_()
    : name()
    , confidence(0.0)  {
    }
  Label_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef double _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::tmc_vision_msgs::Label_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tmc_vision_msgs::Label_<ContainerAllocator> const> ConstPtr;

}; // struct Label_

typedef ::tmc_vision_msgs::Label_<std::allocator<void> > Label;

typedef boost::shared_ptr< ::tmc_vision_msgs::Label > LabelPtr;
typedef boost::shared_ptr< ::tmc_vision_msgs::Label const> LabelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tmc_vision_msgs::Label_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tmc_vision_msgs::Label_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tmc_vision_msgs::Label_<ContainerAllocator1> & lhs, const ::tmc_vision_msgs::Label_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tmc_vision_msgs::Label_<ContainerAllocator1> & lhs, const ::tmc_vision_msgs::Label_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tmc_vision_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tmc_vision_msgs::Label_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tmc_vision_msgs::Label_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tmc_vision_msgs::Label_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tmc_vision_msgs::Label_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tmc_vision_msgs::Label_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tmc_vision_msgs::Label_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tmc_vision_msgs::Label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e57824c8cf63aef336f2ff71c7581ea6";
  }

  static const char* value(const ::tmc_vision_msgs::Label_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe57824c8cf63aef3ULL;
  static const uint64_t static_value2 = 0x36f2ff71c7581ea6ULL;
};

template<class ContainerAllocator>
struct DataType< ::tmc_vision_msgs::Label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tmc_vision_msgs/Label";
  }

  static const char* value(const ::tmc_vision_msgs::Label_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tmc_vision_msgs::Label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# label name\n"
"string name\n"
"\n"
"# confidence of this label\n"
"float64 confidence\n"
;
  }

  static const char* value(const ::tmc_vision_msgs::Label_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tmc_vision_msgs::Label_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Label_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tmc_vision_msgs::Label_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tmc_vision_msgs::Label_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "confidence: ";
    Printer<double>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TMC_VISION_MSGS_MESSAGE_LABEL_H