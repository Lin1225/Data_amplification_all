# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lab/Documents/Data_reforement_code/my/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lab/Documents/Data_reforement_code/my/build

# Include any dependencies generated for this target.
include rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend.make

# Include the progress variables for this target.
include rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/progress.make

# Include the compile flags for this target's objects.
include rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/flags.make

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/flags.make
rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o: /home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_client/test/subscriber_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lab/Documents/Data_reforement_code/my/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o"
	cd /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o -c /home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_client/test/subscriber_test.cpp

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i"
	cd /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_client/test/subscriber_test.cpp > CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s"
	cd /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_client/test/subscriber_test.cpp -o CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s

# Object files for target subscriber_test
subscriber_test_OBJECTS = \
"CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o"

# External object files for target subscriber_test
subscriber_test_EXTERNAL_OBJECTS =

/home/lab/Documents/Data_reforement_code/my/devel/lib/rosserial_client/subscriber_test: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o
/home/lab/Documents/Data_reforement_code/my/devel/lib/rosserial_client/subscriber_test: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build.make
/home/lab/Documents/Data_reforement_code/my/devel/lib/rosserial_client/subscriber_test: gtest/gtest/libgtest.so
/home/lab/Documents/Data_reforement_code/my/devel/lib/rosserial_client/subscriber_test: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lab/Documents/Data_reforement_code/my/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/lab/Documents/Data_reforement_code/my/devel/lib/rosserial_client/subscriber_test"
	cd /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subscriber_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build: /home/lab/Documents/Data_reforement_code/my/devel/lib/rosserial_client/subscriber_test

.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/clean:
	cd /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client && $(CMAKE_COMMAND) -P CMakeFiles/subscriber_test.dir/cmake_clean.cmake
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/clean

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend:
	cd /home/lab/Documents/Data_reforement_code/my/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lab/Documents/Data_reforement_code/my/src /home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_client /home/lab/Documents/Data_reforement_code/my/build /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client /home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend

