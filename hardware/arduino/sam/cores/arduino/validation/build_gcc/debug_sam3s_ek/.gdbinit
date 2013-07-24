
#*************************************************
#
# Connect to J-Link and debug application in flash on Cortex-M3
#
# Download to flash is performed.
#
# Connect to the J-Link gdb server
target remote localhost:2331
monitor speed 1000
monitor flash device = AT91SAM3S4B
file test_gcc_dbg.elf
#
# Initializing PC and stack pointer
monitor reg r13 = (0x00000000)
monitor reg pc = (0x00000004)
break main
layout split
