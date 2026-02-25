cmake_minimum_required(VERSION 3.15)
project(keygen-cpp-crypto-license-files)

set(BIN_NAME "bin.out")

find_package(OpenSSL REQUIRED)
find_package(CURL REQUIRED)

# Collect all source files (implementation) and headers
file(GLOB_RECURSE ALL_SOURCES "include/*.cpp" "include/*.c" "include/**/*.cpp" "include/**/*.c") 
include_directories(${CMAKE_SOURCE_DIR}/include)

set(CMAKE_CXX_STANDARD 17)

add_executable(${BIN_NAME} main.cpp ${ALL_SOURCES})
target_link_libraries(${BIN_NAME} OpenSSL::Crypto OpenSSL::SSL CURL::libcurl)