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
CMAKE_SOURCE_DIR = /home/yyy/Desktop/CppClasses/Lab5/MyList4Students

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yyy/Desktop/CppClasses/Lab5/MyList4Students

# Include any dependencies generated for this target.
include CMakeFiles/MyList.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MyList.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyList.dir/flags.make

CMakeFiles/MyList.dir/src/MyListTests.cpp.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/MyListTests.cpp.o: src/MyListTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyList.dir/src/MyListTests.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/MyListTests.cpp.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/MyListTests.cpp

CMakeFiles/MyList.dir/src/MyListTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/MyListTests.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/MyListTests.cpp > CMakeFiles/MyList.dir/src/MyListTests.cpp.i

CMakeFiles/MyList.dir/src/MyListTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/MyListTests.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/MyListTests.cpp -o CMakeFiles/MyList.dir/src/MyListTests.cpp.s

CMakeFiles/MyList.dir/src/MyListTests.cpp.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/MyListTests.cpp.o.requires

CMakeFiles/MyList.dir/src/MyListTests.cpp.o.provides: CMakeFiles/MyList.dir/src/MyListTests.cpp.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/MyListTests.cpp.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/MyListTests.cpp.o.provides

CMakeFiles/MyList.dir/src/MyListTests.cpp.o.provides.build: CMakeFiles/MyList.dir/src/MyListTests.cpp.o


CMakeFiles/MyList.dir/src/MySortTests.cpp.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/MySortTests.cpp.o: src/MySortTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyList.dir/src/MySortTests.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/MySortTests.cpp.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/MySortTests.cpp

CMakeFiles/MyList.dir/src/MySortTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/MySortTests.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/MySortTests.cpp > CMakeFiles/MyList.dir/src/MySortTests.cpp.i

CMakeFiles/MyList.dir/src/MySortTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/MySortTests.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/MySortTests.cpp -o CMakeFiles/MyList.dir/src/MySortTests.cpp.s

CMakeFiles/MyList.dir/src/MySortTests.cpp.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/MySortTests.cpp.o.requires

CMakeFiles/MyList.dir/src/MySortTests.cpp.o.provides: CMakeFiles/MyList.dir/src/MySortTests.cpp.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/MySortTests.cpp.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/MySortTests.cpp.o.provides

CMakeFiles/MyList.dir/src/MySortTests.cpp.o.provides.build: CMakeFiles/MyList.dir/src/MySortTests.cpp.o


CMakeFiles/MyList.dir/src/main.cpp.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MyList.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/main.cpp.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/main.cpp

CMakeFiles/MyList.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/main.cpp > CMakeFiles/MyList.dir/src/main.cpp.i

CMakeFiles/MyList.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/main.cpp -o CMakeFiles/MyList.dir/src/main.cpp.s

CMakeFiles/MyList.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/main.cpp.o.requires

CMakeFiles/MyList.dir/src/main.cpp.o.provides: CMakeFiles/MyList.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/main.cpp.o.provides

CMakeFiles/MyList.dir/src/main.cpp.o.provides.build: CMakeFiles/MyList.dir/src/main.cpp.o


CMakeFiles/MyList.dir/src/mySorting.cpp.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/mySorting.cpp.o: src/mySorting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MyList.dir/src/mySorting.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/mySorting.cpp.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/mySorting.cpp

CMakeFiles/MyList.dir/src/mySorting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/mySorting.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/mySorting.cpp > CMakeFiles/MyList.dir/src/mySorting.cpp.i

CMakeFiles/MyList.dir/src/mySorting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/mySorting.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/mySorting.cpp -o CMakeFiles/MyList.dir/src/mySorting.cpp.s

CMakeFiles/MyList.dir/src/mySorting.cpp.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/mySorting.cpp.o.requires

CMakeFiles/MyList.dir/src/mySorting.cpp.o.provides: CMakeFiles/MyList.dir/src/mySorting.cpp.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/mySorting.cpp.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/mySorting.cpp.o.provides

CMakeFiles/MyList.dir/src/mySorting.cpp.o.provides.build: CMakeFiles/MyList.dir/src/mySorting.cpp.o


CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o: src/utils/memoryManagement.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/memoryManagement.cpp

CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/memoryManagement.cpp > CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.i

CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/memoryManagement.cpp -o CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.s

CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.requires

CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.provides: CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.provides

CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.provides.build: CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o


CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o: src/utils/argumentParsing.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/argumentParsing.cc

CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/argumentParsing.cc > CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.i

CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/argumentParsing.cc -o CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.s

CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.requires

CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.provides: CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.provides

CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.provides.build: CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o


CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o: CMakeFiles/MyList.dir/flags.make
CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o: src/utils/programmersDetails.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o -c /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/programmersDetails.cc

CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/programmersDetails.cc > CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.i

CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/src/utils/programmersDetails.cc -o CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.s

CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.requires:

.PHONY : CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.requires

CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.provides: CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.requires
	$(MAKE) -f CMakeFiles/MyList.dir/build.make CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.provides.build
.PHONY : CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.provides

CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.provides.build: CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o


# Object files for target MyList
MyList_OBJECTS = \
"CMakeFiles/MyList.dir/src/MyListTests.cpp.o" \
"CMakeFiles/MyList.dir/src/MySortTests.cpp.o" \
"CMakeFiles/MyList.dir/src/main.cpp.o" \
"CMakeFiles/MyList.dir/src/mySorting.cpp.o" \
"CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o" \
"CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o" \
"CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o"

# External object files for target MyList
MyList_EXTERNAL_OBJECTS =

bin/MyList: CMakeFiles/MyList.dir/src/MyListTests.cpp.o
bin/MyList: CMakeFiles/MyList.dir/src/MySortTests.cpp.o
bin/MyList: CMakeFiles/MyList.dir/src/main.cpp.o
bin/MyList: CMakeFiles/MyList.dir/src/mySorting.cpp.o
bin/MyList: CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o
bin/MyList: CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o
bin/MyList: CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o
bin/MyList: CMakeFiles/MyList.dir/build.make
bin/MyList: CMakeFiles/MyList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable bin/MyList"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyList.dir/build: bin/MyList

.PHONY : CMakeFiles/MyList.dir/build

CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/MyListTests.cpp.o.requires
CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/MySortTests.cpp.o.requires
CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/main.cpp.o.requires
CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/mySorting.cpp.o.requires
CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/utils/memoryManagement.cpp.o.requires
CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/utils/argumentParsing.cc.o.requires
CMakeFiles/MyList.dir/requires: CMakeFiles/MyList.dir/src/utils/programmersDetails.cc.o.requires

.PHONY : CMakeFiles/MyList.dir/requires

CMakeFiles/MyList.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyList.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyList.dir/clean

CMakeFiles/MyList.dir/depend:
	cd /home/yyy/Desktop/CppClasses/Lab5/MyList4Students && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yyy/Desktop/CppClasses/Lab5/MyList4Students /home/yyy/Desktop/CppClasses/Lab5/MyList4Students /home/yyy/Desktop/CppClasses/Lab5/MyList4Students /home/yyy/Desktop/CppClasses/Lab5/MyList4Students /home/yyy/Desktop/CppClasses/Lab5/MyList4Students/CMakeFiles/MyList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyList.dir/depend

