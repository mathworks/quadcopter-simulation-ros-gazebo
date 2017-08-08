cd ~/catkin_ws/src/IMAV_2017_Virtual_Challenge/urdf
export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/catkin_ws/src/IMAV_2017_Virtual_Challenge/plugins/build
roslaunch imav_2017 imav_indoor.launch
