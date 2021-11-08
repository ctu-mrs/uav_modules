# UAV modules

Meta-Package containing often-used non-essential UAV packages.

| Build status | [![Build Status](https://github.com/ctu-mrs/uav_modules/workflows/Noetic/badge.svg)](https://github.com/ctu-mrs/uav_modules/actions) |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------------|

## Dependencies

* [uav_core](http://github.com/ctu-mrs/uav_core)

We expect that the **uav_core** is up-to-date (master) and compiled withing the `~/mrs_workspace`.

## Installation

We recommend compiling the **uav_modules** in a separated workspace from the uav_core.
More information in the [catkin workspace guide (TODO)](https://ctu-mrs.github.io/docs/software/catkin_workspace_guide.html).

1. Clone the **uav_modules**:
```bash
cd ~/git
git clone https://github.com/ctu-mrs/uav_modules
```
2. Call the main installation script:
```bash
~/git/uav_modules/installation/install.sh
```
3. Create a ROS workspace dedicated just to the **uav_modules** package and link the uav_modules into it:
```bash
mkdir -p ~/modules_workspace/src && cd ~/modules_workspace 
catkin init
cd ~/modules_workspace/src
ln -s ~/git/uav_modules
```
4. Extend the **mrs_workspace**:
```bash
cd ~/modules_workspace
catkin config --extend ~/mrs_workspace/devel
```
5. Compile the workspace
```bash
cd ~/modules_workspace
catkin build
```

## Submodules

* [aloam](https://github.com/ctu-mrs/aloam) - A-LOAM SLAM (3D LiDAR SLAM)
* [bluefox2](https://github.com/ctu-mrs/bluefox2) - Bluefox2 camera driver
* [camera_base](https://github.com/ctu-mrs/camera_base) + [usb_cam](https://github.com/ctu-mrs/usb_cam) - V4L camera driver
* [hector_slam](https://github.com/ctu-mrs/hector_slam) - Hector SLAM (2D LiDAR SLAM)
* [mrs_gazebo_extra_resources](https://github.com/ctu-mrs/mrs_gazebo_extra_resources) - Additional simulation resources
* [mrs_optic_flow](https://github.com/ctu-mrs/mrs_optic_flow) - OpticFlow for UAVs
* [mrs_pcl_tools](https://github.com/ctu-mrs/mrs_pcl_tools) - PCL additions and libraries
* [mrs_serial](https://github.com/ctu-mrs/mrs_serial) - Serial (UART) communication node
* [mrs_utils](https://github.com/ctu-mrs/mrs_utils) - Minor stuff
* [nimbro_network](https://github.com/ctu-mrs/nimbro_network) - Mutual ROS communication over wifi
* [ouster](https://github.com/ctu-mrs/ouster) - Ouster LiDAR driver
* [path_loader](https://github.com/ctu-mrs/path_loader) - Simple path loader
* [realsense](https://github.com/ctu-mrs/realsense) - Realsense driver
* [rplidar_ros](https://github.com/ctu-mrs/rplidar_ros) - RPLidar driver
* [trajectory_loader](https://github.com/ctu-mrs/trajectory_loader) - Simple trajectory loader
