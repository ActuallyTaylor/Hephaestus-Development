# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = "/Users/zacharylineman/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/222.4345.21/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/zacharylineman/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/222.4345.21/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build

# Include any dependencies generated for this target.
include CMakeFiles/GameOfLife.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GameOfLife.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GameOfLife.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GameOfLife.dir/flags.make

CMakeFiles/GameOfLife.dir/main.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/main.cpp.o: ../main.cpp
CMakeFiles/GameOfLife.dir/main.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GameOfLife.dir/main.cpp.o"
	/Applications/Xcode-14.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/main.cpp.o -MF CMakeFiles/GameOfLife.dir/main.cpp.o.d -o CMakeFiles/GameOfLife.dir/main.cpp.o -c /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/main.cpp

CMakeFiles/GameOfLife.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/main.cpp.i"
	/Applications/Xcode-14.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/main.cpp > CMakeFiles/GameOfLife.dir/main.cpp.i

CMakeFiles/GameOfLife.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/main.cpp.s"
	/Applications/Xcode-14.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/main.cpp -o CMakeFiles/GameOfLife.dir/main.cpp.s

CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o: ../mainLevelScene.cpp
CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o"
	/Applications/Xcode-14.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o -MF CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o.d -o CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o -c /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/mainLevelScene.cpp

CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.i"
	/Applications/Xcode-14.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/mainLevelScene.cpp > CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.i

CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.s"
	/Applications/Xcode-14.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/mainLevelScene.cpp -o CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.s

# Object files for target GameOfLife
GameOfLife_OBJECTS = \
"CMakeFiles/GameOfLife.dir/main.cpp.o" \
"CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o"

# External object files for target GameOfLife
GameOfLife_EXTERNAL_OBJECTS =

GameOfLife: CMakeFiles/GameOfLife.dir/main.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/mainLevelScene.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/build.make
GameOfLife: Hephaestus/libHephaestusd.a
GameOfLife: /opt/homebrew/lib/libglfw.3.3.dylib
GameOfLife: /opt/homebrew/lib/libGLEW.2.2.0.dylib
GameOfLife: /opt/homebrew/lib/libfreetype.dylib
GameOfLife: CMakeFiles/GameOfLife.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable GameOfLife"
	"/Users/zacharylineman/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/222.4345.21/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E copy_directory /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/Resources /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GameOfLife.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GameOfLife.dir/build: GameOfLife
.PHONY : CMakeFiles/GameOfLife.dir/build

CMakeFiles/GameOfLife.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GameOfLife.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GameOfLife.dir/clean

CMakeFiles/GameOfLife.dir/depend:
	cd /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build /Users/zacharylineman/Developer/GitHub/Hephaestus/Games/GameOfLife/build/CMakeFiles/GameOfLife.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GameOfLife.dir/depend
