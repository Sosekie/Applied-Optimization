# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/fcr/miniconda3/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/fcr/miniconda3/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build

# Include any dependencies generated for this target.
include ConvexityTests/CMakeFiles/ConvexityTests-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ConvexityTests/CMakeFiles/ConvexityTests-test.dir/compiler_depend.make

# Include the progress variables for this target.
include ConvexityTests/CMakeFiles/ConvexityTests-test.dir/progress.make

# Include the compile flags for this target's objects.
include ConvexityTests/CMakeFiles/ConvexityTests-test.dir/flags.make

ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o: ConvexityTests/CMakeFiles/ConvexityTests-test.dir/flags.make
ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o: /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/ConvexityTests/unit_tests.cc
ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o: ConvexityTests/CMakeFiles/ConvexityTests-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o"
	cd /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o -MF CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o.d -o CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o -c /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/ConvexityTests/unit_tests.cc

ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.i"
	cd /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/ConvexityTests/unit_tests.cc > CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.i

ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.s"
	cd /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/ConvexityTests/unit_tests.cc -o CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.s

# Object files for target ConvexityTests-test
ConvexityTests__test_OBJECTS = \
"CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o"

# External object files for target ConvexityTests-test
ConvexityTests__test_EXTERNAL_OBJECTS =

Build/bin/ConvexityTests-test: ConvexityTests/CMakeFiles/ConvexityTests-test.dir/unit_tests.cc.o
Build/bin/ConvexityTests-test: ConvexityTests/CMakeFiles/ConvexityTests-test.dir/build.make
Build/bin/ConvexityTests-test: lib/libgtest.a
Build/bin/ConvexityTests-test: lib/libgtest_main.a
Build/bin/ConvexityTests-test: lib/libgtest.a
Build/bin/ConvexityTests-test: ConvexityTests/CMakeFiles/ConvexityTests-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/ConvexityTests-test"
	cd /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ConvexityTests-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ConvexityTests/CMakeFiles/ConvexityTests-test.dir/build: Build/bin/ConvexityTests-test
.PHONY : ConvexityTests/CMakeFiles/ConvexityTests-test.dir/build

ConvexityTests/CMakeFiles/ConvexityTests-test.dir/clean:
	cd /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests && $(CMAKE_COMMAND) -P CMakeFiles/ConvexityTests-test.dir/cmake_clean.cmake
.PHONY : ConvexityTests/CMakeFiles/ConvexityTests-test.dir/clean

ConvexityTests/CMakeFiles/ConvexityTests-test.dir/depend:
	cd /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5 /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/ConvexityTests /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests /mnt/g/GitHub/Applied-Optimization/ex5/aopt-exercise5/build/ConvexityTests/CMakeFiles/ConvexityTests-test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : ConvexityTests/CMakeFiles/ConvexityTests-test.dir/depend

