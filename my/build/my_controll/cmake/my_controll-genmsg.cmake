# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_controll: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_controll_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" NAME_WE)
add_custom_target(_my_controll_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_controll" "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" ""
)

get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" NAME_WE)
add_custom_target(_my_controll_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_controll" "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_controll
)
_generate_srv_cpp(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_controll
)

### Generating Module File
_generate_module_cpp(my_controll
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_controll
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_controll_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_controll_generate_messages my_controll_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_cpp _my_controll_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_cpp _my_controll_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_controll_gencpp)
add_dependencies(my_controll_gencpp my_controll_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_controll_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_controll
)
_generate_srv_eus(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_controll
)

### Generating Module File
_generate_module_eus(my_controll
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_controll
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_controll_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_controll_generate_messages my_controll_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_eus _my_controll_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_eus _my_controll_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_controll_geneus)
add_dependencies(my_controll_geneus my_controll_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_controll_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_controll
)
_generate_srv_lisp(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_controll
)

### Generating Module File
_generate_module_lisp(my_controll
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_controll
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_controll_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_controll_generate_messages my_controll_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_lisp _my_controll_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_lisp _my_controll_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_controll_genlisp)
add_dependencies(my_controll_genlisp my_controll_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_controll_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_controll
)
_generate_srv_nodejs(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_controll
)

### Generating Module File
_generate_module_nodejs(my_controll
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_controll
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_controll_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_controll_generate_messages my_controll_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_nodejs _my_controll_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_nodejs _my_controll_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_controll_gennodejs)
add_dependencies(my_controll_gennodejs my_controll_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_controll_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_controll
)
_generate_srv_py(my_controll
  "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_controll
)

### Generating Module File
_generate_module_py(my_controll
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_controll
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_controll_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_controll_generate_messages my_controll_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/motor.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_py _my_controll_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/Documents/Data_reforement_code/my/src/my_controll/srv/command.srv" NAME_WE)
add_dependencies(my_controll_generate_messages_py _my_controll_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_controll_genpy)
add_dependencies(my_controll_genpy my_controll_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_controll_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_controll)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_controll
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_controll_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_controll)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_controll
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_controll_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_controll)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_controll
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_controll_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_controll)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_controll
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_controll_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_controll)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_controll\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_controll
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_controll_generate_messages_py std_msgs_generate_messages_py)
endif()
