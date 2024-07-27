cmake_minimum_required(VERSION 3.28)
project(cpp-modules-and-nix-demo)

set(CMAKE_C_EXTENSIONS OFF) 
set(CMAKE_CXX_EXTENSIONS OFF) 
cmake_policy(SET CMP0128 NEW)


set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION ON)

add_executable(demo)
target_sources(demo
	PRIVATE
	main.cxx

	PRIVATE
	FILE_SET CXX_MODULES FILES 
	lib.cxx
)
target_compile_features(demo PRIVATE cxx_std_20)

install(TARGETS demo)
