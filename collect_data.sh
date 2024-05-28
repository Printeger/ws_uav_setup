#!/bin/bash

echo "Launching roscore..."
gnome-terminal --tab -- bash -c "cd ~/ws_uav_setup; source devel/setup.bash; roscore; exec bash" 

echo "Launching LiDAR..."
gnome-terminal --tab -- bash -c "source devel/setup.bash; roslaunch --wait livox_ros_driver2 msg_MID360.launch; exec bash"

echo "Launching Fast-LIO..."
gnome-terminal --tab -- bash -c "source devel/setup.bash; roslaunch --wait fast_lio mapping_mid360_nrviz.launch; exec bash"

echo "Launching RTKLIB..."
gnome-terminal --tab -- bash -c "cd ~/deps/RTKLIB/app/consapp/str2str/gcc; ./str2str -in ntrip://polyu_th:poly61@landsd-gncaster.realtime.data.gov.hk:2101/HKSC_32 -out tcpsvr://:3503; exec bash"

echo "Launching GNSS..."
gnome-terminal --tab -- bash -c "source devel/setup.bash; roslaunch --wait ublox_driver ublox_driver.launch; exec bash"

echo "Launching UWB..."
gnome-terminal --tab -- bash -c "source devel/setup.bash; roslaunch --wait nlink_parser linktrack.launch; exec bash"

# echo "Launching Camera..."
# gnome-terminal --tab -- bash -c "source devel/setup.bash; exec bash"

# echo "Validing..."
# gnome-terminal --tab -- bash -c "source devel/setup.bash; rqt_graph; exec bash"
