== IMAV2017 Virtual Challenge ==

Simulation environment using ROS and Gazebo for the IMAV2017 Virtual Challenge. It has been succesfully tested on Ubuntu 16.04 (Xenial) 64bit.

Please read the PDF file IMAV2017_Virtual_Challenge_Guide.pdf for detailled instructions and installation notes.

Quick install and run process (using bash, if you use a different shell you may need to adapt some scripts):
  - if not done make scripts executable:
    chmod +x setup.sh
    chmod +x run_gzb.sh
    chmod +x start_uav.sh

  - run setup script (this should be done once for a fresh install without ROS or gazebo alreaded installed, in case of error run required commands by hand step by step)
    ./setup.sh

  - start gazebo environment simulator and ROS server
    ./run_gzb.sh

  - add a robot to the scene with default ID
    ./start_uav.sh

Once ROS/gazebo simulation is running, you can use Simulink or your own system to control the UAV

