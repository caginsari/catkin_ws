
#include "ros/ros.h"
#include "ilk_paket/zaman.h"

int main(int argc, char **argv)
{
    ros::init(argc,argv,"publisher");
    
    ros::NodeHandle nh;

    ros::Publisher ilk_paket_sub = nh.advertise<ilk_paket::zaman>("msg_time",100);

    ros::Rate loop_rate(10);
    
    ilk_paket::zaman msg;

    int count = 0;

    while (ros::ok())
    {
        msg.stamp = ros::Time::now();
        msg.data = count;

        ROS_INFO("gonderilen mesaj = %d",msg.stamp.sec);
        ROS_INFO("gonderilen mesaj = %d",msg.data);

        ilk_paket_sub.publish(msg);

        loop_rate.sleep();

        ++count;

    }

    return 0;
} 
