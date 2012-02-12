// VGA.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module VGA (
		input  wire [18:0] avs_s1_address_iADDR,
		input  wire        avs_s1_chipselect_iCS,
		input  wire        avs_s1_clk_iCLK,
		output wire [9:0]  avs_s1_export_VGA_B,
		output wire        avs_s1_export_VGA_BLANK,
		output wire        avs_s1_export_VGA_CLK,
		output wire [9:0]  avs_s1_export_VGA_G,
		output wire        avs_s1_export_VGA_HS,
		output wire [9:0]  avs_s1_export_VGA_R,
		output wire        avs_s1_export_VGA_SYNC,
		output wire        avs_s1_export_VGA_VS,
		input  wire        avs_s1_export_iCLK_25,
		input  wire        avs_s1_read_iRD,
		output wire [15:0] avs_s1_readdata_oDATA,
		input  wire        avs_s1_reset_n_iRST_N,
		input  wire        avs_s1_write_iWR,
		input  wire [15:0] avs_s1_writedata_iDATA
	);

	VGA_NIOS_CTRL #(
		.RAM_SIZE (307200)
	) vga (
		.avs_s1_clk_iCLK         (avs_s1_clk_iCLK),         //              s1_clock.clk
		.avs_s1_reset_n_iRST_N   (avs_s1_reset_n_iRST_N),   //                      .reset_n
		.avs_s1_export_VGA_R     (avs_s1_export_VGA_R),     // global_signals_export.export
		.avs_s1_export_VGA_G     (avs_s1_export_VGA_G),     //                      .export
		.avs_s1_export_VGA_B     (avs_s1_export_VGA_B),     //                      .export
		.avs_s1_export_VGA_HS    (avs_s1_export_VGA_HS),    //                      .export
		.avs_s1_export_VGA_VS    (avs_s1_export_VGA_VS),    //                      .export
		.avs_s1_export_VGA_SYNC  (avs_s1_export_VGA_SYNC),  //                      .export
		.avs_s1_export_VGA_BLANK (avs_s1_export_VGA_BLANK), //                      .export
		.avs_s1_export_VGA_CLK   (avs_s1_export_VGA_CLK),   //                      .export
		.avs_s1_export_iCLK_25   (avs_s1_export_iCLK_25),   //                      .export
		.avs_s1_writedata_iDATA  (avs_s1_writedata_iDATA),  //                    s1.writedata
		.avs_s1_readdata_oDATA   (avs_s1_readdata_oDATA),   //                      .readdata
		.avs_s1_address_iADDR    (avs_s1_address_iADDR),    //                      .address
		.avs_s1_write_iWR        (avs_s1_write_iWR),        //                      .write
		.avs_s1_read_iRD         (avs_s1_read_iRD),         //                      .read
		.avs_s1_chipselect_iCS   (avs_s1_chipselect_iCS)    //                      .chipselect
	);

endmodule
