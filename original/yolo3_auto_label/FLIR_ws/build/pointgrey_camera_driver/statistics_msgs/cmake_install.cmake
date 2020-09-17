# Install script for directory: /home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/src/pointgrey_camera_driver/statistics_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/statistics_msgs/msg" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/src/pointgrey_camera_driver/statistics_msgs/msg/Stats1D.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/statistics_msgs/cmake" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/build/pointgrey_camera_driver/statistics_msgs/catkin_generated/installspace/statistics_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/devel/include/statistics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/devel/share/roseus/ros/statistics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/devel/share/common-lisp/ros/statistics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/devel/share/gennodejs/ros/statistics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/devel/lib/python2.7/dist-packages/statistics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/devel/lib/python2.7/dist-packages/statistics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/build/pointgrey_camera_driver/statistics_msgs/catkin_generated/installspace/statistics_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/statistics_msgs/cmake" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/build/pointgrey_camera_driver/statistics_msgs/catkin_generated/installspace/statistics_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/statistics_msgs/cmake" TYPE FILE FILES
    "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/build/pointgrey_camera_driver/statistics_msgs/catkin_generated/installspace/statistics_msgsConfig.cmake"
    "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/build/pointgrey_camera_driver/statistics_msgs/catkin_generated/installspace/statistics_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/statistics_msgs" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/yolo3_auto_label/FLIR_ws/src/pointgrey_camera_driver/statistics_msgs/package.xml")
endif()

