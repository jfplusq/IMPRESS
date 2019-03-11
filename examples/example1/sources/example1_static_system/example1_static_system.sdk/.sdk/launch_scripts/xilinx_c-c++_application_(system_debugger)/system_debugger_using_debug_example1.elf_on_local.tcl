connect -url tcp:127.0.0.1:3121
source /media/storage/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/examples/example1/sources/example1_static_system/example1_static_system.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6DC8BA"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6DC8BA" && level==0} -index 1
fpga -file /home/rafa/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/examples/example1/example1_build/BITSTREAMS/example1_build.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6DC8BA"} -index 0
loadhw -hw /media/storage/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/examples/example1/sources/example1_static_system/example1_static_system.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6DC8BA"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6DC8BA"} -index 0
dow /media/storage/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/examples/example1/sources/example1_static_system/example1_static_system.sdk/example1/Debug/example1.elf
configparams force-mem-access 0
bpadd -addr &main
