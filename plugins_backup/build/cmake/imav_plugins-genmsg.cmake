# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "imav_plugins: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(imav_plugins_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" NAME_WE)
add_custom_target(_imav_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imav_plugins" "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(imav_plugins
  "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imav_plugins
)

### Generating Module File
_generate_module_cpp(imav_plugins
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imav_plugins
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(imav_plugins_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(imav_plugins_generate_messages imav_plugins_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(imav_plugins_generate_messages_cpp _imav_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imav_plugins_gencpp)
add_dependencies(imav_plugins_gencpp imav_plugins_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imav_plugins_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(imav_plugins
  "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imav_plugins
)

### Generating Module File
_generate_module_eus(imav_plugins
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imav_plugins
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(imav_plugins_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(imav_plugins_generate_messages imav_plugins_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(imav_plugins_generate_messages_eus _imav_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imav_plugins_geneus)
add_dependencies(imav_plugins_geneus imav_plugins_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imav_plugins_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(imav_plugins
  "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imav_plugins
)

### Generating Module File
_generate_module_lisp(imav_plugins
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imav_plugins
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(imav_plugins_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(imav_plugins_generate_messages imav_plugins_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(imav_plugins_generate_messages_lisp _imav_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imav_plugins_genlisp)
add_dependencies(imav_plugins_genlisp imav_plugins_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imav_plugins_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(imav_plugins
  "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imav_plugins
)

### Generating Module File
_generate_module_nodejs(imav_plugins
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imav_plugins
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(imav_plugins_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(imav_plugins_generate_messages imav_plugins_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(imav_plugins_generate_messages_nodejs _imav_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imav_plugins_gennodejs)
add_dependencies(imav_plugins_gennodejs imav_plugins_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imav_plugins_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(imav_plugins
  "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imav_plugins
)

### Generating Module File
_generate_module_py(imav_plugins
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imav_plugins
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(imav_plugins_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(imav_plugins_generate_messages imav_plugins_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vince/catkin_ws/src/imav_2017/plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(imav_plugins_generate_messages_py _imav_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imav_plugins_genpy)
add_dependencies(imav_plugins_genpy imav_plugins_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imav_plugins_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imav_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imav_plugins
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(imav_plugins_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(imav_plugins_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(imav_plugins_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(imav_plugins_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imav_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imav_plugins
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(imav_plugins_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(imav_plugins_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(imav_plugins_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(imav_plugins_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imav_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imav_plugins
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(imav_plugins_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(imav_plugins_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(imav_plugins_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(imav_plugins_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imav_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imav_plugins
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(imav_plugins_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(imav_plugins_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(imav_plugins_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(imav_plugins_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imav_plugins)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imav_plugins\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imav_plugins
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(imav_plugins_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(imav_plugins_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(imav_plugins_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(imav_plugins_generate_messages_py std_msgs_generate_messages_py)
endif()
