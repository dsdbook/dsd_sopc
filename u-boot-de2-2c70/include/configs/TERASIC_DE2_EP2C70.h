/*
 * (C) Copyright 2005, Psyent Corporation <www.psyent.com>
 * Scott McNutt <smcnutt@psyent.com>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

/* modify by dxzhang <dxzhang@ustc.edu>, for Terasic DE2 EP2C70 Board */

#ifndef __CONFIG_H
#define __CONFIG_H

//add by dxzhang
#include <nios2.h>
//end by dxzhang

/*------------------------------------------------------------------------
 * BOARD/CPU
 *----------------------------------------------------------------------*/
#define CONFIG_TERASIC_DE2_EP2C70	1	/* terasic DE2 ep2c35 board*/
#define CONFIG_SYS_CLK_FREQ	nasys_clock_freq	/*  core clk	*/

#define CFG_RESET_ADDR		CPU_RESET_ADDRESS	/* Hard-reset address	*/
#define CFG_EXCEPTION_ADDR	CPU_EXCEPT_ADDRESS	/* Exception entry point*/
#define CFG_NIOS_SYSID_BASE	na_sysid	/* System id address	*/
#define CONFIG_BOARD_EARLY_INIT_F 1	/* enable early board-spec. init*/

/*------------------------------------------------------------------------
 * CACHE -- the following will support II/s and II/f. The II/s does not
 * have dcache, so the cache instructions will behave as NOPs.
 *----------------------------------------------------------------------*/
#define CFG_ICACHE_SIZE		nasys_icache_size		/* 4 KByte total	*/
#define CFG_ICACHELINE_SIZE	nasys_icache_line_size		/* 32 bytes/line	*/
#define CFG_DCACHE_SIZE		nasys_dcache_size		/* 2 KByte (II/f)	*/
#define CFG_DCACHELINE_SIZE	nasys_dcache_line_size		/* 4 bytes/line (II/f)	*/

/*------------------------------------------------------------------------
 * MEMORY BASE ADDRESSES
 *----------------------------------------------------------------------*/
#define CFG_FLASH_BASE		na_cfi_flash	/* FLASH base addr	*/
#define CFG_FLASH_SIZE		na_cfi_flash_size /* 8 MByte		*/
#define CFG_SDRAM_BASE		nasys_program_mem /* SDRAM base addr	*/
#define CFG_SDRAM_SIZE		nasys_program_mem_size /* 32 MByte	*/

/*dxzhang:   SRAM's name  need to modify by nios2_system.h*/
//#define CFG_SRAM_BASE		na_ssram	/* SRAM base addr	*/
//define CFG_SRAM_SIZE		na_ssram_size	/**/

/*------------------------------------------------------------------------
 * MEMORY ORGANIZATION
 *	-Monitor at top.
 *	-The heap is placed below the monitor.
 *	-Global data is placed below the heap.
 *	-The stack is placed below global data (&grows down).
 *----------------------------------------------------------------------*/
#define CFG_MONITOR_LEN		(256 * 1024)	/* Reserve 128k		*/
#define CFG_GBL_DATA_SIZE	128		/* Global data size rsvd*/
#define CFG_MALLOC_LEN		(CFG_ENV_SIZE + 128*1024)

#define CFG_MONITOR_BASE	TEXT_BASE
#define CFG_MALLOC_BASE		(CFG_MONITOR_BASE - CFG_MALLOC_LEN)
#define CFG_GBL_DATA_OFFSET	(CFG_MALLOC_BASE - CFG_GBL_DATA_SIZE)
#define CFG_INIT_SP		CFG_GBL_DATA_OFFSET

/*------------------------------------------------------------------------
 * FLASH (S29GL064A90TFIR4) 16bit mode
 *----------------------------------------------------------------------*/

/* dxzhang : need to read flash  datasheet */
#define CFG_MAX_FLASH_SECT	135		/* Max # sects per bank */
#define CFG_MAX_FLASH_BANKS	1		/* Max # of flash banks */
#define CFG_FLASH_ERASE_TOUT	1024*16		/* Erase timeout (msec) */
#define CFG_FLASH_WRITE_TOUT	128*32		/* Write timeout (msec) */
//according to the output of Altera nios2-flash-programmer tool,
//dxzhang: use 8bit mode
#define CFG_FLASH_WORD_SIZE	unsigned short	/* flash word size	*/

/*------------------------------------------------------------------------
 * ENVIRONMENT -- Put environment in sector CFG_MONITOR_LEN above
 * CFG_RESET_ADDR, since we assume the monitor is stored at the
 * reset address, no? This will keep the environment in user region
 * of flash. NOTE: the monitor length must be multiple of sector size
 * (which is common practice).
 *----------------------------------------------------------------------*/
#define CFG_ENV_IS_IN_FLASH	1		/* Environment in flash */
#define CFG_ENV_SIZE		(64 * 1024)	/* 64 KByte (1 sector)	*/
#define CONFIG_ENV_OVERWRITE			/* Serial change Ok	*/
/* #define CFG_ENV_ADDR	(CFG_RESET_ADDR + CFG_MONITOR_LEN) */
/* add by dxzhang */
#define U_BOOT_BIN_MAX_SIZE	(64 * 1024 * 3)/* 64*3 K Bytes */
#define CFG_ENV_ADDR		(CFG_FLASH_BASE + U_BOOT_BIN_MAX_SIZE)


/*------------------------------------------------------------------------
 * CONSOLE
 *----------------------------------------------------------------------*/
#if defined(CONFIG_CONSOLE_JTAG)
#define CFG_NIOS_CONSOLE	na_jtag_uart	/* JTAG UART base addr	*/
#else
#define CFG_NIOS_CONSOLE	na_uart0	/* UART base addr	*/
#endif

#define CFG_NIOS_FIXEDBAUD	1		/* Baudrate is fixed	*/
#define CONFIG_BAUDRATE		115200		/* Initial baudrate	*/
#define CFG_BAUDRATE_TABLE	{115200}	/* It's fixed ;-)	*/

#define CFG_CONSOLE_INFO_QUIET	0	/* Suppress console info*/

/*------------------------------------------------------------------------
 * EPCS Device -- wne CFG_NIOS_EPCSBASE is defined code/commands for
 * epcs device access is enabled. The base address is the epcs
 * _register_ base address, NOT THE ADDRESS OF THE MEMORY BLOCK.
 * The register base is currently at offset 0x600 from the memory base.
 *----------------------------------------------------------------------*/
//#define CFG_NIOS_EPCSBASE	na_epcs_controller	/* EPCS register base	*/

/*------------------------------------------------------------------------
 * DEBUG
 *----------------------------------------------------------------------*/
#undef CONFIG_ROM_STUBS				/* Stubs not in ROM	*/

/*------------------------------------------------------------------------
 * TIMEBASE --
 *
 * The high res timer defaults to 1 msec. Since it includes the period
 * registers, we can slow it down to 10 msec using TMRCNT. If the default
 * period is acceptable, TMRCNT can be left undefined.
 *----------------------------------------------------------------------*/
#define CFG_NIOS_TMRBASE	na_timer0	/* Tick timer base addr */
#define CFG_NIOS_TMRIRQ		na_timer0_irq	/* Timer IRQ num	*/
#define CFG_NIOS_TMRMS		10		/* 10 msec per tick	*/
#define CFG_NIOS_TMRCNT (CFG_NIOS_TMRMS * (CONFIG_SYS_CLK_FREQ/1000))
#define CFG_HZ		(CONFIG_SYS_CLK_FREQ/(CFG_NIOS_TMRCNT + 1))

/*------------------------------------------------------------------------
 * STATUS LED -- Provides a simple blinking led. For Nios2 each board
 * must implement its own led routines -- leds are, after all,
 * board-specific, no?
 *----------------------------------------------------------------------*/
#define CFG_LEDPIO_ADDR		na_pio_red_led	/* LED PIO base addr	*/
//#define CONFIG_STATUS_LED			/* Enable status driver */

