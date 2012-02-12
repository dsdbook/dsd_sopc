// ISP1362.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

module ISP1362 (
		input  wire        avs_dc_address_iADDR,
		input  wire        avs_dc_chipselect_n_iCS_N,
		input  wire        avs_dc_clk_iCLK,
		input  wire        avs_dc_export_OTG_INT1,
		output wire        avs_dc_irq_n_oINT0_N,
		input  wire        avs_dc_read_n_iRD_N,
		output wire [15:0] avs_dc_readdata_oDATA,
		input  wire        avs_dc_reset_n_iRST_N,
		input  wire        avs_dc_write_n_iWR_N,
		input  wire [15:0] avs_dc_writedata_iDATA,
		input  wire        avs_hc_address_iADDR,
		input  wire        avs_hc_chipselect_n_iCS_N,
		input  wire        avs_hc_clk_iCLK,
		output wire [1:0]  avs_hc_export_OTG_ADDR,
		output wire        avs_hc_export_OTG_CS_N,
		inout  wire [15:0] avs_hc_export_OTG_DATA,
		input  wire        avs_hc_export_OTG_INT0,
		output wire        avs_hc_export_OTG_RD_N,
		output wire        avs_hc_export_OTG_RST_N,
		output wire        avs_hc_export_OTG_WR_N,
		output wire        avs_hc_irq_n_oINT0_N,
		input  wire        avs_hc_read_n_iRD_N,
		output wire [15:0] avs_hc_readdata_oDATA,
		input  wire        avs_hc_reset_n_iRST_N,
		input  wire        avs_hc_write_n_iWR_N,
		input  wire [15:0] avs_hc_writedata_iDATA
	);

	ISP1362_IF isp1362 (
		.avs_hc_clk_iCLK           (avs_hc_clk_iCLK),           //              hc_clock.clk
		.avs_hc_reset_n_iRST_N     (avs_hc_reset_n_iRST_N),     //                      .reset_n
		.avs_dc_clk_iCLK           (avs_dc_clk_iCLK),           //              dc_clock.clk
		.avs_dc_reset_n_iRST_N     (avs_dc_reset_n_iRST_N),     //                      .reset_n
		.avs_dc_export_OTG_INT1    (avs_dc_export_OTG_INT1),    // global_signals_export.export
		.avs_hc_export_OTG_DATA    (avs_hc_export_OTG_DATA),    //                      .export
		.avs_hc_export_OTG_ADDR    (avs_hc_export_OTG_ADDR),    //                      .export
		.avs_hc_export_OTG_RD_N    (avs_hc_export_OTG_RD_N),    //                      .export
		.avs_hc_export_OTG_WR_N    (avs_hc_export_OTG_WR_N),    //                      .export
		.avs_hc_export_OTG_CS_N    (avs_hc_export_OTG_CS_N),    //                      .export
		.avs_hc_export_OTG_RST_N   (avs_hc_export_OTG_RST_N),   //                      .export
		.avs_hc_export_OTG_INT0    (avs_hc_export_OTG_INT0),    //                      .export
		.avs_hc_writedata_iDATA    (avs_hc_writedata_iDATA),    //                    hc.writedata
		.avs_hc_readdata_oDATA     (avs_hc_readdata_oDATA),     //                      .readdata
		.avs_hc_address_iADDR      (avs_hc_address_iADDR),      //                      .address
		.avs_hc_read_n_iRD_N       (avs_hc_read_n_iRD_N),       //                      .read_n
		.avs_hc_write_n_iWR_N      (avs_hc_write_n_iWR_N),      //                      .write_n
		.avs_hc_chipselect_n_iCS_N (avs_hc_chipselect_n_iCS_N), //                      .chipselect_n
		.avs_hc_irq_n_oINT0_N      (avs_hc_irq_n_oINT0_N),      //                hc_irq.irq_n
		.avs_dc_writedata_iDATA    (avs_dc_writedata_iDATA),    //                    dc.writedata
		.avs_dc_readdata_oDATA     (avs_dc_readdata_oDATA),     //                      .readdata
		.avs_dc_address_iADDR      (avs_dc_address_iADDR),      //                      .address
		.avs_dc_read_n_iRD_N       (avs_dc_read_n_iRD_N),       //                      .read_n
		.avs_dc_write_n_iWR_N      (avs_dc_write_n_iWR_N),      //                      .write_n
		.avs_dc_chipselect_n_iCS_N (avs_dc_chipselect_n_iCS_N), //                      .chipselect_n
		.avs_dc_irq_n_oINT0_N      (avs_dc_irq_n_oINT0_N)       //                dc_irq.irq_n
	);

endmodule
