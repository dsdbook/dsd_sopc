// --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	DE2_70 Nios II Reference Design 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
//   V1.1 :| Johnny FAN        :| 07/07/09  :| 1.change fpga device from 
//                                               ep2c70896c8 to ep2c70896c6
//											   2.change module name from DE2P_TOP
//                                               to DE2_70_TOP							 													
// --------------------------------------------------------------------

module DE2_70_NET
	(
		////////////////////	Clock Input	 	////////////////////	 
		iCLK_28,						//  28.63636 MHz
		iCLK_50,						//	50 MHz
		iCLK_50_2,						//	50 MHz
		iCLK_50_3,						//	50 MHz
		iCLK_50_4,						//	50 MHz
		iEXT_CLOCK,						//	External Clock
		////////////////////	Push Button		////////////////////
		iKEY,							//	Pushbutton[3:0]
		////////////////////	DPDT Switch		////////////////////
		iSW,							//	Toggle Switch[17:0]
		////////////////////	7-SEG Dispaly	////////////////////
		oHEX0_D,						//	Seven Segment Digit 0
		oHEX0_DP,						//  Seven Segment Digit 0 decimal point
		oHEX1_D,						//	Seven Segment Digit 1
		oHEX1_DP,						//  Seven Segment Digit 1 decimal point
		oHEX2_D,						//	Seven Segment Digit 2
		oHEX2_DP,						//  Seven Segment Digit 2 decimal point
		oHEX3_D,						//	Seven Segment Digit 3
		oHEX3_DP,						//  Seven Segment Digit 3 decimal point
		oHEX4_D,						//	Seven Segment Digit 4
		oHEX4_DP,						//  Seven Segment Digit 4 decimal point
		oHEX5_D,						//	Seven Segment Digit 5
		oHEX5_DP,						//  Seven Segment Digit 5 decimal point
		oHEX6_D,						//	Seven Segment Digit 6
		oHEX6_DP,						//  Seven Segment Digit 6 decimal point
		oHEX7_D,						//	Seven Segment Digit 7
		oHEX7_DP,						//  Seven Segment Digit 7 decimal point
		////////////////////////	LED		////////////////////////
		oLEDG,							//	LED Green[8:0]
		oLEDR,							//	LED Red[17:0]
		////////////////////////	UART	////////////////////////
		oUART_TXD,						//	UART Transmitter
		iUART_RXD,						//	UART Receiver
		oUART_CTS,          			//	UART Clear To Send
		iUART_RTS,          			//	UART Requst To Send
		////////////////////////	IRDA	////////////////////////
		oIRDA_TXD,						//	IRDA Transmitter
		iIRDA_RXD,						//	IRDA Receiver
		/////////////////////	SDRAM Interface		////////////////
		DRAM_DQ,						//	SDRAM Data bus 32 Bits
		oDRAM0_A,						//	SDRAM0 Address bus 12 Bits
		oDRAM1_A,						//	SDRAM1 Address bus 12 Bits
		oDRAM0_LDQM0,					//	SDRAM0 Low-byte Data Mask 
		oDRAM1_LDQM0,					//	SDRAM1 Low-byte Data Mask 
		oDRAM0_UDQM1,					//	SDRAM0 High-byte Data Mask
		oDRAM1_UDQM1,					//	SDRAM1 High-byte Data Mask
		oDRAM0_WE_N,					//	SDRAM0 Write Enable
		oDRAM1_WE_N,					//	SDRAM1 Write Enable
		oDRAM0_CAS_N,					//	SDRAM0 Column Address Strobe
		oDRAM1_CAS_N,					//	SDRAM1 Column Address Strobe
		oDRAM0_RAS_N,					//	SDRAM0 Row Address Strobe
		oDRAM1_RAS_N,					//	SDRAM1 Row Address Strobe
		oDRAM0_CS_N,					//	SDRAM0 Chip Select
		oDRAM1_CS_N,					//	SDRAM1 Chip Select
		oDRAM0_BA,						//	SDRAM0 Bank Address
		oDRAM1_BA,	 					//	SDRAM1 Bank Address
		oDRAM0_CLK,						//	SDRAM0 Clock
		oDRAM1_CLK,						//	SDRAM0 Clock
		oDRAM0_CKE,						//	SDRAM0 Clock Enable
		oDRAM1_CKE,						//	SDRAM1 Clock Enable
		////////////////////	Flash Interface		////////////////
		FLASH_DQ,						//	FLASH Data bus 15 Bits (0 to 14)
		FLASH_DQ15_AM1,					//  FLASH Data bus Bit 15 or Address A-1
		oFLASH_A,						//	FLASH Address bus 26 Bits
		oFLASH_WE_N,					//	FLASH Write Enable
		oFLASH_RST_N,					//	FLASH Reset
		oFLASH_WP_N,					//	FLASH Write Protect /Programming Acceleration 
		iFLASH_RY_N,					//	FLASH Ready/Busy output 
		oFLASH_BYTE_N,					//	FLASH Byte/Word Mode Configuration
		oFLASH_OE_N,					//	FLASH Output Enable
		oFLASH_CE_N,					//	FLASH Chip Enable
		////////////////////	SRAM Interface		////////////////
		SRAM_DQ,						//	SRAM Data Bus 32 Bits
		SRAM_DPA, 						//  SRAM Parity Data Bus
		oSRAM_A,						//	SRAM Address bus 22 Bits
		oSRAM_ADSC_N,       			//	SRAM Controller Address Status 	
		oSRAM_ADSP_N,                   //	SRAM Processor Address Status
		oSRAM_ADV_N,                    //	SRAM Burst Address Advance
		oSRAM_BE_N,                     //	SRAM Byte Write Enable
		oSRAM_CE1_N,        			//	SRAM Chip Enable
		oSRAM_CE2,          			//	SRAM Chip Enable
		oSRAM_CE3_N,        			//	SRAM Chip Enable
		oSRAM_CLK,                      //	SRAM Clock
		oSRAM_GW_N,         			//  SRAM Global Write Enable
		oSRAM_OE_N,         			//	SRAM Output Enable
		oSRAM_WE_N,         			//	SRAM Write Enable
		////////////////////	ISP1362 Interface	////////////////
		OTG_D,							//	ISP1362 Data bus 16 Bits
		oOTG_A,							//	ISP1362 Address 2 Bits
		oOTG_CS_N,						//	ISP1362 Chip Select
		oOTG_OE_N,						//	ISP1362 Read
		oOTG_WE_N,						//	ISP1362 Write
		oOTG_RESET_N,					//	ISP1362 Reset
		OTG_FSPEED,						//	USB Full Speed,	0 = Enable, Z = Disable
		OTG_LSPEED,						//	USB Low Speed, 	0 = Enable, Z = Disable
		iOTG_INT0,						//	ISP1362 Interrupt 0
		iOTG_INT1,						//	ISP1362 Interrupt 1
		iOTG_DREQ0,						//	ISP1362 DMA Request 0
		iOTG_DREQ1,						//	ISP1362 DMA Request 1
		oOTG_DACK0_N,					//	ISP1362 DMA Acknowledge 0
		oOTG_DACK1_N,					//	ISP1362 DMA Acknowledge 1
		////////////////////	LCD Module 16X2		////////////////
		oLCD_ON,						//	LCD Power ON/OFF
		oLCD_BLON,						//	LCD Back Light ON/OFF
		oLCD_RW,						//	LCD Read/Write Select, 0 = Write, 1 = Read
		oLCD_EN,						//	LCD Enable
		oLCD_RS,						//	LCD Command/Data Select, 0 = Command, 1 = Data
		LCD_D,						//	LCD Data bus 8 bits
		////////////////////	SD_Card Interface	////////////////
		SD_DAT,							//	SD Card Data
		SD_DAT3,						//	SD Card Data 3
		SD_CMD,							//	SD Card Command Signal
		oSD_CLK,						//	SD Card Clock
		////////////////////	I2C		////////////////////////////
		I2C_SDAT,						//	I2C Data
		oI2C_SCLK,						//	I2C Clock
		////////////////////	PS2		////////////////////////////
		PS2_KBDAT,						//	PS2 Keyboard Data
		PS2_KBCLK,						//	PS2 Keyboard Clock		
		PS2_MSDAT,						//	PS2 Mouse Data
		PS2_MSCLK,						//	PS2 Mouse Clock
		////////////////////	VGA		////////////////////////////
		oVGA_CLOCK,   					//	VGA Clock
		oVGA_HS,						//	VGA H_SYNC
		oVGA_VS,						//	VGA V_SYNC
		oVGA_BLANK_N,					//	VGA BLANK
		oVGA_SYNC_N,					//	VGA SYNC
		oVGA_R,   						//	VGA Red[9:0]
		oVGA_G,	 						//	VGA Green[9:0]
		oVGA_B,  						//	VGA Blue[9:0]
		////////////	Ethernet Interface	////////////////////////
		ENET_D,						//	DM9000A DATA bus 16Bits
		oENET_CMD,						//	DM9000A Command/Data Select, 0 = Command, 1 = Data
		oENET_CS_N,						//	DM9000A Chip Select
		oENET_IOW_N,					//	DM9000A Write
		oENET_IOR_N,					//	DM9000A Read
		oENET_RESET_N,					//	DM9000A Reset
		iENET_INT,						//	DM9000A Interrupt
		oENET_CLK,						//	DM9000A Clock 25 MHz
		////////////////	Audio CODEC		////////////////////////
		AUD_ADCLRCK,					//	Audio CODEC ADC LR Clock
		iAUD_ADCDAT,					//	Audio CODEC ADC Data
		AUD_DACLRCK,					//	Audio CODEC DAC LR Clock
		oAUD_DACDAT,					//	Audio CODEC DAC Data
		AUD_BCLK,						//	Audio CODEC Bit-Stream Clock
		oAUD_XCK,						//	Audio CODEC Chip Clock
		////////////////	TV Decoder		////////////////////////
		iTD1_CLK27,						//	TV Decoder1 Line_Lock Output Clock 
		iTD1_D,    					    //	TV Decoder1 Data bus 8 bits
		iTD1_HS,						//	TV Decoder1 H_SYNC
		iTD1_VS,						//	TV Decoder1 V_SYNC
		oTD1_RESET_N,					//	TV Decoder1 Reset
		iTD2_CLK27,						//	TV Decoder2 Line_Lock Output Clock 		
		iTD2_D,    					    //	TV Decoder2 Data bus 8 bits
		iTD2_HS,						//	TV Decoder2 H_SYNC
		iTD2_VS,						//	TV Decoder2 V_SYNC
		oTD2_RESET_N,					//	TV Decoder2 Reset
		////////////////////	GPIO	////////////////////////////
		GPIO_0,							//	GPIO Connection 0 I/O
		GPIO_CLKIN_N0,     				//	GPIO Connection 0 Clock Input 0
		GPIO_CLKIN_P0,          		//	GPIO Connection 0 Clock Input 1
		GPIO_CLKOUT_N0,     			//	GPIO Connection 0 Clock Output 0
		GPIO_CLKOUT_P0,                 //	GPIO Connection 0 Clock Output 1
		GPIO_1,							//	GPIO Connection 1 I/O
		GPIO_CLKIN_N1,                  //	GPIO Connection 1 Clock Input 0
		GPIO_CLKIN_P1,                  //	GPIO Connection 1 Clock Input 1
		GPIO_CLKOUT_N1,                 //	GPIO Connection 1 Clock Output 0
		GPIO_CLKOUT_P1                  //	GPIO Connection 1 Clock Output 1
	   
	);

