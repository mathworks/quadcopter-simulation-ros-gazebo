cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

#find_package(gazebo REQUIRED)
#find_package(gazebo_ros REQUIRED)
#find_package(roscpp REQUIRED)
#find_package(std_msgs REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  gazebo_ros
  geometry_msgs
  image_transport
  nav_msgs
  roscpp
  sensor_msgs
  std_msgs
)

find_package(gazebo REQUIRED)

file(GLOB inc_dirs ${CMAKE_SOURCE_DIR}/include)
file(GLOB SOURCES src/*.cpp)

include_directories(
	${inc_dirs}
	${GAZEBO_INCLUDE_DIRS}
	${roscpp_INCLUDE_DIRS}
	${std_msgs_INCLUDE_DIRS}
	${SDFormat_INCLUDE_DIRS}
	${Boost_INCLUDE_DIRS}
)

link_directories(
	${GAZEBO_LIBRARY_DIRS}
	${SDFormat_LIBRARY_DIRS}
)

list(APPEND CMAKE_CXX_FLAGS "${GAZEBO_CXX_FLAGS}")

set(PLUGIN_NAME quadrotor_simple_controller)
add_library(${PLUGIN_NAME} SHARED src/${PLUGIN_NAME}.cpp)
#target_link_libraries(${PLUGIN_NAME} ${GAZEBO_LIBRARIES} ${roscpp_LIBRARIES} ${SDFormat_LIBRARIES} ${Boost_LIBRARIES})


















