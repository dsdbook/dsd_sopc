/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'DE2_70_SOPC'
 * SOPC Builder design path: ../../DE2_70_SOPC.sopcinfo
 *
 * Generated: Fri Feb 10 09:53:23 CST 2012
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x2000820
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x0
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 28
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x20
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 28
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x8800000


/*
 * DM9000A configuration
 *
 */

#define ALT_MODULE_CLASS_DM9000A DM9000A_IF
#define DM9000A_BASE 0x20010a8
#define DM9000A_IRQ 1
#define DM9000A_IRQ_INTERRUPT_CONTROLLER_ID 0
#define DM9000A_NAME "/dev/DM9000A"
#define DM9000A_SPAN 8
#define DM9000A_TYPE "DM9000A_IF"


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_CFI_FLASH
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_PLL
#define __ALTERA_AVALON_SYSID
#define __ALTERA_AVALON_TIMER
#define __ALTERA_AVALON_UART
#define __ALTERA_NIOS2
#define __DM9000A_IF


/*
 * System configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2"
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_NAME "cpu"
#define ALT_DEVICE_FAMILY "CYCLONEII"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/uart"
#define ALT_STDERR_BASE 0x2001040
#define ALT_STDERR_DEV uart
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_uart"
#define ALT_STDIN "/dev/uart"
#define ALT_STDIN_BASE 0x2001040
#define ALT_STDIN_DEV uart
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_uart"
#define ALT_STDOUT "/dev/uart"
#define ALT_STDOUT_BASE 0x2001040
#define ALT_STDOUT_DEV uart
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_uart"
#define ALT_SYSTEM_NAME "DE2_70_SOPC"


/*
 * altera_extended_hal_bsp configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * cfi_flash configuration
 *
 */

#define ALT_MODULE_CLASS_cfi_flash altera_avalon_cfi_flash
#define CFI_FLASH_BASE 0x8800000
#define CFI_FLASH_HOLD_VALUE 0
#define CFI_FLASH_IRQ -1
#define CFI_FLASH_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CFI_FLASH_NAME "/dev/cfi_flash"
#define CFI_FLASH_SETUP_VALUE 0
#define CFI_FLASH_SIZE 8388608u
#define CFI_FLASH_SPAN 8388608
#define CFI_FLASH_TIMING_UNITS "ns"
#define CFI_FLASH_TYPE "altera_avalon_cfi_flash"
#define CFI_FLASH_WAIT_VALUE 100


/*
 * pll configuration
 *
 */

#define ALT_MODULE_CLASS_pll altera_avalon_pll
#define PLL_ARESET "None"
#define PLL_BASE 0x2001060
#define PLL_CONFIGUPDATE "None"
#define PLL_IRQ -1
#define PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PLL_LOCKED "None"
#define PLL_NAME "/dev/pll"
#define PLL_PFDENA "None"
#define PLL_PHASECOUNTERSELECT "None"
#define PLL_PHASEDONE "None"
#define PLL_PHASESTEP "None"
#define PLL_PHASEUPDOWN "None"
#define PLL_PLLENA "None"
#define PLL_SCANACLR "None"
#define PLL_SCANCLK "None"
#define PLL_SCANCLKENA "None"
#define PLL_SCANDATA "None"
#define PLL_SCANDATAOUT "None"
#define PLL_SCANDONE "None"
#define PLL_SCANREAD "None"
#define PLL_SCANWRITE "None"
#define PLL_SPAN 32
#define PLL_TYPE "altera_avalon_pll"


/*
 * sdram_u1 configuration
 *
 */

