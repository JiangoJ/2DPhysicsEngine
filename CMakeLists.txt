cmake_minimum_required(VERSION 3.11)

project(PhysicsEngine)

set(CMAKE_CXX_STANDARD 11)

set(APP_DIR "${CMAKE_CURRENT_LIST_DIR}" CACHE PATH "Application directory")
# Generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Dependencies
set(RAYLIB_VERSION 4.2.0)
find_package(raylib ${RAYLIB_VERSION} QUIET) # QUIET or REQUIRED
if (NOT raylib_FOUND) # If there's none, fetch and build raylib
  include(FetchContent)
  FetchContent_Declare(
    raylib
    URL https://github.com/raysan5/raylib/archive/refs/tags/${RAYLIB_VERSION}.tar.gz
  )
  FetchContent_GetProperties(raylib)
  if (NOT raylib_POPULATED) # Have we downloaded raylib yet?
    set(FETCHCONTENT_QUIET NO)
    FetchContent_Populate(raylib)
    set(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE) # don't build the supplied examples
    add_subdirectory(${raylib_SOURCE_DIR} ${raylib_BINARY_DIR})
  endif()
endif()

add_executable(PhysicsEngine main.cpp ./Objects/Objects.h ./Objects/Shape.cpp ./Objects/Shape.h ./Objects/AABB.h ./Objects/AABB.cpp ./Objects/Vec2.cpp ./Objects/Vec2.h ./Objects/Circle.h ./Objects/Circle.cpp ./Objects/Random.h ./Objects/VectorTransform.h ./Objects/VectorTransform.cpp ./Physics/Physics.h ./Physics/Collisions.h ./Physics/Collisions.cpp)

target_link_libraries(PhysicsEngine raylib)
target_link_libraries(${PROJECT_NAME} "-framework IOKit")
target_link_libraries(${PROJECT_NAME} "-framework Cocoa")
target_link_libraries(${PROJECT_NAME} "-framework OpenGL")

