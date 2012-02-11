// DM9000A.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module DM9000A (
		input  wire        avs_s1_clk_iCLK,           //  s1_clock.clk
		input  wire        avs_s1_reset_n_iRST_N,     //          .reset_n
		input  wire [15:0] avs_s1_writedata_iDATA,    //        s1.writedata
		output wire [15:0] avs_s1_readdata_oDATA,     //          .readdata
		input  wire        avs_s1_address_iCMD,       //          .address
		input  wire        avs_s1_read_n_iRD_N,       //          .read_n
		input  wire        avs_s1_write_n_iWR_N,      //          .write_n
		input  wire        avs_s1_chipselect_n_iCS_N, //          .chipselect_n
		output wire        avs_s1_irq_oINT,           //    s1_irq.irq
		output wire        avs_s1_export_ENET_CMD,    // s1_export.export
		output wire        avs_s1_export_ENET_RD_N,   //          .export
		output wire        avs_s1_export_ENET_WR_N,   //          .export
		output wire        avs_s1_export_ENET_CS_N,   //          .export
		output wire        avs_s1_export_ENET_RST_N,  //          .export
		input  wire        avs_s1_export_ENET_INT,    //          .export
		output wire        avs_s1_export_ENET_CLK,    //          .export
		inout  wire [15:0] avs_s1_export_ENET_DATA    //          .export
	);

	DM9000A_IF dm9000a (
		.avs_s1_clk_iCLK           (avs_s1_clk_iCLK),           //  s1_clock.clk
		.avs_s1_reset_n_iRST_N     (avs_s1_reset_n_iRST_N),     //          .reset_n
		.avs_s1_writedata_iDATA    (avs_s1_writedata_iDATA),    //        s1.writedata
		.avs_s1_readdata_oDATA     (avs_s1_readdata_oDATA),     //          .readdata
		.avs_s1_address_iCMD       (avs_s1_address_iCMD),       //          .address
		.avs_s1_read_n_iRD_N       (avs_s1_read_n_iRD_N),       //          .read_n
		.avs_s1_write_n_iWR_N      (avs_s1_write_n_iWR_N),      //          .write_n
		.avs_s1_chipselect_n_iCS_N (avs_s1_chipselect_n_iCS_N), //          .chipselect_n
		.avs_s1_irq_oINT           (avs_s1_irq_oINT),           //    s1_irq.irq
		.avs_s1_export_ENET_CMD    (avs_s1_export_ENET_CMD),    // s1_export.export
		.avs_s1_export_ENET_RD_N   (avs_s1_export_ENET_RD_N),   //          .export
		.avs_s1_export_ENET_WR_N   (avs_s1_export_ENET_WR_N),   //          .export
		.avs_s1_export_ENET_CS_N   (avs_s1_export_ENET_CS_N),   //          .export
		.avs_s1_export_ENET_RST_N  (avs_s1_export_ENET_RST_N),  //          .export
		.avs_s1_export_ENET_INT    (avs_s1_export_ENET_INT),    //          .export
		.avs_s1_export_ENET_CLK    (avs_s1_export_ENET_CLK),    //          .export
		.avs_s1_export_ENET_DATA   (avs_s1_export_ENET_DATA)    //          .export
	);

endmodule
