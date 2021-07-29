cmake_minimum_required(VERSION 3.0.2)
project(tankbot)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  rospy
  geometry_msgs
)

include_directories(include
  ${catkin_INCLUDE_DIRS}
)

add_message_files(
  FILES
  EncoderCount.msg
)

#add_service_files(
#  FILES
#  <service>.srv
#)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS
  message_runtime
)

catkin_install_python(PROGRAMS
   src/tankbot_teleop_twist_keyboard.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

#add_executable(<node>
#        src/nodes/<node>.cpp)
#target_link_libraries(<node> ${catkin_LIBRARIES})

#add_executable(<server> src/services/<server>.cpp)
#target_link_libraries(<server> ${catkin_LIBRARIES})
#add_dependencies(<server> <package_name>_gencpp)

#add_executable(<client> src/nodes/client.cpp)
#target_link_libraries(<client> ${catkin_LIBRARIES})
#add_dependencies(<client> <package_name>_gencpp)