//===========================================================================
// PARAMETER declarations
//===========================================================================


//===========================================================================
// PORT declarations
//===========================================================================
////////////////////////	Clock Input	 	////////////////////////
input			iCLK_28;				//  28.63636 MHz
input			iCLK_50;				//	50 MHz
input			iCLK_50_2;				//	50 MHz
input           iCLK_50_3;				//	50 MHz
input           iCLK_50_4;				//	50 MHz
input           iEXT_CLOCK;				//	External Clock
////////////////////////	Push Button		////////////////////////
input	[3:0]	iKEY;					//	Pushbutton[3:0]
////////////////////////	DPDT Switch		////////////////////////
input	[17:0]	iSW;					//	Toggle Switch[17:0]
////////////////////////	7-SEG Dispaly	////////////////////////
output	[6:0]	oHEX0_D;				//	Seven Segment Digit 0
output			oHEX0_DP;				//  Seven Segment Digit 0 decimal point
output	[6:0]	oHEX1_D;				//	Seven Segment Digit 1
output			oHEX1_DP;				//  Seven Segment Digit 1 decimal point
output	[6:0]	oHEX2_D;				//	Seven Segment Digit 2
output			oHEX2_DP;				//  Seven Segment Digit 2 decimal point
output	[6:0]	oHEX3_D;				//	Seven Segment Digit 3
output			oHEX3_DP;				//  Seven Segment Digit 3 decimal point
output	[6:0]	oHEX4_D;				//	Seven Segment Digit 4
output			oHEX4_DP;				//  Seven Segment Digit 4 decimal point
output	[6:0]	oHEX5_D;				//	Seven Segment Digit 5
output			oHEX5_DP;				//  Seven Segment Digit 5 decimal point
output	[6:0]	oHEX6_D;				//	Seven Segment Digit 6
output			oHEX6_DP;				//  Seven Segment Digit 6 decimal point
output	[6:0]	oHEX7_D;				//	Seven Segment Digit 7
output			oHEX7_DP;				//  Seven Segment Digit 7 decimal point
////////////////////////////	LED		////////////////////////////
output	[8:0]	oLEDG;					//	LED Green[8:0]
output	[17:0]	oLEDR;					//	LED Red[17:0]
////////////////////////////	UART	////////////////////////////
output			oUART_TXD;				//	UART Transmitter
input			iUART_RXD;				//	UART Receiver
output			oUART_CTS;          	//	UART Clear To Send
input			iUART_RTS;          	//	UART Requst To Send
////////////////////////////	IRDA	////////////////////////////
output			oIRDA_TXD;				//	IRDA Transmitter
input			iIRDA_RXD;				//	IRDA Receiver
///////////////////////		SDRAM Interface	////////////////////////
inout	[31:0]	DRAM_DQ;				//	SDRAM Data bus 32 Bits
output	[12:0]	oDRAM0_A;				//	SDRAM0 Address bus 12 Bits
output	[12:0]	oDRAM1_A;				//	SDRAM1 Address bus 12 Bits
output			oDRAM0_LDQM0;			//	SDRAM0 Low-byte Data Mask 
output			oDRAM1_LDQM0;			//	SDRAM1 Low-byte Data Mask 
output			oDRAM0_UDQM1;			//	SDRAM0 High-byte Data Mask
output			oDRAM1_UDQM1;			//	SDRAM1 High-byte Data Mask
output			oDRAM0_WE_N;			//	SDRAM0 Write Enable
output			oDRAM1_WE_N;			//	SDRAM1 Write Enable
output			oDRAM0_CAS_N;			//	SDRAM0 Column Address Strobe
output			oDRAM1_CAS_N;			//	SDRAM1 Column Address Strobe
output			oDRAM0_RAS_N;			//	SDRAM0 Row Address Strobe
output			oDRAM1_RAS_N;			//	SDRAM1 Row Address Strobe
output			oDRAM0_CS_N;			//	SDRAM0 Chip Select
output			oDRAM1_CS_N;			//	SDRAM1 Chip Select
output	[1:0]	oDRAM0_BA;				//	SDRAM0 Bank Address
output	[1:0]	oDRAM1_BA;		 		//	SDRAM1 Bank Address
output			oDRAM0_CLK;				//	SDRAM0 Clock
output			oDRAM1_CLK;				//	SDRAM0 Clock
output			oDRAM0_CKE;				//	SDRAM0 Clock Enable
output			oDRAM1_CKE;				//	SDRAM1 Clock Enable
////////////////////////	Flash Interface	////////////////////////
inout	[14:0]	FLASH_DQ;				//	FLASH Data bus 15 Bits (0 to 14)
inout			FLASH_DQ15_AM1;			//  FLASH Data bus Bit 15 or Address A-1
output	[25:0]	oFLASH_A;				//	FLASH Address bus 26 Bits
output			oFLASH_WE_N;			//	FLASH Write Enable
output			oFLASH_RST_N;			//	FLASH Reset
output			oFLASH_WP_N;			//	FLASH Write Protect /Programming Acceleration 
input			iFLASH_RY_N;			//	FLASH Ready/Busy output 
output			oFLASH_BYTE_N;			//	FLASH Byte/Word Mode Configuration
output			oFLASH_OE_N;			//	FLASH Output Enable
output			oFLASH_CE_N;			//	FLASH Chip Enable
////////////////////////	SRAM Interface	////////////////////////
inout	[31:0]	SRAM_DQ;				//	SRAM Data Bus 32 Bits
inout	[3:0]	SRAM_DPA; 				//  SRAM Parity Data Bus
output	[20:0]	oSRAM_A;				//	SRAM Address bus 21 Bits
output			oSRAM_ADSC_N;       	//	SRAM Controller Address Status 	
output			oSRAM_ADSP_N;           //	SRAM Processor Address Status
output			oSRAM_ADV_N;            //	SRAM Burst Address Advance
output	[3:0]	oSRAM_BE_N;             //	SRAM Byte Write Enable
output			oSRAM_CE1_N;        	//	SRAM Chip Enable
output			oSRAM_CE2;          	//	SRAM Chip Enable
output			oSRAM_CE3_N;        	//	SRAM Chip Enable
output			oSRAM_CLK;              //	SRAM Clock
output			oSRAM_GW_N;         	//  SRAM Global Write Enable
output			oSRAM_OE_N;         	//	SRAM Output Enable
output			oSRAM_WE_N;         	//	SRAM Write Enable
////////////////////	ISP1362 Interface	////////////////////////
inout	[15:0]	OTG_D;					//	ISP1362 Data bus 16 Bits
output	[1:0]	oOTG_A;					//	ISP1362 Address 2 Bits
output			oOTG_CS_N;				//	ISP1362 Chip Select
output			oOTG_OE_N;				//	ISP1362 Read
output			oOTG_WE_N;				//	ISP1362 Write
output			oOTG_RESET_N;			//	ISP1362 Reset
inout			OTG_FSPEED;				//	USB Full Speed,	0 = Enable, Z = Disable
inout			OTG_LSPEED;				//	USB Low Speed, 	0 = Enable, Z = Disable
input			iOTG_INT0;				//	ISP1362 Interrupt 0
input			iOTG_INT1;				//	ISP1362 Interrupt 1
input			iOTG_DREQ0;				//	ISP1362 DMA Request 0
input			iOTG_DREQ1;				//	ISP1362 DMA Request 1
output			oOTG_DACK0_N;			//	ISP1362 DMA Acknowledge 0
output			oOTG_DACK1_N;			//	ISP1362 DMA Acknowledge 1
////////////////////	LCD Module 16X2	////////////////////////////
inout	[7:0]	LCD_D;					//	LCD Data bus 8 bits
output			oLCD_ON;				//	LCD Power ON/OFF
output			oLCD_BLON;				//	LCD Back Light ON/OFF
output			oLCD_RW;				//	LCD Read/Write Select, 0 = Write, 1 = Read
output			oLCD_EN;				//	LCD Enable
output			oLCD_RS;				//	LCD Command/Data Select, 0 = Command, 1 = Data
////////////////////	SD Card Interface	////////////////////////
inout			SD_DAT;					//	SD Card Data
inout			SD_DAT3;				//	SD Card Data 3
inout			SD_CMD;					//	SD Card Command Signal
output			oSD_CLK;				//	SD Card Clock
////////////////////////	I2C		////////////////////////////////
inout			I2C_SDAT;				//	I2C Data
output			oI2C_SCLK;				//	I2C Clock
////////////////////	PS2		////////////////////////////
inout   		PS2_KBDAT;				//	PS2 Keyboard Data
inout		    PS2_KBCLK;				//	PS2 Keyboard Clock		
inout	    	PS2_MSDAT;				//	PS2 Mouse Data
inout   		PS2_MSCLK;				//	PS2 Mouse Clock
////////////////////////	VGA			////////////////////////////
output			oVGA_CLOCK;   			//	VGA Clock
output			oVGA_HS;				//	VGA H_SYNC
output			oVGA_VS;				//	VGA V_SYNC
output			oVGA_BLANK_N;			//	VGA BLANK
output			oVGA_SYNC_N;			//	VGA SYNC
output	[9:0]	oVGA_R;   				//	VGA Red[9:0]
output	[9:0]	oVGA_G;	 				//	VGA Green[9:0]
output	[9:0]	oVGA_B;   				//	VGA Blue[9:0]
////////////////	Ethernet Interface	////////////////////////////
inout	[15:0]	ENET_D;					//	DM9000A DATA bus 16Bits
output			oENET_CMD;				//	DM9000A Command/Data Select, 0 = Command, 1 = Data
output			oENET_CS_N;				//	DM9000A Chip Select
output			oENET_IOW_N;			//	DM9000A Write
output			oENET_IOR_N;			//	DM9000A Read
output			oENET_RESET_N;			//	DM9000A Reset
input			iENET_INT;				//	DM9000A Interrupt
output			oENET_CLK;				//	DM9000A Clock 25 MHz
////////////////////	Audio CODEC		////////////////////////////
inout			AUD_ADCLRCK;			//	Audio CODEC ADC LR Clock
input			iAUD_ADCDAT;			//	Audio CODEC ADC Data
inout			AUD_DACLRCK;			//	Audio CODEC DAC LR Clock
output			oAUD_DACDAT;			//	Audio CODEC DAC Data
inout			AUD_BCLK;				//	Audio CODEC Bit-Stream Clock
output			oAUD_XCK;				//	Audio CODEC Chip Clock
////////////////////	TV Devoder		////////////////////////////
input			iTD1_CLK27;				//	TV Decoder1 Line_Lock Output Clock 
input	[7:0]	iTD1_D;    				//	TV Decoder1 Data bus 8 bits
input			iTD1_HS;				//	TV Decoder1 H_SYNC
input			iTD1_VS;				//	TV Decoder1 V_SYNC
output			oTD1_RESET_N;			//	TV Decoder1 Reset
input			iTD2_CLK27;				//	TV Decoder2 Line_Lock Output Clock 		
input	[7:0]	iTD2_D;    				//	TV Decoder2 Data bus 8 bits
input			iTD2_HS;				//	TV Decoder2 H_SYNC
input			iTD2_VS;				//	TV Decoder2 V_SYNC
output			oTD2_RESET_N;			//	TV Decoder2 Reset

