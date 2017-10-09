# IMAV2017 Simulink models #

## Description ##

The [International Micro Air Vehicle Conference and Competition](http://www.imavs.org) (IMAV) is a yearly event that aims at fostering key technologies for the development of micro-air vehicles that [MathWorks](http://www.mathworks.com/) sponsors.
IMAV combines a scientific conference and a flight competition intended to all research groups around the world.
This project has been developed to provide IMAV with an environment for the virtual competition event, complementing the two real indoor and outdoor competitions.

## Contents ##

This repository contains Simulink control models that connect to the competition environment running on ROS/Gazebo in order to control a drone. This is done by sending ROS topics from Simulink, thanks to the ROS blocks from the Robotics System Toolbox. 

Several example models are available for you to experiment with that and build up a drone control software that will allow to meet the mission elements: 

 - **manualControl**: control the drone manually on the X, Y, Z and Yaw axis 
 - **simpleMovement**: make the drone reach a target (the QR code) by defining a trajectory with the Signal Builder block 
 - **pathFollowing**: make the drone reach a target using the Pure Pursuit block from the Robotics System Toolbox 
 - **pathFollowingWithObstacleAvoidance**: make the drone avoid obstacles using the Vector Field Histogram block from the Robotics System Toolbox 

For the moment, these models control the drone with ID 1, but you can change the topics of the *Subscribe* and *Publish* blocks to control another drone. 

## Instructions ##

To connect Simulink with the ROS server, follow these steps: 

 1. In MATLAB, execute the `rosinit` function with the IP of the virtual machine
 2. In Simulink, navigate to Tools > Robotics Operating System > Configure Network Addresses
 3. In ROS Master, make sure Network Address is set to Default
 4. In Node Host, make sure Network Address is set to Default
 5. Test the connectivity using the Test button
 
Refer to the following links for more information:

 - [Connect to a ROS Network](https://www.mathworks.com/help/robotics/examples/connect-to-a-ros-network.html)
 - [Simulink and ROS Interaction](https://www.mathworks.com/help/robotics/ug/simulink-and-ros-interaction.html)
 - [Configure ROS Network Addresses](https://www.mathworks.com/help/robotics/ug/configure-ros-network-addresses.html)

## Notes ##

If a model can control the drone but does not receive any data from the drone, make sure you have set the *ROS_IP* environment variable in the VM before running ROS.
