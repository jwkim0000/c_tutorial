cmake_minimum_required(VERSION 2.6)
project(hello-cmake C)

set(BINDIR	"/usr/bin")
set(AUTHOR_NAME	"z-wony")
add_definitions(-DBLOG_ADDRESS="z-wony.tistory.com")

include_directories(${CMAKE_SOURCE_DIR}/include)
file(GLOB SRCS src/*.c)

add_executable(${PROJECT_NAME} ${SRCS})

install(TARGETS ${PROJECT_NAME} DESTINATION ${BINDIR})

if(FONT_COLOR STREQUAL "RED")
	configure_file(${CMAKE_SOURCE_DIR}/tools/hello-configure-red.sh.in ${CMAKE_SOURCE_DIR}/hello-configure.sh)
elseif(FONT_COLOR STREQUAL "BLUE")
	configure_file(${CMAKE_SOURCE_DIR}/tools/hello-configure-blue.sh.in ${CMAKE_SOURCE_DIR}/hello-configure.sh)
else(FONT_COLOR STREQUAL "RED")
	configure_file(${CMAKE_SOURCE_DIR}/tools/hello-configure-green.sh.in ${CMAKE_SOURCE_DIR}/hello-configure.sh)
endif(FONT_COLOR STREQUAL "RED")

configure_file(${CMAKE_SOURCE_DIR}/include/test.h.in ${CMAKE_SOURCE_DIR}/include/test.h)

install(PROGRAMS hello-configure.sh DESTINATION ${BINDIR})
