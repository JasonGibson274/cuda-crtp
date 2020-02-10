cmake_minimum_required(VERSION 3.8)
set(CMAKE_CXX_STANDARD 11)

set(TARGET_NAME tests)

add_executable(${TARGET_NAME} test.cu)
