#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <boost/foreach.hpp>
#include <iostream>
using namespace std;

typedef pcl::PointCloud<pcl::PointXYZ> PointCloud;

void callback(const PointCloud::ConstPtr& msg)
{
 
}
 

int main(int argc, char** argv)
{
 

  const float depthdata = 5000.f;
 const float invfocalLength = 1.f / 525.f;
 const float centerX = 319.5f;
 const float centerY = 239.5f;
 const float factor = 1.f / 1000.f;

 float dist = factor * (float)(depthdata);
 float px = (340.f-centerX) * dist * invfocalLength;
 float py = (420.f-centerY) * dist * invfocalLength;
 float pz = dist;


  cout << "---kjdjkjjbkdf-----------------------------------------------------------------------------------------------------";
  cout << px;
  cout << py;
  cout << pz;
  ros::init(argc, argv, "sub_pcl");
  ros::NodeHandle nh;
  ros::Subscriber sub = nh.subscribe<PointCloud>("/camera/depth/points", 1, callback);
  ros::spin();

}