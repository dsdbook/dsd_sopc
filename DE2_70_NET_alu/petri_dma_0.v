// petri_dma_0.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module petri_dma_0 (
		input  wire        clk,                      //  clock_reset.clk
		input  wire        reset,                    //             .reset
		output wire        read_master_read,         //  read_master.read
		output wire [3:0]  read_master_byteenable,   //             .byteenable
		input  wire [31:0] read_master_readdata,     //             .readdata
		output wire [31:0] read_master_address,      //             .address
		input  wire        read_master_waitrequest,  //             .waitrequest
		input  wire [9:0]  ava_address,              //  petri_slave.address
		input  wire        ava_read,                 //             .read
		input  wire        ava_write,                //             .write
		output wire [31:0] ava_readdata,             //             .readdata
		input  wire [31:0] ava_writedata,            //             .writedata
		input  wire [3:0]  ava_byteenable,           //             .byteenable
		output wire        ava_waitrequest,          //             .waitrequest
		input  wire        ava_chipselect,           //             .chipselect
		input  wire        write_master_waitrequest, // write_master.waitrequest
		output wire [31:0] write_master_address,     //             .address
		output wire        write_master_write,       //             .write
		output wire [3:0]  write_master_byteenable,  //             .byteenable
		output wire [31:0] write_master_writedata    //             .writedata
	);

	petri_dma #(
		.DMA_IDLE    (0),
		.START_READ  (1),
		.WAIT_READ   (2),
		.WAIT_TRANS  (3),
		.START_WRITE (4),
		.WAIT_WRITE  (5),
		.DMA_DONE    (6)
	) petri_dma_0 (
		.clk                      (clk),                      //  clock_reset.clk
		.reset                    (reset),                    //             .reset
		.read_master_read         (read_master_read),         //  read_master.read
		.read_master_byteenable   (read_master_byteenable),   //             .byteenable
		.read_master_readdata     (read_master_readdata),     //             .readdata
		.read_master_address      (read_master_address),      //             .address
		.read_master_waitrequest  (read_master_waitrequest),  //             .waitrequest
		.ava_address              (ava_address),              //  petri_slave.address
		.ava_read                 (ava_read),                 //             .read
		.ava_write                (ava_write),                //             .write
		.ava_readdata             (ava_readdata),             //             .readdata
		.ava_writedata            (ava_writedata),            //             .writedata
		.ava_byteenable           (ava_byteenable),           //             .byteenable
		.ava_waitrequest          (ava_waitrequest),          //             .waitrequest
		.ava_chipselect           (ava_chipselect),           //             .chipselect
		.write_master_waitrequest (write_master_waitrequest), // write_master.waitrequest
		.write_master_address     (write_master_address),     //             .address
		.write_master_write       (write_master_write),       //             .write
		.write_master_byteenable  (write_master_byteenable),  //             .byteenable
		.write_master_writedata   (write_master_writedata)    //             .writedata
	);

endmodule