////////////////////////	GPIO	////////////////////////////////
inout	[31:0]	GPIO_0;					//	GPIO Connection 0 I/O
input			GPIO_CLKIN_N0;     		//	GPIO Connection 0 Clock Input 0
input			GPIO_CLKIN_P0;          //	GPIO Connection 0 Clock Input 1
output			GPIO_CLKOUT_N0;     	//	GPIO Connection 0 Clock Output 0
output			GPIO_CLKOUT_P0;         //	GPIO Connection 0 Clock Output 1
inout	[31:0]	GPIO_1;					//	GPIO Connection 1 I/O
input			GPIO_CLKIN_N1;          //	GPIO Connection 1 Clock Input 0
input			GPIO_CLKIN_P1;          //	GPIO Connection 1 Clock Input 1
output			GPIO_CLKOUT_N1;         //	GPIO Connection 1 Clock Output 0
output			GPIO_CLKOUT_P1;         //	GPIO Connection 1 Clock Output 1
///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================

//	All inout port turn to tri-state
assign	SD_DAT		=	1'bz;
assign	GPIO_0		=	32'hzzzzzzzzz;
assign	GPIO_1		=	32'hzzzzzzzzz;

//	Turn On TV Decoder
assign	oTD1_RESET_N	=	1'bz;
assign	oTD2_RESET_N	=	1'bz;
				
