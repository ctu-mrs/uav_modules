# UAV modules

Meta-Package containing often-used non-essential UAV packages.

| Build status | [![Build Status](https://github.com/ctu-mrs/uav_modules/workflows/Noetic/badge.svg)](https://github.com/ctu-mrs/uav_modules/actions) |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------|

## Dependencies

* [uav_core](http://github.com/ctu-mrs/uav_core)

## Installation

Before compiling, call the main installation script:
```bash
./installation/install.sh
```

## Submodules

* [aloam](./ros_packages/aloam) - A-LOAM SLAM (3D LiDAR SLAM)
* [bluefox2](./ros_packages/bluefox2) - Bluefox2 camera driver
* [camera_base](./ros_packages/camera_base) + [camera_base](./ros_packages/usb_cam) - V4L camera driver
* [hector_slam](./ros_packages/hector_slam) - Hector SLAM (2D LiDAR SLAM)
* [mrs_gazebo_extra_resources](./ros_packages/mrs_gazebo_extra_resources) - Additional simulation resources
* [mrs_optic_flow](./ros_packages/mrs_optic_flow) - OpticFlow for UAVs
* [mrs_pcl_tools](./ros_packages/mrs_pcl_tools) - PCL additions and libraries
* [mrs_serial](./ros_packages/mrs_serial) - Serial (UART) communication node
* [mrs_utils](./ros_packages/mrs_utils) - Minor stuff
* [nimbro_network](./ros_packages/nimbro_network) - Mutual ROS communication over wifi
* [ouster](./ros_packages/ouster) - Ouster LiDAR driver
* [path_loader](./ros_packages/path_loader) - Simple path loader
* [realsense](./ros_packages/realsense) - Realsense driver
* [rplidar_ros](./ros_packages/rplidar_ros) - RPLidar driver
* [trajectory_loader](./ros_packages/trajectory_loader) - Simple trajectory loader
