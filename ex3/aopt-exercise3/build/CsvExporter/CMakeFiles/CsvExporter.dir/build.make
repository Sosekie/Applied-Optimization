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
CMAKE_SOURCE_DIR = /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build

# Include any dependencies generated for this target.
include CsvExporter/CMakeFiles/CsvExporter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CsvExporter/CMakeFiles/CsvExporter.dir/compiler_depend.make

# Include the progress variables for this target.
include CsvExporter/CMakeFiles/CsvExporter.dir/progress.make

# Include the compile flags for this target's objects.
include CsvExporter/CMakeFiles/CsvExporter.dir/flags.make

CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.o: CsvExporter/CMakeFiles/CsvExporter.dir/flags.make
CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.o: /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/CsvExporter/main.cc
CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.o: CsvExporter/CMakeFiles/CsvExporter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.o"
	cd /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.o -MF CMakeFiles/CsvExporter.dir/main.cc.o.d -o CMakeFiles/CsvExporter.dir/main.cc.o -c /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/CsvExporter/main.cc

CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CsvExporter.dir/main.cc.i"
	cd /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/CsvExporter/main.cc > CMakeFiles/CsvExporter.dir/main.cc.i

CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CsvExporter.dir/main.cc.s"
	cd /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/CsvExporter/main.cc -o CMakeFiles/CsvExporter.dir/main.cc.s

# Object files for target CsvExporter
CsvExporter_OBJECTS = \
"CMakeFiles/CsvExporter.dir/main.cc.o"

# External object files for target CsvExporter
CsvExporter_EXTERNAL_OBJECTS =

Build/bin/CsvExporter: CsvExporter/CMakeFiles/CsvExporter.dir/main.cc.o
Build/bin/CsvExporter: CsvExporter/CMakeFiles/CsvExporter.dir/build.make
Build/bin/CsvExporter: CsvExporter/CMakeFiles/CsvExporter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/CsvExporter"
	cd /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CsvExporter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CsvExporter/CMakeFiles/CsvExporter.dir/build: Build/bin/CsvExporter
.PHONY : CsvExporter/CMakeFiles/CsvExporter.dir/build

CsvExporter/CMakeFiles/CsvExporter.dir/clean:
	cd /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter && $(CMAKE_COMMAND) -P CMakeFiles/CsvExporter.dir/cmake_clean.cmake
.PHONY : CsvExporter/CMakeFiles/CsvExporter.dir/clean

CsvExporter/CMakeFiles/CsvExporter.dir/depend:
	cd /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3 /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/CsvExporter /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter /mnt/e/Bern_temp/optimization/ex3/aopt-exercise3/build/CsvExporter/CMakeFiles/CsvExporter.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CsvExporter/CMakeFiles/CsvExporter.dir/depend

