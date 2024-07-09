# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "detectron2_ros: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idetectron2_ros:/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(detectron2_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" NAME_WE)
add_custom_target(_detectron2_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "detectron2_ros" "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" "sensor_msgs/RegionOfInterest:sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(detectron2_ros
  "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detectron2_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(detectron2_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detectron2_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(detectron2_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(detectron2_ros_generate_messages detectron2_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" NAME_WE)
add_dependencies(detectron2_ros_generate_messages_cpp _detectron2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detectron2_ros_gencpp)
add_dependencies(detectron2_ros_gencpp detectron2_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detectron2_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(detectron2_ros
  "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detectron2_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(detectron2_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detectron2_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(detectron2_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(detectron2_ros_generate_messages detectron2_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" NAME_WE)
add_dependencies(detectron2_ros_generate_messages_eus _detectron2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detectron2_ros_geneus)
add_dependencies(detectron2_ros_geneus detectron2_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detectron2_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(detectron2_ros
  "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detectron2_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(detectron2_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detectron2_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(detectron2_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(detectron2_ros_generate_messages detectron2_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" NAME_WE)
add_dependencies(detectron2_ros_generate_messages_lisp _detectron2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detectron2_ros_genlisp)
add_dependencies(detectron2_ros_genlisp detectron2_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detectron2_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(detectron2_ros
  "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detectron2_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(detectron2_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detectron2_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(detectron2_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(detectron2_ros_generate_messages detectron2_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" NAME_WE)
add_dependencies(detectron2_ros_generate_messages_nodejs _detectron2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detectron2_ros_gennodejs)
add_dependencies(detectron2_ros_gennodejs detectron2_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detectron2_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(detectron2_ros
  "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros
)

### Generating Services

### Generating Module File
_generate_module_py(detectron2_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(detectron2_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(detectron2_ros_generate_messages detectron2_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/detectron2_ros/msg/Result.msg" NAME_WE)
add_dependencies(detectron2_ros_generate_messages_py _detectron2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detectron2_ros_genpy)
add_dependencies(detectron2_ros_genpy detectron2_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detectron2_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detectron2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detectron2_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(detectron2_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(detectron2_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detectron2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detectron2_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(detectron2_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(detectron2_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detectron2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detectron2_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(detectron2_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(detectron2_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detectron2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detectron2_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(detectron2_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(detectron2_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detectron2_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(detectron2_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(detectron2_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
