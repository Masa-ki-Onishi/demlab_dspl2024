# Install script for directory: /home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/demulab-asus4070-2024/dspl2024_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/demulab-asus4070-2024/dspl2024_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/demulab-asus4070-2024/dspl2024_ws/install" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/demulab-asus4070-2024/dspl2024_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/demulab-asus4070-2024/dspl2024_ws/install" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/demulab-asus4070-2024/dspl2024_ws/install/setup.bash;/home/demulab-asus4070-2024/dspl2024_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/demulab-asus4070-2024/dspl2024_ws/install" TYPE FILE FILES
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/setup.bash"
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/demulab-asus4070-2024/dspl2024_ws/install/setup.sh;/home/demulab-asus4070-2024/dspl2024_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/demulab-asus4070-2024/dspl2024_ws/install" TYPE FILE FILES
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/setup.sh"
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/demulab-asus4070-2024/dspl2024_ws/install/setup.zsh;/home/demulab-asus4070-2024/dspl2024_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/demulab-asus4070-2024/dspl2024_ws/install" TYPE FILE FILES
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/setup.zsh"
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/demulab-asus4070-2024/dspl2024_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/demulab-asus4070-2024/dspl2024_ws/install" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play/action" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/action/SoundRequest.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play/msg" TYPE FILE FILES
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestAction.msg"
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestActionGoal.msg"
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestActionResult.msg"
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestActionFeedback.msg"
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestGoal.msg"
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestResult.msg"
    "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/sound_play/msg/SoundRequestFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play/msg" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/msg/SoundRequest.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play/cmake" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/sound_play-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/include/sound_play")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/roseus/ros/sound_play")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/common-lisp/ros/sound_play")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/share/gennodejs/ros/sound_play")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/lib/python3/dist-packages/sound_play")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/lib/python3/dist-packages/sound_play" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/devel/.private/sound_play/lib/python3/dist-packages/sound_play" FILES_MATCHING REGEX "/home/demulab-asus4070-2024/dspl2024_ws/devel/\\.private/sound_play/lib/python3/dist-packages/sound_play/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/sound_play.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play/cmake" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/sound_play-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play/cmake" TYPE FILE FILES
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/sound_playConfig.cmake"
    "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/sound_playConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play" TYPE FILE FILES "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/is_speaking.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/playbuiltin.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/play.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/say.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/shutup.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/soundplay_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/test.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sound_play" TYPE PROGRAM FILES "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/catkin_generated/installspace/test_actionlib_client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play" TYPE FILE FILES
    "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/soundplay_node.launch"
    "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/sound_play_plugin.yaml"
    "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/test.launch"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sound_play" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/include/sound_play/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sound_play" TYPE DIRECTORY FILES "/home/demulab-asus4070-2024/dspl2024_ws/src/audio_common/sound_play/sounds")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/demulab-asus4070-2024/dspl2024_ws/build/sound_play/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
