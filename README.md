# uav_setup

### 1. Install dependencies

```bash
# Install ROS, follow following instruction
https://wiki.ros.org/noetic/Installation/Ubuntu
# Some dependencies
sudo pip3 install -U catkin_tools
sudo apt install ros-**YOUR_VERSION**-pcl-ros
sudo apt install libgoogle-glog-dev
sudo apt install ros-noetic-vrpn-client-ros
```

### 2. ws_uav_setup

```bash
git clone https://github.com/Printeger/ws_uav_setup.git
git submodule update --init
# install Livox SDK
cd deps/Livox_SDK2
mkdir build && cd build
cmake .. && make -j
sudo make install
# build ros packages
catkin build **PACKAGE_NAME**

echo "source /home/**USER_NAME**/ws_uav_setup/devel/setup.bash" >> ~/.bashrc
sudo chmod 777 /dev/ttyACM0
```

### 3. Getting start!

```bash
# Start Vicon & mavros & LiDAR & FAST_LIO & Camera & UWB & GNSS
bash start_all.sh
# Start all except Vicon
bash start_all_no_vicon.sh
# Start in tabs
bash start_in_tabs.sh
```
