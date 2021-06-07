# Workspace for calculating real world coordinates of the detected button
## Running the nodes
### 1) Simulation with RGBD Camera
Step 1: Following command launches the Kinect  
 * ```roslaunch kinect_package kinect.launch```

Step 2: The following command runs the node which starts up a rgb video frame published by the camera and by clicking to the camera the position of the mouse click is passed as a geometry_msgs.

  * ```rosrun opencv_application camera.py```

Step 3: The node for calculating the real-world coordinates. The required node is run by the following command:
  * ```rosrun kinect_package kinect_subscriber.cpp```
### 2) To work within the image processing

Step 1: The character recognition part publishes the center point pixel coordinates of the recognised.

Step 3: And the node for calculating the real-world coordinates which is run previously by the following command calculates the coordinates of the corresponding pixel.
  * ```rosrun kinect_package kinect_subscriber.cpp```
