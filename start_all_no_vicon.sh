#!/bin/bash

echo "========== 1. Starting mavros =========="
source /home/nvidia/ws_uav_setup/devel/setup.bash
roslaunch mavros px4.launch & sleep 5;

echo "========== 2. Starting LiDAR =========="
source /home/nvidia/ws_uav_setup/devel/setup.bash
roslaunch livox_ros_driver2 msg_MID360.launch & sleep 5;

echo "========== 3. Starting FAST LIO =========="
source /home/nvidia/ws_uav_setup/devel/setup.bash
roslaunch fast_lio mapping_mid360_nrviz.launch & sleep 5;

echo "========== 4. Starting rs_t265 =========="
source /home/nvidia/ws_uav_setup/devel/setup.bash
roslaunch realsense2_camera rs_t265.launch & sleep 5;

echo "========== 5. Starting UWB =========="
source /home/nvidia/ws_uav_setup/devel/setup.bash
roslaunch nlink_parser linktrack.launch & sleep 5;

wait;
