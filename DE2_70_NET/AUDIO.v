// AUDIO.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module AUDIO (
		input  wire [3:0]  avs_s1_address,
		input  wire        avs_s1_clk,
		input  wire        avs_s1_export_ADCDAT,
		input  wire        avs_s1_export_ADCLRC,
		input  wire        avs_s1_export_BCLK,
		output wire        avs_s1_export_DACDAT,
		input  wire        avs_s1_export_DACLRC,
		input  wire        avs_s1_read,
		output wire [31:0] avs_s1_readdata,
		input  wire        avs_s1_reset,
		input  wire        avs_s1_write,
		input  wire [31:0] avs_s1_writedata
	);

	AUDIO_IF audio (
		.avs_s1_clk           (avs_s1_clk),           //  s1_clock.clk
		.avs_s1_reset         (avs_s1_reset),         //          .reset
		.avs_s1_address       (avs_s1_address),       //        s1.address
		.avs_s1_read          (avs_s1_read),          //          .read
		.avs_s1_readdata      (avs_s1_readdata),      //          .readdata
		.avs_s1_write         (avs_s1_write),         //          .write
		.avs_s1_writedata     (avs_s1_writedata),     //          .writedata
		.avs_s1_export_BCLK   (avs_s1_export_BCLK),   // s1_export.export
		.avs_s1_export_DACLRC (avs_s1_export_DACLRC), //          .export
		.avs_s1_export_DACDAT (avs_s1_export_DACDAT), //          .export
		.avs_s1_export_ADCLRC (avs_s1_export_ADCLRC), //          .export
		.avs_s1_export_ADCDAT (avs_s1_export_ADCDAT)  //          .export
	);

endmodule
