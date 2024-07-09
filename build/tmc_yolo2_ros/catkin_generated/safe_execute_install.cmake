execute_process(COMMAND "/home/demulab-asus4070-2024/dspl2024_ws/build/tmc_yolo2_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/demulab-asus4070-2024/dspl2024_ws/build/tmc_yolo2_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