wire	CPU_RESET_N;

//	Flash
assign	FL_RST_N	=	1'b1;

//==========	16*2 LCD Module
assign	oLCD_ON		=	1'b1;	//	LCD ON
assign	oLCD_BLON	=	1'b1;	//	LCD Back Light	

//==========	All inout port turn to tri-state
assign	AUD_ADCLRCK	=	AUD_DACLRCK;

//	Disable USB speed select
assign	OTG_FSPEED	=	1'bz;
assign	OTG_LSPEED	=	1'bz;

//========== FLASH
 `define FLASH_WORD   // use  WORD mode of flash
`ifdef  FLASH_WORD
	wire 	FLASH_16BIT_IP_A0;
	assign	oFLASH_BYTE_N = 1'b1;			   //	FLASH Byte/Word Mode Configuration
`else
	assign	oFLASH_BYTE_N = 1'b0;			   //	FLASH Byte/Word Mode Configuration
`endif
assign oFLASH_RST_N = 1'b1;					   //	FLASH Reset
assign oFLASH_WP_N = 1'b1;					   //	FLASH Write Protect /Programming Acceleration 
//		iFLASH_RY_N,					       //	FLASH Ready/Busy output 

//========== SSRAM
assign	oSRAM_ADSP_N = 1'b1;                   //	SRAM Processor Address Status
assign	oSRAM_ADV_N = 1'b1;                    //	SRAM Burst Address Advance
assign	oSRAM_CE2 = ~oSRAM_CE1_N;//1'b1;       //	SRAM Chip Enable
assign	oSRAM_CE3_N = oSRAM_CE1_N;//1'b0;      //	SRAM Chip Enable
assign	 oSRAM_GW_N = 1'b1;         		   //   SRAM Global Write Enable
wire [1:0] SRAM_DUMMY_ADDR;                    //   used to ignore the A0/A1 pin from Cypress SSRAM IP core
assign  oSRAM_CLK = oDRAM0_CLK;