#define STATUS_LED_BIT		1		/* Bit-0 on PIO		*/
#define STATUS_LED_STATE	1		/* Blinking		*/
#define STATUS_LED_PERIOD	(500/CFG_NIOS_TMRMS) /* Every 500 msec	*/

/*------------------------------------------------------------------------
 * ETHERNET -- The header file for the SMC91111 driver hurts my eyes ...
 * and really doesn't need any additional clutter. So I choose the lazy
 * way out to avoid changes there -- define the base address to ensure
 * cache bypass so there's no need to monkey with inx/outx macros.
 *----------------------------------------------------------------------*/

//#define CONFIG_SMC91111_BASE	0x82110300	/* Base addr (bypass)	*/
//#define CONFIG_DRIVER_SMC91111		/* Using SMC91c111	*/
//#undef  CONFIG_SMC91111_EXT_PHY		/* Internal PHY		*/
//#define CONFIG_SMC_USE_32_BIT			/* 32-bit interface	*/


#define CONFIG_DRIVER_DM9000		1
#define CONFIG_DM9000_BASE		(na_DM9000A|0x80000000)
#define DM9000_IO			CONFIG_DM9000_BASE
#define DM9000_DATA			(CONFIG_DM9000_BASE+4)
/* #define CONFIG_DM9000_USE_8BIT */
#define CONFIG_DM9000_USE_16BIT 
/* #define CONFIG_DM9000_USE_32BIT */
 
#define CONFIG_ETHADDR		08:00:3e:26:0a:5b
#define CONFIG_NETMASK		255.255.255.0
#define CONFIG_IPADDR		192.168.5.21
#define CONFIG_SERVERIP		192.168.5.1

// dxzhang: for net debug; should use Makefile to define -DET_DEBUG
//#define ET_DEBUG

/*
 * BOOTP options
 */
#define CONFIG_BOOTP_BOOTFILESIZE
#define CONFIG_BOOTP_BOOTPATH
#define CONFIG_BOOTP_GATEWAY
#define CONFIG_BOOTP_HOSTNAME


/*
 * Command line configuration.
 */
//add by dxzhang
#define CONFIG_BZIP2
//end by dxzhang

#include <config_cmd_default.h>

#define CONFIG_AUTO_COMPLETE
#define CONFIG_CMD_DHCP
#define CONFIG_CMD_IRQ
#define CONFIG_CMD_PING
#define CONFIG_CMD_SAVES
#define CONFIG_CMD_PORTIO

#define CONFIG_CMD_RUN

//#undef CONFIG_CMD_AUTOSCRIPT
//#undef CONFIG_CMD_BOOTD
//#undef CONFIG_CMD_CONSOLE
//#undef CONFIG_CMD_FPGA
#undef CONFIG_CMD_IMLS
#undef CONFIG_CMD_ITEST
//#undef CONFIG_CMD_NFS
#undef CONFIG_CMD_SETGETDCR
#undef CONFIG_CMD_XIMG


/*------------------------------------------------------------------------
 * MISC
 *----------------------------------------------------------------------*/
#define CFG_LONGHELP				/* Provide extended help*/
#define CFG_PROMPT		"==> "		/* Command prompt	*/
#define CFG_CBSIZE		256		/* Console I/O buf size */
#define CFG_MAXARGS		16		/* Max command args	*/
#define CFG_BARGSIZE		CFG_CBSIZE	/* Boot arg buf size	*/
#define CFG_PBSIZE (CFG_CBSIZE+sizeof(CFG_PROMPT)+16) /* Print buf size */
#define CFG_LOAD_ADDR		CFG_SDRAM_BASE	/* Default load address */
#define CFG_MEMTEST_START	CFG_SDRAM_BASE	/* Start addr for test	*/
#define CFG_MEMTEST_END		CFG_INIT_SP - 0x00020000

#define CFG_HUSH_PARSER
#define CFG_PROMPT_HUSH_PS2	"> "

#endif	/* __CONFIG_H */
