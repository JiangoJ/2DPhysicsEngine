# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/justin/Documents/C++Coding/PhysicsEngine/app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/justin/Documents/C++Coding/PhysicsEngine/app/build

# Include any dependencies generated for this target.
include CMakeFiles/PhysicsEngine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PhysicsEngine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PhysicsEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PhysicsEngine.dir/flags.make

CMakeFiles/PhysicsEngine.dir/main.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/main.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/main.cpp
CMakeFiles/PhysicsEngine.dir/main.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PhysicsEngine.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/main.cpp.o -MF CMakeFiles/PhysicsEngine.dir/main.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/main.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/main.cpp

CMakeFiles/PhysicsEngine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/main.cpp > CMakeFiles/PhysicsEngine.dir/main.cpp.i

CMakeFiles/PhysicsEngine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/main.cpp -o CMakeFiles/PhysicsEngine.dir/main.cpp.s

CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Shape.cpp
CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o -MF CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Shape.cpp

CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Shape.cpp > CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.i

CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Shape.cpp -o CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.s

CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/AABB.cpp
CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o -MF CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/AABB.cpp

CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/AABB.cpp > CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.i

CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/AABB.cpp -o CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.s

CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Vec2.cpp
CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o -MF CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Vec2.cpp

CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Vec2.cpp > CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.i

CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Vec2.cpp -o CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.s

CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Circle.cpp
CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o -MF CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Circle.cpp

CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Circle.cpp > CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.i

CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/Circle.cpp -o CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.s

CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/VectorTransform.cpp
CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o -MF CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/VectorTransform.cpp

CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/VectorTransform.cpp > CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.i

CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/Objects/VectorTransform.cpp -o CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.s

CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o: CMakeFiles/PhysicsEngine.dir/flags.make
CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o: /Users/justin/Documents/C++Coding/PhysicsEngine/app/Physics/Collisions.cpp
CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o: CMakeFiles/PhysicsEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o -MF CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o.d -o CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o -c /Users/justin/Documents/C++Coding/PhysicsEngine/app/Physics/Collisions.cpp

CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/justin/Documents/C++Coding/PhysicsEngine/app/Physics/Collisions.cpp > CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.i

CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/justin/Documents/C++Coding/PhysicsEngine/app/Physics/Collisions.cpp -o CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.s

# Object files for target PhysicsEngine
PhysicsEngine_OBJECTS = \
"CMakeFiles/PhysicsEngine.dir/main.cpp.o" \
"CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o" \
"CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o" \
"CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o" \
"CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o" \
"CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o" \
"CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o"

# External object files for target PhysicsEngine
PhysicsEngine_EXTERNAL_OBJECTS =

PhysicsEngine: CMakeFiles/PhysicsEngine.dir/main.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/Objects/Shape.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/Objects/AABB.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/Objects/Vec2.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/Objects/Circle.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/Objects/VectorTransform.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/Physics/Collisions.cpp.o
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/build.make
PhysicsEngine: _deps/raylib-build/raylib/libraylib.a
PhysicsEngine: _deps/raylib-build/raylib/external/glfw/src/libglfw3.a
PhysicsEngine: CMakeFiles/PhysicsEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable PhysicsEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PhysicsEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PhysicsEngine.dir/build: PhysicsEngine
.PHONY : CMakeFiles/PhysicsEngine.dir/build

CMakeFiles/PhysicsEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PhysicsEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PhysicsEngine.dir/clean

CMakeFiles/PhysicsEngine.dir/depend:
	cd /Users/justin/Documents/C++Coding/PhysicsEngine/app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/justin/Documents/C++Coding/PhysicsEngine/app /Users/justin/Documents/C++Coding/PhysicsEngine/app /Users/justin/Documents/C++Coding/PhysicsEngine/app/build /Users/justin/Documents/C++Coding/PhysicsEngine/app/build /Users/justin/Documents/C++Coding/PhysicsEngine/app/build/CMakeFiles/PhysicsEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PhysicsEngine.dir/depend

