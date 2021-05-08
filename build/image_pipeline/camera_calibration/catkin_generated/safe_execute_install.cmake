execute_process(COMMAND "/home/cagin/catkin_ws/build/image_pipeline/camera_calibration/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/cagin/catkin_ws/build/image_pipeline/camera_calibration/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
