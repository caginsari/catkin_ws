# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "opencv_application: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iopencv_application:/home/cagin/catkin_ws/src/opencv_application/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(opencv_application_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" NAME_WE)
add_custom_target(_opencv_application_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opencv_application" "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" ""
)

get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" NAME_WE)
add_custom_target(_opencv_application_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opencv_application" "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opencv_application
)
_generate_msg_cpp(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opencv_application
)

### Generating Services

### Generating Module File
_generate_module_cpp(opencv_application
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opencv_application
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(opencv_application_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(opencv_application_generate_messages opencv_application_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_cpp _opencv_application_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_cpp _opencv_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opencv_application_gencpp)
add_dependencies(opencv_application_gencpp opencv_application_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opencv_application_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opencv_application
)
_generate_msg_eus(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opencv_application
)

### Generating Services

### Generating Module File
_generate_module_eus(opencv_application
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opencv_application
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(opencv_application_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(opencv_application_generate_messages opencv_application_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_eus _opencv_application_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_eus _opencv_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opencv_application_geneus)
add_dependencies(opencv_application_geneus opencv_application_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opencv_application_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opencv_application
)
_generate_msg_lisp(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opencv_application
)

### Generating Services

### Generating Module File
_generate_module_lisp(opencv_application
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opencv_application
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(opencv_application_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(opencv_application_generate_messages opencv_application_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_lisp _opencv_application_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_lisp _opencv_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opencv_application_genlisp)
add_dependencies(opencv_application_genlisp opencv_application_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opencv_application_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opencv_application
)
_generate_msg_nodejs(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opencv_application
)

### Generating Services

### Generating Module File
_generate_module_nodejs(opencv_application
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opencv_application
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(opencv_application_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(opencv_application_generate_messages opencv_application_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_nodejs _opencv_application_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_nodejs _opencv_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opencv_application_gennodejs)
add_dependencies(opencv_application_gennodejs opencv_application_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opencv_application_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opencv_application
)
_generate_msg_py(opencv_application
  "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opencv_application
)

### Generating Services

### Generating Module File
_generate_module_py(opencv_application
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opencv_application
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(opencv_application_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(opencv_application_generate_messages opencv_application_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/kinect.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_py _opencv_application_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/opencv_application/msg/time.msg" NAME_WE)
add_dependencies(opencv_application_generate_messages_py _opencv_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opencv_application_genpy)
add_dependencies(opencv_application_genpy opencv_application_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opencv_application_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opencv_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opencv_application
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(opencv_application_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opencv_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opencv_application
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(opencv_application_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opencv_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opencv_application
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(opencv_application_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opencv_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opencv_application
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(opencv_application_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opencv_application)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opencv_application\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opencv_application
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(opencv_application_generate_messages_py std_msgs_generate_messages_py)
endif()
