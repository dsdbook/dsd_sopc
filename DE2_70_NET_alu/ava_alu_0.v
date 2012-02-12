// ava_alu_0.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module ava_alu_0 (
		input  wire        clk,             // clock_reset.clk
		input  wire        reset,           //            .reset
		input  wire        ava_chipselect,  //         ava.chipselect
		input  wire [1:0]  ava_address,     //            .address
		input  wire        ava_read,        //            .read
		input  wire        ava_write,       //            .write
		output wire [31:0] ava_readdata,    //            .readdata
		input  wire [31:0] ava_writedata,   //            .writedata
		input  wire [3:0]  ava_byteenable,  //            .byteenable
		output wire        ava_waitrequest  //            .waitrequest
	);

	ava_alu #(
		.OP_ADD (4'b0001),
		.OP_SUB (4'b0010),
		.OP_AND (4'b0011),
		.OP_OR  (4'b0100),
		.OP_XOR (4'b0101)
	) ava_alu_0 (
		.clk             (clk),             // clock_reset.clk
		.reset           (reset),           //            .reset
		.ava_chipselect  (ava_chipselect),  //         ava.chipselect
		.ava_address     (ava_address),     //            .address
		.ava_read        (ava_read),        //            .read
		.ava_write       (ava_write),       //            .write
		.ava_readdata    (ava_readdata),    //            .readdata
		.ava_writedata   (ava_writedata),   //            .writedata
		.ava_byteenable  (ava_byteenable),  //            .byteenable
		.ava_waitrequest (ava_waitrequest)  //            .waitrequest
	);

endmodule
