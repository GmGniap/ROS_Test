<<<<<<< HEAD
# Install script for directory: /home/gmgniap/test_robot/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/gmgniap/test_robot/install")
=======
# Install script for directory: /home/gmgniap/robot/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/gmgniap/robot/install")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gmgniap/test_robot/install/_setup_util.py")
=======
   "/home/gmgniap/robot/install/_setup_util.py")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
<<<<<<< HEAD
FILE(INSTALL DESTINATION "/home/gmgniap/test_robot/install" TYPE PROGRAM FILES "/home/gmgniap/test_robot/build/catkin_generated/installspace/_setup_util.py")
=======
FILE(INSTALL DESTINATION "/home/gmgniap/robot/install" TYPE PROGRAM FILES "/home/gmgniap/robot/build/catkin_generated/installspace/_setup_util.py")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gmgniap/test_robot/install/env.sh")
=======
   "/home/gmgniap/robot/install/env.sh")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
<<<<<<< HEAD
FILE(INSTALL DESTINATION "/home/gmgniap/test_robot/install" TYPE PROGRAM FILES "/home/gmgniap/test_robot/build/catkin_generated/installspace/env.sh")
=======
FILE(INSTALL DESTINATION "/home/gmgniap/robot/install" TYPE PROGRAM FILES "/home/gmgniap/robot/build/catkin_generated/installspace/env.sh")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gmgniap/test_robot/install/setup.bash")
=======
   "/home/gmgniap/robot/install/setup.bash")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
<<<<<<< HEAD
FILE(INSTALL DESTINATION "/home/gmgniap/test_robot/install" TYPE FILE FILES "/home/gmgniap/test_robot/build/catkin_generated/installspace/setup.bash")
=======
FILE(INSTALL DESTINATION "/home/gmgniap/robot/install" TYPE FILE FILES "/home/gmgniap/robot/build/catkin_generated/installspace/setup.bash")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gmgniap/test_robot/install/setup.sh")
=======
   "/home/gmgniap/robot/install/setup.sh")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
<<<<<<< HEAD
FILE(INSTALL DESTINATION "/home/gmgniap/test_robot/install" TYPE FILE FILES "/home/gmgniap/test_robot/build/catkin_generated/installspace/setup.sh")
=======
FILE(INSTALL DESTINATION "/home/gmgniap/robot/install" TYPE FILE FILES "/home/gmgniap/robot/build/catkin_generated/installspace/setup.sh")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gmgniap/test_robot/install/setup.zsh")
=======
   "/home/gmgniap/robot/install/setup.zsh")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
<<<<<<< HEAD
FILE(INSTALL DESTINATION "/home/gmgniap/test_robot/install" TYPE FILE FILES "/home/gmgniap/test_robot/build/catkin_generated/installspace/setup.zsh")
=======
FILE(INSTALL DESTINATION "/home/gmgniap/robot/install" TYPE FILE FILES "/home/gmgniap/robot/build/catkin_generated/installspace/setup.zsh")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/gmgniap/test_robot/install/.rosinstall")
=======
   "/home/gmgniap/robot/install/.rosinstall")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
<<<<<<< HEAD
FILE(INSTALL DESTINATION "/home/gmgniap/test_robot/install" TYPE FILE FILES "/home/gmgniap/test_robot/build/catkin_generated/installspace/.rosinstall")
=======
FILE(INSTALL DESTINATION "/home/gmgniap/robot/install" TYPE FILE FILES "/home/gmgniap/robot/build/catkin_generated/installspace/.rosinstall")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< HEAD
  INCLUDE("/home/gmgniap/test_robot/build/gtest/cmake_install.cmake")
  INCLUDE("/home/gmgniap/test_robot/build/ros_arduino_bridge/ros_arduino_bridge/cmake_install.cmake")
  INCLUDE("/home/gmgniap/test_robot/build/ros_arduino_bridge/ros_arduino_firmware/cmake_install.cmake")
  INCLUDE("/home/gmgniap/test_robot/build/ros_arduino_bridge/ros_arduino_python/cmake_install.cmake")
  INCLUDE("/home/gmgniap/test_robot/build/ros_arduino_bridge/ros_arduino_msgs/cmake_install.cmake")
  INCLUDE("/home/gmgniap/test_robot/build/motor_driver/cmake_install.cmake")
=======
  INCLUDE("/home/gmgniap/robot/build/gtest/cmake_install.cmake")
  INCLUDE("/home/gmgniap/robot/build/walker/cmake_install.cmake")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

<<<<<<< HEAD
FILE(WRITE "/home/gmgniap/test_robot/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/gmgniap/test_robot/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
=======
FILE(WRITE "/home/gmgniap/robot/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/gmgniap/robot/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
>>>>>>> 16f8ab4049087f7854a979fee4d571275ba88026
ENDFOREACH(file)
