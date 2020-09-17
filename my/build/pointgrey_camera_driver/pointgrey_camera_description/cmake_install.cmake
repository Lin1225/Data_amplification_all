# Install script for directory: /home/lab/Documents/Data_reforement_code/my/src/pointgrey_camera_driver/pointgrey_camera_description

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lab/Documents/Data_reforement_code/my/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/my/build/pointgrey_camera_driver/pointgrey_camera_description/catkin_generated/installspace/pointgrey_camera_description.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pointgrey_camera_description/cmake" TYPE FILE FILES
    "/home/lab/Documents/Data_reforement_code/my/build/pointgrey_camera_driver/pointgrey_camera_description/catkin_generated/installspace/pointgrey_camera_descriptionConfig.cmake"
    "/home/lab/Documents/Data_reforement_code/my/build/pointgrey_camera_driver/pointgrey_camera_description/catkin_generated/installspace/pointgrey_camera_descriptionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pointgrey_camera_description" TYPE FILE FILES "/home/lab/Documents/Data_reforement_code/my/src/pointgrey_camera_driver/pointgrey_camera_description/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pointgrey_camera_description" TYPE DIRECTORY FILES
    "/home/lab/Documents/Data_reforement_code/my/src/pointgrey_camera_driver/pointgrey_camera_description/launch"
    "/home/lab/Documents/Data_reforement_code/my/src/pointgrey_camera_driver/pointgrey_camera_description/meshes"
    "/home/lab/Documents/Data_reforement_code/my/src/pointgrey_camera_driver/pointgrey_camera_description/rviz"
    "/home/lab/Documents/Data_reforement_code/my/src/pointgrey_camera_driver/pointgrey_camera_description/urdf"
    )
endif()

