# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kylestewart/Projects/algo-study

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kylestewart/Projects/algo-study/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/algos.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/algos.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/algos.dir/flags.make

lib/CMakeFiles/algos.dir/BST.cpp.o: lib/CMakeFiles/algos.dir/flags.make
lib/CMakeFiles/algos.dir/BST.cpp.o: ../lib/BST.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kylestewart/Projects/algo-study/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/algos.dir/BST.cpp.o"
	cd /Users/kylestewart/Projects/algo-study/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algos.dir/BST.cpp.o -c /Users/kylestewart/Projects/algo-study/lib/BST.cpp

lib/CMakeFiles/algos.dir/BST.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algos.dir/BST.cpp.i"
	cd /Users/kylestewart/Projects/algo-study/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kylestewart/Projects/algo-study/lib/BST.cpp > CMakeFiles/algos.dir/BST.cpp.i

lib/CMakeFiles/algos.dir/BST.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algos.dir/BST.cpp.s"
	cd /Users/kylestewart/Projects/algo-study/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kylestewart/Projects/algo-study/lib/BST.cpp -o CMakeFiles/algos.dir/BST.cpp.s

# Object files for target algos
algos_OBJECTS = \
"CMakeFiles/algos.dir/BST.cpp.o"

# External object files for target algos
algos_EXTERNAL_OBJECTS =

lib/libalgos.a: lib/CMakeFiles/algos.dir/BST.cpp.o
lib/libalgos.a: lib/CMakeFiles/algos.dir/build.make
lib/libalgos.a: lib/CMakeFiles/algos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kylestewart/Projects/algo-study/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libalgos.a"
	cd /Users/kylestewart/Projects/algo-study/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/algos.dir/cmake_clean_target.cmake
	cd /Users/kylestewart/Projects/algo-study/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/algos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/algos.dir/build: lib/libalgos.a

.PHONY : lib/CMakeFiles/algos.dir/build

lib/CMakeFiles/algos.dir/clean:
	cd /Users/kylestewart/Projects/algo-study/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/algos.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/algos.dir/clean

lib/CMakeFiles/algos.dir/depend:
	cd /Users/kylestewart/Projects/algo-study/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kylestewart/Projects/algo-study /Users/kylestewart/Projects/algo-study/lib /Users/kylestewart/Projects/algo-study/build /Users/kylestewart/Projects/algo-study/build/lib /Users/kylestewart/Projects/algo-study/build/lib/CMakeFiles/algos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/algos.dir/depend

