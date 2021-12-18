cmake_minimum_required(VERSION 3.10)
project(ToiUuPhanMemNhung)

set(CMAKE_CXX_STANDARD 14)

#set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE "${CMAKE_COMMAND} -E time")
#set_property(TARGET my_target PROPERTY RULE_LAUNCH_COMPILE "${CMAKE_COMMAND} -E time")

add_executable(ToiUuPhanMemNhung main.cpp)

add_executable(bai1_goc.c)

add_executable(bai2_goc.c)

add_executable(bai3_goc.c)
target_link_libraries(bai3_goc m)

add_executable(bai4_goc.c)
target_link_libraries(bai4_goc m)

add_executable(bai5_goc.c)
target_link_libraries(bai5_goc m)

add_executable(bai6_goc.c)
target_link_libraries(bai6_goc m)

add_executable(bai7_goc bai7_goc.c)

add_executable(bai8_goc bai8_goc.c)

add_executable(bai9_goc bai9_goc.c)
target_link_libraries(bai9_goc m)

add_executable(bai10_goc bai10_goc.c)
target_link_libraries(bai10_goc m)


add_executable(bai1_toiuu.c)

add_executable(bai2_toiuu.c)

add_executable(bai3_toiuu.c)
target_link_libraries(bai3_toiuu m)

add_executable(bai4_toiuu.c)
target_link_libraries(bai4_toiuu m)

add_executable(bai5_toiuu.c)
target_link_libraries(bai5_toiuu m)

add_executable(bai6_toiuu.c)
target_link_libraries(bai6_toiuu m)

add_executable(bai7_toiuu bai7_toiuu.c)

add_executable(bai8_toiuu.c)

add_executable(bai9_toiuu bai9_toiuu.c)
target_link_libraries(bai9_toiuu m)


add_executable(bai10_toiuu bai10_toiuu.c)
target_link_libraries(bai10_toiuu m)

