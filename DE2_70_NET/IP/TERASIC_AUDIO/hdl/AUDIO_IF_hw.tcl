# TCL File Generated by Component Editor 7.2 on:
# Fri Oct 05 17:43:25 CST 2007
# DO NOT MODIFY

set_source_file "AUDIO_IF.v"
set_module "AUDIO_IF"
set_module_description ""
set_module_property "author" "Richard Chang"
set_module_property "editable" "true"
set_module_property "group" "Terasic Technologies Inc."
set_module_property "instantiateInSystemModule" "true"
set_module_property "version" "1.0"

# Module parameters

# Interface s1_clock
add_interface "s1_clock" "clock" "sink" "asynchronous"
# Ports in interface s1_clock
add_port_to_interface "s1_clock" "avs_s1_clk" "clk"
add_port_to_interface "s1_clock" "avs_s1_reset" "reset"

# Interface s1
add_interface "s1" "avalon" "slave" "s1_clock"
set_interface_property "s1" "isNonVolatileStorage" "false"
set_interface_property "s1" "burstOnBurstBoundariesOnly" "false"
set_interface_property "s1" "readLatency" "0"
set_interface_property "s1" "readWaitStates" "0"
set_interface_property "s1" "holdTime" "0"
set_interface_property "s1" "printableDevice" "false"
set_interface_property "s1" "readWaitTime" "0"
set_interface_property "s1" "setupTime" "0"
set_interface_property "s1" "addressAlignment" "NATIVE"
set_interface_property "s1" "writeWaitTime" "0"
set_interface_property "s1" "timingUnits" "Cycles"
set_interface_property "s1" "minimumUninterruptedRunLength" "1"
set_interface_property "s1" "isMemoryDevice" "false"
set_interface_property "s1" "linewrapBursts" "false"
set_interface_property "s1" "maximumPendingReadTransactions" "0"
# Ports in interface s1
add_port_to_interface "s1" "avs_s1_address" "address"
add_port_to_interface "s1" "avs_s1_read" "read"
add_port_to_interface "s1" "avs_s1_readdata" "readdata"
add_port_to_interface "s1" "avs_s1_write" "write"
add_port_to_interface "s1" "avs_s1_writedata" "writedata"

# Interface s1_export
add_interface "s1_export" "conduit" "start" "s1_clock"
# Ports in interface s1_export
add_port_to_interface "s1_export" "avs_s1_export_BCLK" "export"
add_port_to_interface "s1_export" "avs_s1_export_DACLRC" "export"
add_port_to_interface "s1_export" "avs_s1_export_DACDAT" "export"
add_port_to_interface "s1_export" "avs_s1_export_ADCLRC" "export"
add_port_to_interface "s1_export" "avs_s1_export_ADCDAT" "export"