# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ilk_paket: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iilk_paket:/home/cagin/catkin_ws/src/ilk_paket/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ilk_paket_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" NAME_WE)
add_custom_target(_ilk_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ilk_paket" "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" ""
)

get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" NAME_WE)
add_custom_target(_ilk_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ilk_paket" "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ilk_paket
)
_generate_msg_cpp(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ilk_paket
)

### Generating Services

### Generating Module File
_generate_module_cpp(ilk_paket
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ilk_paket
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ilk_paket_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ilk_paket_generate_messages ilk_paket_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_cpp _ilk_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_cpp _ilk_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ilk_paket_gencpp)
add_dependencies(ilk_paket_gencpp ilk_paket_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ilk_paket_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ilk_paket
)
_generate_msg_eus(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ilk_paket
)

### Generating Services

### Generating Module File
_generate_module_eus(ilk_paket
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ilk_paket
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ilk_paket_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ilk_paket_generate_messages ilk_paket_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_eus _ilk_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_eus _ilk_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ilk_paket_geneus)
add_dependencies(ilk_paket_geneus ilk_paket_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ilk_paket_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ilk_paket
)
_generate_msg_lisp(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ilk_paket
)

### Generating Services

### Generating Module File
_generate_module_lisp(ilk_paket
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ilk_paket
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ilk_paket_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ilk_paket_generate_messages ilk_paket_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_lisp _ilk_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_lisp _ilk_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ilk_paket_genlisp)
add_dependencies(ilk_paket_genlisp ilk_paket_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ilk_paket_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ilk_paket
)
_generate_msg_nodejs(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ilk_paket
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ilk_paket
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ilk_paket
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ilk_paket_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ilk_paket_generate_messages ilk_paket_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_nodejs _ilk_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_nodejs _ilk_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ilk_paket_gennodejs)
add_dependencies(ilk_paket_gennodejs ilk_paket_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ilk_paket_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ilk_paket
)
_generate_msg_py(ilk_paket
  "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ilk_paket
)

### Generating Services

### Generating Module File
_generate_module_py(ilk_paket
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ilk_paket
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ilk_paket_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ilk_paket_generate_messages ilk_paket_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/drone.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_py _ilk_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cagin/catkin_ws/src/ilk_paket/msg/zaman.msg" NAME_WE)
add_dependencies(ilk_paket_generate_messages_py _ilk_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ilk_paket_genpy)
add_dependencies(ilk_paket_genpy ilk_paket_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ilk_paket_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ilk_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ilk_paket
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ilk_paket_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ilk_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ilk_paket
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ilk_paket_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ilk_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ilk_paket
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ilk_paket_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ilk_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ilk_paket
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ilk_paket_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ilk_paket)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ilk_paket\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ilk_paket
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ilk_paket_generate_messages_py std_msgs_generate_messages_py)
endif()
