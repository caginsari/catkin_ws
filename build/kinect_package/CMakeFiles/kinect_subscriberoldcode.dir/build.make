# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cagin/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cagin/catkin_ws/build

# Include any dependencies generated for this target.
include kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/depend.make

# Include the progress variables for this target.
include kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/progress.make

# Include the compile flags for this target's objects.
include kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/flags.make

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/flags.make
kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o: /home/cagin/catkin_ws/src/kinect_package/src/kinect_subscriberoldcode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cagin/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o"
	cd /home/cagin/catkin_ws/build/kinect_package && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o -c /home/cagin/catkin_ws/src/kinect_package/src/kinect_subscriberoldcode.cpp

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.i"
	cd /home/cagin/catkin_ws/build/kinect_package && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cagin/catkin_ws/src/kinect_package/src/kinect_subscriberoldcode.cpp > CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.i

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.s"
	cd /home/cagin/catkin_ws/build/kinect_package && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cagin/catkin_ws/src/kinect_package/src/kinect_subscriberoldcode.cpp -o CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.s

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.requires:

.PHONY : kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.requires

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.provides: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.requires
	$(MAKE) -f kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/build.make kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.provides.build
.PHONY : kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.provides

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.provides.build: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o


# Object files for target kinect_subscriberoldcode
kinect_subscriberoldcode_OBJECTS = \
"CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o"

# External object files for target kinect_subscriberoldcode
kinect_subscriberoldcode_EXTERNAL_OBJECTS =

/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/build.make
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libcv_bridge.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libimage_transport.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libmessage_filters.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libclass_loader.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/libPocoFoundation.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libdl.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libroscpp.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/librosconsole.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libroslib.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/librospack.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/librostime.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /opt/ros/melodic/lib/libcpp_common.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cagin/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode"
	cd /home/cagin/catkin_ws/build/kinect_package && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kinect_subscriberoldcode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/build: /home/cagin/catkin_ws/devel/lib/kinect_package/kinect_subscriberoldcode

.PHONY : kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/build

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/requires: kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/src/kinect_subscriberoldcode.cpp.o.requires

.PHONY : kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/requires

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/clean:
	cd /home/cagin/catkin_ws/build/kinect_package && $(CMAKE_COMMAND) -P CMakeFiles/kinect_subscriberoldcode.dir/cmake_clean.cmake
.PHONY : kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/clean

kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/depend:
	cd /home/cagin/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cagin/catkin_ws/src /home/cagin/catkin_ws/src/kinect_package /home/cagin/catkin_ws/build /home/cagin/catkin_ws/build/kinect_package /home/cagin/catkin_ws/build/kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kinect_package/CMakeFiles/kinect_subscriberoldcode.dir/depend

