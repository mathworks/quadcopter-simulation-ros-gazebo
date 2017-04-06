#!/bin/bash

rosrun xacro xacro --inorder quadrotor.urdf.xacro id:=$1 > qws.urdf
rosrun gazebo_ros spawn_model -file qws.urdf -urdf -model quadrotor_$1 -y 0.0 -x -0.0 -z 1
