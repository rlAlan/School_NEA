# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alan/top_secret/cpp/NEA/School_NEA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alan/top_secret/cpp/NEA/School_NEA/build

# Include any dependencies generated for this target.
include CMakeFiles/School_NEA.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/School_NEA.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/School_NEA.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/School_NEA.dir/flags.make

CMakeFiles/School_NEA.dir/src/main.cpp.o: CMakeFiles/School_NEA.dir/flags.make
CMakeFiles/School_NEA.dir/src/main.cpp.o: /home/alan/top_secret/cpp/NEA/School_NEA/src/main.cpp
CMakeFiles/School_NEA.dir/src/main.cpp.o: CMakeFiles/School_NEA.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alan/top_secret/cpp/NEA/School_NEA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/School_NEA.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/School_NEA.dir/src/main.cpp.o -MF CMakeFiles/School_NEA.dir/src/main.cpp.o.d -o CMakeFiles/School_NEA.dir/src/main.cpp.o -c /home/alan/top_secret/cpp/NEA/School_NEA/src/main.cpp

CMakeFiles/School_NEA.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/School_NEA.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alan/top_secret/cpp/NEA/School_NEA/src/main.cpp > CMakeFiles/School_NEA.dir/src/main.cpp.i

CMakeFiles/School_NEA.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/School_NEA.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alan/top_secret/cpp/NEA/School_NEA/src/main.cpp -o CMakeFiles/School_NEA.dir/src/main.cpp.s

CMakeFiles/School_NEA.dir/src/App.cpp.o: CMakeFiles/School_NEA.dir/flags.make
CMakeFiles/School_NEA.dir/src/App.cpp.o: /home/alan/top_secret/cpp/NEA/School_NEA/src/App.cpp
CMakeFiles/School_NEA.dir/src/App.cpp.o: CMakeFiles/School_NEA.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alan/top_secret/cpp/NEA/School_NEA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/School_NEA.dir/src/App.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/School_NEA.dir/src/App.cpp.o -MF CMakeFiles/School_NEA.dir/src/App.cpp.o.d -o CMakeFiles/School_NEA.dir/src/App.cpp.o -c /home/alan/top_secret/cpp/NEA/School_NEA/src/App.cpp

CMakeFiles/School_NEA.dir/src/App.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/School_NEA.dir/src/App.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alan/top_secret/cpp/NEA/School_NEA/src/App.cpp > CMakeFiles/School_NEA.dir/src/App.cpp.i

CMakeFiles/School_NEA.dir/src/App.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/School_NEA.dir/src/App.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alan/top_secret/cpp/NEA/School_NEA/src/App.cpp -o CMakeFiles/School_NEA.dir/src/App.cpp.s

# Object files for target School_NEA
School_NEA_OBJECTS = \
"CMakeFiles/School_NEA.dir/src/main.cpp.o" \
"CMakeFiles/School_NEA.dir/src/App.cpp.o"

# External object files for target School_NEA
School_NEA_EXTERNAL_OBJECTS =

School_NEA: CMakeFiles/School_NEA.dir/src/main.cpp.o
School_NEA: CMakeFiles/School_NEA.dir/src/App.cpp.o
School_NEA: CMakeFiles/School_NEA.dir/build.make
School_NEA: /usr/local/lib/libsfml-graphics.so.2.5.1
School_NEA: /usr/local/lib/libsfml-window.so.2.5.1
School_NEA: /usr/local/lib/libsfml-system.so.2.5.1
School_NEA: CMakeFiles/School_NEA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alan/top_secret/cpp/NEA/School_NEA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable School_NEA"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/School_NEA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/School_NEA.dir/build: School_NEA
.PHONY : CMakeFiles/School_NEA.dir/build

CMakeFiles/School_NEA.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/School_NEA.dir/cmake_clean.cmake
.PHONY : CMakeFiles/School_NEA.dir/clean

CMakeFiles/School_NEA.dir/depend:
	cd /home/alan/top_secret/cpp/NEA/School_NEA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alan/top_secret/cpp/NEA/School_NEA /home/alan/top_secret/cpp/NEA/School_NEA /home/alan/top_secret/cpp/NEA/School_NEA/build /home/alan/top_secret/cpp/NEA/School_NEA/build /home/alan/top_secret/cpp/NEA/School_NEA/build/CMakeFiles/School_NEA.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/School_NEA.dir/depend

