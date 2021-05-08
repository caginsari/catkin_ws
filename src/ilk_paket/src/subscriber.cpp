#include "ros/ros.h"
#include "ilk_paket/zaman.h"

void func(const ilk_paket::zaman::ConstPtr& msg){

    ROS_INFO("alinan mesaj = %d",msg->stamp.sec);

    ROS_INFO("alinan mesaj = %d",msg->stamp.nsec);
    
    ROS_INFO("alinan mesaj = %d",msg->data);
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"subscriber");

    ros::NodeHandle nh;

    ros::Subscriber ilk_paket_sub = nh.subscribe("msg_time",100,func);

    ros::spin();


    return 0;
}