//======== video ========
wire	TV_Select;

//========== SDRAM
// the sdram is shahred with rtl and nios
assign	oDRAM1_CLK = oDRAM0_CLK;

//========== USB
assign	OTG_FSPEED	=	1'bz;						//	USB Full Speed,	0 = Enable, Z = Disable
assign	OTG_LSPEED	=	1'bz;						//	USB Low Speed, 	0 = Enable, Z = Disable

//========== Audio 
//wire 		CLK_18M324;
//assign  oAUD_XCK = ~CLK_18M324;

//======= NIOS CPU ======
wire		CPU_CLK;

//=============================================================================
// Structural coding
//=============================================================================

reg     iCLK_25;
always@(posedge iCLK_50)
    begin
        iCLK_25 <= ~iCLK_25;
    end

Reset_Delay	delay1	(.iRST(iKEY[0]),.iCLK(iCLK_50),.oRESET(CPU_RESET_N));

DE2_70_SOPC u1 (
                      // 1) global signals:
                       .clk_50(iCLK_50),
                       .pll_c0_system(CPU_CLK),
                       .pll_c1_memory(oDRAM0_CLK),
//                       .pll_c2_audio(oAUD_XCK),//CLK_18M324),
                       .reset_n(CPU_RESET_N),
                      .clk_25(iCLK_25),


                      // the_DM9000A_IF_0
                       .avs_s1_export_ENET_CLK_from_the_DM9000A(oENET_CLK),
                       .avs_s1_export_ENET_CMD_from_the_DM9000A(oENET_CMD),
                       .avs_s1_export_ENET_CS_N_from_the_DM9000A(oENET_CS_N),
                       .avs_s1_export_ENET_DATA_to_and_from_the_DM9000A(ENET_D),
                       .avs_s1_export_ENET_INT_to_the_DM9000A(iENET_INT),
                       .avs_s1_export_ENET_RD_N_from_the_DM9000A(oENET_IOR_N),
                       .avs_s1_export_ENET_RST_N_from_the_DM9000A(oENET_RESET_N),
                       .avs_s1_export_ENET_WR_N_from_the_DM9000A(oENET_IOW_N),

/*
                      // the_ISP1362
                       .avs_hc_export_OTG_ADDR_from_the_ISP1362(oOTG_A),
                       .avs_hc_export_OTG_CS_N_from_the_ISP1362(oOTG_CS_N),
                       .avs_hc_export_OTG_DATA_to_and_from_the_ISP1362(OTG_D),
                       .avs_hc_export_OTG_INT0_to_the_ISP1362(iOTG_INT0),
                       .avs_hc_export_OTG_RD_N_from_the_ISP1362(oOTG_OE_N),
                       .avs_hc_export_OTG_RST_N_from_the_ISP1362(oOTG_RESET_N),
                       .avs_hc_export_OTG_WR_N_from_the_ISP1362(oOTG_WE_N),
                       .avs_dc_export_OTG_INT1_to_the_ISP1362(iOTG_INT1),


                      // the_audio
                       .avs_s1_export_BCLK_to_the_AUDIO(AUD_BCLK),
                       .avs_s1_export_DACLRC_to_the_AUDIO(AUD_DACLRCK),
                       .avs_s1_export_DACDAT_from_the_AUDIO(oAUD_DACDAT),
                       .avs_s1_export_ADCLRC_to_the_AUDIO(AUD_ADCLRCK),
                       .avs_s1_export_ADCDAT_to_the_AUDIO(iAUD_ADCDAT),

                      // the_i2c_sclk
                       .out_port_from_the_i2c_sclk(oI2C_SCLK),

                      // the_i2c_sdat
                       .bidir_port_to_and_from_the_i2c_sdat(I2C_SDAT),

                      // the_lcd
                       .LCD_E_from_the_lcd(oLCD_EN),
                       .LCD_RS_from_the_lcd(oLCD_RS),
                       .LCD_RW_from_the_lcd(oLCD_RW),
                       .LCD_data_to_and_from_the_lcd(LCD_D),


                      // the_pio_button
                       .in_port_to_the_pio_button(iKEY),

                      // the_pio_green_led
                       .out_port_from_the_pio_green_led(oLEDG),

                      // the_pio_red_led
                       .out_port_from_the_pio_red_led(oLEDR),
                      
                      // the_seg7  
                       .avs_s1_export_seg7_from_the_SEG7({oHEX7_DP, oHEX7_D, oHEX6_DP, oHEX6_D, oHEX5_DP, 
                       oHEX5_D, oHEX4_DP,oHEX4_D, oHEX3_DP, oHEX3_D, oHEX2_DP, oHEX2_D, oHEX1_DP, oHEX1_D,
                       oHEX0_DP, oHEX0_D}),
                      
                      // the_pio_switch
                       .in_port_to_the_pio_switch(iSW),

                      // the_sd_clk
                       .out_port_from_the_sd_clk(oSD_CLK),

                      // the_sd_cmd
                       .bidir_port_to_and_from_the_sd_cmd(SD_CMD),

                      // the_sd_dat
                       .bidir_port_to_and_from_the_sd_dat(SD_DAT),

                      // the_sd_dat3
                       .bidir_port_to_and_from_the_sd_dat3(SD_DAT3),
*/

                      // the_sdram (u1)
                       .zs_addr_from_the_sdram_u1(oDRAM0_A),
                       .zs_ba_from_the_sdram_u1(oDRAM0_BA),
                       .zs_cas_n_from_the_sdram_u1(oDRAM0_CAS_N),
                       .zs_cke_from_the_sdram_u1(oDRAM0_CKE),
                       .zs_cs_n_from_the_sdram_u1(oDRAM0_CS_N),
                       .zs_dq_to_and_from_the_sdram_u1(DRAM_DQ[15:0]),
                       .zs_dqm_from_the_sdram_u1({oDRAM0_UDQM1,oDRAM0_LDQM0}),
                       .zs_ras_n_from_the_sdram_u1(oDRAM0_RAS_N),
                       .zs_we_n_from_the_sdram_u1(oDRAM0_WE_N),
/*
                      // the_sdram (u2)
                       .zs_addr_from_the_sdram_u2(oDRAM1_A),
                       .zs_ba_from_the_sdram_u2(oDRAM1_BA),
                       .zs_cas_n_from_the_sdram_u2(oDRAM1_CAS_N),
                       .zs_cke_from_the_sdram_u2(oDRAM1_CKE),
                       .zs_cs_n_from_the_sdram_u2(oDRAM1_CS_N),
                       .zs_dq_to_and_from_the_sdram_u2(DRAM_DQ[31:16]),
                       .zs_dqm_from_the_sdram_u2({oDRAM1_UDQM1,oDRAM1_LDQM0}),
                       .zs_ras_n_from_the_sdram_u2(oDRAM1_RAS_N),
                       .zs_we_n_from_the_sdram_u2(oDRAM1_WE_N),
*/

                       // the_tristate_bridge_avalon_slave (flash)
`ifdef FLASH_WORD
                       .address_to_the_cfi_flash({oFLASH_A[21:0],FLASH_16BIT_IP_A0}),
                       .data_to_and_from_the_cfi_flash({FLASH_DQ15_AM1,FLASH_DQ}),
`else
                       .address_to_the_cfi_flash({oFLASH_A[21:0],FLASH_DQ15_AM1}),
                       .data_to_and_from_the_cfi_flash(FLASH_DQ[7:0]),
`endif
                       .read_n_to_the_cfi_flash(oFLASH_OE_N),
                       .select_n_to_the_cfi_flash(oFLASH_CE_N),
                       .write_n_to_the_cfi_flash(oFLASH_WE_N),

/*
                      // the_tristate_bridge_1_avalon_slave (ssram)
                       .address_to_the_ssram({oSRAM_A[17:0],SRAM_DUMMY_ADDR}),
                       .adsc_n_to_the_ssram(oSRAM_ADSC_N),
                       .bw_n_to_the_ssram(oSRAM_BE_N),
                       .bwe_n_to_the_ssram(oSRAM_WE_N),
                       .chipenable1_n_to_the_ssram(oSRAM_CE1_N),
                       .data_to_and_from_the_ssram((SRAM_DQ)),
                       .outputenable_n_to_the_ssram(oSRAM_OE_N),


                      // the_ps2_keyboard
                       .PS2_CLK_to_and_from_the_ps2_keyboard(PS2_KBCLK),
                       .PS2_DAT_to_and_from_the_ps2_keyboard(PS2_KBDAT),

                      // the_ps2_mouse
                       .PS2_CLK_to_and_from_the_ps2_mouse(PS2_MSCLK),
                       .PS2_DAT_to_and_from_the_ps2_mouse(PS2_MSDAT),
*/
                      // the_uart
                       .cts_n_to_the_uart(oUART_CTS),
                       .rts_n_from_the_uart(iUART_RTS),
                       .rxd_to_the_uart(iUART_RXD),
                       .txd_from_the_uart(oUART_TXD),


                    );
endmodule

