elf2flash --input=zImage --output=cfi_flash_0.flash --boot=$SOPC_KIT_NIOS2/components/altera_nios2/boot_loader_cfi.srec --base=0x08800000 --end=0x09000000 --reset=0x08800000
nios2-configure-sof DE2_70_NET.sof 
nios2-flash-programmer.exe cfi_flash_0.flash --base=0x08800000