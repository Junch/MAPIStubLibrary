cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(Mapi LANGUAGES CXX)

include_directories(include)

add_library(MapiStubLibrary
  STATIC
    MapiStubLibrary.cpp
    StubUtils.cpp
)

add_executable(ExampleMapiConsoleApp example/ExampleMapiConsoleApp.cpp)

target_link_libraries(ExampleMapiConsoleApp MapiStubLibrary)
