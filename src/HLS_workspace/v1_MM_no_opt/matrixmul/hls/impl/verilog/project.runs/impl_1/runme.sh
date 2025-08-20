#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/jam/xilinx/Vitis/2024.1/bin:/home/jam/xilinx/Vitis/2024.1/bin:/home/jam/xilinx/Vitis/2024.1/bin:/home/jam/xilinx/Vivado/2024.1/bin
else
  PATH=/home/jam/xilinx/Vitis/2024.1/bin:/home/jam/xilinx/Vitis/2024.1/bin:/home/jam/xilinx/Vitis/2024.1/bin:/home/jam/xilinx/Vivado/2024.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/v1_MM_no_opt/matrixmul/hls/impl/verilog/project.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log bd_0_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source bd_0_wrapper.tcl -notrace


