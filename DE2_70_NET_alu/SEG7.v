// SEG7.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module SEG7 (
		input  wire [2:0]  avs_s1_address,
		input  wire        avs_s1_clk,
		output wire [63:0] avs_s1_export_seg7,
		input  wire        avs_s1_read,
		output wire [7:0]  avs_s1_readdata,
		input  wire        avs_s1_reset,
		input  wire        avs_s1_write,
		input  wire [7:0]  avs_s1_writedata
	);

	SEG7_IF #(
		.SEG7_NUM       (8),
		.ADDR_WIDTH     (3),
		.DEFAULT_ACTIVE (1),
		.LOW_ACTIVE     (1)
	) seg7 (
		.avs_s1_clk         (avs_s1_clk),         //  s1_clock.clk
		.avs_s1_reset       (avs_s1_reset),       //          .reset
		.avs_s1_address     (avs_s1_address),     //        s1.address
		.avs_s1_read        (avs_s1_read),        //          .read
		.avs_s1_readdata    (avs_s1_readdata),    //          .readdata
		.avs_s1_write       (avs_s1_write),       //          .write
		.avs_s1_writedata   (avs_s1_writedata),   //          .writedata
		.avs_s1_export_seg7 (avs_s1_export_seg7)  // s1_export.export
	);

endmodule
