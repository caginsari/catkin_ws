/* 
author: Cagin Sari
kinect_subscriber.cpp subscribes to the published geometry_msgs message pulished by the character recognition node and 
uses the received x and y coordinates of the center point of the detected character to calculate the three dimensional world 
coordinates of the button on the elevator panel. The real world coordinates are then used by the 
arm to press the requested button. 
*/
#include "ros/ros.h"
#include <image_transport/image_transport.h>
//#include "opencv_application/kinect.h"
#include "sensor_msgs/Image.h"
#include "geometry_msgs/Point.h"

float x;
float y;

typedef union U_FloatParse {
    float float_data;
    unsigned char byte_data[4];
} U_FloatConvert;

int ReadDepthData(unsigned int height_pos, unsigned int width_pos, sensor_msgs::ImageConstPtr depth_image)
{
    // If position is invalid
    if ((height_pos >= depth_image->height) || (width_pos >= depth_image->width))
        return -1;
    int index = (height_pos*depth_image->step) + (width_pos*(depth_image->step/depth_image->width));
    // If data is 4 byte floats (rectified depth image)
    if ((depth_image->step/depth_image->width) == 4) {
        U_FloatConvert depth_data;
        int i, endian_check = 1;
        // If big endian
        if ((depth_image->is_bigendian && (*(char*)&endian_check != 1)) ||  // Both big endian
           ((!depth_image->is_bigendian) && (*(char*)&endian_check == 1))) { // Both lil endian
            for (i = 0; i < 4; i++)
                depth_data.byte_data[i] = depth_image->data[index + i];
            // Make sure data is valid (check if NaN)
            if (depth_data.float_data == depth_data.float_data)
                return int(depth_data.float_data*1000);
            return -1;  // If depth data invalid
        }
        // else, one little endian, one big endian
        for (i = 0; i < 4; i++) 
            depth_data.byte_data[i] = depth_image->data[3 + index - i];
        // Make sure data is valid (check if NaN)
        if (depth_data.float_data == depth_data.float_data)
            return int(depth_data.float_data*1000);
        return -1;  // If depth data invalid
    }
    // Otherwise, data is 2 byte integers (raw depth image)
   int temp_val;
   // If big endian
   if (depth_image->is_bigendian)
       temp_val = (depth_image->data[index] << 8) + depth_image->data[index + 1];
   // If little endian
   else
       temp_val = depth_image->data[index] + (depth_image->data[index + 1] << 8);
   // Make sure data is valid (check if NaN)
   if (temp_val == temp_val)
       return temp_val;
   return -1;  // If depth data invalid
}

void xyCallback(const geometry_msgs::Point::ConstPtr& msg) {
    x = (float) msg->x;
    y = (float) msg->y;
    ROS_INFO("%lf,%lf", x, y);
    //new_x_y=true;
}

// Image Callback
void imageCallback(const sensor_msgs::ImageConstPtr& image) {
    
    
    float depth = ReadDepthData(x, y, image); // Width = 640, Height = 480 resolution of the kinect rgb camera

// set of equations below is used to calculate the real world coordinates of the detected button 
// the parameters given below is for the Microsoft Kinect V1
    const float invfocalLength = 1.f / 525.f; 
    const float centerX = 319.5f;
    const float centerY = 239.5f;
    const float factor = 1.f / 1000.f;

    float dist = factor * (float)(depth);
    float px = (x-centerX) * dist * invfocalLength;
    float py = (y-centerY) * dist * invfocalLength;
    float pz = dist;

    //ROS_INFO(" x:%f,y:%f", x,y);

    ROS_INFO("\n Depth: %f\n x:%f,y:%f,z:%f", depth,px,py,pz);

}

//*** Main ***//
int main(int argc, char **argv)
{
    ros::init(argc, argv, "imagegrab");
    ros::NodeHandle n;
    printf("READY to get image\n");
    image_transport::ImageTransport it(n);
    image_transport::Subscriber sub = it.subscribe("/camera/depth_registered/image_raw", 1, imageCallback);
    ros::Subscriber pose_sub = n.subscribe("/geometry_msgs", 1, xyCallback); 

    geometry_msgs::Point world_position;

    while(ros::ok()){
        ros::spinOnce();
    }
    return 0;
}// this is a change