#define ALT_MODULE_CLASS_sdram_u1 altera_avalon_new_sdram_controller
#define SDRAM_U1_BASE 0x0
#define SDRAM_U1_CAS_LATENCY 3
#define SDRAM_U1_CONTENTS_INFO ""
#define SDRAM_U1_INIT_NOP_DELAY 0.0
#define SDRAM_U1_INIT_REFRESH_COMMANDS 2
#define SDRAM_U1_IRQ -1
#define SDRAM_U1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_U1_IS_INITIALIZED 1
#define SDRAM_U1_NAME "/dev/sdram_u1"
#define SDRAM_U1_POWERUP_DELAY 200.0
#define SDRAM_U1_REFRESH_PERIOD 7.8125
#define SDRAM_U1_REGISTER_DATA_IN 1
#define SDRAM_U1_SDRAM_ADDR_WIDTH 24
#define SDRAM_U1_SDRAM_BANK_WIDTH 2
#define SDRAM_U1_SDRAM_COL_WIDTH 9
#define SDRAM_U1_SDRAM_DATA_WIDTH 16
#define SDRAM_U1_SDRAM_NUM_BANKS 4
#define SDRAM_U1_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_U1_SDRAM_ROW_WIDTH 13
#define SDRAM_U1_SHARED_DATA 0
#define SDRAM_U1_SIM_MODEL_BASE 1
#define SDRAM_U1_SPAN 33554432
#define SDRAM_U1_STARVATION_INDICATOR 0
#define SDRAM_U1_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_U1_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_U1_T_AC 5.5
#define SDRAM_U1_T_MRD 3
#define SDRAM_U1_T_RCD 20.0
#define SDRAM_U1_T_RFC 70.0
#define SDRAM_U1_T_RP 20.0
#define SDRAM_U1_T_WR 14.0


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid
#define SYSID_BASE 0x20010a0
#define SYSID_ID 1427312579u
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1328803708u
#define SYSID_TYPE "altera_avalon_sysid"


/*
 * timer configuration
 *
 */

#define ALT_MODULE_CLASS_timer altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0x2001080
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 100000000u
#define TIMER_IRQ 2
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 99999ULL
#define TIMER_MULT 0.0010
#define TIMER_NAME "/dev/timer"
#define TIMER_PERIOD 1
#define TIMER_PERIOD_UNITS "ms"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 1000u
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"


/*
 * timer_stamp configuration
 *
 */

#define ALT_MODULE_CLASS_timer_stamp altera_avalon_timer
#define TIMER_STAMP_ALWAYS_RUN 0
#define TIMER_STAMP_BASE 0x2001000
#define TIMER_STAMP_COUNTER_SIZE 64
#define TIMER_STAMP_FIXED_PERIOD 0
#define TIMER_STAMP_FREQ 100000000u
#define TIMER_STAMP_IRQ 3
#define TIMER_STAMP_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_STAMP_LOAD_VALUE 99999ULL
#define TIMER_STAMP_MULT 0.0010
#define TIMER_STAMP_NAME "/dev/timer_stamp"
#define TIMER_STAMP_PERIOD 1
#define TIMER_STAMP_PERIOD_UNITS "ms"
#define TIMER_STAMP_RESET_OUTPUT 0
#define TIMER_STAMP_SNAPSHOT 1
#define TIMER_STAMP_SPAN 64
#define TIMER_STAMP_TICKS_PER_SEC 1000u
#define TIMER_STAMP_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_STAMP_TYPE "altera_avalon_timer"


/*
 * uart configuration
 *
 */

#define ALT_MODULE_CLASS_uart altera_avalon_uart
#define UART_BASE 0x2001040
#define UART_BAUD 115200
#define UART_DATA_BITS 8
#define UART_FIXED_BAUD 1
#define UART_FREQ 100000000u
#define UART_IRQ 4
#define UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define UART_NAME "/dev/uart"
#define UART_PARITY 'N'
#define UART_SIM_CHAR_STREAM ""
#define UART_SIM_TRUE_BAUD 0
#define UART_SPAN 32
#define UART_STOP_BITS 1
#define UART_SYNC_REG_DEPTH 2
#define UART_TYPE "altera_avalon_uart"
#define UART_USE_CTS_RTS 1
#define UART_USE_EOP_REGISTER 0

#endif /* __SYSTEM_H_ */
