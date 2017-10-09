mkdir -p ~/catkin_ws/src/IMAV_2017_Virtual_Challenge
cp -r * ~/catkin_ws/src/IMAV_2017_Virtual_Challenge

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update
sudo apt install ros-kinetic-desktop -y

sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install python-rosinstall -y

cd ~/catkin_ws/
catkin_make

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install ros-kinetic-joy -y
sudo apt install ros-kinetic-image-view -y

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update

sudo apt install gazebo7 libgazebo7-dev
sudo apt install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control
sudo apt install ros-kinetic-hector-gazebo-plugins ros-kinetic-hector-sensors-description ros-kinetic-hector-gazebo

cd ~/catkin_ws/src/IMAV_2017_Virtual_Challenge/plugins
mkdir -p build
cd build
cmake ..
make

cd ~/catkin_ws/
catkin_make

cd ~/catkin_ws/src/IMAV_2017_Virtual_Challenge/worlds/xacro
rosrun xacro xacro --inorder imav_indoor.world.xacro > ../imav_indoor.world 


echo 'export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/catkin_ws/src/IMAV_2017_Virtual_Challenge/plugins/build' >> ~/.bashrc



