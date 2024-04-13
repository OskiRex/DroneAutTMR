// Generated by gencpp from file drone_msgs/PixelCoords.msg
// DO NOT EDIT!


#ifndef DRONE_MSGS_MESSAGE_PIXELCOORDS_H
#define DRONE_MSGS_MESSAGE_PIXELCOORDS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace drone_msgs
{
template <class ContainerAllocator>
struct PixelCoords_
{
  typedef PixelCoords_<ContainerAllocator> Type;

  PixelCoords_()
    : x(0.0)
    , y(0.0)
    , width(0.0)
    , heigth(0.0)  {
    }
  PixelCoords_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , width(0.0)
    , heigth(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _width_type;
  _width_type width;

   typedef float _heigth_type;
  _heigth_type heigth;





  typedef boost::shared_ptr< ::drone_msgs::PixelCoords_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::drone_msgs::PixelCoords_<ContainerAllocator> const> ConstPtr;

}; // struct PixelCoords_

typedef ::drone_msgs::PixelCoords_<std::allocator<void> > PixelCoords;

typedef boost::shared_ptr< ::drone_msgs::PixelCoords > PixelCoordsPtr;
typedef boost::shared_ptr< ::drone_msgs::PixelCoords const> PixelCoordsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::drone_msgs::PixelCoords_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::drone_msgs::PixelCoords_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::drone_msgs::PixelCoords_<ContainerAllocator1> & lhs, const ::drone_msgs::PixelCoords_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.width == rhs.width &&
    lhs.heigth == rhs.heigth;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::drone_msgs::PixelCoords_<ContainerAllocator1> & lhs, const ::drone_msgs::PixelCoords_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace drone_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::drone_msgs::PixelCoords_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drone_msgs::PixelCoords_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drone_msgs::PixelCoords_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drone_msgs::PixelCoords_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drone_msgs::PixelCoords_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drone_msgs::PixelCoords_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::drone_msgs::PixelCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0c97281618e5931c55747d57ada6af5b";
  }

  static const char* value(const ::drone_msgs::PixelCoords_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0c97281618e5931cULL;
  static const uint64_t static_value2 = 0x55747d57ada6af5bULL;
};

template<class ContainerAllocator>
struct DataType< ::drone_msgs::PixelCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "drone_msgs/PixelCoords";
  }

  static const char* value(const ::drone_msgs::PixelCoords_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::drone_msgs::PixelCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 width\n"
"float32 heigth\n"
;
  }

  static const char* value(const ::drone_msgs::PixelCoords_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::drone_msgs::PixelCoords_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.width);
      stream.next(m.heigth);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PixelCoords_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::drone_msgs::PixelCoords_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::drone_msgs::PixelCoords_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "heigth: ";
    Printer<float>::stream(s, indent + "  ", v.heigth);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRONE_MSGS_MESSAGE_PIXELCOORDS_H
