# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\doctor_prjs\mmWave\project_AWR_SPI\vitis_classic_AWR\HW_AWR_test\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\doctor_prjs\mmWave\project_AWR_SPI\vitis_classic_AWR\HW_AWR_test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {HW_AWR_test}\
-hw {D:\doctor_prjs\mmWave\project_AWR_SPI\design_A2.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/doctor_prjs/mmWave/project_AWR_SPI/vitis_classic_AWR}

platform write
platform generate -domains 
platform active {HW_AWR_test}
bsp reload
bsp setlib -name lwip213 -ver 1.1
bsp setlib -name xilflash -ver 4.10
bsp setlib -name xilffs -ver 5.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {HW_AWR_test}
bsp reload
platform generate
platform active {HW_AWR_test}
