project(fastcoll)
cmake_minimum_required(VERSION 2.6.2)
set(fastcoll_SOURCES
	block0.cpp
	block1.cpp
	block1stevens00.cpp
	block1stevens01.cpp
	block1stevens10.cpp
	block1stevens11.cpp
	block1wang.cpp
	main.cpp
	main.hpp
	md5.cpp)
add_executable(fastcoll ${fastcoll_SOURCES})
target_link_libraries(fastcoll boost_system-mt boost_filesystem-mt boost_program_options-mt)