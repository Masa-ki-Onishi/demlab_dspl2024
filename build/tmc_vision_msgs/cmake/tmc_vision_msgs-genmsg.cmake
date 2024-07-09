# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tmc_vision_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Itmc_vision_msgs:/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tmc_vision_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" NAME_WE)
add_custom_target(_tmc_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tmc_vision_msgs" "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" "tmc_vision_msgs/Label"
)

get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" NAME_WE)
add_custom_target(_tmc_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tmc_vision_msgs" "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" "tmc_vision_msgs/Detection:tmc_vision_msgs/Label:std_msgs/Header"
)

get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" NAME_WE)
add_custom_target(_tmc_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tmc_vision_msgs" "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_cpp(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg;/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_cpp(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tmc_vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(tmc_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tmc_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tmc_vision_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tmc_vision_msgs_generate_messages tmc_vision_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_cpp _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_cpp _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_cpp _tmc_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tmc_vision_msgs_gencpp)
add_dependencies(tmc_vision_msgs_gencpp tmc_vision_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tmc_vision_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_eus(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg;/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_eus(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tmc_vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(tmc_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tmc_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tmc_vision_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tmc_vision_msgs_generate_messages tmc_vision_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_eus _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_eus _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_eus _tmc_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tmc_vision_msgs_geneus)
add_dependencies(tmc_vision_msgs_geneus tmc_vision_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tmc_vision_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_lisp(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg;/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_lisp(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tmc_vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(tmc_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tmc_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tmc_vision_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tmc_vision_msgs_generate_messages tmc_vision_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_lisp _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_lisp _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_lisp _tmc_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tmc_vision_msgs_genlisp)
add_dependencies(tmc_vision_msgs_genlisp tmc_vision_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tmc_vision_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_nodejs(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg;/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_nodejs(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tmc_vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tmc_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tmc_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tmc_vision_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tmc_vision_msgs_generate_messages tmc_vision_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_nodejs _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_nodejs _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_nodejs _tmc_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tmc_vision_msgs_gennodejs)
add_dependencies(tmc_vision_msgs_gennodejs tmc_vision_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tmc_vision_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_py(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg;/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs
)
_generate_msg_py(tmc_vision_msgs
  "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(tmc_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tmc_vision_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tmc_vision_msgs_generate_messages tmc_vision_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_py _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_py _tmc_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/demulab-asus4070-2024/dspl2024_ws/src/darknet/tmc_darknet_ros/tmc_vision_msgs/msg/Label.msg" NAME_WE)
add_dependencies(tmc_vision_msgs_generate_messages_py _tmc_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tmc_vision_msgs_genpy)
add_dependencies(tmc_vision_msgs_genpy tmc_vision_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tmc_vision_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tmc_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tmc_vision_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tmc_vision_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tmc_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tmc_vision_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tmc_vision_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tmc_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tmc_vision_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tmc_vision_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tmc_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tmc_vision_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tmc_vision_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tmc_vision_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tmc_vision_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
