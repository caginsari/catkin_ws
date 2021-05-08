#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

namespace enc = sensor_msgs::image_encodings;
void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, enc::TYPE_16UC1);//now cv_ptr is the matrix, do not forget "TYPE_" before "16UC1"
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    int depth = cv_ptr->image.at<short int>(cv::Point(240,320));//you can change 240,320 to your interested pixel
    ROS_INFO("Depth: %d", depth);
}

int main(int argc, char **argv)
{

 ros::init(argc, argv, "imagegrab");
    ros::NodeHandle n;
    printf("READY to get image\n");
    image_transport::ImageTransport it(n);
    image_transport::Subscriber sub = it.subscribe("/camera/depth/image_raw", 1, imageCallback);
    ros::spin();
    return 0;

}