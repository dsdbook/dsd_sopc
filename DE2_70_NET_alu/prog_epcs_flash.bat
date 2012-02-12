sof2flash --epcs --input=DE2_70_NET.sof --output=epcs_0.flash
nios2-configure-sof DE2_70_NET.sof 
nios2-flash-programmer --epcs --base=0x09000000 epcs_0.flash