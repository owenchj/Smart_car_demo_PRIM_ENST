############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project -reset cfa_n
set_top cfa
add_files top.cpp
add_files top.h
add_files -tb test.cpp
add_files -tb test.jpg
open_solution -reset "solution1"
set_part {xc7z010clg400-1}
create_clock -period 40 -name default
csim_design
#csynth_design
#cosim_design
#export_design -format ip_catalog
