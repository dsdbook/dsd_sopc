//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2012 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_0_in_arbitrator (
                                           // inputs:
                                            DE2_70_SOPC_clock_0_in_endofpacket,
                                            DE2_70_SOPC_clock_0_in_readdata,
                                            DE2_70_SOPC_clock_0_in_waitrequest,
                                            clk,
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_dbs_address,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_read,
                                            reset_n,

                                           // outputs:
                                            DE2_70_SOPC_clock_0_in_address,
                                            DE2_70_SOPC_clock_0_in_byteenable,
                                            DE2_70_SOPC_clock_0_in_endofpacket_from_sa,
                                            DE2_70_SOPC_clock_0_in_nativeaddress,
                                            DE2_70_SOPC_clock_0_in_read,
                                            DE2_70_SOPC_clock_0_in_readdata_from_sa,
                                            DE2_70_SOPC_clock_0_in_reset_n,
                                            DE2_70_SOPC_clock_0_in_waitrequest_from_sa,
                                            DE2_70_SOPC_clock_0_in_write,
                                            cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in,
                                            d1_DE2_70_SOPC_clock_0_in_end_xfer
                                         )
;

  output  [ 24: 0] DE2_70_SOPC_clock_0_in_address;
  output  [  1: 0] DE2_70_SOPC_clock_0_in_byteenable;
  output           DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  output  [ 23: 0] DE2_70_SOPC_clock_0_in_nativeaddress;
  output           DE2_70_SOPC_clock_0_in_read;
  output  [ 15: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  output           DE2_70_SOPC_clock_0_in_reset_n;
  output           DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  output           DE2_70_SOPC_clock_0_in_write;
  output           cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in;
  output           cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in;
  output           cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  output           cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in;
  output           d1_DE2_70_SOPC_clock_0_in_end_xfer;
  input            DE2_70_SOPC_clock_0_in_endofpacket;
  input   [ 15: 0] DE2_70_SOPC_clock_0_in_readdata;
  input            DE2_70_SOPC_clock_0_in_waitrequest;
  input            clk;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_dbs_address;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input            reset_n;

  wire    [ 24: 0] DE2_70_SOPC_clock_0_in_address;
  wire             DE2_70_SOPC_clock_0_in_allgrants;
  wire             DE2_70_SOPC_clock_0_in_allow_new_arb_cycle;
  wire             DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant;
  wire             DE2_70_SOPC_clock_0_in_any_continuerequest;
  wire             DE2_70_SOPC_clock_0_in_arb_counter_enable;
  reg     [  1: 0] DE2_70_SOPC_clock_0_in_arb_share_counter;
  wire    [  1: 0] DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;
  wire    [  1: 0] DE2_70_SOPC_clock_0_in_arb_share_set_values;
  wire             DE2_70_SOPC_clock_0_in_beginbursttransfer_internal;
  wire             DE2_70_SOPC_clock_0_in_begins_xfer;
  wire    [  1: 0] DE2_70_SOPC_clock_0_in_byteenable;
  wire             DE2_70_SOPC_clock_0_in_end_xfer;
  wire             DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_0_in_firsttransfer;
  wire             DE2_70_SOPC_clock_0_in_grant_vector;
  wire             DE2_70_SOPC_clock_0_in_in_a_read_cycle;
  wire             DE2_70_SOPC_clock_0_in_in_a_write_cycle;
  wire             DE2_70_SOPC_clock_0_in_master_qreq_vector;
  wire    [ 23: 0] DE2_70_SOPC_clock_0_in_nativeaddress;
  wire             DE2_70_SOPC_clock_0_in_non_bursting_master_requests;
  wire             DE2_70_SOPC_clock_0_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  reg              DE2_70_SOPC_clock_0_in_reg_firsttransfer;
  wire             DE2_70_SOPC_clock_0_in_reset_n;
  reg              DE2_70_SOPC_clock_0_in_slavearbiterlockenable;
  wire             DE2_70_SOPC_clock_0_in_slavearbiterlockenable2;
  wire             DE2_70_SOPC_clock_0_in_unreg_firsttransfer;
  wire             DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_0_in_waits_for_read;
  wire             DE2_70_SOPC_clock_0_in_waits_for_write;
  wire             DE2_70_SOPC_clock_0_in_write;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_saved_grant_DE2_70_SOPC_clock_0_in;
  reg              d1_DE2_70_SOPC_clock_0_in_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_DE2_70_SOPC_clock_0_in_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DE2_70_SOPC_clock_0_in_end_xfer;
    end


  assign DE2_70_SOPC_clock_0_in_begins_xfer = ~d1_reasons_to_wait & ((cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in));
  //assign DE2_70_SOPC_clock_0_in_readdata_from_sa = DE2_70_SOPC_clock_0_in_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_readdata_from_sa = DE2_70_SOPC_clock_0_in_readdata;

  assign cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in = (({cpu_instruction_master_address_to_slave[27 : 25] , 25'b0} == 28'h0) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //assign DE2_70_SOPC_clock_0_in_waitrequest_from_sa = DE2_70_SOPC_clock_0_in_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_waitrequest_from_sa = DE2_70_SOPC_clock_0_in_waitrequest;

  //DE2_70_SOPC_clock_0_in_arb_share_counter set values, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_arb_share_set_values = (cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in)? 2 :
    1;

  //DE2_70_SOPC_clock_0_in_non_bursting_master_requests mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_non_bursting_master_requests = cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in;

  //DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant = 0;

  //DE2_70_SOPC_clock_0_in_arb_share_counter_next_value assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_arb_share_counter_next_value = DE2_70_SOPC_clock_0_in_firsttransfer ? (DE2_70_SOPC_clock_0_in_arb_share_set_values - 1) : |DE2_70_SOPC_clock_0_in_arb_share_counter ? (DE2_70_SOPC_clock_0_in_arb_share_counter - 1) : 0;

  //DE2_70_SOPC_clock_0_in_allgrants all slave grants, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_allgrants = |DE2_70_SOPC_clock_0_in_grant_vector;

  //DE2_70_SOPC_clock_0_in_end_xfer assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_end_xfer = ~(DE2_70_SOPC_clock_0_in_waits_for_read | DE2_70_SOPC_clock_0_in_waits_for_write);

  //end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in = DE2_70_SOPC_clock_0_in_end_xfer & (~DE2_70_SOPC_clock_0_in_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DE2_70_SOPC_clock_0_in_arb_share_counter arbitration counter enable, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_arb_counter_enable = (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in & DE2_70_SOPC_clock_0_in_allgrants) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in & ~DE2_70_SOPC_clock_0_in_non_bursting_master_requests);

  //DE2_70_SOPC_clock_0_in_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_in_arb_share_counter <= 0;
      else if (DE2_70_SOPC_clock_0_in_arb_counter_enable)
          DE2_70_SOPC_clock_0_in_arb_share_counter <= DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_0_in_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_in_slavearbiterlockenable <= 0;
      else if ((|DE2_70_SOPC_clock_0_in_master_qreq_vector & end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_0_in & ~DE2_70_SOPC_clock_0_in_non_bursting_master_requests))
          DE2_70_SOPC_clock_0_in_slavearbiterlockenable <= |DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;
    end


  //cpu/instruction_master DE2_70_SOPC_clock_0/in arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = DE2_70_SOPC_clock_0_in_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //DE2_70_SOPC_clock_0_in_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_slavearbiterlockenable2 = |DE2_70_SOPC_clock_0_in_arb_share_counter_next_value;

  //cpu/instruction_master DE2_70_SOPC_clock_0/in arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = DE2_70_SOPC_clock_0_in_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //DE2_70_SOPC_clock_0_in_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_any_continuerequest = 1;

  //cpu_instruction_master_continuerequest continued request, which is an e_assign
  assign cpu_instruction_master_continuerequest = 1;

  assign cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in = cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))));
  //local readdatavalid cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in, which is an e_mux
  assign cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in = cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in & cpu_instruction_master_read & ~DE2_70_SOPC_clock_0_in_waits_for_read;

  //assign DE2_70_SOPC_clock_0_in_endofpacket_from_sa = DE2_70_SOPC_clock_0_in_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_endofpacket_from_sa = DE2_70_SOPC_clock_0_in_endofpacket;

  //master is always granted when requested
  assign cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in = cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in;

  //cpu/instruction_master saved-grant DE2_70_SOPC_clock_0/in, which is an e_assign
  assign cpu_instruction_master_saved_grant_DE2_70_SOPC_clock_0_in = cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in;

  //allow new arb cycle for DE2_70_SOPC_clock_0/in, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DE2_70_SOPC_clock_0_in_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DE2_70_SOPC_clock_0_in_master_qreq_vector = 1;

  //DE2_70_SOPC_clock_0_in_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_reset_n = reset_n;

  //DE2_70_SOPC_clock_0_in_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_firsttransfer = DE2_70_SOPC_clock_0_in_begins_xfer ? DE2_70_SOPC_clock_0_in_unreg_firsttransfer : DE2_70_SOPC_clock_0_in_reg_firsttransfer;

  //DE2_70_SOPC_clock_0_in_unreg_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_unreg_firsttransfer = ~(DE2_70_SOPC_clock_0_in_slavearbiterlockenable & DE2_70_SOPC_clock_0_in_any_continuerequest);

  //DE2_70_SOPC_clock_0_in_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_in_reg_firsttransfer <= 1'b1;
      else if (DE2_70_SOPC_clock_0_in_begins_xfer)
          DE2_70_SOPC_clock_0_in_reg_firsttransfer <= DE2_70_SOPC_clock_0_in_unreg_firsttransfer;
    end


  //DE2_70_SOPC_clock_0_in_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_beginbursttransfer_internal = DE2_70_SOPC_clock_0_in_begins_xfer;

  //DE2_70_SOPC_clock_0_in_read assignment, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_read = cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in & cpu_instruction_master_read;

  //DE2_70_SOPC_clock_0_in_write assignment, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_write = 0;

  //DE2_70_SOPC_clock_0_in_address mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_address = {cpu_instruction_master_address_to_slave >> 2,
    cpu_instruction_master_dbs_address[1],
    {1 {1'b0}}};

  //slaveid DE2_70_SOPC_clock_0_in_nativeaddress nativeaddress mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_nativeaddress = cpu_instruction_master_address_to_slave >> 2;

  //d1_DE2_70_SOPC_clock_0_in_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DE2_70_SOPC_clock_0_in_end_xfer <= 1;
      else 
        d1_DE2_70_SOPC_clock_0_in_end_xfer <= DE2_70_SOPC_clock_0_in_end_xfer;
    end


  //DE2_70_SOPC_clock_0_in_waits_for_read in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_waits_for_read = DE2_70_SOPC_clock_0_in_in_a_read_cycle & DE2_70_SOPC_clock_0_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_0_in_in_a_read_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_in_a_read_cycle = cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in & cpu_instruction_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DE2_70_SOPC_clock_0_in_in_a_read_cycle;

  //DE2_70_SOPC_clock_0_in_waits_for_write in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_waits_for_write = DE2_70_SOPC_clock_0_in_in_a_write_cycle & DE2_70_SOPC_clock_0_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_0_in_in_a_write_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_in_in_a_write_cycle = 0;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DE2_70_SOPC_clock_0_in_in_a_write_cycle;

  assign wait_for_DE2_70_SOPC_clock_0_in_counter = 0;
  //DE2_70_SOPC_clock_0_in_byteenable byte enable port mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_in_byteenable = -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_0/in enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_0_out_arbitrator (
                                            // inputs:
                                             DE2_70_SOPC_clock_0_out_address,
                                             DE2_70_SOPC_clock_0_out_byteenable,
                                             DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1,
                                             DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1,
                                             DE2_70_SOPC_clock_0_out_read,
                                             DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1,
                                             DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register,
                                             DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1,
                                             DE2_70_SOPC_clock_0_out_write,
                                             DE2_70_SOPC_clock_0_out_writedata,
                                             clk,
                                             d1_sdram_u1_s1_end_xfer,
                                             reset_n,
                                             sdram_u1_s1_readdata_from_sa,
                                             sdram_u1_s1_waitrequest_from_sa,

                                            // outputs:
                                             DE2_70_SOPC_clock_0_out_address_to_slave,
                                             DE2_70_SOPC_clock_0_out_readdata,
                                             DE2_70_SOPC_clock_0_out_reset_n,
                                             DE2_70_SOPC_clock_0_out_waitrequest
                                          )
;

  output  [ 24: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  output  [ 15: 0] DE2_70_SOPC_clock_0_out_readdata;
  output           DE2_70_SOPC_clock_0_out_reset_n;
  output           DE2_70_SOPC_clock_0_out_waitrequest;
  input   [ 24: 0] DE2_70_SOPC_clock_0_out_address;
  input   [  1: 0] DE2_70_SOPC_clock_0_out_byteenable;
  input            DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1;
  input            DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1;
  input            DE2_70_SOPC_clock_0_out_read;
  input            DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1;
  input            DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register;
  input            DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1;
  input            DE2_70_SOPC_clock_0_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_0_out_writedata;
  input            clk;
  input            d1_sdram_u1_s1_end_xfer;
  input            reset_n;
  input   [ 15: 0] sdram_u1_s1_readdata_from_sa;
  input            sdram_u1_s1_waitrequest_from_sa;

  reg     [ 24: 0] DE2_70_SOPC_clock_0_out_address_last_time;
  wire    [ 24: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  reg     [  1: 0] DE2_70_SOPC_clock_0_out_byteenable_last_time;
  reg              DE2_70_SOPC_clock_0_out_read_last_time;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_out_readdata;
  wire             DE2_70_SOPC_clock_0_out_reset_n;
  wire             DE2_70_SOPC_clock_0_out_run;
  wire             DE2_70_SOPC_clock_0_out_waitrequest;
  reg              DE2_70_SOPC_clock_0_out_write_last_time;
  reg     [ 15: 0] DE2_70_SOPC_clock_0_out_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_1;
  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1 | DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1 | ~DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1) & (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 | ~DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1) & ((~DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1 | ~DE2_70_SOPC_clock_0_out_read | (DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1 & DE2_70_SOPC_clock_0_out_read))) & ((~DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1 | ~(DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write) | (1 & ~sdram_u1_s1_waitrequest_from_sa & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write))));

  //cascaded wait assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_run = r_1;

  //optimize select-logic by passing only those address bits which matter.
  assign DE2_70_SOPC_clock_0_out_address_to_slave = DE2_70_SOPC_clock_0_out_address;

  //DE2_70_SOPC_clock_0/out readdata mux, which is an e_mux
  assign DE2_70_SOPC_clock_0_out_readdata = sdram_u1_s1_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_waitrequest = ~DE2_70_SOPC_clock_0_out_run;

  //DE2_70_SOPC_clock_0_out_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_0_out_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_address_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_address_last_time <= DE2_70_SOPC_clock_0_out_address;
    end


  //DE2_70_SOPC_clock_0/out waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= DE2_70_SOPC_clock_0_out_waitrequest & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write);
    end


  //DE2_70_SOPC_clock_0_out_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_address != DE2_70_SOPC_clock_0_out_address_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_byteenable_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_byteenable_last_time <= DE2_70_SOPC_clock_0_out_byteenable;
    end


  //DE2_70_SOPC_clock_0_out_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_byteenable != DE2_70_SOPC_clock_0_out_byteenable_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_read_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_read_last_time <= DE2_70_SOPC_clock_0_out_read;
    end


  //DE2_70_SOPC_clock_0_out_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_read != DE2_70_SOPC_clock_0_out_read_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_write_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_write_last_time <= DE2_70_SOPC_clock_0_out_write;
    end


  //DE2_70_SOPC_clock_0_out_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_write != DE2_70_SOPC_clock_0_out_write_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_0_out_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_0_out_writedata_last_time <= 0;
      else 
        DE2_70_SOPC_clock_0_out_writedata_last_time <= DE2_70_SOPC_clock_0_out_writedata;
    end


  //DE2_70_SOPC_clock_0_out_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_0_out_writedata != DE2_70_SOPC_clock_0_out_writedata_last_time) & DE2_70_SOPC_clock_0_out_write)
        begin
          $write("%0d ns: DE2_70_SOPC_clock_0_out_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_1_in_arbitrator (
                                           // inputs:
                                            DE2_70_SOPC_clock_1_in_endofpacket,
                                            DE2_70_SOPC_clock_1_in_readdata,
                                            DE2_70_SOPC_clock_1_in_waitrequest,
                                            clk,
                                            cpu_data_master_address_to_slave,
                                            cpu_data_master_byteenable,
                                            cpu_data_master_dbs_address,
                                            cpu_data_master_dbs_write_16,
                                            cpu_data_master_latency_counter,
                                            cpu_data_master_read,
                                            cpu_data_master_write,
                                            reset_n,

                                           // outputs:
                                            DE2_70_SOPC_clock_1_in_address,
                                            DE2_70_SOPC_clock_1_in_byteenable,
                                            DE2_70_SOPC_clock_1_in_endofpacket_from_sa,
                                            DE2_70_SOPC_clock_1_in_nativeaddress,
                                            DE2_70_SOPC_clock_1_in_read,
                                            DE2_70_SOPC_clock_1_in_readdata_from_sa,
                                            DE2_70_SOPC_clock_1_in_reset_n,
                                            DE2_70_SOPC_clock_1_in_waitrequest_from_sa,
                                            DE2_70_SOPC_clock_1_in_write,
                                            DE2_70_SOPC_clock_1_in_writedata,
                                            cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in,
                                            cpu_data_master_granted_DE2_70_SOPC_clock_1_in,
                                            cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in,
                                            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in,
                                            cpu_data_master_requests_DE2_70_SOPC_clock_1_in,
                                            d1_DE2_70_SOPC_clock_1_in_end_xfer
                                         )
;

  output  [ 24: 0] DE2_70_SOPC_clock_1_in_address;
  output  [  1: 0] DE2_70_SOPC_clock_1_in_byteenable;
  output           DE2_70_SOPC_clock_1_in_endofpacket_from_sa;
  output  [ 23: 0] DE2_70_SOPC_clock_1_in_nativeaddress;
  output           DE2_70_SOPC_clock_1_in_read;
  output  [ 15: 0] DE2_70_SOPC_clock_1_in_readdata_from_sa;
  output           DE2_70_SOPC_clock_1_in_reset_n;
  output           DE2_70_SOPC_clock_1_in_waitrequest_from_sa;
  output           DE2_70_SOPC_clock_1_in_write;
  output  [ 15: 0] DE2_70_SOPC_clock_1_in_writedata;
  output  [  1: 0] cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in;
  output           cpu_data_master_granted_DE2_70_SOPC_clock_1_in;
  output           cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in;
  output           cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in;
  output           cpu_data_master_requests_DE2_70_SOPC_clock_1_in;
  output           d1_DE2_70_SOPC_clock_1_in_end_xfer;
  input            DE2_70_SOPC_clock_1_in_endofpacket;
  input   [ 15: 0] DE2_70_SOPC_clock_1_in_readdata;
  input            DE2_70_SOPC_clock_1_in_waitrequest;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  1: 0] cpu_data_master_dbs_address;
  input   [ 15: 0] cpu_data_master_dbs_write_16;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input            reset_n;

  wire    [ 24: 0] DE2_70_SOPC_clock_1_in_address;
  wire             DE2_70_SOPC_clock_1_in_allgrants;
  wire             DE2_70_SOPC_clock_1_in_allow_new_arb_cycle;
  wire             DE2_70_SOPC_clock_1_in_any_bursting_master_saved_grant;
  wire             DE2_70_SOPC_clock_1_in_any_continuerequest;
  wire             DE2_70_SOPC_clock_1_in_arb_counter_enable;
  reg     [  1: 0] DE2_70_SOPC_clock_1_in_arb_share_counter;
  wire    [  1: 0] DE2_70_SOPC_clock_1_in_arb_share_counter_next_value;
  wire    [  1: 0] DE2_70_SOPC_clock_1_in_arb_share_set_values;
  wire             DE2_70_SOPC_clock_1_in_beginbursttransfer_internal;
  wire             DE2_70_SOPC_clock_1_in_begins_xfer;
  wire    [  1: 0] DE2_70_SOPC_clock_1_in_byteenable;
  wire             DE2_70_SOPC_clock_1_in_end_xfer;
  wire             DE2_70_SOPC_clock_1_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_1_in_firsttransfer;
  wire             DE2_70_SOPC_clock_1_in_grant_vector;
  wire             DE2_70_SOPC_clock_1_in_in_a_read_cycle;
  wire             DE2_70_SOPC_clock_1_in_in_a_write_cycle;
  wire             DE2_70_SOPC_clock_1_in_master_qreq_vector;
  wire    [ 23: 0] DE2_70_SOPC_clock_1_in_nativeaddress;
  wire             DE2_70_SOPC_clock_1_in_non_bursting_master_requests;
  wire             DE2_70_SOPC_clock_1_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_in_readdata_from_sa;
  reg              DE2_70_SOPC_clock_1_in_reg_firsttransfer;
  wire             DE2_70_SOPC_clock_1_in_reset_n;
  reg              DE2_70_SOPC_clock_1_in_slavearbiterlockenable;
  wire             DE2_70_SOPC_clock_1_in_slavearbiterlockenable2;
  wire             DE2_70_SOPC_clock_1_in_unreg_firsttransfer;
  wire             DE2_70_SOPC_clock_1_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_1_in_waits_for_read;
  wire             DE2_70_SOPC_clock_1_in_waits_for_write;
  wire             DE2_70_SOPC_clock_1_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_in_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire    [  1: 0] cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in;
  wire    [  1: 0] cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in_segment_0;
  wire    [  1: 0] cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in_segment_1;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_saved_grant_DE2_70_SOPC_clock_1_in;
  reg              d1_DE2_70_SOPC_clock_1_in_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_DE2_70_SOPC_clock_1_in_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DE2_70_SOPC_clock_1_in_end_xfer;
    end


  assign DE2_70_SOPC_clock_1_in_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in));
  //assign DE2_70_SOPC_clock_1_in_readdata_from_sa = DE2_70_SOPC_clock_1_in_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_readdata_from_sa = DE2_70_SOPC_clock_1_in_readdata;

  assign cpu_data_master_requests_DE2_70_SOPC_clock_1_in = ({cpu_data_master_address_to_slave[27 : 25] , 25'b0} == 28'h0) & (cpu_data_master_read | cpu_data_master_write);
  //assign DE2_70_SOPC_clock_1_in_waitrequest_from_sa = DE2_70_SOPC_clock_1_in_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_waitrequest_from_sa = DE2_70_SOPC_clock_1_in_waitrequest;

  //DE2_70_SOPC_clock_1_in_arb_share_counter set values, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_arb_share_set_values = (cpu_data_master_granted_DE2_70_SOPC_clock_1_in)? 2 :
    1;

  //DE2_70_SOPC_clock_1_in_non_bursting_master_requests mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_non_bursting_master_requests = cpu_data_master_requests_DE2_70_SOPC_clock_1_in;

  //DE2_70_SOPC_clock_1_in_any_bursting_master_saved_grant mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_any_bursting_master_saved_grant = 0;

  //DE2_70_SOPC_clock_1_in_arb_share_counter_next_value assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_arb_share_counter_next_value = DE2_70_SOPC_clock_1_in_firsttransfer ? (DE2_70_SOPC_clock_1_in_arb_share_set_values - 1) : |DE2_70_SOPC_clock_1_in_arb_share_counter ? (DE2_70_SOPC_clock_1_in_arb_share_counter - 1) : 0;

  //DE2_70_SOPC_clock_1_in_allgrants all slave grants, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_allgrants = |DE2_70_SOPC_clock_1_in_grant_vector;

  //DE2_70_SOPC_clock_1_in_end_xfer assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_end_xfer = ~(DE2_70_SOPC_clock_1_in_waits_for_read | DE2_70_SOPC_clock_1_in_waits_for_write);

  //end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in = DE2_70_SOPC_clock_1_in_end_xfer & (~DE2_70_SOPC_clock_1_in_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DE2_70_SOPC_clock_1_in_arb_share_counter arbitration counter enable, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_arb_counter_enable = (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in & DE2_70_SOPC_clock_1_in_allgrants) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in & ~DE2_70_SOPC_clock_1_in_non_bursting_master_requests);

  //DE2_70_SOPC_clock_1_in_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_in_arb_share_counter <= 0;
      else if (DE2_70_SOPC_clock_1_in_arb_counter_enable)
          DE2_70_SOPC_clock_1_in_arb_share_counter <= DE2_70_SOPC_clock_1_in_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_1_in_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_in_slavearbiterlockenable <= 0;
      else if ((|DE2_70_SOPC_clock_1_in_master_qreq_vector & end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_1_in & ~DE2_70_SOPC_clock_1_in_non_bursting_master_requests))
          DE2_70_SOPC_clock_1_in_slavearbiterlockenable <= |DE2_70_SOPC_clock_1_in_arb_share_counter_next_value;
    end


  //cpu/data_master DE2_70_SOPC_clock_1/in arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = DE2_70_SOPC_clock_1_in_slavearbiterlockenable & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_1_in_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_slavearbiterlockenable2 = |DE2_70_SOPC_clock_1_in_arb_share_counter_next_value;

  //cpu/data_master DE2_70_SOPC_clock_1/in arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = DE2_70_SOPC_clock_1_in_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_1_in_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in = cpu_data_master_requests_DE2_70_SOPC_clock_1_in & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))) | ((!cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in) & cpu_data_master_write));
  //local readdatavalid cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in, which is an e_mux
  assign cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in = cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_read & ~DE2_70_SOPC_clock_1_in_waits_for_read;

  //DE2_70_SOPC_clock_1_in_writedata mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_writedata = cpu_data_master_dbs_write_16;

  //assign DE2_70_SOPC_clock_1_in_endofpacket_from_sa = DE2_70_SOPC_clock_1_in_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_endofpacket_from_sa = DE2_70_SOPC_clock_1_in_endofpacket;

  //master is always granted when requested
  assign cpu_data_master_granted_DE2_70_SOPC_clock_1_in = cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in;

  //cpu/data_master saved-grant DE2_70_SOPC_clock_1/in, which is an e_assign
  assign cpu_data_master_saved_grant_DE2_70_SOPC_clock_1_in = cpu_data_master_requests_DE2_70_SOPC_clock_1_in;

  //allow new arb cycle for DE2_70_SOPC_clock_1/in, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DE2_70_SOPC_clock_1_in_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DE2_70_SOPC_clock_1_in_master_qreq_vector = 1;

  //DE2_70_SOPC_clock_1_in_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_reset_n = reset_n;

  //DE2_70_SOPC_clock_1_in_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_firsttransfer = DE2_70_SOPC_clock_1_in_begins_xfer ? DE2_70_SOPC_clock_1_in_unreg_firsttransfer : DE2_70_SOPC_clock_1_in_reg_firsttransfer;

  //DE2_70_SOPC_clock_1_in_unreg_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_unreg_firsttransfer = ~(DE2_70_SOPC_clock_1_in_slavearbiterlockenable & DE2_70_SOPC_clock_1_in_any_continuerequest);

  //DE2_70_SOPC_clock_1_in_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_in_reg_firsttransfer <= 1'b1;
      else if (DE2_70_SOPC_clock_1_in_begins_xfer)
          DE2_70_SOPC_clock_1_in_reg_firsttransfer <= DE2_70_SOPC_clock_1_in_unreg_firsttransfer;
    end


  //DE2_70_SOPC_clock_1_in_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_beginbursttransfer_internal = DE2_70_SOPC_clock_1_in_begins_xfer;

  //DE2_70_SOPC_clock_1_in_read assignment, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_read = cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_read;

  //DE2_70_SOPC_clock_1_in_write assignment, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_write = cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_write;

  //DE2_70_SOPC_clock_1_in_address mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_address = {cpu_data_master_address_to_slave >> 2,
    cpu_data_master_dbs_address[1],
    {1 {1'b0}}};

  //slaveid DE2_70_SOPC_clock_1_in_nativeaddress nativeaddress mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_nativeaddress = cpu_data_master_address_to_slave >> 2;

  //d1_DE2_70_SOPC_clock_1_in_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DE2_70_SOPC_clock_1_in_end_xfer <= 1;
      else 
        d1_DE2_70_SOPC_clock_1_in_end_xfer <= DE2_70_SOPC_clock_1_in_end_xfer;
    end


  //DE2_70_SOPC_clock_1_in_waits_for_read in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_waits_for_read = DE2_70_SOPC_clock_1_in_in_a_read_cycle & DE2_70_SOPC_clock_1_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_1_in_in_a_read_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_in_a_read_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DE2_70_SOPC_clock_1_in_in_a_read_cycle;

  //DE2_70_SOPC_clock_1_in_waits_for_write in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_waits_for_write = DE2_70_SOPC_clock_1_in_in_a_write_cycle & DE2_70_SOPC_clock_1_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_1_in_in_a_write_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_in_in_a_write_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DE2_70_SOPC_clock_1_in_in_a_write_cycle;

  assign wait_for_DE2_70_SOPC_clock_1_in_counter = 0;
  //DE2_70_SOPC_clock_1_in_byteenable byte enable port mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_in_byteenable = (cpu_data_master_granted_DE2_70_SOPC_clock_1_in)? cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in :
    -1;

  assign {cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in_segment_1,
cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in_segment_0} = cpu_data_master_byteenable;
  assign cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in = ((cpu_data_master_dbs_address[1] == 0))? cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in_segment_0 :
    cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in_segment_1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_1/in enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_1_out_arbitrator (
                                            // inputs:
                                             DE2_70_SOPC_clock_1_out_address,
                                             DE2_70_SOPC_clock_1_out_byteenable,
                                             DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1,
                                             DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1,
                                             DE2_70_SOPC_clock_1_out_read,
                                             DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1,
                                             DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register,
                                             DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1,
                                             DE2_70_SOPC_clock_1_out_write,
                                             DE2_70_SOPC_clock_1_out_writedata,
                                             clk,
                                             d1_sdram_u1_s1_end_xfer,
                                             reset_n,
                                             sdram_u1_s1_readdata_from_sa,
                                             sdram_u1_s1_waitrequest_from_sa,

                                            // outputs:
                                             DE2_70_SOPC_clock_1_out_address_to_slave,
                                             DE2_70_SOPC_clock_1_out_readdata,
                                             DE2_70_SOPC_clock_1_out_reset_n,
                                             DE2_70_SOPC_clock_1_out_waitrequest
                                          )
;

  output  [ 24: 0] DE2_70_SOPC_clock_1_out_address_to_slave;
  output  [ 15: 0] DE2_70_SOPC_clock_1_out_readdata;
  output           DE2_70_SOPC_clock_1_out_reset_n;
  output           DE2_70_SOPC_clock_1_out_waitrequest;
  input   [ 24: 0] DE2_70_SOPC_clock_1_out_address;
  input   [  1: 0] DE2_70_SOPC_clock_1_out_byteenable;
  input            DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1;
  input            DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1;
  input            DE2_70_SOPC_clock_1_out_read;
  input            DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1;
  input            DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register;
  input            DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;
  input            DE2_70_SOPC_clock_1_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_1_out_writedata;
  input            clk;
  input            d1_sdram_u1_s1_end_xfer;
  input            reset_n;
  input   [ 15: 0] sdram_u1_s1_readdata_from_sa;
  input            sdram_u1_s1_waitrequest_from_sa;

  reg     [ 24: 0] DE2_70_SOPC_clock_1_out_address_last_time;
  wire    [ 24: 0] DE2_70_SOPC_clock_1_out_address_to_slave;
  reg     [  1: 0] DE2_70_SOPC_clock_1_out_byteenable_last_time;
  reg              DE2_70_SOPC_clock_1_out_read_last_time;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_out_readdata;
  wire             DE2_70_SOPC_clock_1_out_reset_n;
  wire             DE2_70_SOPC_clock_1_out_run;
  wire             DE2_70_SOPC_clock_1_out_waitrequest;
  reg              DE2_70_SOPC_clock_1_out_write_last_time;
  reg     [ 15: 0] DE2_70_SOPC_clock_1_out_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_1;
  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1 | DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1 | ~DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1) & (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 | ~DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1) & ((~DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1 | ~DE2_70_SOPC_clock_1_out_read | (DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1 & DE2_70_SOPC_clock_1_out_read))) & ((~DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1 | ~(DE2_70_SOPC_clock_1_out_read | DE2_70_SOPC_clock_1_out_write) | (1 & ~sdram_u1_s1_waitrequest_from_sa & (DE2_70_SOPC_clock_1_out_read | DE2_70_SOPC_clock_1_out_write))));

  //cascaded wait assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_run = r_1;

  //optimize select-logic by passing only those address bits which matter.
  assign DE2_70_SOPC_clock_1_out_address_to_slave = DE2_70_SOPC_clock_1_out_address;

  //DE2_70_SOPC_clock_1/out readdata mux, which is an e_mux
  assign DE2_70_SOPC_clock_1_out_readdata = sdram_u1_s1_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_waitrequest = ~DE2_70_SOPC_clock_1_out_run;

  //DE2_70_SOPC_clock_1_out_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_1_out_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_out_address_last_time <= 0;
      else 
        DE2_70_SOPC_clock_1_out_address_last_time <= DE2_70_SOPC_clock_1_out_address;
    end


  //DE2_70_SOPC_clock_1/out waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= DE2_70_SOPC_clock_1_out_waitrequest & (DE2_70_SOPC_clock_1_out_read | DE2_70_SOPC_clock_1_out_write);
    end


  //DE2_70_SOPC_clock_1_out_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_1_out_address != DE2_70_SOPC_clock_1_out_address_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_1_out_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_1_out_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_out_byteenable_last_time <= 0;
      else 
        DE2_70_SOPC_clock_1_out_byteenable_last_time <= DE2_70_SOPC_clock_1_out_byteenable;
    end


  //DE2_70_SOPC_clock_1_out_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_1_out_byteenable != DE2_70_SOPC_clock_1_out_byteenable_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_1_out_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_1_out_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_out_read_last_time <= 0;
      else 
        DE2_70_SOPC_clock_1_out_read_last_time <= DE2_70_SOPC_clock_1_out_read;
    end


  //DE2_70_SOPC_clock_1_out_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_1_out_read != DE2_70_SOPC_clock_1_out_read_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_1_out_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_1_out_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_out_write_last_time <= 0;
      else 
        DE2_70_SOPC_clock_1_out_write_last_time <= DE2_70_SOPC_clock_1_out_write;
    end


  //DE2_70_SOPC_clock_1_out_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_1_out_write != DE2_70_SOPC_clock_1_out_write_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_1_out_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_1_out_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_1_out_writedata_last_time <= 0;
      else 
        DE2_70_SOPC_clock_1_out_writedata_last_time <= DE2_70_SOPC_clock_1_out_writedata;
    end


  //DE2_70_SOPC_clock_1_out_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_1_out_writedata != DE2_70_SOPC_clock_1_out_writedata_last_time) & DE2_70_SOPC_clock_1_out_write)
        begin
          $write("%0d ns: DE2_70_SOPC_clock_1_out_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_2_in_arbitrator (
                                           // inputs:
                                            DE2_70_SOPC_clock_2_in_endofpacket,
                                            DE2_70_SOPC_clock_2_in_readdata,
                                            DE2_70_SOPC_clock_2_in_waitrequest,
                                            clk,
                                            cpu_data_master_address_to_slave,
                                            cpu_data_master_byteenable,
                                            cpu_data_master_latency_counter,
                                            cpu_data_master_read,
                                            cpu_data_master_write,
                                            cpu_data_master_writedata,
                                            reset_n,

                                           // outputs:
                                            DE2_70_SOPC_clock_2_in_address,
                                            DE2_70_SOPC_clock_2_in_byteenable,
                                            DE2_70_SOPC_clock_2_in_endofpacket_from_sa,
                                            DE2_70_SOPC_clock_2_in_nativeaddress,
                                            DE2_70_SOPC_clock_2_in_read,
                                            DE2_70_SOPC_clock_2_in_readdata_from_sa,
                                            DE2_70_SOPC_clock_2_in_reset_n,
                                            DE2_70_SOPC_clock_2_in_waitrequest_from_sa,
                                            DE2_70_SOPC_clock_2_in_write,
                                            DE2_70_SOPC_clock_2_in_writedata,
                                            cpu_data_master_granted_DE2_70_SOPC_clock_2_in,
                                            cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in,
                                            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in,
                                            cpu_data_master_requests_DE2_70_SOPC_clock_2_in,
                                            d1_DE2_70_SOPC_clock_2_in_end_xfer
                                         )
;

  output  [  3: 0] DE2_70_SOPC_clock_2_in_address;
  output  [  1: 0] DE2_70_SOPC_clock_2_in_byteenable;
  output           DE2_70_SOPC_clock_2_in_endofpacket_from_sa;
  output  [  2: 0] DE2_70_SOPC_clock_2_in_nativeaddress;
  output           DE2_70_SOPC_clock_2_in_read;
  output  [ 15: 0] DE2_70_SOPC_clock_2_in_readdata_from_sa;
  output           DE2_70_SOPC_clock_2_in_reset_n;
  output           DE2_70_SOPC_clock_2_in_waitrequest_from_sa;
  output           DE2_70_SOPC_clock_2_in_write;
  output  [ 15: 0] DE2_70_SOPC_clock_2_in_writedata;
  output           cpu_data_master_granted_DE2_70_SOPC_clock_2_in;
  output           cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in;
  output           cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in;
  output           cpu_data_master_requests_DE2_70_SOPC_clock_2_in;
  output           d1_DE2_70_SOPC_clock_2_in_end_xfer;
  input            DE2_70_SOPC_clock_2_in_endofpacket;
  input   [ 15: 0] DE2_70_SOPC_clock_2_in_readdata;
  input            DE2_70_SOPC_clock_2_in_waitrequest;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  3: 0] DE2_70_SOPC_clock_2_in_address;
  wire             DE2_70_SOPC_clock_2_in_allgrants;
  wire             DE2_70_SOPC_clock_2_in_allow_new_arb_cycle;
  wire             DE2_70_SOPC_clock_2_in_any_bursting_master_saved_grant;
  wire             DE2_70_SOPC_clock_2_in_any_continuerequest;
  wire             DE2_70_SOPC_clock_2_in_arb_counter_enable;
  reg     [  1: 0] DE2_70_SOPC_clock_2_in_arb_share_counter;
  wire    [  1: 0] DE2_70_SOPC_clock_2_in_arb_share_counter_next_value;
  wire    [  1: 0] DE2_70_SOPC_clock_2_in_arb_share_set_values;
  wire             DE2_70_SOPC_clock_2_in_beginbursttransfer_internal;
  wire             DE2_70_SOPC_clock_2_in_begins_xfer;
  wire    [  1: 0] DE2_70_SOPC_clock_2_in_byteenable;
  wire             DE2_70_SOPC_clock_2_in_end_xfer;
  wire             DE2_70_SOPC_clock_2_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_2_in_firsttransfer;
  wire             DE2_70_SOPC_clock_2_in_grant_vector;
  wire             DE2_70_SOPC_clock_2_in_in_a_read_cycle;
  wire             DE2_70_SOPC_clock_2_in_in_a_write_cycle;
  wire             DE2_70_SOPC_clock_2_in_master_qreq_vector;
  wire    [  2: 0] DE2_70_SOPC_clock_2_in_nativeaddress;
  wire             DE2_70_SOPC_clock_2_in_non_bursting_master_requests;
  wire             DE2_70_SOPC_clock_2_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_in_readdata_from_sa;
  reg              DE2_70_SOPC_clock_2_in_reg_firsttransfer;
  wire             DE2_70_SOPC_clock_2_in_reset_n;
  reg              DE2_70_SOPC_clock_2_in_slavearbiterlockenable;
  wire             DE2_70_SOPC_clock_2_in_slavearbiterlockenable2;
  wire             DE2_70_SOPC_clock_2_in_unreg_firsttransfer;
  wire             DE2_70_SOPC_clock_2_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_2_in_waits_for_read;
  wire             DE2_70_SOPC_clock_2_in_waits_for_write;
  wire             DE2_70_SOPC_clock_2_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_in_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_saved_grant_DE2_70_SOPC_clock_2_in;
  reg              d1_DE2_70_SOPC_clock_2_in_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 27: 0] shifted_address_to_DE2_70_SOPC_clock_2_in_from_cpu_data_master;
  wire             wait_for_DE2_70_SOPC_clock_2_in_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DE2_70_SOPC_clock_2_in_end_xfer;
    end


  assign DE2_70_SOPC_clock_2_in_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in));
  //assign DE2_70_SOPC_clock_2_in_readdata_from_sa = DE2_70_SOPC_clock_2_in_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_readdata_from_sa = DE2_70_SOPC_clock_2_in_readdata;

  assign cpu_data_master_requests_DE2_70_SOPC_clock_2_in = ({cpu_data_master_address_to_slave[27 : 5] , 5'b0} == 28'h2001060) & (cpu_data_master_read | cpu_data_master_write);
  //assign DE2_70_SOPC_clock_2_in_waitrequest_from_sa = DE2_70_SOPC_clock_2_in_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_waitrequest_from_sa = DE2_70_SOPC_clock_2_in_waitrequest;

  //DE2_70_SOPC_clock_2_in_arb_share_counter set values, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_arb_share_set_values = 1;

  //DE2_70_SOPC_clock_2_in_non_bursting_master_requests mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_non_bursting_master_requests = cpu_data_master_requests_DE2_70_SOPC_clock_2_in;

  //DE2_70_SOPC_clock_2_in_any_bursting_master_saved_grant mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_any_bursting_master_saved_grant = 0;

  //DE2_70_SOPC_clock_2_in_arb_share_counter_next_value assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_arb_share_counter_next_value = DE2_70_SOPC_clock_2_in_firsttransfer ? (DE2_70_SOPC_clock_2_in_arb_share_set_values - 1) : |DE2_70_SOPC_clock_2_in_arb_share_counter ? (DE2_70_SOPC_clock_2_in_arb_share_counter - 1) : 0;

  //DE2_70_SOPC_clock_2_in_allgrants all slave grants, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_allgrants = |DE2_70_SOPC_clock_2_in_grant_vector;

  //DE2_70_SOPC_clock_2_in_end_xfer assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_end_xfer = ~(DE2_70_SOPC_clock_2_in_waits_for_read | DE2_70_SOPC_clock_2_in_waits_for_write);

  //end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in = DE2_70_SOPC_clock_2_in_end_xfer & (~DE2_70_SOPC_clock_2_in_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DE2_70_SOPC_clock_2_in_arb_share_counter arbitration counter enable, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_arb_counter_enable = (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in & DE2_70_SOPC_clock_2_in_allgrants) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in & ~DE2_70_SOPC_clock_2_in_non_bursting_master_requests);

  //DE2_70_SOPC_clock_2_in_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_in_arb_share_counter <= 0;
      else if (DE2_70_SOPC_clock_2_in_arb_counter_enable)
          DE2_70_SOPC_clock_2_in_arb_share_counter <= DE2_70_SOPC_clock_2_in_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_2_in_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_in_slavearbiterlockenable <= 0;
      else if ((|DE2_70_SOPC_clock_2_in_master_qreq_vector & end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_2_in & ~DE2_70_SOPC_clock_2_in_non_bursting_master_requests))
          DE2_70_SOPC_clock_2_in_slavearbiterlockenable <= |DE2_70_SOPC_clock_2_in_arb_share_counter_next_value;
    end


  //cpu/data_master DE2_70_SOPC_clock_2/in arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = DE2_70_SOPC_clock_2_in_slavearbiterlockenable & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_2_in_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_slavearbiterlockenable2 = |DE2_70_SOPC_clock_2_in_arb_share_counter_next_value;

  //cpu/data_master DE2_70_SOPC_clock_2/in arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = DE2_70_SOPC_clock_2_in_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_2_in_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in = cpu_data_master_requests_DE2_70_SOPC_clock_2_in & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in, which is an e_mux
  assign cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in = cpu_data_master_granted_DE2_70_SOPC_clock_2_in & cpu_data_master_read & ~DE2_70_SOPC_clock_2_in_waits_for_read;

  //DE2_70_SOPC_clock_2_in_writedata mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_writedata = cpu_data_master_writedata;

  //assign DE2_70_SOPC_clock_2_in_endofpacket_from_sa = DE2_70_SOPC_clock_2_in_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_endofpacket_from_sa = DE2_70_SOPC_clock_2_in_endofpacket;

  //master is always granted when requested
  assign cpu_data_master_granted_DE2_70_SOPC_clock_2_in = cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in;

  //cpu/data_master saved-grant DE2_70_SOPC_clock_2/in, which is an e_assign
  assign cpu_data_master_saved_grant_DE2_70_SOPC_clock_2_in = cpu_data_master_requests_DE2_70_SOPC_clock_2_in;

  //allow new arb cycle for DE2_70_SOPC_clock_2/in, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DE2_70_SOPC_clock_2_in_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DE2_70_SOPC_clock_2_in_master_qreq_vector = 1;

  //DE2_70_SOPC_clock_2_in_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_reset_n = reset_n;

  //DE2_70_SOPC_clock_2_in_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_firsttransfer = DE2_70_SOPC_clock_2_in_begins_xfer ? DE2_70_SOPC_clock_2_in_unreg_firsttransfer : DE2_70_SOPC_clock_2_in_reg_firsttransfer;

  //DE2_70_SOPC_clock_2_in_unreg_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_unreg_firsttransfer = ~(DE2_70_SOPC_clock_2_in_slavearbiterlockenable & DE2_70_SOPC_clock_2_in_any_continuerequest);

  //DE2_70_SOPC_clock_2_in_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_in_reg_firsttransfer <= 1'b1;
      else if (DE2_70_SOPC_clock_2_in_begins_xfer)
          DE2_70_SOPC_clock_2_in_reg_firsttransfer <= DE2_70_SOPC_clock_2_in_unreg_firsttransfer;
    end


  //DE2_70_SOPC_clock_2_in_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_beginbursttransfer_internal = DE2_70_SOPC_clock_2_in_begins_xfer;

  //DE2_70_SOPC_clock_2_in_read assignment, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_read = cpu_data_master_granted_DE2_70_SOPC_clock_2_in & cpu_data_master_read;

  //DE2_70_SOPC_clock_2_in_write assignment, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_write = cpu_data_master_granted_DE2_70_SOPC_clock_2_in & cpu_data_master_write;

  assign shifted_address_to_DE2_70_SOPC_clock_2_in_from_cpu_data_master = cpu_data_master_address_to_slave;
  //DE2_70_SOPC_clock_2_in_address mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_address = shifted_address_to_DE2_70_SOPC_clock_2_in_from_cpu_data_master >> 2;

  //slaveid DE2_70_SOPC_clock_2_in_nativeaddress nativeaddress mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_nativeaddress = cpu_data_master_address_to_slave >> 2;

  //d1_DE2_70_SOPC_clock_2_in_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DE2_70_SOPC_clock_2_in_end_xfer <= 1;
      else 
        d1_DE2_70_SOPC_clock_2_in_end_xfer <= DE2_70_SOPC_clock_2_in_end_xfer;
    end


  //DE2_70_SOPC_clock_2_in_waits_for_read in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_waits_for_read = DE2_70_SOPC_clock_2_in_in_a_read_cycle & DE2_70_SOPC_clock_2_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_2_in_in_a_read_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_in_a_read_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_2_in & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DE2_70_SOPC_clock_2_in_in_a_read_cycle;

  //DE2_70_SOPC_clock_2_in_waits_for_write in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_waits_for_write = DE2_70_SOPC_clock_2_in_in_a_write_cycle & DE2_70_SOPC_clock_2_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_2_in_in_a_write_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_in_in_a_write_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_2_in & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DE2_70_SOPC_clock_2_in_in_a_write_cycle;

  assign wait_for_DE2_70_SOPC_clock_2_in_counter = 0;
  //DE2_70_SOPC_clock_2_in_byteenable byte enable port mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_in_byteenable = (cpu_data_master_granted_DE2_70_SOPC_clock_2_in)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_2/in enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_2_out_arbitrator (
                                            // inputs:
                                             DE2_70_SOPC_clock_2_out_address,
                                             DE2_70_SOPC_clock_2_out_byteenable,
                                             DE2_70_SOPC_clock_2_out_granted_pll_s1,
                                             DE2_70_SOPC_clock_2_out_qualified_request_pll_s1,
                                             DE2_70_SOPC_clock_2_out_read,
                                             DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1,
                                             DE2_70_SOPC_clock_2_out_requests_pll_s1,
                                             DE2_70_SOPC_clock_2_out_write,
                                             DE2_70_SOPC_clock_2_out_writedata,
                                             clk,
                                             d1_pll_s1_end_xfer,
                                             pll_s1_readdata_from_sa,
                                             reset_n,

                                            // outputs:
                                             DE2_70_SOPC_clock_2_out_address_to_slave,
                                             DE2_70_SOPC_clock_2_out_readdata,
                                             DE2_70_SOPC_clock_2_out_reset_n,
                                             DE2_70_SOPC_clock_2_out_waitrequest
                                          )
;

  output  [  3: 0] DE2_70_SOPC_clock_2_out_address_to_slave;
  output  [ 15: 0] DE2_70_SOPC_clock_2_out_readdata;
  output           DE2_70_SOPC_clock_2_out_reset_n;
  output           DE2_70_SOPC_clock_2_out_waitrequest;
  input   [  3: 0] DE2_70_SOPC_clock_2_out_address;
  input   [  1: 0] DE2_70_SOPC_clock_2_out_byteenable;
  input            DE2_70_SOPC_clock_2_out_granted_pll_s1;
  input            DE2_70_SOPC_clock_2_out_qualified_request_pll_s1;
  input            DE2_70_SOPC_clock_2_out_read;
  input            DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1;
  input            DE2_70_SOPC_clock_2_out_requests_pll_s1;
  input            DE2_70_SOPC_clock_2_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_2_out_writedata;
  input            clk;
  input            d1_pll_s1_end_xfer;
  input   [ 15: 0] pll_s1_readdata_from_sa;
  input            reset_n;

  reg     [  3: 0] DE2_70_SOPC_clock_2_out_address_last_time;
  wire    [  3: 0] DE2_70_SOPC_clock_2_out_address_to_slave;
  reg     [  1: 0] DE2_70_SOPC_clock_2_out_byteenable_last_time;
  reg              DE2_70_SOPC_clock_2_out_read_last_time;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_out_readdata;
  wire             DE2_70_SOPC_clock_2_out_reset_n;
  wire             DE2_70_SOPC_clock_2_out_run;
  wire             DE2_70_SOPC_clock_2_out_waitrequest;
  reg              DE2_70_SOPC_clock_2_out_write_last_time;
  reg     [ 15: 0] DE2_70_SOPC_clock_2_out_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_1;
  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & ((~DE2_70_SOPC_clock_2_out_qualified_request_pll_s1 | ~DE2_70_SOPC_clock_2_out_read | (1 & ~d1_pll_s1_end_xfer & DE2_70_SOPC_clock_2_out_read))) & ((~DE2_70_SOPC_clock_2_out_qualified_request_pll_s1 | ~DE2_70_SOPC_clock_2_out_write | (1 & DE2_70_SOPC_clock_2_out_write)));

  //cascaded wait assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_run = r_1;

  //optimize select-logic by passing only those address bits which matter.
  assign DE2_70_SOPC_clock_2_out_address_to_slave = DE2_70_SOPC_clock_2_out_address;

  //DE2_70_SOPC_clock_2/out readdata mux, which is an e_mux
  assign DE2_70_SOPC_clock_2_out_readdata = pll_s1_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_waitrequest = ~DE2_70_SOPC_clock_2_out_run;

  //DE2_70_SOPC_clock_2_out_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_2_out_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_out_address_last_time <= 0;
      else 
        DE2_70_SOPC_clock_2_out_address_last_time <= DE2_70_SOPC_clock_2_out_address;
    end


  //DE2_70_SOPC_clock_2/out waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= DE2_70_SOPC_clock_2_out_waitrequest & (DE2_70_SOPC_clock_2_out_read | DE2_70_SOPC_clock_2_out_write);
    end


  //DE2_70_SOPC_clock_2_out_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_2_out_address != DE2_70_SOPC_clock_2_out_address_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_2_out_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_2_out_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_out_byteenable_last_time <= 0;
      else 
        DE2_70_SOPC_clock_2_out_byteenable_last_time <= DE2_70_SOPC_clock_2_out_byteenable;
    end


  //DE2_70_SOPC_clock_2_out_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_2_out_byteenable != DE2_70_SOPC_clock_2_out_byteenable_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_2_out_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_2_out_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_out_read_last_time <= 0;
      else 
        DE2_70_SOPC_clock_2_out_read_last_time <= DE2_70_SOPC_clock_2_out_read;
    end


  //DE2_70_SOPC_clock_2_out_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_2_out_read != DE2_70_SOPC_clock_2_out_read_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_2_out_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_2_out_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_out_write_last_time <= 0;
      else 
        DE2_70_SOPC_clock_2_out_write_last_time <= DE2_70_SOPC_clock_2_out_write;
    end


  //DE2_70_SOPC_clock_2_out_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_2_out_write != DE2_70_SOPC_clock_2_out_write_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_2_out_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_2_out_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_2_out_writedata_last_time <= 0;
      else 
        DE2_70_SOPC_clock_2_out_writedata_last_time <= DE2_70_SOPC_clock_2_out_writedata;
    end


  //DE2_70_SOPC_clock_2_out_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_2_out_writedata != DE2_70_SOPC_clock_2_out_writedata_last_time) & DE2_70_SOPC_clock_2_out_write)
        begin
          $write("%0d ns: DE2_70_SOPC_clock_2_out_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_3_in_arbitrator (
                                           // inputs:
                                            DE2_70_SOPC_clock_3_in_endofpacket,
                                            DE2_70_SOPC_clock_3_in_readdata,
                                            DE2_70_SOPC_clock_3_in_waitrequest,
                                            clk,
                                            cpu_data_master_address_to_slave,
                                            cpu_data_master_byteenable,
                                            cpu_data_master_latency_counter,
                                            cpu_data_master_read,
                                            cpu_data_master_write,
                                            cpu_data_master_writedata,
                                            reset_n,

                                           // outputs:
                                            DE2_70_SOPC_clock_3_in_address,
                                            DE2_70_SOPC_clock_3_in_byteenable,
                                            DE2_70_SOPC_clock_3_in_endofpacket_from_sa,
                                            DE2_70_SOPC_clock_3_in_nativeaddress,
                                            DE2_70_SOPC_clock_3_in_read,
                                            DE2_70_SOPC_clock_3_in_readdata_from_sa,
                                            DE2_70_SOPC_clock_3_in_reset_n,
                                            DE2_70_SOPC_clock_3_in_waitrequest_from_sa,
                                            DE2_70_SOPC_clock_3_in_write,
                                            DE2_70_SOPC_clock_3_in_writedata,
                                            cpu_data_master_granted_DE2_70_SOPC_clock_3_in,
                                            cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in,
                                            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in,
                                            cpu_data_master_requests_DE2_70_SOPC_clock_3_in,
                                            d1_DE2_70_SOPC_clock_3_in_end_xfer
                                         )
;

  output  [  1: 0] DE2_70_SOPC_clock_3_in_address;
  output  [  1: 0] DE2_70_SOPC_clock_3_in_byteenable;
  output           DE2_70_SOPC_clock_3_in_endofpacket_from_sa;
  output           DE2_70_SOPC_clock_3_in_nativeaddress;
  output           DE2_70_SOPC_clock_3_in_read;
  output  [ 15: 0] DE2_70_SOPC_clock_3_in_readdata_from_sa;
  output           DE2_70_SOPC_clock_3_in_reset_n;
  output           DE2_70_SOPC_clock_3_in_waitrequest_from_sa;
  output           DE2_70_SOPC_clock_3_in_write;
  output  [ 15: 0] DE2_70_SOPC_clock_3_in_writedata;
  output           cpu_data_master_granted_DE2_70_SOPC_clock_3_in;
  output           cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in;
  output           cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in;
  output           cpu_data_master_requests_DE2_70_SOPC_clock_3_in;
  output           d1_DE2_70_SOPC_clock_3_in_end_xfer;
  input            DE2_70_SOPC_clock_3_in_endofpacket;
  input   [ 15: 0] DE2_70_SOPC_clock_3_in_readdata;
  input            DE2_70_SOPC_clock_3_in_waitrequest;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] DE2_70_SOPC_clock_3_in_address;
  wire             DE2_70_SOPC_clock_3_in_allgrants;
  wire             DE2_70_SOPC_clock_3_in_allow_new_arb_cycle;
  wire             DE2_70_SOPC_clock_3_in_any_bursting_master_saved_grant;
  wire             DE2_70_SOPC_clock_3_in_any_continuerequest;
  wire             DE2_70_SOPC_clock_3_in_arb_counter_enable;
  reg     [  1: 0] DE2_70_SOPC_clock_3_in_arb_share_counter;
  wire    [  1: 0] DE2_70_SOPC_clock_3_in_arb_share_counter_next_value;
  wire    [  1: 0] DE2_70_SOPC_clock_3_in_arb_share_set_values;
  wire             DE2_70_SOPC_clock_3_in_beginbursttransfer_internal;
  wire             DE2_70_SOPC_clock_3_in_begins_xfer;
  wire    [  1: 0] DE2_70_SOPC_clock_3_in_byteenable;
  wire             DE2_70_SOPC_clock_3_in_end_xfer;
  wire             DE2_70_SOPC_clock_3_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_3_in_firsttransfer;
  wire             DE2_70_SOPC_clock_3_in_grant_vector;
  wire             DE2_70_SOPC_clock_3_in_in_a_read_cycle;
  wire             DE2_70_SOPC_clock_3_in_in_a_write_cycle;
  wire             DE2_70_SOPC_clock_3_in_master_qreq_vector;
  wire             DE2_70_SOPC_clock_3_in_nativeaddress;
  wire             DE2_70_SOPC_clock_3_in_non_bursting_master_requests;
  wire             DE2_70_SOPC_clock_3_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_in_readdata_from_sa;
  reg              DE2_70_SOPC_clock_3_in_reg_firsttransfer;
  wire             DE2_70_SOPC_clock_3_in_reset_n;
  reg              DE2_70_SOPC_clock_3_in_slavearbiterlockenable;
  wire             DE2_70_SOPC_clock_3_in_slavearbiterlockenable2;
  wire             DE2_70_SOPC_clock_3_in_unreg_firsttransfer;
  wire             DE2_70_SOPC_clock_3_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_3_in_waits_for_read;
  wire             DE2_70_SOPC_clock_3_in_waits_for_write;
  wire             DE2_70_SOPC_clock_3_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_in_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_saved_grant_DE2_70_SOPC_clock_3_in;
  reg              d1_DE2_70_SOPC_clock_3_in_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 27: 0] shifted_address_to_DE2_70_SOPC_clock_3_in_from_cpu_data_master;
  wire             wait_for_DE2_70_SOPC_clock_3_in_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DE2_70_SOPC_clock_3_in_end_xfer;
    end


  assign DE2_70_SOPC_clock_3_in_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in));
  //assign DE2_70_SOPC_clock_3_in_readdata_from_sa = DE2_70_SOPC_clock_3_in_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_readdata_from_sa = DE2_70_SOPC_clock_3_in_readdata;

  assign cpu_data_master_requests_DE2_70_SOPC_clock_3_in = ({cpu_data_master_address_to_slave[27 : 3] , 3'b0} == 28'h20010a8) & (cpu_data_master_read | cpu_data_master_write);
  //assign DE2_70_SOPC_clock_3_in_waitrequest_from_sa = DE2_70_SOPC_clock_3_in_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_waitrequest_from_sa = DE2_70_SOPC_clock_3_in_waitrequest;

  //DE2_70_SOPC_clock_3_in_arb_share_counter set values, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_arb_share_set_values = 1;

  //DE2_70_SOPC_clock_3_in_non_bursting_master_requests mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_non_bursting_master_requests = cpu_data_master_requests_DE2_70_SOPC_clock_3_in;

  //DE2_70_SOPC_clock_3_in_any_bursting_master_saved_grant mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_any_bursting_master_saved_grant = 0;

  //DE2_70_SOPC_clock_3_in_arb_share_counter_next_value assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_arb_share_counter_next_value = DE2_70_SOPC_clock_3_in_firsttransfer ? (DE2_70_SOPC_clock_3_in_arb_share_set_values - 1) : |DE2_70_SOPC_clock_3_in_arb_share_counter ? (DE2_70_SOPC_clock_3_in_arb_share_counter - 1) : 0;

  //DE2_70_SOPC_clock_3_in_allgrants all slave grants, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_allgrants = |DE2_70_SOPC_clock_3_in_grant_vector;

  //DE2_70_SOPC_clock_3_in_end_xfer assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_end_xfer = ~(DE2_70_SOPC_clock_3_in_waits_for_read | DE2_70_SOPC_clock_3_in_waits_for_write);

  //end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in = DE2_70_SOPC_clock_3_in_end_xfer & (~DE2_70_SOPC_clock_3_in_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DE2_70_SOPC_clock_3_in_arb_share_counter arbitration counter enable, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_arb_counter_enable = (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in & DE2_70_SOPC_clock_3_in_allgrants) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in & ~DE2_70_SOPC_clock_3_in_non_bursting_master_requests);

  //DE2_70_SOPC_clock_3_in_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_in_arb_share_counter <= 0;
      else if (DE2_70_SOPC_clock_3_in_arb_counter_enable)
          DE2_70_SOPC_clock_3_in_arb_share_counter <= DE2_70_SOPC_clock_3_in_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_3_in_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_in_slavearbiterlockenable <= 0;
      else if ((|DE2_70_SOPC_clock_3_in_master_qreq_vector & end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in) | (end_xfer_arb_share_counter_term_DE2_70_SOPC_clock_3_in & ~DE2_70_SOPC_clock_3_in_non_bursting_master_requests))
          DE2_70_SOPC_clock_3_in_slavearbiterlockenable <= |DE2_70_SOPC_clock_3_in_arb_share_counter_next_value;
    end


  //cpu/data_master DE2_70_SOPC_clock_3/in arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = DE2_70_SOPC_clock_3_in_slavearbiterlockenable & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_3_in_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_slavearbiterlockenable2 = |DE2_70_SOPC_clock_3_in_arb_share_counter_next_value;

  //cpu/data_master DE2_70_SOPC_clock_3/in arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = DE2_70_SOPC_clock_3_in_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //DE2_70_SOPC_clock_3_in_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in = cpu_data_master_requests_DE2_70_SOPC_clock_3_in & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in, which is an e_mux
  assign cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in = cpu_data_master_granted_DE2_70_SOPC_clock_3_in & cpu_data_master_read & ~DE2_70_SOPC_clock_3_in_waits_for_read;

  //DE2_70_SOPC_clock_3_in_writedata mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_writedata = cpu_data_master_writedata;

  //assign DE2_70_SOPC_clock_3_in_endofpacket_from_sa = DE2_70_SOPC_clock_3_in_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_endofpacket_from_sa = DE2_70_SOPC_clock_3_in_endofpacket;

  //master is always granted when requested
  assign cpu_data_master_granted_DE2_70_SOPC_clock_3_in = cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in;

  //cpu/data_master saved-grant DE2_70_SOPC_clock_3/in, which is an e_assign
  assign cpu_data_master_saved_grant_DE2_70_SOPC_clock_3_in = cpu_data_master_requests_DE2_70_SOPC_clock_3_in;

  //allow new arb cycle for DE2_70_SOPC_clock_3/in, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DE2_70_SOPC_clock_3_in_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DE2_70_SOPC_clock_3_in_master_qreq_vector = 1;

  //DE2_70_SOPC_clock_3_in_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_reset_n = reset_n;

  //DE2_70_SOPC_clock_3_in_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_firsttransfer = DE2_70_SOPC_clock_3_in_begins_xfer ? DE2_70_SOPC_clock_3_in_unreg_firsttransfer : DE2_70_SOPC_clock_3_in_reg_firsttransfer;

  //DE2_70_SOPC_clock_3_in_unreg_firsttransfer first transaction, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_unreg_firsttransfer = ~(DE2_70_SOPC_clock_3_in_slavearbiterlockenable & DE2_70_SOPC_clock_3_in_any_continuerequest);

  //DE2_70_SOPC_clock_3_in_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_in_reg_firsttransfer <= 1'b1;
      else if (DE2_70_SOPC_clock_3_in_begins_xfer)
          DE2_70_SOPC_clock_3_in_reg_firsttransfer <= DE2_70_SOPC_clock_3_in_unreg_firsttransfer;
    end


  //DE2_70_SOPC_clock_3_in_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_beginbursttransfer_internal = DE2_70_SOPC_clock_3_in_begins_xfer;

  //DE2_70_SOPC_clock_3_in_read assignment, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_read = cpu_data_master_granted_DE2_70_SOPC_clock_3_in & cpu_data_master_read;

  //DE2_70_SOPC_clock_3_in_write assignment, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_write = cpu_data_master_granted_DE2_70_SOPC_clock_3_in & cpu_data_master_write;

  assign shifted_address_to_DE2_70_SOPC_clock_3_in_from_cpu_data_master = cpu_data_master_address_to_slave;
  //DE2_70_SOPC_clock_3_in_address mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_address = shifted_address_to_DE2_70_SOPC_clock_3_in_from_cpu_data_master >> 2;

  //slaveid DE2_70_SOPC_clock_3_in_nativeaddress nativeaddress mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_nativeaddress = cpu_data_master_address_to_slave >> 2;

  //d1_DE2_70_SOPC_clock_3_in_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DE2_70_SOPC_clock_3_in_end_xfer <= 1;
      else 
        d1_DE2_70_SOPC_clock_3_in_end_xfer <= DE2_70_SOPC_clock_3_in_end_xfer;
    end


  //DE2_70_SOPC_clock_3_in_waits_for_read in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_waits_for_read = DE2_70_SOPC_clock_3_in_in_a_read_cycle & DE2_70_SOPC_clock_3_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_3_in_in_a_read_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_in_a_read_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_3_in & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DE2_70_SOPC_clock_3_in_in_a_read_cycle;

  //DE2_70_SOPC_clock_3_in_waits_for_write in a cycle, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_waits_for_write = DE2_70_SOPC_clock_3_in_in_a_write_cycle & DE2_70_SOPC_clock_3_in_waitrequest_from_sa;

  //DE2_70_SOPC_clock_3_in_in_a_write_cycle assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_in_in_a_write_cycle = cpu_data_master_granted_DE2_70_SOPC_clock_3_in & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DE2_70_SOPC_clock_3_in_in_a_write_cycle;

  assign wait_for_DE2_70_SOPC_clock_3_in_counter = 0;
  //DE2_70_SOPC_clock_3_in_byteenable byte enable port mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_in_byteenable = (cpu_data_master_granted_DE2_70_SOPC_clock_3_in)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_3/in enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_clock_3_out_arbitrator (
                                            // inputs:
                                             DE2_70_SOPC_clock_3_out_address,
                                             DE2_70_SOPC_clock_3_out_byteenable,
                                             DE2_70_SOPC_clock_3_out_granted_DM9000A_s1,
                                             DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1,
                                             DE2_70_SOPC_clock_3_out_read,
                                             DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1,
                                             DE2_70_SOPC_clock_3_out_requests_DM9000A_s1,
                                             DE2_70_SOPC_clock_3_out_write,
                                             DE2_70_SOPC_clock_3_out_writedata,
                                             DM9000A_s1_readdata_from_sa,
                                             DM9000A_s1_wait_counter_eq_0,
                                             clk,
                                             d1_DM9000A_s1_end_xfer,
                                             reset_n,

                                            // outputs:
                                             DE2_70_SOPC_clock_3_out_address_to_slave,
                                             DE2_70_SOPC_clock_3_out_readdata,
                                             DE2_70_SOPC_clock_3_out_reset_n,
                                             DE2_70_SOPC_clock_3_out_waitrequest
                                          )
;

  output  [  1: 0] DE2_70_SOPC_clock_3_out_address_to_slave;
  output  [ 15: 0] DE2_70_SOPC_clock_3_out_readdata;
  output           DE2_70_SOPC_clock_3_out_reset_n;
  output           DE2_70_SOPC_clock_3_out_waitrequest;
  input   [  1: 0] DE2_70_SOPC_clock_3_out_address;
  input   [  1: 0] DE2_70_SOPC_clock_3_out_byteenable;
  input            DE2_70_SOPC_clock_3_out_granted_DM9000A_s1;
  input            DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1;
  input            DE2_70_SOPC_clock_3_out_read;
  input            DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1;
  input            DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;
  input            DE2_70_SOPC_clock_3_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_3_out_writedata;
  input   [ 15: 0] DM9000A_s1_readdata_from_sa;
  input            DM9000A_s1_wait_counter_eq_0;
  input            clk;
  input            d1_DM9000A_s1_end_xfer;
  input            reset_n;

  reg     [  1: 0] DE2_70_SOPC_clock_3_out_address_last_time;
  wire    [  1: 0] DE2_70_SOPC_clock_3_out_address_to_slave;
  reg     [  1: 0] DE2_70_SOPC_clock_3_out_byteenable_last_time;
  reg              DE2_70_SOPC_clock_3_out_read_last_time;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_out_readdata;
  wire             DE2_70_SOPC_clock_3_out_reset_n;
  wire             DE2_70_SOPC_clock_3_out_run;
  wire             DE2_70_SOPC_clock_3_out_waitrequest;
  reg              DE2_70_SOPC_clock_3_out_write_last_time;
  reg     [ 15: 0] DE2_70_SOPC_clock_3_out_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_0;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & ((~DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1 | ~DE2_70_SOPC_clock_3_out_read | (1 & ((DM9000A_s1_wait_counter_eq_0 & ~d1_DM9000A_s1_end_xfer)) & DE2_70_SOPC_clock_3_out_read))) & ((~DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1 | ~DE2_70_SOPC_clock_3_out_write | (1 & ((DM9000A_s1_wait_counter_eq_0 & ~d1_DM9000A_s1_end_xfer)) & DE2_70_SOPC_clock_3_out_write)));

  //cascaded wait assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_run = r_0;

  //optimize select-logic by passing only those address bits which matter.
  assign DE2_70_SOPC_clock_3_out_address_to_slave = DE2_70_SOPC_clock_3_out_address;

  //DE2_70_SOPC_clock_3/out readdata mux, which is an e_mux
  assign DE2_70_SOPC_clock_3_out_readdata = DM9000A_s1_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_waitrequest = ~DE2_70_SOPC_clock_3_out_run;

  //DE2_70_SOPC_clock_3_out_reset_n assignment, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE2_70_SOPC_clock_3_out_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_out_address_last_time <= 0;
      else 
        DE2_70_SOPC_clock_3_out_address_last_time <= DE2_70_SOPC_clock_3_out_address;
    end


  //DE2_70_SOPC_clock_3/out waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= DE2_70_SOPC_clock_3_out_waitrequest & (DE2_70_SOPC_clock_3_out_read | DE2_70_SOPC_clock_3_out_write);
    end


  //DE2_70_SOPC_clock_3_out_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_3_out_address != DE2_70_SOPC_clock_3_out_address_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_3_out_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_3_out_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_out_byteenable_last_time <= 0;
      else 
        DE2_70_SOPC_clock_3_out_byteenable_last_time <= DE2_70_SOPC_clock_3_out_byteenable;
    end


  //DE2_70_SOPC_clock_3_out_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_3_out_byteenable != DE2_70_SOPC_clock_3_out_byteenable_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_3_out_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_3_out_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_out_read_last_time <= 0;
      else 
        DE2_70_SOPC_clock_3_out_read_last_time <= DE2_70_SOPC_clock_3_out_read;
    end


  //DE2_70_SOPC_clock_3_out_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_3_out_read != DE2_70_SOPC_clock_3_out_read_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_3_out_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_3_out_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_out_write_last_time <= 0;
      else 
        DE2_70_SOPC_clock_3_out_write_last_time <= DE2_70_SOPC_clock_3_out_write;
    end


  //DE2_70_SOPC_clock_3_out_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_3_out_write != DE2_70_SOPC_clock_3_out_write_last_time))
        begin
          $write("%0d ns: DE2_70_SOPC_clock_3_out_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE2_70_SOPC_clock_3_out_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE2_70_SOPC_clock_3_out_writedata_last_time <= 0;
      else 
        DE2_70_SOPC_clock_3_out_writedata_last_time <= DE2_70_SOPC_clock_3_out_writedata;
    end


  //DE2_70_SOPC_clock_3_out_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE2_70_SOPC_clock_3_out_writedata != DE2_70_SOPC_clock_3_out_writedata_last_time) & DE2_70_SOPC_clock_3_out_write)
        begin
          $write("%0d ns: DE2_70_SOPC_clock_3_out_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DM9000A_s1_arbitrator (
                               // inputs:
                                DE2_70_SOPC_clock_3_out_address_to_slave,
                                DE2_70_SOPC_clock_3_out_nativeaddress,
                                DE2_70_SOPC_clock_3_out_read,
                                DE2_70_SOPC_clock_3_out_write,
                                DE2_70_SOPC_clock_3_out_writedata,
                                DM9000A_s1_irq,
                                DM9000A_s1_readdata,
                                clk,
                                reset_n,

                               // outputs:
                                DE2_70_SOPC_clock_3_out_granted_DM9000A_s1,
                                DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1,
                                DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1,
                                DE2_70_SOPC_clock_3_out_requests_DM9000A_s1,
                                DM9000A_s1_address,
                                DM9000A_s1_chipselect_n,
                                DM9000A_s1_irq_from_sa,
                                DM9000A_s1_read_n,
                                DM9000A_s1_readdata_from_sa,
                                DM9000A_s1_reset_n,
                                DM9000A_s1_wait_counter_eq_0,
                                DM9000A_s1_write_n,
                                DM9000A_s1_writedata,
                                d1_DM9000A_s1_end_xfer
                             )
;

  output           DE2_70_SOPC_clock_3_out_granted_DM9000A_s1;
  output           DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1;
  output           DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1;
  output           DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;
  output           DM9000A_s1_address;
  output           DM9000A_s1_chipselect_n;
  output           DM9000A_s1_irq_from_sa;
  output           DM9000A_s1_read_n;
  output  [ 15: 0] DM9000A_s1_readdata_from_sa;
  output           DM9000A_s1_reset_n;
  output           DM9000A_s1_wait_counter_eq_0;
  output           DM9000A_s1_write_n;
  output  [ 15: 0] DM9000A_s1_writedata;
  output           d1_DM9000A_s1_end_xfer;
  input   [  1: 0] DE2_70_SOPC_clock_3_out_address_to_slave;
  input            DE2_70_SOPC_clock_3_out_nativeaddress;
  input            DE2_70_SOPC_clock_3_out_read;
  input            DE2_70_SOPC_clock_3_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_3_out_writedata;
  input            DM9000A_s1_irq;
  input   [ 15: 0] DM9000A_s1_readdata;
  input            clk;
  input            reset_n;

  wire             DE2_70_SOPC_clock_3_out_arbiterlock;
  wire             DE2_70_SOPC_clock_3_out_arbiterlock2;
  wire             DE2_70_SOPC_clock_3_out_continuerequest;
  wire             DE2_70_SOPC_clock_3_out_granted_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_saved_grant_DM9000A_s1;
  wire             DM9000A_s1_address;
  wire             DM9000A_s1_allgrants;
  wire             DM9000A_s1_allow_new_arb_cycle;
  wire             DM9000A_s1_any_bursting_master_saved_grant;
  wire             DM9000A_s1_any_continuerequest;
  wire             DM9000A_s1_arb_counter_enable;
  reg              DM9000A_s1_arb_share_counter;
  wire             DM9000A_s1_arb_share_counter_next_value;
  wire             DM9000A_s1_arb_share_set_values;
  wire             DM9000A_s1_beginbursttransfer_internal;
  wire             DM9000A_s1_begins_xfer;
  wire             DM9000A_s1_chipselect_n;
  wire    [  1: 0] DM9000A_s1_counter_load_value;
  wire             DM9000A_s1_end_xfer;
  wire             DM9000A_s1_firsttransfer;
  wire             DM9000A_s1_grant_vector;
  wire             DM9000A_s1_in_a_read_cycle;
  wire             DM9000A_s1_in_a_write_cycle;
  wire             DM9000A_s1_irq_from_sa;
  wire             DM9000A_s1_master_qreq_vector;
  wire             DM9000A_s1_non_bursting_master_requests;
  wire             DM9000A_s1_read_n;
  wire    [ 15: 0] DM9000A_s1_readdata_from_sa;
  reg              DM9000A_s1_reg_firsttransfer;
  wire             DM9000A_s1_reset_n;
  reg              DM9000A_s1_slavearbiterlockenable;
  wire             DM9000A_s1_slavearbiterlockenable2;
  wire             DM9000A_s1_unreg_firsttransfer;
  reg     [  1: 0] DM9000A_s1_wait_counter;
  wire             DM9000A_s1_wait_counter_eq_0;
  wire             DM9000A_s1_waits_for_read;
  wire             DM9000A_s1_waits_for_write;
  wire             DM9000A_s1_write_n;
  wire    [ 15: 0] DM9000A_s1_writedata;
  reg              d1_DM9000A_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DM9000A_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_DM9000A_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DM9000A_s1_end_xfer;
    end


  assign DM9000A_s1_begins_xfer = ~d1_reasons_to_wait & ((DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1));
  //assign DM9000A_s1_readdata_from_sa = DM9000A_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DM9000A_s1_readdata_from_sa = DM9000A_s1_readdata;

  assign DE2_70_SOPC_clock_3_out_requests_DM9000A_s1 = (1) & (DE2_70_SOPC_clock_3_out_read | DE2_70_SOPC_clock_3_out_write);
  //DM9000A_s1_arb_share_counter set values, which is an e_mux
  assign DM9000A_s1_arb_share_set_values = 1;

  //DM9000A_s1_non_bursting_master_requests mux, which is an e_mux
  assign DM9000A_s1_non_bursting_master_requests = DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;

  //DM9000A_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign DM9000A_s1_any_bursting_master_saved_grant = 0;

  //DM9000A_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign DM9000A_s1_arb_share_counter_next_value = DM9000A_s1_firsttransfer ? (DM9000A_s1_arb_share_set_values - 1) : |DM9000A_s1_arb_share_counter ? (DM9000A_s1_arb_share_counter - 1) : 0;

  //DM9000A_s1_allgrants all slave grants, which is an e_mux
  assign DM9000A_s1_allgrants = |DM9000A_s1_grant_vector;

  //DM9000A_s1_end_xfer assignment, which is an e_assign
  assign DM9000A_s1_end_xfer = ~(DM9000A_s1_waits_for_read | DM9000A_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_DM9000A_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DM9000A_s1 = DM9000A_s1_end_xfer & (~DM9000A_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DM9000A_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign DM9000A_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_DM9000A_s1 & DM9000A_s1_allgrants) | (end_xfer_arb_share_counter_term_DM9000A_s1 & ~DM9000A_s1_non_bursting_master_requests);

  //DM9000A_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DM9000A_s1_arb_share_counter <= 0;
      else if (DM9000A_s1_arb_counter_enable)
          DM9000A_s1_arb_share_counter <= DM9000A_s1_arb_share_counter_next_value;
    end


  //DM9000A_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DM9000A_s1_slavearbiterlockenable <= 0;
      else if ((|DM9000A_s1_master_qreq_vector & end_xfer_arb_share_counter_term_DM9000A_s1) | (end_xfer_arb_share_counter_term_DM9000A_s1 & ~DM9000A_s1_non_bursting_master_requests))
          DM9000A_s1_slavearbiterlockenable <= |DM9000A_s1_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_3/out DM9000A/s1 arbiterlock, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_arbiterlock = DM9000A_s1_slavearbiterlockenable & DE2_70_SOPC_clock_3_out_continuerequest;

  //DM9000A_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DM9000A_s1_slavearbiterlockenable2 = |DM9000A_s1_arb_share_counter_next_value;

  //DE2_70_SOPC_clock_3/out DM9000A/s1 arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_arbiterlock2 = DM9000A_s1_slavearbiterlockenable2 & DE2_70_SOPC_clock_3_out_continuerequest;

  //DM9000A_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DM9000A_s1_any_continuerequest = 1;

  //DE2_70_SOPC_clock_3_out_continuerequest continued request, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_continuerequest = 1;

  assign DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1 = DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;
  //DM9000A_s1_writedata mux, which is an e_mux
  assign DM9000A_s1_writedata = DE2_70_SOPC_clock_3_out_writedata;

  //master is always granted when requested
  assign DE2_70_SOPC_clock_3_out_granted_DM9000A_s1 = DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1;

  //DE2_70_SOPC_clock_3/out saved-grant DM9000A/s1, which is an e_assign
  assign DE2_70_SOPC_clock_3_out_saved_grant_DM9000A_s1 = DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;

  //allow new arb cycle for DM9000A/s1, which is an e_assign
  assign DM9000A_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DM9000A_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DM9000A_s1_master_qreq_vector = 1;

  //DM9000A_s1_reset_n assignment, which is an e_assign
  assign DM9000A_s1_reset_n = reset_n;

  assign DM9000A_s1_chipselect_n = ~DE2_70_SOPC_clock_3_out_granted_DM9000A_s1;
  //DM9000A_s1_firsttransfer first transaction, which is an e_assign
  assign DM9000A_s1_firsttransfer = DM9000A_s1_begins_xfer ? DM9000A_s1_unreg_firsttransfer : DM9000A_s1_reg_firsttransfer;

  //DM9000A_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign DM9000A_s1_unreg_firsttransfer = ~(DM9000A_s1_slavearbiterlockenable & DM9000A_s1_any_continuerequest);

  //DM9000A_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DM9000A_s1_reg_firsttransfer <= 1'b1;
      else if (DM9000A_s1_begins_xfer)
          DM9000A_s1_reg_firsttransfer <= DM9000A_s1_unreg_firsttransfer;
    end


  //DM9000A_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DM9000A_s1_beginbursttransfer_internal = DM9000A_s1_begins_xfer;

  //~DM9000A_s1_read_n assignment, which is an e_mux
  assign DM9000A_s1_read_n = ~(((DE2_70_SOPC_clock_3_out_granted_DM9000A_s1 & DE2_70_SOPC_clock_3_out_read))& ~DM9000A_s1_begins_xfer);

  //~DM9000A_s1_write_n assignment, which is an e_mux
  assign DM9000A_s1_write_n = ~(((DE2_70_SOPC_clock_3_out_granted_DM9000A_s1 & DE2_70_SOPC_clock_3_out_write)) & ~DM9000A_s1_begins_xfer & (DM9000A_s1_wait_counter >= 1));

  //DM9000A_s1_address mux, which is an e_mux
  assign DM9000A_s1_address = DE2_70_SOPC_clock_3_out_nativeaddress;

  //d1_DM9000A_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DM9000A_s1_end_xfer <= 1;
      else 
        d1_DM9000A_s1_end_xfer <= DM9000A_s1_end_xfer;
    end


  //DM9000A_s1_waits_for_read in a cycle, which is an e_mux
  assign DM9000A_s1_waits_for_read = DM9000A_s1_in_a_read_cycle & wait_for_DM9000A_s1_counter;

  //DM9000A_s1_in_a_read_cycle assignment, which is an e_assign
  assign DM9000A_s1_in_a_read_cycle = DE2_70_SOPC_clock_3_out_granted_DM9000A_s1 & DE2_70_SOPC_clock_3_out_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DM9000A_s1_in_a_read_cycle;

  //DM9000A_s1_waits_for_write in a cycle, which is an e_mux
  assign DM9000A_s1_waits_for_write = DM9000A_s1_in_a_write_cycle & wait_for_DM9000A_s1_counter;

  //DM9000A_s1_in_a_write_cycle assignment, which is an e_assign
  assign DM9000A_s1_in_a_write_cycle = DE2_70_SOPC_clock_3_out_granted_DM9000A_s1 & DE2_70_SOPC_clock_3_out_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DM9000A_s1_in_a_write_cycle;

  assign DM9000A_s1_wait_counter_eq_0 = DM9000A_s1_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DM9000A_s1_wait_counter <= 0;
      else 
        DM9000A_s1_wait_counter <= DM9000A_s1_counter_load_value;
    end


  assign DM9000A_s1_counter_load_value = ((DM9000A_s1_in_a_write_cycle & DM9000A_s1_begins_xfer))? 2 :
    ((DM9000A_s1_in_a_read_cycle & DM9000A_s1_begins_xfer))? 1 :
    (~DM9000A_s1_wait_counter_eq_0)? DM9000A_s1_wait_counter - 1 :
    0;

  assign wait_for_DM9000A_s1_counter = DM9000A_s1_begins_xfer | ~DM9000A_s1_wait_counter_eq_0;
  //assign DM9000A_s1_irq_from_sa = DM9000A_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DM9000A_s1_irq_from_sa = DM9000A_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DM9000A/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_jtag_debug_module_arbitrator (
                                          // inputs:
                                           clk,
                                           cpu_data_master_address_to_slave,
                                           cpu_data_master_byteenable,
                                           cpu_data_master_debugaccess,
                                           cpu_data_master_latency_counter,
                                           cpu_data_master_read,
                                           cpu_data_master_write,
                                           cpu_data_master_writedata,
                                           cpu_instruction_master_address_to_slave,
                                           cpu_instruction_master_latency_counter,
                                           cpu_instruction_master_read,
                                           cpu_jtag_debug_module_readdata,
                                           cpu_jtag_debug_module_resetrequest,
                                           reset_n,

                                          // outputs:
                                           cpu_data_master_granted_cpu_jtag_debug_module,
                                           cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_data_master_requests_cpu_jtag_debug_module,
                                           cpu_instruction_master_granted_cpu_jtag_debug_module,
                                           cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_instruction_master_requests_cpu_jtag_debug_module,
                                           cpu_jtag_debug_module_address,
                                           cpu_jtag_debug_module_begintransfer,
                                           cpu_jtag_debug_module_byteenable,
                                           cpu_jtag_debug_module_chipselect,
                                           cpu_jtag_debug_module_debugaccess,
                                           cpu_jtag_debug_module_readdata_from_sa,
                                           cpu_jtag_debug_module_reset_n,
                                           cpu_jtag_debug_module_resetrequest_from_sa,
                                           cpu_jtag_debug_module_write,
                                           cpu_jtag_debug_module_writedata,
                                           d1_cpu_jtag_debug_module_end_xfer
                                        )
;

  output           cpu_data_master_granted_cpu_jtag_debug_module;
  output           cpu_data_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_data_master_requests_cpu_jtag_debug_module;
  output           cpu_instruction_master_granted_cpu_jtag_debug_module;
  output           cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_instruction_master_requests_cpu_jtag_debug_module;
  output  [  8: 0] cpu_jtag_debug_module_address;
  output           cpu_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_jtag_debug_module_byteenable;
  output           cpu_jtag_debug_module_chipselect;
  output           cpu_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  output           cpu_jtag_debug_module_reset_n;
  output           cpu_jtag_debug_module_resetrequest_from_sa;
  output           cpu_jtag_debug_module_write;
  output  [ 31: 0] cpu_jtag_debug_module_writedata;
  output           d1_cpu_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_debugaccess;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] cpu_jtag_debug_module_readdata;
  input            cpu_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_saved_grant_cpu_jtag_debug_module;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_saved_grant_cpu_jtag_debug_module;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_allgrants;
  wire             cpu_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_jtag_debug_module_arb_addend;
  wire             cpu_jtag_debug_module_arb_counter_enable;
  reg     [  1: 0] cpu_jtag_debug_module_arb_share_counter;
  wire    [  1: 0] cpu_jtag_debug_module_arb_share_counter_next_value;
  wire    [  1: 0] cpu_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_jtag_debug_module_arb_winner;
  wire             cpu_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_jtag_debug_module_begins_xfer;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_jtag_debug_module_debugaccess;
  wire             cpu_jtag_debug_module_end_xfer;
  wire             cpu_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_jtag_debug_module_grant_vector;
  wire             cpu_jtag_debug_module_in_a_read_cycle;
  wire             cpu_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_jtag_debug_module_master_qreq_vector;
  wire             cpu_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  reg              cpu_jtag_debug_module_reg_firsttransfer;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_jtag_debug_module_waits_for_read;
  wire             cpu_jtag_debug_module_waits_for_write;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  reg              d1_cpu_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
  reg              last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
  wire    [ 27: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master;
  wire    [ 27: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master;
  wire             wait_for_cpu_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~cpu_jtag_debug_module_end_xfer;
    end


  assign cpu_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_cpu_jtag_debug_module | cpu_instruction_master_qualified_request_cpu_jtag_debug_module));
  //assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata;

  assign cpu_data_master_requests_cpu_jtag_debug_module = ({cpu_data_master_address_to_slave[27 : 11] , 11'b0} == 28'h2000800) & (cpu_data_master_read | cpu_data_master_write);
  //cpu_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_jtag_debug_module_arb_share_set_values = 1;

  //cpu_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_jtag_debug_module_non_bursting_master_requests = cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module |
    cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_jtag_debug_module_arb_share_counter_next_value = cpu_jtag_debug_module_firsttransfer ? (cpu_jtag_debug_module_arb_share_set_values - 1) : |cpu_jtag_debug_module_arb_share_counter ? (cpu_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_jtag_debug_module_allgrants = (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector);

  //cpu_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_jtag_debug_module_end_xfer = ~(cpu_jtag_debug_module_waits_for_read | cpu_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_jtag_debug_module = cpu_jtag_debug_module_end_xfer & (~cpu_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & cpu_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests);

  //cpu_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_jtag_debug_module_arb_counter_enable)
          cpu_jtag_debug_module_arb_share_counter <= cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests))
          cpu_jtag_debug_module_slavearbiterlockenable <= |cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu/data_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_data_master_continuerequest;

  //cpu_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_jtag_debug_module_slavearbiterlockenable2 = |cpu_jtag_debug_module_arb_share_counter_next_value;

  //cpu/data_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= cpu_instruction_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_instruction_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module & cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_jtag_debug_module_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_cpu_jtag_debug_module = cpu_data_master_requests_cpu_jtag_debug_module & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))) | cpu_instruction_master_arbiterlock);
  //local readdatavalid cpu_data_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_data_master_read_data_valid_cpu_jtag_debug_module = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //cpu_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_jtag_debug_module_writedata = cpu_data_master_writedata;

  assign cpu_instruction_master_requests_cpu_jtag_debug_module = (({cpu_instruction_master_address_to_slave[27 : 11] , 11'b0} == 28'h2000800) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= cpu_data_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_data_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module & cpu_data_master_requests_cpu_jtag_debug_module;

  assign cpu_instruction_master_qualified_request_cpu_jtag_debug_module = cpu_instruction_master_requests_cpu_jtag_debug_module & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))) | cpu_data_master_arbiterlock);
  //local readdatavalid cpu_instruction_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cpu_jtag_debug_module = cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[0] = cpu_instruction_master_qualified_request_cpu_jtag_debug_module;

  //cpu/instruction_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[0];

  //cpu/instruction_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[0] && cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu/data_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[1] = cpu_data_master_qualified_request_cpu_jtag_debug_module;

  //cpu/data_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[1];

  //cpu/data_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[1] && cpu_data_master_requests_cpu_jtag_debug_module;

  //cpu/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_double_vector = {cpu_jtag_debug_module_master_qreq_vector, cpu_jtag_debug_module_master_qreq_vector} & ({~cpu_jtag_debug_module_master_qreq_vector, ~cpu_jtag_debug_module_master_qreq_vector} + cpu_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_jtag_debug_module_arb_winner = (cpu_jtag_debug_module_allow_new_arb_cycle & | cpu_jtag_debug_module_grant_vector) ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_jtag_debug_module_allow_new_arb_cycle)
          cpu_jtag_debug_module_saved_chosen_master_vector <= |cpu_jtag_debug_module_grant_vector ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_jtag_debug_module_grant_vector = {(cpu_jtag_debug_module_chosen_master_double_vector[1] | cpu_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_jtag_debug_module_chosen_master_double_vector[0] | cpu_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_rot_left = (cpu_jtag_debug_module_arb_winner << 1) ? (cpu_jtag_debug_module_arb_winner << 1) : 1;

  //cpu/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_jtag_debug_module_grant_vector)
          cpu_jtag_debug_module_arb_addend <= cpu_jtag_debug_module_end_xfer? cpu_jtag_debug_module_chosen_master_rot_left : cpu_jtag_debug_module_grant_vector;
    end


  assign cpu_jtag_debug_module_begintransfer = cpu_jtag_debug_module_begins_xfer;
  //cpu_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_jtag_debug_module_reset_n = reset_n;

  //assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest;

  assign cpu_jtag_debug_module_chipselect = cpu_data_master_granted_cpu_jtag_debug_module | cpu_instruction_master_granted_cpu_jtag_debug_module;
  //cpu_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_firsttransfer = cpu_jtag_debug_module_begins_xfer ? cpu_jtag_debug_module_unreg_firsttransfer : cpu_jtag_debug_module_reg_firsttransfer;

  //cpu_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_unreg_firsttransfer = ~(cpu_jtag_debug_module_slavearbiterlockenable & cpu_jtag_debug_module_any_continuerequest);

  //cpu_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_jtag_debug_module_begins_xfer)
          cpu_jtag_debug_module_reg_firsttransfer <= cpu_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_jtag_debug_module_beginbursttransfer_internal = cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_jtag_debug_module_arbitration_holdoff_internal = cpu_jtag_debug_module_begins_xfer & cpu_jtag_debug_module_firsttransfer;

  //cpu_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_jtag_debug_module_write = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master = cpu_data_master_address_to_slave;
  //cpu_jtag_debug_module_address mux, which is an e_mux
  assign cpu_jtag_debug_module_address = (cpu_data_master_granted_cpu_jtag_debug_module)? (shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master >> 2) :
    (shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master >> 2);

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_cpu_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_jtag_debug_module_end_xfer <= 1;
      else 
        d1_cpu_jtag_debug_module_end_xfer <= cpu_jtag_debug_module_end_xfer;
    end


  //cpu_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_read = cpu_jtag_debug_module_in_a_read_cycle & cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_read_cycle = (cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read) | (cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_jtag_debug_module_in_a_read_cycle;

  //cpu_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_write = cpu_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_write_cycle = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_jtag_debug_module_counter = 0;
  //cpu_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_jtag_debug_module_byteenable = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu_jtag_debug_module_debugaccess = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_cpu_jtag_debug_module + cpu_instruction_master_granted_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_cpu_jtag_debug_module + cpu_instruction_master_saved_grant_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DM9000A_s1_irq_from_sa_clock_crossing_cpu_data_master_module (
                                                                      // inputs:
                                                                       clk,
                                                                       data_in,
                                                                       reset_n,

                                                                      // outputs:
                                                                       data_out
                                                                    )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_data_master_arbitrator (
                                    // inputs:
                                     DE2_70_SOPC_clock_1_in_readdata_from_sa,
                                     DE2_70_SOPC_clock_1_in_waitrequest_from_sa,
                                     DE2_70_SOPC_clock_2_in_readdata_from_sa,
                                     DE2_70_SOPC_clock_2_in_waitrequest_from_sa,
                                     DE2_70_SOPC_clock_3_in_readdata_from_sa,
                                     DE2_70_SOPC_clock_3_in_waitrequest_from_sa,
                                     DM9000A_s1_irq_from_sa,
                                     cfi_flash_s1_wait_counter_eq_0,
                                     clk,
                                     cpu_data_master_address,
                                     cpu_data_master_byteenable,
                                     cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in,
                                     cpu_data_master_byteenable_cfi_flash_s1,
                                     cpu_data_master_granted_DE2_70_SOPC_clock_1_in,
                                     cpu_data_master_granted_DE2_70_SOPC_clock_2_in,
                                     cpu_data_master_granted_DE2_70_SOPC_clock_3_in,
                                     cpu_data_master_granted_cfi_flash_s1,
                                     cpu_data_master_granted_cpu_jtag_debug_module,
                                     cpu_data_master_granted_epcs_flash_controller_epcs_control_port,
                                     cpu_data_master_granted_sysid_control_slave,
                                     cpu_data_master_granted_timer_s1,
                                     cpu_data_master_granted_timer_stamp_s1,
                                     cpu_data_master_granted_uart_s1,
                                     cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in,
                                     cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in,
                                     cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in,
                                     cpu_data_master_qualified_request_cfi_flash_s1,
                                     cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                     cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port,
                                     cpu_data_master_qualified_request_sysid_control_slave,
                                     cpu_data_master_qualified_request_timer_s1,
                                     cpu_data_master_qualified_request_timer_stamp_s1,
                                     cpu_data_master_qualified_request_uart_s1,
                                     cpu_data_master_read,
                                     cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in,
                                     cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in,
                                     cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in,
                                     cpu_data_master_read_data_valid_cfi_flash_s1,
                                     cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                     cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port,
                                     cpu_data_master_read_data_valid_sysid_control_slave,
                                     cpu_data_master_read_data_valid_timer_s1,
                                     cpu_data_master_read_data_valid_timer_stamp_s1,
                                     cpu_data_master_read_data_valid_uart_s1,
                                     cpu_data_master_requests_DE2_70_SOPC_clock_1_in,
                                     cpu_data_master_requests_DE2_70_SOPC_clock_2_in,
                                     cpu_data_master_requests_DE2_70_SOPC_clock_3_in,
                                     cpu_data_master_requests_cfi_flash_s1,
                                     cpu_data_master_requests_cpu_jtag_debug_module,
                                     cpu_data_master_requests_epcs_flash_controller_epcs_control_port,
                                     cpu_data_master_requests_sysid_control_slave,
                                     cpu_data_master_requests_timer_s1,
                                     cpu_data_master_requests_timer_stamp_s1,
                                     cpu_data_master_requests_uart_s1,
                                     cpu_data_master_write,
                                     cpu_data_master_writedata,
                                     cpu_jtag_debug_module_readdata_from_sa,
                                     d1_DE2_70_SOPC_clock_1_in_end_xfer,
                                     d1_DE2_70_SOPC_clock_2_in_end_xfer,
                                     d1_DE2_70_SOPC_clock_3_in_end_xfer,
                                     d1_cpu_jtag_debug_module_end_xfer,
                                     d1_epcs_flash_controller_epcs_control_port_end_xfer,
                                     d1_sysid_control_slave_end_xfer,
                                     d1_timer_s1_end_xfer,
                                     d1_timer_stamp_s1_end_xfer,
                                     d1_tristate_bridge_flash_avalon_slave_end_xfer,
                                     d1_uart_s1_end_xfer,
                                     epcs_flash_controller_epcs_control_port_irq_from_sa,
                                     epcs_flash_controller_epcs_control_port_readdata_from_sa,
                                     incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0,
                                     pll_c0_system,
                                     pll_c0_system_reset_n,
                                     reset_n,
                                     sysid_control_slave_readdata_from_sa,
                                     timer_s1_irq_from_sa,
                                     timer_s1_readdata_from_sa,
                                     timer_stamp_s1_irq_from_sa,
                                     timer_stamp_s1_readdata_from_sa,
                                     uart_s1_irq_from_sa,
                                     uart_s1_readdata_from_sa,

                                    // outputs:
                                     cpu_data_master_address_to_slave,
                                     cpu_data_master_dbs_address,
                                     cpu_data_master_dbs_write_16,
                                     cpu_data_master_irq,
                                     cpu_data_master_latency_counter,
                                     cpu_data_master_readdata,
                                     cpu_data_master_readdatavalid,
                                     cpu_data_master_waitrequest
                                  )
;

  output  [ 27: 0] cpu_data_master_address_to_slave;
  output  [  1: 0] cpu_data_master_dbs_address;
  output  [ 15: 0] cpu_data_master_dbs_write_16;
  output  [ 31: 0] cpu_data_master_irq;
  output  [  1: 0] cpu_data_master_latency_counter;
  output  [ 31: 0] cpu_data_master_readdata;
  output           cpu_data_master_readdatavalid;
  output           cpu_data_master_waitrequest;
  input   [ 15: 0] DE2_70_SOPC_clock_1_in_readdata_from_sa;
  input            DE2_70_SOPC_clock_1_in_waitrequest_from_sa;
  input   [ 15: 0] DE2_70_SOPC_clock_2_in_readdata_from_sa;
  input            DE2_70_SOPC_clock_2_in_waitrequest_from_sa;
  input   [ 15: 0] DE2_70_SOPC_clock_3_in_readdata_from_sa;
  input            DE2_70_SOPC_clock_3_in_waitrequest_from_sa;
  input            DM9000A_s1_irq_from_sa;
  input            cfi_flash_s1_wait_counter_eq_0;
  input            clk;
  input   [ 27: 0] cpu_data_master_address;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  1: 0] cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in;
  input   [  1: 0] cpu_data_master_byteenable_cfi_flash_s1;
  input            cpu_data_master_granted_DE2_70_SOPC_clock_1_in;
  input            cpu_data_master_granted_DE2_70_SOPC_clock_2_in;
  input            cpu_data_master_granted_DE2_70_SOPC_clock_3_in;
  input            cpu_data_master_granted_cfi_flash_s1;
  input            cpu_data_master_granted_cpu_jtag_debug_module;
  input            cpu_data_master_granted_epcs_flash_controller_epcs_control_port;
  input            cpu_data_master_granted_sysid_control_slave;
  input            cpu_data_master_granted_timer_s1;
  input            cpu_data_master_granted_timer_stamp_s1;
  input            cpu_data_master_granted_uart_s1;
  input            cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in;
  input            cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in;
  input            cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in;
  input            cpu_data_master_qualified_request_cfi_flash_s1;
  input            cpu_data_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port;
  input            cpu_data_master_qualified_request_sysid_control_slave;
  input            cpu_data_master_qualified_request_timer_s1;
  input            cpu_data_master_qualified_request_timer_stamp_s1;
  input            cpu_data_master_qualified_request_uart_s1;
  input            cpu_data_master_read;
  input            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in;
  input            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in;
  input            cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in;
  input            cpu_data_master_read_data_valid_cfi_flash_s1;
  input            cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  input            cpu_data_master_read_data_valid_sysid_control_slave;
  input            cpu_data_master_read_data_valid_timer_s1;
  input            cpu_data_master_read_data_valid_timer_stamp_s1;
  input            cpu_data_master_read_data_valid_uart_s1;
  input            cpu_data_master_requests_DE2_70_SOPC_clock_1_in;
  input            cpu_data_master_requests_DE2_70_SOPC_clock_2_in;
  input            cpu_data_master_requests_DE2_70_SOPC_clock_3_in;
  input            cpu_data_master_requests_cfi_flash_s1;
  input            cpu_data_master_requests_cpu_jtag_debug_module;
  input            cpu_data_master_requests_epcs_flash_controller_epcs_control_port;
  input            cpu_data_master_requests_sysid_control_slave;
  input            cpu_data_master_requests_timer_s1;
  input            cpu_data_master_requests_timer_stamp_s1;
  input            cpu_data_master_requests_uart_s1;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_DE2_70_SOPC_clock_1_in_end_xfer;
  input            d1_DE2_70_SOPC_clock_2_in_end_xfer;
  input            d1_DE2_70_SOPC_clock_3_in_end_xfer;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_epcs_flash_controller_epcs_control_port_end_xfer;
  input            d1_sysid_control_slave_end_xfer;
  input            d1_timer_s1_end_xfer;
  input            d1_timer_stamp_s1_end_xfer;
  input            d1_tristate_bridge_flash_avalon_slave_end_xfer;
  input            d1_uart_s1_end_xfer;
  input            epcs_flash_controller_epcs_control_port_irq_from_sa;
  input   [ 31: 0] epcs_flash_controller_epcs_control_port_readdata_from_sa;
  input   [ 15: 0] incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0;
  input            pll_c0_system;
  input            pll_c0_system_reset_n;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata_from_sa;
  input            timer_s1_irq_from_sa;
  input   [ 15: 0] timer_s1_readdata_from_sa;
  input            timer_stamp_s1_irq_from_sa;
  input   [ 15: 0] timer_stamp_s1_readdata_from_sa;
  input            uart_s1_irq_from_sa;
  input   [ 15: 0] uart_s1_readdata_from_sa;

  reg              active_and_waiting_last_time;
  reg     [ 27: 0] cpu_data_master_address_last_time;
  wire    [ 27: 0] cpu_data_master_address_to_slave;
  reg     [  3: 0] cpu_data_master_byteenable_last_time;
  reg     [  1: 0] cpu_data_master_dbs_address;
  wire    [  1: 0] cpu_data_master_dbs_increment;
  reg     [  1: 0] cpu_data_master_dbs_rdv_counter;
  wire    [  1: 0] cpu_data_master_dbs_rdv_counter_inc;
  wire    [ 15: 0] cpu_data_master_dbs_write_16;
  wire    [ 31: 0] cpu_data_master_irq;
  wire             cpu_data_master_is_granted_some_slave;
  reg     [  1: 0] cpu_data_master_latency_counter;
  wire    [  1: 0] cpu_data_master_next_dbs_rdv_counter;
  reg              cpu_data_master_read_but_no_slave_selected;
  reg              cpu_data_master_read_last_time;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_readdatavalid;
  wire             cpu_data_master_run;
  wire             cpu_data_master_waitrequest;
  reg              cpu_data_master_write_last_time;
  reg     [ 31: 0] cpu_data_master_writedata_last_time;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  reg     [ 15: 0] dbs_latent_16_reg_segment_0;
  wire             dbs_rdv_count_enable;
  wire             dbs_rdv_counter_overflow;
  wire    [  1: 0] latency_load_value;
  wire    [  1: 0] next_dbs_address;
  wire    [  1: 0] p1_cpu_data_master_latency_counter;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [ 15: 0] p1_dbs_latent_16_reg_segment_0;
  wire             pll_c0_system_DM9000A_s1_irq_from_sa;
  wire             pre_dbs_count_enable;
  wire             pre_flush_cpu_data_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in | (cpu_data_master_write & !cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in & cpu_data_master_dbs_address[1]) | ~cpu_data_master_requests_DE2_70_SOPC_clock_1_in) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in | ~cpu_data_master_read | (1 & ~DE2_70_SOPC_clock_1_in_waitrequest_from_sa & (cpu_data_master_dbs_address[1]) & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in | ~cpu_data_master_write | (1 & ~DE2_70_SOPC_clock_1_in_waitrequest_from_sa & (cpu_data_master_dbs_address[1]) & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in | ~cpu_data_master_requests_DE2_70_SOPC_clock_2_in) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE2_70_SOPC_clock_2_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE2_70_SOPC_clock_2_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in | ~cpu_data_master_requests_DE2_70_SOPC_clock_3_in) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE2_70_SOPC_clock_3_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE2_70_SOPC_clock_3_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_requests_cpu_jtag_debug_module) & (cpu_data_master_granted_cpu_jtag_debug_module | ~cpu_data_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port | ~cpu_data_master_requests_epcs_flash_controller_epcs_control_port) & (cpu_data_master_granted_epcs_flash_controller_epcs_control_port | ~cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port);

  //cascaded wait assignment, which is an e_assign
  assign cpu_data_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~d1_epcs_flash_controller_epcs_control_port_end_xfer & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~d1_epcs_flash_controller_epcs_control_port_end_xfer & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_requests_sysid_control_slave) & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_read | (1 & ~d1_sysid_control_slave_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_timer_s1 | ~cpu_data_master_requests_timer_s1) & ((~cpu_data_master_qualified_request_timer_s1 | ~cpu_data_master_read | (1 & ~d1_timer_s1_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_timer_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_timer_stamp_s1 | ~cpu_data_master_requests_timer_stamp_s1) & ((~cpu_data_master_qualified_request_timer_stamp_s1 | ~cpu_data_master_read | (1 & ~d1_timer_stamp_s1_end_xfer & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_timer_stamp_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_cfi_flash_s1 | (cpu_data_master_write & !cpu_data_master_byteenable_cfi_flash_s1 & cpu_data_master_dbs_address[1]) | ~cpu_data_master_requests_cfi_flash_s1) & (cpu_data_master_granted_cfi_flash_s1 | ~cpu_data_master_qualified_request_cfi_flash_s1) & ((~cpu_data_master_qualified_request_cfi_flash_s1 | ~cpu_data_master_read | (1 & ((cfi_flash_s1_wait_counter_eq_0 & ~d1_tristate_bridge_flash_avalon_slave_end_xfer)) & (cpu_data_master_dbs_address[1]) & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_cfi_flash_s1 | ~cpu_data_master_write | (1 & ((cfi_flash_s1_wait_counter_eq_0 & ~d1_tristate_bridge_flash_avalon_slave_end_xfer)) & (cpu_data_master_dbs_address[1]) & cpu_data_master_write))) & 1;

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = (cpu_data_master_qualified_request_uart_s1 | ~cpu_data_master_requests_uart_s1) & ((~cpu_data_master_qualified_request_uart_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~d1_uart_s1_end_xfer & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_uart_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~d1_uart_s1_end_xfer & (cpu_data_master_read | cpu_data_master_write))));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_data_master_address_to_slave = {cpu_data_master_address[27],
    1'b0,
    cpu_data_master_address[25 : 0]};

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (((~0) & cpu_data_master_requests_DE2_70_SOPC_clock_1_in & cpu_data_master_write & !cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in)) |
    (cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_read & 1 & 1 & ~DE2_70_SOPC_clock_1_in_waitrequest_from_sa) |
    (cpu_data_master_granted_DE2_70_SOPC_clock_1_in & cpu_data_master_write & 1 & 1 & ~DE2_70_SOPC_clock_1_in_waitrequest_from_sa) |
    (((~0) & cpu_data_master_requests_cfi_flash_s1 & cpu_data_master_write & !cpu_data_master_byteenable_cfi_flash_s1)) |
    ((cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_read & 1 & 1 & ({cfi_flash_s1_wait_counter_eq_0 & ~d1_tristate_bridge_flash_avalon_slave_end_xfer}))) |
    ((cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_write & 1 & 1 & ({cfi_flash_s1_wait_counter_eq_0 & ~d1_tristate_bridge_flash_avalon_slave_end_xfer})));

  //cpu_data_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_but_no_slave_selected <= 0;
      else 
        cpu_data_master_read_but_no_slave_selected <= cpu_data_master_read & cpu_data_master_run & ~cpu_data_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_data_master_is_granted_some_slave = cpu_data_master_granted_DE2_70_SOPC_clock_1_in |
    cpu_data_master_granted_DE2_70_SOPC_clock_2_in |
    cpu_data_master_granted_DE2_70_SOPC_clock_3_in |
    cpu_data_master_granted_cpu_jtag_debug_module |
    cpu_data_master_granted_epcs_flash_controller_epcs_control_port |
    cpu_data_master_granted_sysid_control_slave |
    cpu_data_master_granted_timer_s1 |
    cpu_data_master_granted_timer_stamp_s1 |
    cpu_data_master_granted_cfi_flash_s1 |
    cpu_data_master_granted_uart_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_data_master_readdatavalid = cpu_data_master_read_data_valid_cfi_flash_s1 & dbs_rdv_counter_overflow;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_data_master_readdatavalid = cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in & dbs_counter_overflow) |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_cpu_jtag_debug_module |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_sysid_control_slave |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_timer_s1 |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_timer_stamp_s1 |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_but_no_slave_selected |
    pre_flush_cpu_data_master_readdatavalid |
    cpu_data_master_read_data_valid_uart_s1;

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = DE2_70_SOPC_clock_1_in_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu_data_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //cpu/data_master readdata mux, which is an e_mux
  assign cpu_data_master_readdata = ({32 {~(cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in & cpu_data_master_read)}} | {DE2_70_SOPC_clock_1_in_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0}) &
    ({32 {~(cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in & cpu_data_master_read)}} | DE2_70_SOPC_clock_2_in_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in & cpu_data_master_read)}} | DE2_70_SOPC_clock_3_in_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_cpu_jtag_debug_module & cpu_data_master_read)}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port & cpu_data_master_read)}} | epcs_flash_controller_epcs_control_port_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_sysid_control_slave & cpu_data_master_read)}} | sysid_control_slave_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_timer_s1 & cpu_data_master_read)}} | timer_s1_readdata_from_sa) &
    ({32 {~(cpu_data_master_qualified_request_timer_stamp_s1 & cpu_data_master_read)}} | timer_stamp_s1_readdata_from_sa) &
    ({32 {~cpu_data_master_read_data_valid_cfi_flash_s1}} | {incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[15 : 0],
    dbs_latent_16_reg_segment_0}) &
    ({32 {~(cpu_data_master_qualified_request_uart_s1 & cpu_data_master_read)}} | uart_s1_readdata_from_sa);

  //mux write dbs 1, which is an e_mux
  assign cpu_data_master_dbs_write_16 = (cpu_data_master_dbs_address[1])? cpu_data_master_writedata[31 : 16] :
    (~(cpu_data_master_dbs_address[1]))? cpu_data_master_writedata[15 : 0] :
    (cpu_data_master_dbs_address[1])? cpu_data_master_writedata[31 : 16] :
    cpu_data_master_writedata[15 : 0];

  //actual waitrequest port, which is an e_assign
  assign cpu_data_master_waitrequest = ~cpu_data_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_latency_counter <= 0;
      else 
        cpu_data_master_latency_counter <= p1_cpu_data_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_data_master_latency_counter = ((cpu_data_master_run & cpu_data_master_read))? latency_load_value :
    (cpu_data_master_latency_counter)? cpu_data_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = {2 {cpu_data_master_requests_cfi_flash_s1}} & 2;

  //dbs count increment, which is an e_mux
  assign cpu_data_master_dbs_increment = (cpu_data_master_requests_DE2_70_SOPC_clock_1_in)? 2 :
    (cpu_data_master_requests_cfi_flash_s1)? 2 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu_data_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu_data_master_dbs_address + cpu_data_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu_data_master_dbs_address <= next_dbs_address;
    end


  //DM9000A_s1_irq_from_sa from clk_25 to pll_c0_system
  DM9000A_s1_irq_from_sa_clock_crossing_cpu_data_master_module DM9000A_s1_irq_from_sa_clock_crossing_cpu_data_master
    (
      .clk      (pll_c0_system),
      .data_in  (DM9000A_s1_irq_from_sa),
      .data_out (pll_c0_system_DM9000A_s1_irq_from_sa),
      .reset_n  (pll_c0_system_reset_n)
    );

  //irq assign, which is an e_assign
  assign cpu_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    epcs_flash_controller_epcs_control_port_irq_from_sa,
    uart_s1_irq_from_sa,
    timer_stamp_s1_irq_from_sa,
    timer_s1_irq_from_sa,
    pll_c0_system_DM9000A_s1_irq_from_sa,
    1'b0};

  //input to latent dbs-16 stored 0, which is an e_mux
  assign p1_dbs_latent_16_reg_segment_0 = incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0;

  //dbs register for latent dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_16_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((cpu_data_master_dbs_rdv_counter[1]) == 0))
          dbs_latent_16_reg_segment_0 <= p1_dbs_latent_16_reg_segment_0;
    end


  //p1 dbs rdv counter, which is an e_assign
  assign cpu_data_master_next_dbs_rdv_counter = cpu_data_master_dbs_rdv_counter + cpu_data_master_dbs_rdv_counter_inc;

  //cpu_data_master_rdv_inc_mux, which is an e_mux
  assign cpu_data_master_dbs_rdv_counter_inc = 2;

  //master any slave rdv, which is an e_mux
  assign dbs_rdv_count_enable = cpu_data_master_read_data_valid_cfi_flash_s1;

  //dbs rdv counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_dbs_rdv_counter <= 0;
      else if (dbs_rdv_count_enable)
          cpu_data_master_dbs_rdv_counter <= cpu_data_master_next_dbs_rdv_counter;
    end


  //dbs rdv counter overflow, which is an e_assign
  assign dbs_rdv_counter_overflow = cpu_data_master_dbs_rdv_counter[1] & ~cpu_data_master_next_dbs_rdv_counter[1];


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_data_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_address_last_time <= 0;
      else 
        cpu_data_master_address_last_time <= cpu_data_master_address;
    end


  //cpu/data_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_data_master_waitrequest & (cpu_data_master_read | cpu_data_master_write);
    end


  //cpu_data_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_address != cpu_data_master_address_last_time))
        begin
          $write("%0d ns: cpu_data_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_byteenable_last_time <= 0;
      else 
        cpu_data_master_byteenable_last_time <= cpu_data_master_byteenable;
    end


  //cpu_data_master_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_byteenable != cpu_data_master_byteenable_last_time))
        begin
          $write("%0d ns: cpu_data_master_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_last_time <= 0;
      else 
        cpu_data_master_read_last_time <= cpu_data_master_read;
    end


  //cpu_data_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_read != cpu_data_master_read_last_time))
        begin
          $write("%0d ns: cpu_data_master_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_write_last_time <= 0;
      else 
        cpu_data_master_write_last_time <= cpu_data_master_write;
    end


  //cpu_data_master_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_write != cpu_data_master_write_last_time))
        begin
          $write("%0d ns: cpu_data_master_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_data_master_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_writedata_last_time <= 0;
      else 
        cpu_data_master_writedata_last_time <= cpu_data_master_writedata;
    end


  //cpu_data_master_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_data_master_writedata != cpu_data_master_writedata_last_time) & cpu_data_master_write)
        begin
          $write("%0d ns: cpu_data_master_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_instruction_master_arbitrator (
                                           // inputs:
                                            DE2_70_SOPC_clock_0_in_readdata_from_sa,
                                            DE2_70_SOPC_clock_0_in_waitrequest_from_sa,
                                            cfi_flash_s1_wait_counter_eq_0,
                                            clk,
                                            cpu_instruction_master_address,
                                            cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_granted_cfi_flash_s1,
                                            cpu_instruction_master_granted_cpu_jtag_debug_module,
                                            cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port,
                                            cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_qualified_request_cfi_flash_s1,
                                            cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                            cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port,
                                            cpu_instruction_master_read,
                                            cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_read_data_valid_cfi_flash_s1,
                                            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                            cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port,
                                            cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in,
                                            cpu_instruction_master_requests_cfi_flash_s1,
                                            cpu_instruction_master_requests_cpu_jtag_debug_module,
                                            cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port,
                                            cpu_jtag_debug_module_readdata_from_sa,
                                            d1_DE2_70_SOPC_clock_0_in_end_xfer,
                                            d1_cpu_jtag_debug_module_end_xfer,
                                            d1_epcs_flash_controller_epcs_control_port_end_xfer,
                                            d1_tristate_bridge_flash_avalon_slave_end_xfer,
                                            epcs_flash_controller_epcs_control_port_readdata_from_sa,
                                            incoming_data_to_and_from_the_cfi_flash,
                                            reset_n,

                                           // outputs:
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_dbs_address,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_readdata,
                                            cpu_instruction_master_readdatavalid,
                                            cpu_instruction_master_waitrequest
                                         )
;

  output  [ 27: 0] cpu_instruction_master_address_to_slave;
  output  [  1: 0] cpu_instruction_master_dbs_address;
  output  [  1: 0] cpu_instruction_master_latency_counter;
  output  [ 31: 0] cpu_instruction_master_readdata;
  output           cpu_instruction_master_readdatavalid;
  output           cpu_instruction_master_waitrequest;
  input   [ 15: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  input            DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  input            cfi_flash_s1_wait_counter_eq_0;
  input            clk;
  input   [ 27: 0] cpu_instruction_master_address;
  input            cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in;
  input            cpu_instruction_master_granted_cfi_flash_s1;
  input            cpu_instruction_master_granted_cpu_jtag_debug_module;
  input            cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port;
  input            cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in;
  input            cpu_instruction_master_qualified_request_cfi_flash_s1;
  input            cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port;
  input            cpu_instruction_master_read;
  input            cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  input            cpu_instruction_master_read_data_valid_cfi_flash_s1;
  input            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  input            cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in;
  input            cpu_instruction_master_requests_cfi_flash_s1;
  input            cpu_instruction_master_requests_cpu_jtag_debug_module;
  input            cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_DE2_70_SOPC_clock_0_in_end_xfer;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_epcs_flash_controller_epcs_control_port_end_xfer;
  input            d1_tristate_bridge_flash_avalon_slave_end_xfer;
  input   [ 31: 0] epcs_flash_controller_epcs_control_port_readdata_from_sa;
  input   [ 15: 0] incoming_data_to_and_from_the_cfi_flash;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 27: 0] cpu_instruction_master_address_last_time;
  wire    [ 27: 0] cpu_instruction_master_address_to_slave;
  reg     [  1: 0] cpu_instruction_master_dbs_address;
  wire    [  1: 0] cpu_instruction_master_dbs_increment;
  reg     [  1: 0] cpu_instruction_master_dbs_rdv_counter;
  wire    [  1: 0] cpu_instruction_master_dbs_rdv_counter_inc;
  wire             cpu_instruction_master_is_granted_some_slave;
  reg     [  1: 0] cpu_instruction_master_latency_counter;
  wire    [  1: 0] cpu_instruction_master_next_dbs_rdv_counter;
  reg              cpu_instruction_master_read_but_no_slave_selected;
  reg              cpu_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_run;
  wire             cpu_instruction_master_waitrequest;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  reg     [ 15: 0] dbs_latent_16_reg_segment_0;
  wire             dbs_rdv_count_enable;
  wire             dbs_rdv_counter_overflow;
  wire    [  1: 0] latency_load_value;
  wire    [  1: 0] next_dbs_address;
  wire    [  1: 0] p1_cpu_instruction_master_latency_counter;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [ 15: 0] p1_dbs_latent_16_reg_segment_0;
  wire             pre_dbs_count_enable;
  wire             pre_flush_cpu_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in | ~cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in) & ((~cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in | ~cpu_instruction_master_read | (1 & ~DE2_70_SOPC_clock_0_in_waitrequest_from_sa & (cpu_instruction_master_dbs_address[1]) & cpu_instruction_master_read))) & 1 & (cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_requests_cpu_jtag_debug_module) & (cpu_instruction_master_granted_cpu_jtag_debug_module | ~cpu_instruction_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_instruction_master_read))) & 1 & (cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port | ~cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port);

  //cascaded wait assignment, which is an e_assign
  assign cpu_instruction_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = (cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port | ~cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port) & ((~cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port | ~(cpu_instruction_master_read) | (1 & ~d1_epcs_flash_controller_epcs_control_port_end_xfer & (cpu_instruction_master_read)))) & 1 & (cpu_instruction_master_qualified_request_cfi_flash_s1 | ~cpu_instruction_master_requests_cfi_flash_s1) & (cpu_instruction_master_granted_cfi_flash_s1 | ~cpu_instruction_master_qualified_request_cfi_flash_s1) & ((~cpu_instruction_master_qualified_request_cfi_flash_s1 | ~cpu_instruction_master_read | (1 & ((cfi_flash_s1_wait_counter_eq_0 & ~d1_tristate_bridge_flash_avalon_slave_end_xfer)) & (cpu_instruction_master_dbs_address[1]) & cpu_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_instruction_master_address_to_slave = {cpu_instruction_master_address[27],
    1'b0,
    cpu_instruction_master_address[25 : 0]};

  //cpu_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_but_no_slave_selected <= 0;
      else 
        cpu_instruction_master_read_but_no_slave_selected <= cpu_instruction_master_read & cpu_instruction_master_run & ~cpu_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_instruction_master_is_granted_some_slave = cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in |
    cpu_instruction_master_granted_cpu_jtag_debug_module |
    cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port |
    cpu_instruction_master_granted_cfi_flash_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_instruction_master_readdatavalid = cpu_instruction_master_read_data_valid_cfi_flash_s1 & dbs_rdv_counter_overflow;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_instruction_master_readdatavalid = cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    (cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in & dbs_counter_overflow) |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_data_valid_cpu_jtag_debug_module |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid;

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = DE2_70_SOPC_clock_0_in_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu_instruction_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //cpu/instruction_master readdata mux, which is an e_mux
  assign cpu_instruction_master_readdata = ({32 {~(cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in & cpu_instruction_master_read)}} | {DE2_70_SOPC_clock_0_in_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0}) &
    ({32 {~(cpu_instruction_master_qualified_request_cpu_jtag_debug_module & cpu_instruction_master_read)}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~(cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port & cpu_instruction_master_read)}} | epcs_flash_controller_epcs_control_port_readdata_from_sa) &
    ({32 {~cpu_instruction_master_read_data_valid_cfi_flash_s1}} | {incoming_data_to_and_from_the_cfi_flash[15 : 0],
    dbs_latent_16_reg_segment_0});

  //actual waitrequest port, which is an e_assign
  assign cpu_instruction_master_waitrequest = ~cpu_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_latency_counter <= 0;
      else 
        cpu_instruction_master_latency_counter <= p1_cpu_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_instruction_master_latency_counter = ((cpu_instruction_master_run & cpu_instruction_master_read))? latency_load_value :
    (cpu_instruction_master_latency_counter)? cpu_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = {2 {cpu_instruction_master_requests_cfi_flash_s1}} & 2;

  //dbs count increment, which is an e_mux
  assign cpu_instruction_master_dbs_increment = (cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in)? 2 :
    (cpu_instruction_master_requests_cfi_flash_s1)? 2 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu_instruction_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu_instruction_master_dbs_address + cpu_instruction_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu_instruction_master_dbs_address <= next_dbs_address;
    end


  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in & cpu_instruction_master_read & 1 & 1 & ~DE2_70_SOPC_clock_0_in_waitrequest_from_sa) |
    ((cpu_instruction_master_granted_cfi_flash_s1 & cpu_instruction_master_read & 1 & 1 & ({cfi_flash_s1_wait_counter_eq_0 & ~d1_tristate_bridge_flash_avalon_slave_end_xfer})));

  //input to latent dbs-16 stored 0, which is an e_mux
  assign p1_dbs_latent_16_reg_segment_0 = incoming_data_to_and_from_the_cfi_flash;

  //dbs register for latent dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_16_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((cpu_instruction_master_dbs_rdv_counter[1]) == 0))
          dbs_latent_16_reg_segment_0 <= p1_dbs_latent_16_reg_segment_0;
    end


  //p1 dbs rdv counter, which is an e_assign
  assign cpu_instruction_master_next_dbs_rdv_counter = cpu_instruction_master_dbs_rdv_counter + cpu_instruction_master_dbs_rdv_counter_inc;

  //cpu_instruction_master_rdv_inc_mux, which is an e_mux
  assign cpu_instruction_master_dbs_rdv_counter_inc = 2;

  //master any slave rdv, which is an e_mux
  assign dbs_rdv_count_enable = cpu_instruction_master_read_data_valid_cfi_flash_s1;

  //dbs rdv counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_dbs_rdv_counter <= 0;
      else if (dbs_rdv_count_enable)
          cpu_instruction_master_dbs_rdv_counter <= cpu_instruction_master_next_dbs_rdv_counter;
    end


  //dbs rdv counter overflow, which is an e_assign
  assign dbs_rdv_counter_overflow = cpu_instruction_master_dbs_rdv_counter[1] & ~cpu_instruction_master_next_dbs_rdv_counter[1];


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_address_last_time <= 0;
      else 
        cpu_instruction_master_address_last_time <= cpu_instruction_master_address;
    end


  //cpu/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_instruction_master_waitrequest & (cpu_instruction_master_read);
    end


  //cpu_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_address != cpu_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_last_time <= 0;
      else 
        cpu_instruction_master_read_last_time <= cpu_instruction_master_read;
    end


  //cpu_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_read != cpu_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module epcs_flash_controller_epcs_control_port_arbitrator (
                                                            // inputs:
                                                             clk,
                                                             cpu_data_master_address_to_slave,
                                                             cpu_data_master_latency_counter,
                                                             cpu_data_master_read,
                                                             cpu_data_master_write,
                                                             cpu_data_master_writedata,
                                                             cpu_instruction_master_address_to_slave,
                                                             cpu_instruction_master_latency_counter,
                                                             cpu_instruction_master_read,
                                                             epcs_flash_controller_epcs_control_port_dataavailable,
                                                             epcs_flash_controller_epcs_control_port_endofpacket,
                                                             epcs_flash_controller_epcs_control_port_irq,
                                                             epcs_flash_controller_epcs_control_port_readdata,
                                                             epcs_flash_controller_epcs_control_port_readyfordata,
                                                             reset_n,

                                                            // outputs:
                                                             cpu_data_master_granted_epcs_flash_controller_epcs_control_port,
                                                             cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port,
                                                             cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port,
                                                             cpu_data_master_requests_epcs_flash_controller_epcs_control_port,
                                                             cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port,
                                                             cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port,
                                                             cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port,
                                                             cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port,
                                                             d1_epcs_flash_controller_epcs_control_port_end_xfer,
                                                             epcs_flash_controller_epcs_control_port_address,
                                                             epcs_flash_controller_epcs_control_port_chipselect,
                                                             epcs_flash_controller_epcs_control_port_dataavailable_from_sa,
                                                             epcs_flash_controller_epcs_control_port_endofpacket_from_sa,
                                                             epcs_flash_controller_epcs_control_port_irq_from_sa,
                                                             epcs_flash_controller_epcs_control_port_read_n,
                                                             epcs_flash_controller_epcs_control_port_readdata_from_sa,
                                                             epcs_flash_controller_epcs_control_port_readyfordata_from_sa,
                                                             epcs_flash_controller_epcs_control_port_reset_n,
                                                             epcs_flash_controller_epcs_control_port_write_n,
                                                             epcs_flash_controller_epcs_control_port_writedata
                                                          )
;

  output           cpu_data_master_granted_epcs_flash_controller_epcs_control_port;
  output           cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port;
  output           cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  output           cpu_data_master_requests_epcs_flash_controller_epcs_control_port;
  output           cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port;
  output           cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port;
  output           cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  output           cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;
  output           d1_epcs_flash_controller_epcs_control_port_end_xfer;
  output  [  8: 0] epcs_flash_controller_epcs_control_port_address;
  output           epcs_flash_controller_epcs_control_port_chipselect;
  output           epcs_flash_controller_epcs_control_port_dataavailable_from_sa;
  output           epcs_flash_controller_epcs_control_port_endofpacket_from_sa;
  output           epcs_flash_controller_epcs_control_port_irq_from_sa;
  output           epcs_flash_controller_epcs_control_port_read_n;
  output  [ 31: 0] epcs_flash_controller_epcs_control_port_readdata_from_sa;
  output           epcs_flash_controller_epcs_control_port_readyfordata_from_sa;
  output           epcs_flash_controller_epcs_control_port_reset_n;
  output           epcs_flash_controller_epcs_control_port_write_n;
  output  [ 31: 0] epcs_flash_controller_epcs_control_port_writedata;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input            epcs_flash_controller_epcs_control_port_dataavailable;
  input            epcs_flash_controller_epcs_control_port_endofpacket;
  input            epcs_flash_controller_epcs_control_port_irq;
  input   [ 31: 0] epcs_flash_controller_epcs_control_port_readdata;
  input            epcs_flash_controller_epcs_control_port_readyfordata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_requests_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_saved_grant_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_saved_grant_epcs_flash_controller_epcs_control_port;
  reg              d1_epcs_flash_controller_epcs_control_port_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port;
  wire    [  8: 0] epcs_flash_controller_epcs_control_port_address;
  wire             epcs_flash_controller_epcs_control_port_allgrants;
  wire             epcs_flash_controller_epcs_control_port_allow_new_arb_cycle;
  wire             epcs_flash_controller_epcs_control_port_any_bursting_master_saved_grant;
  wire             epcs_flash_controller_epcs_control_port_any_continuerequest;
  reg     [  1: 0] epcs_flash_controller_epcs_control_port_arb_addend;
  wire             epcs_flash_controller_epcs_control_port_arb_counter_enable;
  reg     [  1: 0] epcs_flash_controller_epcs_control_port_arb_share_counter;
  wire    [  1: 0] epcs_flash_controller_epcs_control_port_arb_share_counter_next_value;
  wire    [  1: 0] epcs_flash_controller_epcs_control_port_arb_share_set_values;
  wire    [  1: 0] epcs_flash_controller_epcs_control_port_arb_winner;
  wire             epcs_flash_controller_epcs_control_port_arbitration_holdoff_internal;
  wire             epcs_flash_controller_epcs_control_port_beginbursttransfer_internal;
  wire             epcs_flash_controller_epcs_control_port_begins_xfer;
  wire             epcs_flash_controller_epcs_control_port_chipselect;
  wire    [  3: 0] epcs_flash_controller_epcs_control_port_chosen_master_double_vector;
  wire    [  1: 0] epcs_flash_controller_epcs_control_port_chosen_master_rot_left;
  wire             epcs_flash_controller_epcs_control_port_dataavailable_from_sa;
  wire             epcs_flash_controller_epcs_control_port_end_xfer;
  wire             epcs_flash_controller_epcs_control_port_endofpacket_from_sa;
  wire             epcs_flash_controller_epcs_control_port_firsttransfer;
  wire    [  1: 0] epcs_flash_controller_epcs_control_port_grant_vector;
  wire             epcs_flash_controller_epcs_control_port_in_a_read_cycle;
  wire             epcs_flash_controller_epcs_control_port_in_a_write_cycle;
  wire             epcs_flash_controller_epcs_control_port_irq_from_sa;
  wire    [  1: 0] epcs_flash_controller_epcs_control_port_master_qreq_vector;
  wire             epcs_flash_controller_epcs_control_port_non_bursting_master_requests;
  wire             epcs_flash_controller_epcs_control_port_read_n;
  wire    [ 31: 0] epcs_flash_controller_epcs_control_port_readdata_from_sa;
  wire             epcs_flash_controller_epcs_control_port_readyfordata_from_sa;
  reg              epcs_flash_controller_epcs_control_port_reg_firsttransfer;
  wire             epcs_flash_controller_epcs_control_port_reset_n;
  reg     [  1: 0] epcs_flash_controller_epcs_control_port_saved_chosen_master_vector;
  reg              epcs_flash_controller_epcs_control_port_slavearbiterlockenable;
  wire             epcs_flash_controller_epcs_control_port_slavearbiterlockenable2;
  wire             epcs_flash_controller_epcs_control_port_unreg_firsttransfer;
  wire             epcs_flash_controller_epcs_control_port_waits_for_read;
  wire             epcs_flash_controller_epcs_control_port_waits_for_write;
  wire             epcs_flash_controller_epcs_control_port_write_n;
  wire    [ 31: 0] epcs_flash_controller_epcs_control_port_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_epcs_flash_controller_epcs_control_port;
  reg              last_cycle_cpu_instruction_master_granted_slave_epcs_flash_controller_epcs_control_port;
  wire    [ 27: 0] shifted_address_to_epcs_flash_controller_epcs_control_port_from_cpu_data_master;
  wire    [ 27: 0] shifted_address_to_epcs_flash_controller_epcs_control_port_from_cpu_instruction_master;
  wire             wait_for_epcs_flash_controller_epcs_control_port_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~epcs_flash_controller_epcs_control_port_end_xfer;
    end


  assign epcs_flash_controller_epcs_control_port_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port | cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port));
  //assign epcs_flash_controller_epcs_control_port_readdata_from_sa = epcs_flash_controller_epcs_control_port_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_readdata_from_sa = epcs_flash_controller_epcs_control_port_readdata;

  assign cpu_data_master_requests_epcs_flash_controller_epcs_control_port = ({cpu_data_master_address_to_slave[27 : 11] , 11'b0} == 28'h9000000) & (cpu_data_master_read | cpu_data_master_write);
  //assign epcs_flash_controller_epcs_control_port_dataavailable_from_sa = epcs_flash_controller_epcs_control_port_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_dataavailable_from_sa = epcs_flash_controller_epcs_control_port_dataavailable;

  //assign epcs_flash_controller_epcs_control_port_readyfordata_from_sa = epcs_flash_controller_epcs_control_port_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_readyfordata_from_sa = epcs_flash_controller_epcs_control_port_readyfordata;

  //epcs_flash_controller_epcs_control_port_arb_share_counter set values, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_arb_share_set_values = 1;

  //epcs_flash_controller_epcs_control_port_non_bursting_master_requests mux, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_non_bursting_master_requests = cpu_data_master_requests_epcs_flash_controller_epcs_control_port |
    cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port |
    cpu_data_master_requests_epcs_flash_controller_epcs_control_port |
    cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;

  //epcs_flash_controller_epcs_control_port_any_bursting_master_saved_grant mux, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_any_bursting_master_saved_grant = 0;

  //epcs_flash_controller_epcs_control_port_arb_share_counter_next_value assignment, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_arb_share_counter_next_value = epcs_flash_controller_epcs_control_port_firsttransfer ? (epcs_flash_controller_epcs_control_port_arb_share_set_values - 1) : |epcs_flash_controller_epcs_control_port_arb_share_counter ? (epcs_flash_controller_epcs_control_port_arb_share_counter - 1) : 0;

  //epcs_flash_controller_epcs_control_port_allgrants all slave grants, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_allgrants = (|epcs_flash_controller_epcs_control_port_grant_vector) |
    (|epcs_flash_controller_epcs_control_port_grant_vector) |
    (|epcs_flash_controller_epcs_control_port_grant_vector) |
    (|epcs_flash_controller_epcs_control_port_grant_vector);

  //epcs_flash_controller_epcs_control_port_end_xfer assignment, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_end_xfer = ~(epcs_flash_controller_epcs_control_port_waits_for_read | epcs_flash_controller_epcs_control_port_waits_for_write);

  //end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port = epcs_flash_controller_epcs_control_port_end_xfer & (~epcs_flash_controller_epcs_control_port_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //epcs_flash_controller_epcs_control_port_arb_share_counter arbitration counter enable, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_arb_counter_enable = (end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port & epcs_flash_controller_epcs_control_port_allgrants) | (end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port & ~epcs_flash_controller_epcs_control_port_non_bursting_master_requests);

  //epcs_flash_controller_epcs_control_port_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_flash_controller_epcs_control_port_arb_share_counter <= 0;
      else if (epcs_flash_controller_epcs_control_port_arb_counter_enable)
          epcs_flash_controller_epcs_control_port_arb_share_counter <= epcs_flash_controller_epcs_control_port_arb_share_counter_next_value;
    end


  //epcs_flash_controller_epcs_control_port_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_flash_controller_epcs_control_port_slavearbiterlockenable <= 0;
      else if ((|epcs_flash_controller_epcs_control_port_master_qreq_vector & end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port) | (end_xfer_arb_share_counter_term_epcs_flash_controller_epcs_control_port & ~epcs_flash_controller_epcs_control_port_non_bursting_master_requests))
          epcs_flash_controller_epcs_control_port_slavearbiterlockenable <= |epcs_flash_controller_epcs_control_port_arb_share_counter_next_value;
    end


  //cpu/data_master epcs_flash_controller/epcs_control_port arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = epcs_flash_controller_epcs_control_port_slavearbiterlockenable & cpu_data_master_continuerequest;

  //epcs_flash_controller_epcs_control_port_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_slavearbiterlockenable2 = |epcs_flash_controller_epcs_control_port_arb_share_counter_next_value;

  //cpu/data_master epcs_flash_controller/epcs_control_port arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = epcs_flash_controller_epcs_control_port_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master epcs_flash_controller/epcs_control_port arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = epcs_flash_controller_epcs_control_port_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master epcs_flash_controller/epcs_control_port arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = epcs_flash_controller_epcs_control_port_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted epcs_flash_controller/epcs_control_port last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_epcs_flash_controller_epcs_control_port <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_epcs_flash_controller_epcs_control_port <= cpu_instruction_master_saved_grant_epcs_flash_controller_epcs_control_port ? 1 : (epcs_flash_controller_epcs_control_port_arbitration_holdoff_internal | ~cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port) ? 0 : last_cycle_cpu_instruction_master_granted_slave_epcs_flash_controller_epcs_control_port;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_epcs_flash_controller_epcs_control_port & cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;

  //epcs_flash_controller_epcs_control_port_any_continuerequest at least one master continues requesting, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port = cpu_data_master_requests_epcs_flash_controller_epcs_control_port & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))) | cpu_instruction_master_arbiterlock);
  //local readdatavalid cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port, which is an e_mux
  assign cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port = cpu_data_master_granted_epcs_flash_controller_epcs_control_port & cpu_data_master_read & ~epcs_flash_controller_epcs_control_port_waits_for_read;

  //epcs_flash_controller_epcs_control_port_writedata mux, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_writedata = cpu_data_master_writedata;

  //assign epcs_flash_controller_epcs_control_port_endofpacket_from_sa = epcs_flash_controller_epcs_control_port_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_endofpacket_from_sa = epcs_flash_controller_epcs_control_port_endofpacket;

  assign cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port = (({cpu_instruction_master_address_to_slave[27 : 11] , 11'b0} == 28'h9000000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted epcs_flash_controller/epcs_control_port last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_epcs_flash_controller_epcs_control_port <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_epcs_flash_controller_epcs_control_port <= cpu_data_master_saved_grant_epcs_flash_controller_epcs_control_port ? 1 : (epcs_flash_controller_epcs_control_port_arbitration_holdoff_internal | ~cpu_data_master_requests_epcs_flash_controller_epcs_control_port) ? 0 : last_cycle_cpu_data_master_granted_slave_epcs_flash_controller_epcs_control_port;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_epcs_flash_controller_epcs_control_port & cpu_data_master_requests_epcs_flash_controller_epcs_control_port;

  assign cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port = cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))) | cpu_data_master_arbiterlock);
  //local readdatavalid cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port, which is an e_mux
  assign cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port = cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port & cpu_instruction_master_read & ~epcs_flash_controller_epcs_control_port_waits_for_read;

  //allow new arb cycle for epcs_flash_controller/epcs_control_port, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for epcs_flash_controller/epcs_control_port, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_master_qreq_vector[0] = cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port;

  //cpu/instruction_master grant epcs_flash_controller/epcs_control_port, which is an e_assign
  assign cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port = epcs_flash_controller_epcs_control_port_grant_vector[0];

  //cpu/instruction_master saved-grant epcs_flash_controller/epcs_control_port, which is an e_assign
  assign cpu_instruction_master_saved_grant_epcs_flash_controller_epcs_control_port = epcs_flash_controller_epcs_control_port_arb_winner[0] && cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;

  //cpu/data_master assignment into master qualified-requests vector for epcs_flash_controller/epcs_control_port, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_master_qreq_vector[1] = cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port;

  //cpu/data_master grant epcs_flash_controller/epcs_control_port, which is an e_assign
  assign cpu_data_master_granted_epcs_flash_controller_epcs_control_port = epcs_flash_controller_epcs_control_port_grant_vector[1];

  //cpu/data_master saved-grant epcs_flash_controller/epcs_control_port, which is an e_assign
  assign cpu_data_master_saved_grant_epcs_flash_controller_epcs_control_port = epcs_flash_controller_epcs_control_port_arb_winner[1] && cpu_data_master_requests_epcs_flash_controller_epcs_control_port;

  //epcs_flash_controller/epcs_control_port chosen-master double-vector, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_chosen_master_double_vector = {epcs_flash_controller_epcs_control_port_master_qreq_vector, epcs_flash_controller_epcs_control_port_master_qreq_vector} & ({~epcs_flash_controller_epcs_control_port_master_qreq_vector, ~epcs_flash_controller_epcs_control_port_master_qreq_vector} + epcs_flash_controller_epcs_control_port_arb_addend);

  //stable onehot encoding of arb winner
  assign epcs_flash_controller_epcs_control_port_arb_winner = (epcs_flash_controller_epcs_control_port_allow_new_arb_cycle & | epcs_flash_controller_epcs_control_port_grant_vector) ? epcs_flash_controller_epcs_control_port_grant_vector : epcs_flash_controller_epcs_control_port_saved_chosen_master_vector;

  //saved epcs_flash_controller_epcs_control_port_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_flash_controller_epcs_control_port_saved_chosen_master_vector <= 0;
      else if (epcs_flash_controller_epcs_control_port_allow_new_arb_cycle)
          epcs_flash_controller_epcs_control_port_saved_chosen_master_vector <= |epcs_flash_controller_epcs_control_port_grant_vector ? epcs_flash_controller_epcs_control_port_grant_vector : epcs_flash_controller_epcs_control_port_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign epcs_flash_controller_epcs_control_port_grant_vector = {(epcs_flash_controller_epcs_control_port_chosen_master_double_vector[1] | epcs_flash_controller_epcs_control_port_chosen_master_double_vector[3]),
    (epcs_flash_controller_epcs_control_port_chosen_master_double_vector[0] | epcs_flash_controller_epcs_control_port_chosen_master_double_vector[2])};

  //epcs_flash_controller/epcs_control_port chosen master rotated left, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_chosen_master_rot_left = (epcs_flash_controller_epcs_control_port_arb_winner << 1) ? (epcs_flash_controller_epcs_control_port_arb_winner << 1) : 1;

  //epcs_flash_controller/epcs_control_port's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_flash_controller_epcs_control_port_arb_addend <= 1;
      else if (|epcs_flash_controller_epcs_control_port_grant_vector)
          epcs_flash_controller_epcs_control_port_arb_addend <= epcs_flash_controller_epcs_control_port_end_xfer? epcs_flash_controller_epcs_control_port_chosen_master_rot_left : epcs_flash_controller_epcs_control_port_grant_vector;
    end


  //epcs_flash_controller_epcs_control_port_reset_n assignment, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_reset_n = reset_n;

  assign epcs_flash_controller_epcs_control_port_chipselect = cpu_data_master_granted_epcs_flash_controller_epcs_control_port | cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port;
  //epcs_flash_controller_epcs_control_port_firsttransfer first transaction, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_firsttransfer = epcs_flash_controller_epcs_control_port_begins_xfer ? epcs_flash_controller_epcs_control_port_unreg_firsttransfer : epcs_flash_controller_epcs_control_port_reg_firsttransfer;

  //epcs_flash_controller_epcs_control_port_unreg_firsttransfer first transaction, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_unreg_firsttransfer = ~(epcs_flash_controller_epcs_control_port_slavearbiterlockenable & epcs_flash_controller_epcs_control_port_any_continuerequest);

  //epcs_flash_controller_epcs_control_port_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_flash_controller_epcs_control_port_reg_firsttransfer <= 1'b1;
      else if (epcs_flash_controller_epcs_control_port_begins_xfer)
          epcs_flash_controller_epcs_control_port_reg_firsttransfer <= epcs_flash_controller_epcs_control_port_unreg_firsttransfer;
    end


  //epcs_flash_controller_epcs_control_port_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_beginbursttransfer_internal = epcs_flash_controller_epcs_control_port_begins_xfer;

  //epcs_flash_controller_epcs_control_port_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_arbitration_holdoff_internal = epcs_flash_controller_epcs_control_port_begins_xfer & epcs_flash_controller_epcs_control_port_firsttransfer;

  //~epcs_flash_controller_epcs_control_port_read_n assignment, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_read_n = ~((cpu_data_master_granted_epcs_flash_controller_epcs_control_port & cpu_data_master_read) | (cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port & cpu_instruction_master_read));

  //~epcs_flash_controller_epcs_control_port_write_n assignment, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_write_n = ~(cpu_data_master_granted_epcs_flash_controller_epcs_control_port & cpu_data_master_write);

  assign shifted_address_to_epcs_flash_controller_epcs_control_port_from_cpu_data_master = cpu_data_master_address_to_slave;
  //epcs_flash_controller_epcs_control_port_address mux, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_address = (cpu_data_master_granted_epcs_flash_controller_epcs_control_port)? (shifted_address_to_epcs_flash_controller_epcs_control_port_from_cpu_data_master >> 2) :
    (shifted_address_to_epcs_flash_controller_epcs_control_port_from_cpu_instruction_master >> 2);

  assign shifted_address_to_epcs_flash_controller_epcs_control_port_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_epcs_flash_controller_epcs_control_port_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_epcs_flash_controller_epcs_control_port_end_xfer <= 1;
      else 
        d1_epcs_flash_controller_epcs_control_port_end_xfer <= epcs_flash_controller_epcs_control_port_end_xfer;
    end


  //epcs_flash_controller_epcs_control_port_waits_for_read in a cycle, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_waits_for_read = epcs_flash_controller_epcs_control_port_in_a_read_cycle & epcs_flash_controller_epcs_control_port_begins_xfer;

  //epcs_flash_controller_epcs_control_port_in_a_read_cycle assignment, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_in_a_read_cycle = (cpu_data_master_granted_epcs_flash_controller_epcs_control_port & cpu_data_master_read) | (cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = epcs_flash_controller_epcs_control_port_in_a_read_cycle;

  //epcs_flash_controller_epcs_control_port_waits_for_write in a cycle, which is an e_mux
  assign epcs_flash_controller_epcs_control_port_waits_for_write = epcs_flash_controller_epcs_control_port_in_a_write_cycle & epcs_flash_controller_epcs_control_port_begins_xfer;

  //epcs_flash_controller_epcs_control_port_in_a_write_cycle assignment, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_in_a_write_cycle = cpu_data_master_granted_epcs_flash_controller_epcs_control_port & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = epcs_flash_controller_epcs_control_port_in_a_write_cycle;

  assign wait_for_epcs_flash_controller_epcs_control_port_counter = 0;
  //assign epcs_flash_controller_epcs_control_port_irq_from_sa = epcs_flash_controller_epcs_control_port_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_flash_controller_epcs_control_port_irq_from_sa = epcs_flash_controller_epcs_control_port_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //epcs_flash_controller/epcs_control_port enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_epcs_flash_controller_epcs_control_port + cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_epcs_flash_controller_epcs_control_port + cpu_instruction_master_saved_grant_epcs_flash_controller_epcs_control_port > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pll_s1_arbitrator (
                           // inputs:
                            DE2_70_SOPC_clock_2_out_address_to_slave,
                            DE2_70_SOPC_clock_2_out_nativeaddress,
                            DE2_70_SOPC_clock_2_out_read,
                            DE2_70_SOPC_clock_2_out_write,
                            DE2_70_SOPC_clock_2_out_writedata,
                            clk,
                            pll_s1_readdata,
                            pll_s1_resetrequest,
                            reset_n,

                           // outputs:
                            DE2_70_SOPC_clock_2_out_granted_pll_s1,
                            DE2_70_SOPC_clock_2_out_qualified_request_pll_s1,
                            DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1,
                            DE2_70_SOPC_clock_2_out_requests_pll_s1,
                            d1_pll_s1_end_xfer,
                            pll_s1_address,
                            pll_s1_chipselect,
                            pll_s1_read,
                            pll_s1_readdata_from_sa,
                            pll_s1_reset_n,
                            pll_s1_resetrequest_from_sa,
                            pll_s1_write,
                            pll_s1_writedata
                         )
;

  output           DE2_70_SOPC_clock_2_out_granted_pll_s1;
  output           DE2_70_SOPC_clock_2_out_qualified_request_pll_s1;
  output           DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1;
  output           DE2_70_SOPC_clock_2_out_requests_pll_s1;
  output           d1_pll_s1_end_xfer;
  output  [  2: 0] pll_s1_address;
  output           pll_s1_chipselect;
  output           pll_s1_read;
  output  [ 15: 0] pll_s1_readdata_from_sa;
  output           pll_s1_reset_n;
  output           pll_s1_resetrequest_from_sa;
  output           pll_s1_write;
  output  [ 15: 0] pll_s1_writedata;
  input   [  3: 0] DE2_70_SOPC_clock_2_out_address_to_slave;
  input   [  2: 0] DE2_70_SOPC_clock_2_out_nativeaddress;
  input            DE2_70_SOPC_clock_2_out_read;
  input            DE2_70_SOPC_clock_2_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_2_out_writedata;
  input            clk;
  input   [ 15: 0] pll_s1_readdata;
  input            pll_s1_resetrequest;
  input            reset_n;

  wire             DE2_70_SOPC_clock_2_out_arbiterlock;
  wire             DE2_70_SOPC_clock_2_out_arbiterlock2;
  wire             DE2_70_SOPC_clock_2_out_continuerequest;
  wire             DE2_70_SOPC_clock_2_out_granted_pll_s1;
  wire             DE2_70_SOPC_clock_2_out_qualified_request_pll_s1;
  wire             DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1;
  wire             DE2_70_SOPC_clock_2_out_requests_pll_s1;
  wire             DE2_70_SOPC_clock_2_out_saved_grant_pll_s1;
  reg              d1_pll_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pll_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  2: 0] pll_s1_address;
  wire             pll_s1_allgrants;
  wire             pll_s1_allow_new_arb_cycle;
  wire             pll_s1_any_bursting_master_saved_grant;
  wire             pll_s1_any_continuerequest;
  wire             pll_s1_arb_counter_enable;
  reg              pll_s1_arb_share_counter;
  wire             pll_s1_arb_share_counter_next_value;
  wire             pll_s1_arb_share_set_values;
  wire             pll_s1_beginbursttransfer_internal;
  wire             pll_s1_begins_xfer;
  wire             pll_s1_chipselect;
  wire             pll_s1_end_xfer;
  wire             pll_s1_firsttransfer;
  wire             pll_s1_grant_vector;
  wire             pll_s1_in_a_read_cycle;
  wire             pll_s1_in_a_write_cycle;
  wire             pll_s1_master_qreq_vector;
  wire             pll_s1_non_bursting_master_requests;
  wire             pll_s1_read;
  wire    [ 15: 0] pll_s1_readdata_from_sa;
  reg              pll_s1_reg_firsttransfer;
  wire             pll_s1_reset_n;
  wire             pll_s1_resetrequest_from_sa;
  reg              pll_s1_slavearbiterlockenable;
  wire             pll_s1_slavearbiterlockenable2;
  wire             pll_s1_unreg_firsttransfer;
  wire             pll_s1_waits_for_read;
  wire             pll_s1_waits_for_write;
  wire             pll_s1_write;
  wire    [ 15: 0] pll_s1_writedata;
  wire             wait_for_pll_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pll_s1_end_xfer;
    end


  assign pll_s1_begins_xfer = ~d1_reasons_to_wait & ((DE2_70_SOPC_clock_2_out_qualified_request_pll_s1));
  //assign pll_s1_readdata_from_sa = pll_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pll_s1_readdata_from_sa = pll_s1_readdata;

  assign DE2_70_SOPC_clock_2_out_requests_pll_s1 = (1) & (DE2_70_SOPC_clock_2_out_read | DE2_70_SOPC_clock_2_out_write);
  //pll_s1_arb_share_counter set values, which is an e_mux
  assign pll_s1_arb_share_set_values = 1;

  //pll_s1_non_bursting_master_requests mux, which is an e_mux
  assign pll_s1_non_bursting_master_requests = DE2_70_SOPC_clock_2_out_requests_pll_s1;

  //pll_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign pll_s1_any_bursting_master_saved_grant = 0;

  //pll_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign pll_s1_arb_share_counter_next_value = pll_s1_firsttransfer ? (pll_s1_arb_share_set_values - 1) : |pll_s1_arb_share_counter ? (pll_s1_arb_share_counter - 1) : 0;

  //pll_s1_allgrants all slave grants, which is an e_mux
  assign pll_s1_allgrants = |pll_s1_grant_vector;

  //pll_s1_end_xfer assignment, which is an e_assign
  assign pll_s1_end_xfer = ~(pll_s1_waits_for_read | pll_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_pll_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pll_s1 = pll_s1_end_xfer & (~pll_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pll_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign pll_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_pll_s1 & pll_s1_allgrants) | (end_xfer_arb_share_counter_term_pll_s1 & ~pll_s1_non_bursting_master_requests);

  //pll_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_s1_arb_share_counter <= 0;
      else if (pll_s1_arb_counter_enable)
          pll_s1_arb_share_counter <= pll_s1_arb_share_counter_next_value;
    end


  //pll_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_s1_slavearbiterlockenable <= 0;
      else if ((|pll_s1_master_qreq_vector & end_xfer_arb_share_counter_term_pll_s1) | (end_xfer_arb_share_counter_term_pll_s1 & ~pll_s1_non_bursting_master_requests))
          pll_s1_slavearbiterlockenable <= |pll_s1_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_2/out pll/s1 arbiterlock, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_arbiterlock = pll_s1_slavearbiterlockenable & DE2_70_SOPC_clock_2_out_continuerequest;

  //pll_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pll_s1_slavearbiterlockenable2 = |pll_s1_arb_share_counter_next_value;

  //DE2_70_SOPC_clock_2/out pll/s1 arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_arbiterlock2 = pll_s1_slavearbiterlockenable2 & DE2_70_SOPC_clock_2_out_continuerequest;

  //pll_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pll_s1_any_continuerequest = 1;

  //DE2_70_SOPC_clock_2_out_continuerequest continued request, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_continuerequest = 1;

  assign DE2_70_SOPC_clock_2_out_qualified_request_pll_s1 = DE2_70_SOPC_clock_2_out_requests_pll_s1;
  //pll_s1_writedata mux, which is an e_mux
  assign pll_s1_writedata = DE2_70_SOPC_clock_2_out_writedata;

  //master is always granted when requested
  assign DE2_70_SOPC_clock_2_out_granted_pll_s1 = DE2_70_SOPC_clock_2_out_qualified_request_pll_s1;

  //DE2_70_SOPC_clock_2/out saved-grant pll/s1, which is an e_assign
  assign DE2_70_SOPC_clock_2_out_saved_grant_pll_s1 = DE2_70_SOPC_clock_2_out_requests_pll_s1;

  //allow new arb cycle for pll/s1, which is an e_assign
  assign pll_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pll_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pll_s1_master_qreq_vector = 1;

  //pll_s1_reset_n assignment, which is an e_assign
  assign pll_s1_reset_n = reset_n;

  //assign pll_s1_resetrequest_from_sa = pll_s1_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pll_s1_resetrequest_from_sa = pll_s1_resetrequest;

  assign pll_s1_chipselect = DE2_70_SOPC_clock_2_out_granted_pll_s1;
  //pll_s1_firsttransfer first transaction, which is an e_assign
  assign pll_s1_firsttransfer = pll_s1_begins_xfer ? pll_s1_unreg_firsttransfer : pll_s1_reg_firsttransfer;

  //pll_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign pll_s1_unreg_firsttransfer = ~(pll_s1_slavearbiterlockenable & pll_s1_any_continuerequest);

  //pll_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_s1_reg_firsttransfer <= 1'b1;
      else if (pll_s1_begins_xfer)
          pll_s1_reg_firsttransfer <= pll_s1_unreg_firsttransfer;
    end


  //pll_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pll_s1_beginbursttransfer_internal = pll_s1_begins_xfer;

  //pll_s1_read assignment, which is an e_mux
  assign pll_s1_read = DE2_70_SOPC_clock_2_out_granted_pll_s1 & DE2_70_SOPC_clock_2_out_read;

  //pll_s1_write assignment, which is an e_mux
  assign pll_s1_write = DE2_70_SOPC_clock_2_out_granted_pll_s1 & DE2_70_SOPC_clock_2_out_write;

  //pll_s1_address mux, which is an e_mux
  assign pll_s1_address = DE2_70_SOPC_clock_2_out_nativeaddress;

  //d1_pll_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pll_s1_end_xfer <= 1;
      else 
        d1_pll_s1_end_xfer <= pll_s1_end_xfer;
    end


  //pll_s1_waits_for_read in a cycle, which is an e_mux
  assign pll_s1_waits_for_read = pll_s1_in_a_read_cycle & pll_s1_begins_xfer;

  //pll_s1_in_a_read_cycle assignment, which is an e_assign
  assign pll_s1_in_a_read_cycle = DE2_70_SOPC_clock_2_out_granted_pll_s1 & DE2_70_SOPC_clock_2_out_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pll_s1_in_a_read_cycle;

  //pll_s1_waits_for_write in a cycle, which is an e_mux
  assign pll_s1_waits_for_write = pll_s1_in_a_write_cycle & 0;

  //pll_s1_in_a_write_cycle assignment, which is an e_assign
  assign pll_s1_in_a_write_cycle = DE2_70_SOPC_clock_2_out_granted_pll_s1 & DE2_70_SOPC_clock_2_out_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pll_s1_in_a_write_cycle;

  assign wait_for_pll_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pll/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_DE2_70_SOPC_clock_0_out_to_sdram_u1_s1_module (
                                                                    // inputs:
                                                                     clear_fifo,
                                                                     clk,
                                                                     data_in,
                                                                     read,
                                                                     reset_n,
                                                                     sync_reset,
                                                                     write,

                                                                    // outputs:
                                                                     data_out,
                                                                     empty,
                                                                     fifo_contains_ones_n,
                                                                     full
                                                                  )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_2;
  reg              full_3;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  wire             full_7;
  reg     [  3: 0] how_many_ones;
  wire    [  3: 0] one_count_minus_one;
  wire    [  3: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  reg              stage_0;
  reg              stage_1;
  reg              stage_2;
  reg              stage_3;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  wire    [  3: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_6;
  assign empty = !full_0;
  assign full_7 = 0;
  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    0;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_DE2_70_SOPC_clock_1_out_to_sdram_u1_s1_module (
                                                                    // inputs:
                                                                     clear_fifo,
                                                                     clk,
                                                                     data_in,
                                                                     read,
                                                                     reset_n,
                                                                     sync_reset,
                                                                     write,

                                                                    // outputs:
                                                                     data_out,
                                                                     empty,
                                                                     fifo_contains_ones_n,
                                                                     full
                                                                  )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_2;
  reg              full_3;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  wire             full_7;
  reg     [  3: 0] how_many_ones;
  wire    [  3: 0] one_count_minus_one;
  wire    [  3: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  reg              stage_0;
  reg              stage_1;
  reg              stage_2;
  reg              stage_3;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  wire    [  3: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_6;
  assign empty = !full_0;
  assign full_7 = 0;
  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    0;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sdram_u1_s1_arbitrator (
                                // inputs:
                                 DE2_70_SOPC_clock_0_out_address_to_slave,
                                 DE2_70_SOPC_clock_0_out_byteenable,
                                 DE2_70_SOPC_clock_0_out_read,
                                 DE2_70_SOPC_clock_0_out_write,
                                 DE2_70_SOPC_clock_0_out_writedata,
                                 DE2_70_SOPC_clock_1_out_address_to_slave,
                                 DE2_70_SOPC_clock_1_out_byteenable,
                                 DE2_70_SOPC_clock_1_out_read,
                                 DE2_70_SOPC_clock_1_out_write,
                                 DE2_70_SOPC_clock_1_out_writedata,
                                 clk,
                                 reset_n,
                                 sdram_u1_s1_readdata,
                                 sdram_u1_s1_readdatavalid,
                                 sdram_u1_s1_waitrequest,

                                // outputs:
                                 DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1,
                                 DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1,
                                 DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1,
                                 DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register,
                                 DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1,
                                 DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1,
                                 DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1,
                                 DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1,
                                 DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register,
                                 DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1,
                                 d1_sdram_u1_s1_end_xfer,
                                 sdram_u1_s1_address,
                                 sdram_u1_s1_byteenable_n,
                                 sdram_u1_s1_chipselect,
                                 sdram_u1_s1_read_n,
                                 sdram_u1_s1_readdata_from_sa,
                                 sdram_u1_s1_reset_n,
                                 sdram_u1_s1_waitrequest_from_sa,
                                 sdram_u1_s1_write_n,
                                 sdram_u1_s1_writedata
                              )
;

  output           DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1;
  output           DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1;
  output           DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1;
  output           DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register;
  output           DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1;
  output           DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1;
  output           DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1;
  output           DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1;
  output           DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register;
  output           DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;
  output           d1_sdram_u1_s1_end_xfer;
  output  [ 23: 0] sdram_u1_s1_address;
  output  [  1: 0] sdram_u1_s1_byteenable_n;
  output           sdram_u1_s1_chipselect;
  output           sdram_u1_s1_read_n;
  output  [ 15: 0] sdram_u1_s1_readdata_from_sa;
  output           sdram_u1_s1_reset_n;
  output           sdram_u1_s1_waitrequest_from_sa;
  output           sdram_u1_s1_write_n;
  output  [ 15: 0] sdram_u1_s1_writedata;
  input   [ 24: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  input   [  1: 0] DE2_70_SOPC_clock_0_out_byteenable;
  input            DE2_70_SOPC_clock_0_out_read;
  input            DE2_70_SOPC_clock_0_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_0_out_writedata;
  input   [ 24: 0] DE2_70_SOPC_clock_1_out_address_to_slave;
  input   [  1: 0] DE2_70_SOPC_clock_1_out_byteenable;
  input            DE2_70_SOPC_clock_1_out_read;
  input            DE2_70_SOPC_clock_1_out_write;
  input   [ 15: 0] DE2_70_SOPC_clock_1_out_writedata;
  input            clk;
  input            reset_n;
  input   [ 15: 0] sdram_u1_s1_readdata;
  input            sdram_u1_s1_readdatavalid;
  input            sdram_u1_s1_waitrequest;

  wire             DE2_70_SOPC_clock_0_out_arbiterlock;
  wire             DE2_70_SOPC_clock_0_out_arbiterlock2;
  wire             DE2_70_SOPC_clock_0_out_continuerequest;
  wire             DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_rdv_fifo_empty_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_rdv_fifo_output_from_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register;
  wire             DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_saved_grant_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_arbiterlock;
  wire             DE2_70_SOPC_clock_1_out_arbiterlock2;
  wire             DE2_70_SOPC_clock_1_out_continuerequest;
  wire             DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_rdv_fifo_empty_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_rdv_fifo_output_from_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register;
  wire             DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_saved_grant_sdram_u1_s1;
  reg              d1_reasons_to_wait;
  reg              d1_sdram_u1_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sdram_u1_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_DE2_70_SOPC_clock_0_out_granted_slave_sdram_u1_s1;
  reg              last_cycle_DE2_70_SOPC_clock_1_out_granted_slave_sdram_u1_s1;
  wire    [ 23: 0] sdram_u1_s1_address;
  wire             sdram_u1_s1_allgrants;
  wire             sdram_u1_s1_allow_new_arb_cycle;
  wire             sdram_u1_s1_any_bursting_master_saved_grant;
  wire             sdram_u1_s1_any_continuerequest;
  reg     [  1: 0] sdram_u1_s1_arb_addend;
  wire             sdram_u1_s1_arb_counter_enable;
  reg              sdram_u1_s1_arb_share_counter;
  wire             sdram_u1_s1_arb_share_counter_next_value;
  wire             sdram_u1_s1_arb_share_set_values;
  wire    [  1: 0] sdram_u1_s1_arb_winner;
  wire             sdram_u1_s1_arbitration_holdoff_internal;
  wire             sdram_u1_s1_beginbursttransfer_internal;
  wire             sdram_u1_s1_begins_xfer;
  wire    [  1: 0] sdram_u1_s1_byteenable_n;
  wire             sdram_u1_s1_chipselect;
  wire    [  3: 0] sdram_u1_s1_chosen_master_double_vector;
  wire    [  1: 0] sdram_u1_s1_chosen_master_rot_left;
  wire             sdram_u1_s1_end_xfer;
  wire             sdram_u1_s1_firsttransfer;
  wire    [  1: 0] sdram_u1_s1_grant_vector;
  wire             sdram_u1_s1_in_a_read_cycle;
  wire             sdram_u1_s1_in_a_write_cycle;
  wire    [  1: 0] sdram_u1_s1_master_qreq_vector;
  wire             sdram_u1_s1_move_on_to_next_transaction;
  wire             sdram_u1_s1_non_bursting_master_requests;
  wire             sdram_u1_s1_read_n;
  wire    [ 15: 0] sdram_u1_s1_readdata_from_sa;
  wire             sdram_u1_s1_readdatavalid_from_sa;
  reg              sdram_u1_s1_reg_firsttransfer;
  wire             sdram_u1_s1_reset_n;
  reg     [  1: 0] sdram_u1_s1_saved_chosen_master_vector;
  reg              sdram_u1_s1_slavearbiterlockenable;
  wire             sdram_u1_s1_slavearbiterlockenable2;
  wire             sdram_u1_s1_unreg_firsttransfer;
  wire             sdram_u1_s1_waitrequest_from_sa;
  wire             sdram_u1_s1_waits_for_read;
  wire             sdram_u1_s1_waits_for_write;
  wire             sdram_u1_s1_write_n;
  wire    [ 15: 0] sdram_u1_s1_writedata;
  wire    [ 24: 0] shifted_address_to_sdram_u1_s1_from_DE2_70_SOPC_clock_0_out;
  wire    [ 24: 0] shifted_address_to_sdram_u1_s1_from_DE2_70_SOPC_clock_1_out;
  wire             wait_for_sdram_u1_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sdram_u1_s1_end_xfer;
    end


  assign sdram_u1_s1_begins_xfer = ~d1_reasons_to_wait & ((DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1 | DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1));
  //assign sdram_u1_s1_readdata_from_sa = sdram_u1_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sdram_u1_s1_readdata_from_sa = sdram_u1_s1_readdata;

  assign DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1 = (1) & (DE2_70_SOPC_clock_0_out_read | DE2_70_SOPC_clock_0_out_write);
  //assign sdram_u1_s1_waitrequest_from_sa = sdram_u1_s1_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sdram_u1_s1_waitrequest_from_sa = sdram_u1_s1_waitrequest;

  //assign sdram_u1_s1_readdatavalid_from_sa = sdram_u1_s1_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sdram_u1_s1_readdatavalid_from_sa = sdram_u1_s1_readdatavalid;

  //sdram_u1_s1_arb_share_counter set values, which is an e_mux
  assign sdram_u1_s1_arb_share_set_values = 1;

  //sdram_u1_s1_non_bursting_master_requests mux, which is an e_mux
  assign sdram_u1_s1_non_bursting_master_requests = DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1 |
    DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1 |
    DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1 |
    DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;

  //sdram_u1_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign sdram_u1_s1_any_bursting_master_saved_grant = 0;

  //sdram_u1_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign sdram_u1_s1_arb_share_counter_next_value = sdram_u1_s1_firsttransfer ? (sdram_u1_s1_arb_share_set_values - 1) : |sdram_u1_s1_arb_share_counter ? (sdram_u1_s1_arb_share_counter - 1) : 0;

  //sdram_u1_s1_allgrants all slave grants, which is an e_mux
  assign sdram_u1_s1_allgrants = (|sdram_u1_s1_grant_vector) |
    (|sdram_u1_s1_grant_vector) |
    (|sdram_u1_s1_grant_vector) |
    (|sdram_u1_s1_grant_vector);

  //sdram_u1_s1_end_xfer assignment, which is an e_assign
  assign sdram_u1_s1_end_xfer = ~(sdram_u1_s1_waits_for_read | sdram_u1_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_sdram_u1_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sdram_u1_s1 = sdram_u1_s1_end_xfer & (~sdram_u1_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sdram_u1_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign sdram_u1_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_sdram_u1_s1 & sdram_u1_s1_allgrants) | (end_xfer_arb_share_counter_term_sdram_u1_s1 & ~sdram_u1_s1_non_bursting_master_requests);

  //sdram_u1_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_u1_s1_arb_share_counter <= 0;
      else if (sdram_u1_s1_arb_counter_enable)
          sdram_u1_s1_arb_share_counter <= sdram_u1_s1_arb_share_counter_next_value;
    end


  //sdram_u1_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_u1_s1_slavearbiterlockenable <= 0;
      else if ((|sdram_u1_s1_master_qreq_vector & end_xfer_arb_share_counter_term_sdram_u1_s1) | (end_xfer_arb_share_counter_term_sdram_u1_s1 & ~sdram_u1_s1_non_bursting_master_requests))
          sdram_u1_s1_slavearbiterlockenable <= |sdram_u1_s1_arb_share_counter_next_value;
    end


  //DE2_70_SOPC_clock_0/out sdram_u1/s1 arbiterlock, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_arbiterlock = sdram_u1_s1_slavearbiterlockenable & DE2_70_SOPC_clock_0_out_continuerequest;

  //sdram_u1_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sdram_u1_s1_slavearbiterlockenable2 = |sdram_u1_s1_arb_share_counter_next_value;

  //DE2_70_SOPC_clock_0/out sdram_u1/s1 arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_arbiterlock2 = sdram_u1_s1_slavearbiterlockenable2 & DE2_70_SOPC_clock_0_out_continuerequest;

  //DE2_70_SOPC_clock_1/out sdram_u1/s1 arbiterlock, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_arbiterlock = sdram_u1_s1_slavearbiterlockenable & DE2_70_SOPC_clock_1_out_continuerequest;

  //DE2_70_SOPC_clock_1/out sdram_u1/s1 arbiterlock2, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_arbiterlock2 = sdram_u1_s1_slavearbiterlockenable2 & DE2_70_SOPC_clock_1_out_continuerequest;

  //DE2_70_SOPC_clock_1/out granted sdram_u1/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_DE2_70_SOPC_clock_1_out_granted_slave_sdram_u1_s1 <= 0;
      else 
        last_cycle_DE2_70_SOPC_clock_1_out_granted_slave_sdram_u1_s1 <= DE2_70_SOPC_clock_1_out_saved_grant_sdram_u1_s1 ? 1 : (sdram_u1_s1_arbitration_holdoff_internal | ~DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1) ? 0 : last_cycle_DE2_70_SOPC_clock_1_out_granted_slave_sdram_u1_s1;
    end


  //DE2_70_SOPC_clock_1_out_continuerequest continued request, which is an e_mux
  assign DE2_70_SOPC_clock_1_out_continuerequest = last_cycle_DE2_70_SOPC_clock_1_out_granted_slave_sdram_u1_s1 & DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;

  //sdram_u1_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign sdram_u1_s1_any_continuerequest = DE2_70_SOPC_clock_1_out_continuerequest |
    DE2_70_SOPC_clock_0_out_continuerequest;

  assign DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1 = DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1 & ~((DE2_70_SOPC_clock_0_out_read & ((|DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register))) | DE2_70_SOPC_clock_1_out_arbiterlock);
  //unique name for sdram_u1_s1_move_on_to_next_transaction, which is an e_assign
  assign sdram_u1_s1_move_on_to_next_transaction = sdram_u1_s1_readdatavalid_from_sa;

  //rdv_fifo_for_DE2_70_SOPC_clock_0_out_to_sdram_u1_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_DE2_70_SOPC_clock_0_out_to_sdram_u1_s1_module rdv_fifo_for_DE2_70_SOPC_clock_0_out_to_sdram_u1_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1),
      .data_out             (DE2_70_SOPC_clock_0_out_rdv_fifo_output_from_sdram_u1_s1),
      .empty                (),
      .fifo_contains_ones_n (DE2_70_SOPC_clock_0_out_rdv_fifo_empty_sdram_u1_s1),
      .full                 (),
      .read                 (sdram_u1_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~sdram_u1_s1_waits_for_read)
    );

  assign DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register = ~DE2_70_SOPC_clock_0_out_rdv_fifo_empty_sdram_u1_s1;
  //local readdatavalid DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1, which is an e_mux
  assign DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1 = (sdram_u1_s1_readdatavalid_from_sa & DE2_70_SOPC_clock_0_out_rdv_fifo_output_from_sdram_u1_s1) & ~ DE2_70_SOPC_clock_0_out_rdv_fifo_empty_sdram_u1_s1;

  //sdram_u1_s1_writedata mux, which is an e_mux
  assign sdram_u1_s1_writedata = (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1)? DE2_70_SOPC_clock_0_out_writedata :
    DE2_70_SOPC_clock_1_out_writedata;

  assign DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1 = (1) & (DE2_70_SOPC_clock_1_out_read | DE2_70_SOPC_clock_1_out_write);
  //DE2_70_SOPC_clock_0/out granted sdram_u1/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_DE2_70_SOPC_clock_0_out_granted_slave_sdram_u1_s1 <= 0;
      else 
        last_cycle_DE2_70_SOPC_clock_0_out_granted_slave_sdram_u1_s1 <= DE2_70_SOPC_clock_0_out_saved_grant_sdram_u1_s1 ? 1 : (sdram_u1_s1_arbitration_holdoff_internal | ~DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1) ? 0 : last_cycle_DE2_70_SOPC_clock_0_out_granted_slave_sdram_u1_s1;
    end


  //DE2_70_SOPC_clock_0_out_continuerequest continued request, which is an e_mux
  assign DE2_70_SOPC_clock_0_out_continuerequest = last_cycle_DE2_70_SOPC_clock_0_out_granted_slave_sdram_u1_s1 & DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1;

  assign DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1 = DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1 & ~((DE2_70_SOPC_clock_1_out_read & ((|DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register))) | DE2_70_SOPC_clock_0_out_arbiterlock);
  //rdv_fifo_for_DE2_70_SOPC_clock_1_out_to_sdram_u1_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_DE2_70_SOPC_clock_1_out_to_sdram_u1_s1_module rdv_fifo_for_DE2_70_SOPC_clock_1_out_to_sdram_u1_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1),
      .data_out             (DE2_70_SOPC_clock_1_out_rdv_fifo_output_from_sdram_u1_s1),
      .empty                (),
      .fifo_contains_ones_n (DE2_70_SOPC_clock_1_out_rdv_fifo_empty_sdram_u1_s1),
      .full                 (),
      .read                 (sdram_u1_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~sdram_u1_s1_waits_for_read)
    );

  assign DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register = ~DE2_70_SOPC_clock_1_out_rdv_fifo_empty_sdram_u1_s1;
  //local readdatavalid DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1, which is an e_mux
  assign DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1 = (sdram_u1_s1_readdatavalid_from_sa & DE2_70_SOPC_clock_1_out_rdv_fifo_output_from_sdram_u1_s1) & ~ DE2_70_SOPC_clock_1_out_rdv_fifo_empty_sdram_u1_s1;

  //allow new arb cycle for sdram_u1/s1, which is an e_assign
  assign sdram_u1_s1_allow_new_arb_cycle = ~DE2_70_SOPC_clock_0_out_arbiterlock & ~DE2_70_SOPC_clock_1_out_arbiterlock;

  //DE2_70_SOPC_clock_1/out assignment into master qualified-requests vector for sdram_u1/s1, which is an e_assign
  assign sdram_u1_s1_master_qreq_vector[0] = DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1;

  //DE2_70_SOPC_clock_1/out grant sdram_u1/s1, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 = sdram_u1_s1_grant_vector[0];

  //DE2_70_SOPC_clock_1/out saved-grant sdram_u1/s1, which is an e_assign
  assign DE2_70_SOPC_clock_1_out_saved_grant_sdram_u1_s1 = sdram_u1_s1_arb_winner[0] && DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;

  //DE2_70_SOPC_clock_0/out assignment into master qualified-requests vector for sdram_u1/s1, which is an e_assign
  assign sdram_u1_s1_master_qreq_vector[1] = DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1;

  //DE2_70_SOPC_clock_0/out grant sdram_u1/s1, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 = sdram_u1_s1_grant_vector[1];

  //DE2_70_SOPC_clock_0/out saved-grant sdram_u1/s1, which is an e_assign
  assign DE2_70_SOPC_clock_0_out_saved_grant_sdram_u1_s1 = sdram_u1_s1_arb_winner[1] && DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1;

  //sdram_u1/s1 chosen-master double-vector, which is an e_assign
  assign sdram_u1_s1_chosen_master_double_vector = {sdram_u1_s1_master_qreq_vector, sdram_u1_s1_master_qreq_vector} & ({~sdram_u1_s1_master_qreq_vector, ~sdram_u1_s1_master_qreq_vector} + sdram_u1_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign sdram_u1_s1_arb_winner = (sdram_u1_s1_allow_new_arb_cycle & | sdram_u1_s1_grant_vector) ? sdram_u1_s1_grant_vector : sdram_u1_s1_saved_chosen_master_vector;

  //saved sdram_u1_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_u1_s1_saved_chosen_master_vector <= 0;
      else if (sdram_u1_s1_allow_new_arb_cycle)
          sdram_u1_s1_saved_chosen_master_vector <= |sdram_u1_s1_grant_vector ? sdram_u1_s1_grant_vector : sdram_u1_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign sdram_u1_s1_grant_vector = {(sdram_u1_s1_chosen_master_double_vector[1] | sdram_u1_s1_chosen_master_double_vector[3]),
    (sdram_u1_s1_chosen_master_double_vector[0] | sdram_u1_s1_chosen_master_double_vector[2])};

  //sdram_u1/s1 chosen master rotated left, which is an e_assign
  assign sdram_u1_s1_chosen_master_rot_left = (sdram_u1_s1_arb_winner << 1) ? (sdram_u1_s1_arb_winner << 1) : 1;

  //sdram_u1/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_u1_s1_arb_addend <= 1;
      else if (|sdram_u1_s1_grant_vector)
          sdram_u1_s1_arb_addend <= sdram_u1_s1_end_xfer? sdram_u1_s1_chosen_master_rot_left : sdram_u1_s1_grant_vector;
    end


  //sdram_u1_s1_reset_n assignment, which is an e_assign
  assign sdram_u1_s1_reset_n = reset_n;

  assign sdram_u1_s1_chipselect = DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 | DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1;
  //sdram_u1_s1_firsttransfer first transaction, which is an e_assign
  assign sdram_u1_s1_firsttransfer = sdram_u1_s1_begins_xfer ? sdram_u1_s1_unreg_firsttransfer : sdram_u1_s1_reg_firsttransfer;

  //sdram_u1_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign sdram_u1_s1_unreg_firsttransfer = ~(sdram_u1_s1_slavearbiterlockenable & sdram_u1_s1_any_continuerequest);

  //sdram_u1_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_u1_s1_reg_firsttransfer <= 1'b1;
      else if (sdram_u1_s1_begins_xfer)
          sdram_u1_s1_reg_firsttransfer <= sdram_u1_s1_unreg_firsttransfer;
    end


  //sdram_u1_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sdram_u1_s1_beginbursttransfer_internal = sdram_u1_s1_begins_xfer;

  //sdram_u1_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign sdram_u1_s1_arbitration_holdoff_internal = sdram_u1_s1_begins_xfer & sdram_u1_s1_firsttransfer;

  //~sdram_u1_s1_read_n assignment, which is an e_mux
  assign sdram_u1_s1_read_n = ~((DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_0_out_read) | (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_1_out_read));

  //~sdram_u1_s1_write_n assignment, which is an e_mux
  assign sdram_u1_s1_write_n = ~((DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_0_out_write) | (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_1_out_write));

  assign shifted_address_to_sdram_u1_s1_from_DE2_70_SOPC_clock_0_out = DE2_70_SOPC_clock_0_out_address_to_slave;
  //sdram_u1_s1_address mux, which is an e_mux
  assign sdram_u1_s1_address = (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1)? (shifted_address_to_sdram_u1_s1_from_DE2_70_SOPC_clock_0_out >> 1) :
    (shifted_address_to_sdram_u1_s1_from_DE2_70_SOPC_clock_1_out >> 1);

  assign shifted_address_to_sdram_u1_s1_from_DE2_70_SOPC_clock_1_out = DE2_70_SOPC_clock_1_out_address_to_slave;
  //d1_sdram_u1_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sdram_u1_s1_end_xfer <= 1;
      else 
        d1_sdram_u1_s1_end_xfer <= sdram_u1_s1_end_xfer;
    end


  //sdram_u1_s1_waits_for_read in a cycle, which is an e_mux
  assign sdram_u1_s1_waits_for_read = sdram_u1_s1_in_a_read_cycle & sdram_u1_s1_waitrequest_from_sa;

  //sdram_u1_s1_in_a_read_cycle assignment, which is an e_assign
  assign sdram_u1_s1_in_a_read_cycle = (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_0_out_read) | (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_1_out_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sdram_u1_s1_in_a_read_cycle;

  //sdram_u1_s1_waits_for_write in a cycle, which is an e_mux
  assign sdram_u1_s1_waits_for_write = sdram_u1_s1_in_a_write_cycle & sdram_u1_s1_waitrequest_from_sa;

  //sdram_u1_s1_in_a_write_cycle assignment, which is an e_assign
  assign sdram_u1_s1_in_a_write_cycle = (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_0_out_write) | (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 & DE2_70_SOPC_clock_1_out_write);

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sdram_u1_s1_in_a_write_cycle;

  assign wait_for_sdram_u1_s1_counter = 0;
  //~sdram_u1_s1_byteenable_n byte enable port mux, which is an e_mux
  assign sdram_u1_s1_byteenable_n = ~((DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1)? DE2_70_SOPC_clock_0_out_byteenable :
    (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1)? DE2_70_SOPC_clock_1_out_byteenable :
    -1);


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sdram_u1/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1 + DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (DE2_70_SOPC_clock_0_out_saved_grant_sdram_u1_s1 + DE2_70_SOPC_clock_1_out_saved_grant_sdram_u1_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_control_slave_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu_data_master_address_to_slave,
                                         cpu_data_master_latency_counter,
                                         cpu_data_master_read,
                                         cpu_data_master_write,
                                         reset_n,
                                         sysid_control_slave_readdata,

                                        // outputs:
                                         cpu_data_master_granted_sysid_control_slave,
                                         cpu_data_master_qualified_request_sysid_control_slave,
                                         cpu_data_master_read_data_valid_sysid_control_slave,
                                         cpu_data_master_requests_sysid_control_slave,
                                         d1_sysid_control_slave_end_xfer,
                                         sysid_control_slave_address,
                                         sysid_control_slave_readdata_from_sa
                                      )
;

  output           cpu_data_master_granted_sysid_control_slave;
  output           cpu_data_master_qualified_request_sysid_control_slave;
  output           cpu_data_master_read_data_valid_sysid_control_slave;
  output           cpu_data_master_requests_sysid_control_slave;
  output           d1_sysid_control_slave_end_xfer;
  output           sysid_control_slave_address;
  output  [ 31: 0] sysid_control_slave_readdata_from_sa;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_saved_grant_sysid_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 27: 0] shifted_address_to_sysid_control_slave_from_cpu_data_master;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_allgrants;
  wire             sysid_control_slave_allow_new_arb_cycle;
  wire             sysid_control_slave_any_bursting_master_saved_grant;
  wire             sysid_control_slave_any_continuerequest;
  wire             sysid_control_slave_arb_counter_enable;
  reg     [  1: 0] sysid_control_slave_arb_share_counter;
  wire    [  1: 0] sysid_control_slave_arb_share_counter_next_value;
  wire    [  1: 0] sysid_control_slave_arb_share_set_values;
  wire             sysid_control_slave_beginbursttransfer_internal;
  wire             sysid_control_slave_begins_xfer;
  wire             sysid_control_slave_end_xfer;
  wire             sysid_control_slave_firsttransfer;
  wire             sysid_control_slave_grant_vector;
  wire             sysid_control_slave_in_a_read_cycle;
  wire             sysid_control_slave_in_a_write_cycle;
  wire             sysid_control_slave_master_qreq_vector;
  wire             sysid_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  reg              sysid_control_slave_reg_firsttransfer;
  reg              sysid_control_slave_slavearbiterlockenable;
  wire             sysid_control_slave_slavearbiterlockenable2;
  wire             sysid_control_slave_unreg_firsttransfer;
  wire             sysid_control_slave_waits_for_read;
  wire             sysid_control_slave_waits_for_write;
  wire             wait_for_sysid_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sysid_control_slave_end_xfer;
    end


  assign sysid_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_sysid_control_slave));
  //assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata;

  assign cpu_data_master_requests_sysid_control_slave = (({cpu_data_master_address_to_slave[27 : 3] , 3'b0} == 28'h20010a0) & (cpu_data_master_read | cpu_data_master_write)) & cpu_data_master_read;
  //sysid_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_control_slave_arb_share_set_values = 1;

  //sysid_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_control_slave_non_bursting_master_requests = cpu_data_master_requests_sysid_control_slave;

  //sysid_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_control_slave_arb_share_counter_next_value = sysid_control_slave_firsttransfer ? (sysid_control_slave_arb_share_set_values - 1) : |sysid_control_slave_arb_share_counter ? (sysid_control_slave_arb_share_counter - 1) : 0;

  //sysid_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_control_slave_allgrants = |sysid_control_slave_grant_vector;

  //sysid_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_control_slave_end_xfer = ~(sysid_control_slave_waits_for_read | sysid_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_control_slave = sysid_control_slave_end_xfer & (~sysid_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_control_slave & sysid_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests);

  //sysid_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_arb_share_counter <= 0;
      else if (sysid_control_slave_arb_counter_enable)
          sysid_control_slave_arb_share_counter <= sysid_control_slave_arb_share_counter_next_value;
    end


  //sysid_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_control_slave) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests))
          sysid_control_slave_slavearbiterlockenable <= |sysid_control_slave_arb_share_counter_next_value;
    end


  //cpu/data_master sysid/control_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = sysid_control_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //sysid_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_control_slave_slavearbiterlockenable2 = |sysid_control_slave_arb_share_counter_next_value;

  //cpu/data_master sysid/control_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = sysid_control_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //sysid_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_control_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_sysid_control_slave = cpu_data_master_requests_sysid_control_slave & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_sysid_control_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_sysid_control_slave = cpu_data_master_granted_sysid_control_slave & cpu_data_master_read & ~sysid_control_slave_waits_for_read;

  //master is always granted when requested
  assign cpu_data_master_granted_sysid_control_slave = cpu_data_master_qualified_request_sysid_control_slave;

  //cpu/data_master saved-grant sysid/control_slave, which is an e_assign
  assign cpu_data_master_saved_grant_sysid_control_slave = cpu_data_master_requests_sysid_control_slave;

  //allow new arb cycle for sysid/control_slave, which is an e_assign
  assign sysid_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_control_slave_master_qreq_vector = 1;

  //sysid_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_firsttransfer = sysid_control_slave_begins_xfer ? sysid_control_slave_unreg_firsttransfer : sysid_control_slave_reg_firsttransfer;

  //sysid_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_unreg_firsttransfer = ~(sysid_control_slave_slavearbiterlockenable & sysid_control_slave_any_continuerequest);

  //sysid_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_control_slave_begins_xfer)
          sysid_control_slave_reg_firsttransfer <= sysid_control_slave_unreg_firsttransfer;
    end


  //sysid_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_control_slave_beginbursttransfer_internal = sysid_control_slave_begins_xfer;

  assign shifted_address_to_sysid_control_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //sysid_control_slave_address mux, which is an e_mux
  assign sysid_control_slave_address = shifted_address_to_sysid_control_slave_from_cpu_data_master >> 2;

  //d1_sysid_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_control_slave_end_xfer <= 1;
      else 
        d1_sysid_control_slave_end_xfer <= sysid_control_slave_end_xfer;
    end


  //sysid_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_read = sysid_control_slave_in_a_read_cycle & sysid_control_slave_begins_xfer;

  //sysid_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_read_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_control_slave_in_a_read_cycle;

  //sysid_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_write = sysid_control_slave_in_a_write_cycle & 0;

  //sysid_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_write_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_control_slave_in_a_write_cycle;

  assign wait_for_sysid_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_s1_arbitrator (
                             // inputs:
                              clk,
                              cpu_data_master_address_to_slave,
                              cpu_data_master_latency_counter,
                              cpu_data_master_read,
                              cpu_data_master_write,
                              cpu_data_master_writedata,
                              reset_n,
                              timer_s1_irq,
                              timer_s1_readdata,

                             // outputs:
                              cpu_data_master_granted_timer_s1,
                              cpu_data_master_qualified_request_timer_s1,
                              cpu_data_master_read_data_valid_timer_s1,
                              cpu_data_master_requests_timer_s1,
                              d1_timer_s1_end_xfer,
                              timer_s1_address,
                              timer_s1_chipselect,
                              timer_s1_irq_from_sa,
                              timer_s1_readdata_from_sa,
                              timer_s1_reset_n,
                              timer_s1_write_n,
                              timer_s1_writedata
                           )
;

  output           cpu_data_master_granted_timer_s1;
  output           cpu_data_master_qualified_request_timer_s1;
  output           cpu_data_master_read_data_valid_timer_s1;
  output           cpu_data_master_requests_timer_s1;
  output           d1_timer_s1_end_xfer;
  output  [  2: 0] timer_s1_address;
  output           timer_s1_chipselect;
  output           timer_s1_irq_from_sa;
  output  [ 15: 0] timer_s1_readdata_from_sa;
  output           timer_s1_reset_n;
  output           timer_s1_write_n;
  output  [ 15: 0] timer_s1_writedata;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;
  input            timer_s1_irq;
  input   [ 15: 0] timer_s1_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_timer_s1;
  wire             cpu_data_master_qualified_request_timer_s1;
  wire             cpu_data_master_read_data_valid_timer_s1;
  wire             cpu_data_master_requests_timer_s1;
  wire             cpu_data_master_saved_grant_timer_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 27: 0] shifted_address_to_timer_s1_from_cpu_data_master;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_allgrants;
  wire             timer_s1_allow_new_arb_cycle;
  wire             timer_s1_any_bursting_master_saved_grant;
  wire             timer_s1_any_continuerequest;
  wire             timer_s1_arb_counter_enable;
  reg     [  1: 0] timer_s1_arb_share_counter;
  wire    [  1: 0] timer_s1_arb_share_counter_next_value;
  wire    [  1: 0] timer_s1_arb_share_set_values;
  wire             timer_s1_beginbursttransfer_internal;
  wire             timer_s1_begins_xfer;
  wire             timer_s1_chipselect;
  wire             timer_s1_end_xfer;
  wire             timer_s1_firsttransfer;
  wire             timer_s1_grant_vector;
  wire             timer_s1_in_a_read_cycle;
  wire             timer_s1_in_a_write_cycle;
  wire             timer_s1_irq_from_sa;
  wire             timer_s1_master_qreq_vector;
  wire             timer_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  reg              timer_s1_reg_firsttransfer;
  wire             timer_s1_reset_n;
  reg              timer_s1_slavearbiterlockenable;
  wire             timer_s1_slavearbiterlockenable2;
  wire             timer_s1_unreg_firsttransfer;
  wire             timer_s1_waits_for_read;
  wire             timer_s1_waits_for_write;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire             wait_for_timer_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer_s1_end_xfer;
    end


  assign timer_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_timer_s1));
  //assign timer_s1_readdata_from_sa = timer_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_readdata_from_sa = timer_s1_readdata;

  assign cpu_data_master_requests_timer_s1 = ({cpu_data_master_address_to_slave[27 : 5] , 5'b0} == 28'h2001080) & (cpu_data_master_read | cpu_data_master_write);
  //timer_s1_arb_share_counter set values, which is an e_mux
  assign timer_s1_arb_share_set_values = 1;

  //timer_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer_s1_non_bursting_master_requests = cpu_data_master_requests_timer_s1;

  //timer_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer_s1_any_bursting_master_saved_grant = 0;

  //timer_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer_s1_arb_share_counter_next_value = timer_s1_firsttransfer ? (timer_s1_arb_share_set_values - 1) : |timer_s1_arb_share_counter ? (timer_s1_arb_share_counter - 1) : 0;

  //timer_s1_allgrants all slave grants, which is an e_mux
  assign timer_s1_allgrants = |timer_s1_grant_vector;

  //timer_s1_end_xfer assignment, which is an e_assign
  assign timer_s1_end_xfer = ~(timer_s1_waits_for_read | timer_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer_s1 = timer_s1_end_xfer & (~timer_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer_s1 & timer_s1_allgrants) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests);

  //timer_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_arb_share_counter <= 0;
      else if (timer_s1_arb_counter_enable)
          timer_s1_arb_share_counter <= timer_s1_arb_share_counter_next_value;
    end


  //timer_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_slavearbiterlockenable <= 0;
      else if ((|timer_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer_s1) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests))
          timer_s1_slavearbiterlockenable <= |timer_s1_arb_share_counter_next_value;
    end


  //cpu/data_master timer/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = timer_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //timer_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer_s1_slavearbiterlockenable2 = |timer_s1_arb_share_counter_next_value;

  //cpu/data_master timer/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = timer_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //timer_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_timer_s1 = cpu_data_master_requests_timer_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_timer_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_timer_s1 = cpu_data_master_granted_timer_s1 & cpu_data_master_read & ~timer_s1_waits_for_read;

  //timer_s1_writedata mux, which is an e_mux
  assign timer_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_timer_s1 = cpu_data_master_qualified_request_timer_s1;

  //cpu/data_master saved-grant timer/s1, which is an e_assign
  assign cpu_data_master_saved_grant_timer_s1 = cpu_data_master_requests_timer_s1;

  //allow new arb cycle for timer/s1, which is an e_assign
  assign timer_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer_s1_master_qreq_vector = 1;

  //timer_s1_reset_n assignment, which is an e_assign
  assign timer_s1_reset_n = reset_n;

  assign timer_s1_chipselect = cpu_data_master_granted_timer_s1;
  //timer_s1_firsttransfer first transaction, which is an e_assign
  assign timer_s1_firsttransfer = timer_s1_begins_xfer ? timer_s1_unreg_firsttransfer : timer_s1_reg_firsttransfer;

  //timer_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer_s1_unreg_firsttransfer = ~(timer_s1_slavearbiterlockenable & timer_s1_any_continuerequest);

  //timer_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_reg_firsttransfer <= 1'b1;
      else if (timer_s1_begins_xfer)
          timer_s1_reg_firsttransfer <= timer_s1_unreg_firsttransfer;
    end


  //timer_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer_s1_beginbursttransfer_internal = timer_s1_begins_xfer;

  //~timer_s1_write_n assignment, which is an e_mux
  assign timer_s1_write_n = ~(cpu_data_master_granted_timer_s1 & cpu_data_master_write);

  assign shifted_address_to_timer_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //timer_s1_address mux, which is an e_mux
  assign timer_s1_address = shifted_address_to_timer_s1_from_cpu_data_master >> 2;

  //d1_timer_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer_s1_end_xfer <= 1;
      else 
        d1_timer_s1_end_xfer <= timer_s1_end_xfer;
    end


  //timer_s1_waits_for_read in a cycle, which is an e_mux
  assign timer_s1_waits_for_read = timer_s1_in_a_read_cycle & timer_s1_begins_xfer;

  //timer_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer_s1_in_a_read_cycle = cpu_data_master_granted_timer_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer_s1_in_a_read_cycle;

  //timer_s1_waits_for_write in a cycle, which is an e_mux
  assign timer_s1_waits_for_write = timer_s1_in_a_write_cycle & 0;

  //timer_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer_s1_in_a_write_cycle = cpu_data_master_granted_timer_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer_s1_in_a_write_cycle;

  assign wait_for_timer_s1_counter = 0;
  //assign timer_s1_irq_from_sa = timer_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_irq_from_sa = timer_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_stamp_s1_arbitrator (
                                   // inputs:
                                    clk,
                                    cpu_data_master_address_to_slave,
                                    cpu_data_master_latency_counter,
                                    cpu_data_master_read,
                                    cpu_data_master_write,
                                    cpu_data_master_writedata,
                                    reset_n,
                                    timer_stamp_s1_irq,
                                    timer_stamp_s1_readdata,

                                   // outputs:
                                    cpu_data_master_granted_timer_stamp_s1,
                                    cpu_data_master_qualified_request_timer_stamp_s1,
                                    cpu_data_master_read_data_valid_timer_stamp_s1,
                                    cpu_data_master_requests_timer_stamp_s1,
                                    d1_timer_stamp_s1_end_xfer,
                                    timer_stamp_s1_address,
                                    timer_stamp_s1_chipselect,
                                    timer_stamp_s1_irq_from_sa,
                                    timer_stamp_s1_readdata_from_sa,
                                    timer_stamp_s1_reset_n,
                                    timer_stamp_s1_write_n,
                                    timer_stamp_s1_writedata
                                 )
;

  output           cpu_data_master_granted_timer_stamp_s1;
  output           cpu_data_master_qualified_request_timer_stamp_s1;
  output           cpu_data_master_read_data_valid_timer_stamp_s1;
  output           cpu_data_master_requests_timer_stamp_s1;
  output           d1_timer_stamp_s1_end_xfer;
  output  [  3: 0] timer_stamp_s1_address;
  output           timer_stamp_s1_chipselect;
  output           timer_stamp_s1_irq_from_sa;
  output  [ 15: 0] timer_stamp_s1_readdata_from_sa;
  output           timer_stamp_s1_reset_n;
  output           timer_stamp_s1_write_n;
  output  [ 15: 0] timer_stamp_s1_writedata;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;
  input            timer_stamp_s1_irq;
  input   [ 15: 0] timer_stamp_s1_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_timer_stamp_s1;
  wire             cpu_data_master_qualified_request_timer_stamp_s1;
  wire             cpu_data_master_read_data_valid_timer_stamp_s1;
  wire             cpu_data_master_requests_timer_stamp_s1;
  wire             cpu_data_master_saved_grant_timer_stamp_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer_stamp_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer_stamp_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 27: 0] shifted_address_to_timer_stamp_s1_from_cpu_data_master;
  wire    [  3: 0] timer_stamp_s1_address;
  wire             timer_stamp_s1_allgrants;
  wire             timer_stamp_s1_allow_new_arb_cycle;
  wire             timer_stamp_s1_any_bursting_master_saved_grant;
  wire             timer_stamp_s1_any_continuerequest;
  wire             timer_stamp_s1_arb_counter_enable;
  reg     [  1: 0] timer_stamp_s1_arb_share_counter;
  wire    [  1: 0] timer_stamp_s1_arb_share_counter_next_value;
  wire    [  1: 0] timer_stamp_s1_arb_share_set_values;
  wire             timer_stamp_s1_beginbursttransfer_internal;
  wire             timer_stamp_s1_begins_xfer;
  wire             timer_stamp_s1_chipselect;
  wire             timer_stamp_s1_end_xfer;
  wire             timer_stamp_s1_firsttransfer;
  wire             timer_stamp_s1_grant_vector;
  wire             timer_stamp_s1_in_a_read_cycle;
  wire             timer_stamp_s1_in_a_write_cycle;
  wire             timer_stamp_s1_irq_from_sa;
  wire             timer_stamp_s1_master_qreq_vector;
  wire             timer_stamp_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer_stamp_s1_readdata_from_sa;
  reg              timer_stamp_s1_reg_firsttransfer;
  wire             timer_stamp_s1_reset_n;
  reg              timer_stamp_s1_slavearbiterlockenable;
  wire             timer_stamp_s1_slavearbiterlockenable2;
  wire             timer_stamp_s1_unreg_firsttransfer;
  wire             timer_stamp_s1_waits_for_read;
  wire             timer_stamp_s1_waits_for_write;
  wire             timer_stamp_s1_write_n;
  wire    [ 15: 0] timer_stamp_s1_writedata;
  wire             wait_for_timer_stamp_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer_stamp_s1_end_xfer;
    end


  assign timer_stamp_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_timer_stamp_s1));
  //assign timer_stamp_s1_readdata_from_sa = timer_stamp_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_stamp_s1_readdata_from_sa = timer_stamp_s1_readdata;

  assign cpu_data_master_requests_timer_stamp_s1 = ({cpu_data_master_address_to_slave[27 : 6] , 6'b0} == 28'h2001000) & (cpu_data_master_read | cpu_data_master_write);
  //timer_stamp_s1_arb_share_counter set values, which is an e_mux
  assign timer_stamp_s1_arb_share_set_values = 1;

  //timer_stamp_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer_stamp_s1_non_bursting_master_requests = cpu_data_master_requests_timer_stamp_s1;

  //timer_stamp_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer_stamp_s1_any_bursting_master_saved_grant = 0;

  //timer_stamp_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer_stamp_s1_arb_share_counter_next_value = timer_stamp_s1_firsttransfer ? (timer_stamp_s1_arb_share_set_values - 1) : |timer_stamp_s1_arb_share_counter ? (timer_stamp_s1_arb_share_counter - 1) : 0;

  //timer_stamp_s1_allgrants all slave grants, which is an e_mux
  assign timer_stamp_s1_allgrants = |timer_stamp_s1_grant_vector;

  //timer_stamp_s1_end_xfer assignment, which is an e_assign
  assign timer_stamp_s1_end_xfer = ~(timer_stamp_s1_waits_for_read | timer_stamp_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer_stamp_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer_stamp_s1 = timer_stamp_s1_end_xfer & (~timer_stamp_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer_stamp_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer_stamp_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer_stamp_s1 & timer_stamp_s1_allgrants) | (end_xfer_arb_share_counter_term_timer_stamp_s1 & ~timer_stamp_s1_non_bursting_master_requests);

  //timer_stamp_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_stamp_s1_arb_share_counter <= 0;
      else if (timer_stamp_s1_arb_counter_enable)
          timer_stamp_s1_arb_share_counter <= timer_stamp_s1_arb_share_counter_next_value;
    end


  //timer_stamp_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_stamp_s1_slavearbiterlockenable <= 0;
      else if ((|timer_stamp_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer_stamp_s1) | (end_xfer_arb_share_counter_term_timer_stamp_s1 & ~timer_stamp_s1_non_bursting_master_requests))
          timer_stamp_s1_slavearbiterlockenable <= |timer_stamp_s1_arb_share_counter_next_value;
    end


  //cpu/data_master timer_stamp/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = timer_stamp_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //timer_stamp_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer_stamp_s1_slavearbiterlockenable2 = |timer_stamp_s1_arb_share_counter_next_value;

  //cpu/data_master timer_stamp/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = timer_stamp_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //timer_stamp_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer_stamp_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_timer_stamp_s1 = cpu_data_master_requests_timer_stamp_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_timer_stamp_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_timer_stamp_s1 = cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_read & ~timer_stamp_s1_waits_for_read;

  //timer_stamp_s1_writedata mux, which is an e_mux
  assign timer_stamp_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_timer_stamp_s1 = cpu_data_master_qualified_request_timer_stamp_s1;

  //cpu/data_master saved-grant timer_stamp/s1, which is an e_assign
  assign cpu_data_master_saved_grant_timer_stamp_s1 = cpu_data_master_requests_timer_stamp_s1;

  //allow new arb cycle for timer_stamp/s1, which is an e_assign
  assign timer_stamp_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer_stamp_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer_stamp_s1_master_qreq_vector = 1;

  //timer_stamp_s1_reset_n assignment, which is an e_assign
  assign timer_stamp_s1_reset_n = reset_n;

  assign timer_stamp_s1_chipselect = cpu_data_master_granted_timer_stamp_s1;
  //timer_stamp_s1_firsttransfer first transaction, which is an e_assign
  assign timer_stamp_s1_firsttransfer = timer_stamp_s1_begins_xfer ? timer_stamp_s1_unreg_firsttransfer : timer_stamp_s1_reg_firsttransfer;

  //timer_stamp_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer_stamp_s1_unreg_firsttransfer = ~(timer_stamp_s1_slavearbiterlockenable & timer_stamp_s1_any_continuerequest);

  //timer_stamp_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_stamp_s1_reg_firsttransfer <= 1'b1;
      else if (timer_stamp_s1_begins_xfer)
          timer_stamp_s1_reg_firsttransfer <= timer_stamp_s1_unreg_firsttransfer;
    end


  //timer_stamp_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer_stamp_s1_beginbursttransfer_internal = timer_stamp_s1_begins_xfer;

  //~timer_stamp_s1_write_n assignment, which is an e_mux
  assign timer_stamp_s1_write_n = ~(cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_write);

  assign shifted_address_to_timer_stamp_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //timer_stamp_s1_address mux, which is an e_mux
  assign timer_stamp_s1_address = shifted_address_to_timer_stamp_s1_from_cpu_data_master >> 2;

  //d1_timer_stamp_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer_stamp_s1_end_xfer <= 1;
      else 
        d1_timer_stamp_s1_end_xfer <= timer_stamp_s1_end_xfer;
    end


  //timer_stamp_s1_waits_for_read in a cycle, which is an e_mux
  assign timer_stamp_s1_waits_for_read = timer_stamp_s1_in_a_read_cycle & timer_stamp_s1_begins_xfer;

  //timer_stamp_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer_stamp_s1_in_a_read_cycle = cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer_stamp_s1_in_a_read_cycle;

  //timer_stamp_s1_waits_for_write in a cycle, which is an e_mux
  assign timer_stamp_s1_waits_for_write = timer_stamp_s1_in_a_write_cycle & 0;

  //timer_stamp_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer_stamp_s1_in_a_write_cycle = cpu_data_master_granted_timer_stamp_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer_stamp_s1_in_a_write_cycle;

  assign wait_for_timer_stamp_s1_counter = 0;
  //assign timer_stamp_s1_irq_from_sa = timer_stamp_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_stamp_s1_irq_from_sa = timer_stamp_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer_stamp/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module tristate_bridge_flash_avalon_slave_arbitrator (
                                                       // inputs:
                                                        clk,
                                                        cpu_data_master_address_to_slave,
                                                        cpu_data_master_byteenable,
                                                        cpu_data_master_dbs_address,
                                                        cpu_data_master_dbs_write_16,
                                                        cpu_data_master_latency_counter,
                                                        cpu_data_master_read,
                                                        cpu_data_master_write,
                                                        cpu_instruction_master_address_to_slave,
                                                        cpu_instruction_master_dbs_address,
                                                        cpu_instruction_master_latency_counter,
                                                        cpu_instruction_master_read,
                                                        reset_n,

                                                       // outputs:
                                                        address_to_the_cfi_flash,
                                                        cfi_flash_s1_wait_counter_eq_0,
                                                        cpu_data_master_byteenable_cfi_flash_s1,
                                                        cpu_data_master_granted_cfi_flash_s1,
                                                        cpu_data_master_qualified_request_cfi_flash_s1,
                                                        cpu_data_master_read_data_valid_cfi_flash_s1,
                                                        cpu_data_master_requests_cfi_flash_s1,
                                                        cpu_instruction_master_granted_cfi_flash_s1,
                                                        cpu_instruction_master_qualified_request_cfi_flash_s1,
                                                        cpu_instruction_master_read_data_valid_cfi_flash_s1,
                                                        cpu_instruction_master_requests_cfi_flash_s1,
                                                        d1_tristate_bridge_flash_avalon_slave_end_xfer,
                                                        data_to_and_from_the_cfi_flash,
                                                        incoming_data_to_and_from_the_cfi_flash,
                                                        incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0,
                                                        read_n_to_the_cfi_flash,
                                                        select_n_to_the_cfi_flash,
                                                        write_n_to_the_cfi_flash
                                                     )
;

  output  [ 22: 0] address_to_the_cfi_flash;
  output           cfi_flash_s1_wait_counter_eq_0;
  output  [  1: 0] cpu_data_master_byteenable_cfi_flash_s1;
  output           cpu_data_master_granted_cfi_flash_s1;
  output           cpu_data_master_qualified_request_cfi_flash_s1;
  output           cpu_data_master_read_data_valid_cfi_flash_s1;
  output           cpu_data_master_requests_cfi_flash_s1;
  output           cpu_instruction_master_granted_cfi_flash_s1;
  output           cpu_instruction_master_qualified_request_cfi_flash_s1;
  output           cpu_instruction_master_read_data_valid_cfi_flash_s1;
  output           cpu_instruction_master_requests_cfi_flash_s1;
  output           d1_tristate_bridge_flash_avalon_slave_end_xfer;
  inout   [ 15: 0] data_to_and_from_the_cfi_flash;
  output  [ 15: 0] incoming_data_to_and_from_the_cfi_flash;
  output  [ 15: 0] incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0;
  output           read_n_to_the_cfi_flash;
  output           select_n_to_the_cfi_flash;
  output           write_n_to_the_cfi_flash;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  1: 0] cpu_data_master_dbs_address;
  input   [ 15: 0] cpu_data_master_dbs_write_16;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_dbs_address;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input            reset_n;

  reg     [ 22: 0] address_to_the_cfi_flash /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire    [  3: 0] cfi_flash_s1_counter_load_value;
  wire             cfi_flash_s1_in_a_read_cycle;
  wire             cfi_flash_s1_in_a_write_cycle;
  reg     [  3: 0] cfi_flash_s1_wait_counter;
  wire             cfi_flash_s1_wait_counter_eq_0;
  wire             cfi_flash_s1_waits_for_read;
  wire             cfi_flash_s1_waits_for_write;
  wire             cfi_flash_s1_with_write_latency;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire    [  1: 0] cpu_data_master_byteenable_cfi_flash_s1;
  wire    [  1: 0] cpu_data_master_byteenable_cfi_flash_s1_segment_0;
  wire    [  1: 0] cpu_data_master_byteenable_cfi_flash_s1_segment_1;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_cfi_flash_s1;
  wire             cpu_data_master_qualified_request_cfi_flash_s1;
  wire             cpu_data_master_read_data_valid_cfi_flash_s1;
  reg     [  1: 0] cpu_data_master_read_data_valid_cfi_flash_s1_shift_register;
  wire             cpu_data_master_read_data_valid_cfi_flash_s1_shift_register_in;
  wire             cpu_data_master_requests_cfi_flash_s1;
  wire             cpu_data_master_saved_grant_cfi_flash_s1;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_cfi_flash_s1;
  wire             cpu_instruction_master_qualified_request_cfi_flash_s1;
  wire             cpu_instruction_master_read_data_valid_cfi_flash_s1;
  reg     [  1: 0] cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register;
  wire             cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register_in;
  wire             cpu_instruction_master_requests_cfi_flash_s1;
  wire             cpu_instruction_master_saved_grant_cfi_flash_s1;
  reg              d1_in_a_write_cycle /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_ENABLE_REGISTER=ON"  */;
  reg     [ 15: 0] d1_outgoing_data_to_and_from_the_cfi_flash /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              d1_reasons_to_wait;
  reg              d1_tristate_bridge_flash_avalon_slave_end_xfer;
  wire    [ 15: 0] data_to_and_from_the_cfi_flash;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg     [ 15: 0] incoming_data_to_and_from_the_cfi_flash /* synthesis ALTERA_ATTRIBUTE = "FAST_INPUT_REGISTER=ON"  */;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_0_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_10_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_11_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_12_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_13_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_14_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_15_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_1_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_2_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_3_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_4_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_5_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_6_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_7_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_8_is_x;
  wire             incoming_data_to_and_from_the_cfi_flash_bit_9_is_x;
  wire    [ 15: 0] incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0;
  reg              last_cycle_cpu_data_master_granted_slave_cfi_flash_s1;
  reg              last_cycle_cpu_instruction_master_granted_slave_cfi_flash_s1;
  wire    [ 15: 0] outgoing_data_to_and_from_the_cfi_flash;
  wire    [ 22: 0] p1_address_to_the_cfi_flash;
  wire    [  1: 0] p1_cpu_data_master_read_data_valid_cfi_flash_s1_shift_register;
  wire    [  1: 0] p1_cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register;
  wire             p1_read_n_to_the_cfi_flash;
  wire             p1_select_n_to_the_cfi_flash;
  wire             p1_write_n_to_the_cfi_flash;
  reg              read_n_to_the_cfi_flash /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              select_n_to_the_cfi_flash /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             time_to_write;
  wire             tristate_bridge_flash_avalon_slave_allgrants;
  wire             tristate_bridge_flash_avalon_slave_allow_new_arb_cycle;
  wire             tristate_bridge_flash_avalon_slave_any_bursting_master_saved_grant;
  wire             tristate_bridge_flash_avalon_slave_any_continuerequest;
  reg     [  1: 0] tristate_bridge_flash_avalon_slave_arb_addend;
  wire             tristate_bridge_flash_avalon_slave_arb_counter_enable;
  reg     [  1: 0] tristate_bridge_flash_avalon_slave_arb_share_counter;
  wire    [  1: 0] tristate_bridge_flash_avalon_slave_arb_share_counter_next_value;
  wire    [  1: 0] tristate_bridge_flash_avalon_slave_arb_share_set_values;
  wire    [  1: 0] tristate_bridge_flash_avalon_slave_arb_winner;
  wire             tristate_bridge_flash_avalon_slave_arbitration_holdoff_internal;
  wire             tristate_bridge_flash_avalon_slave_beginbursttransfer_internal;
  wire             tristate_bridge_flash_avalon_slave_begins_xfer;
  wire    [  3: 0] tristate_bridge_flash_avalon_slave_chosen_master_double_vector;
  wire    [  1: 0] tristate_bridge_flash_avalon_slave_chosen_master_rot_left;
  wire             tristate_bridge_flash_avalon_slave_end_xfer;
  wire             tristate_bridge_flash_avalon_slave_firsttransfer;
  wire    [  1: 0] tristate_bridge_flash_avalon_slave_grant_vector;
  wire    [  1: 0] tristate_bridge_flash_avalon_slave_master_qreq_vector;
  wire             tristate_bridge_flash_avalon_slave_non_bursting_master_requests;
  wire             tristate_bridge_flash_avalon_slave_read_pending;
  reg              tristate_bridge_flash_avalon_slave_reg_firsttransfer;
  reg     [  1: 0] tristate_bridge_flash_avalon_slave_saved_chosen_master_vector;
  reg              tristate_bridge_flash_avalon_slave_slavearbiterlockenable;
  wire             tristate_bridge_flash_avalon_slave_slavearbiterlockenable2;
  wire             tristate_bridge_flash_avalon_slave_unreg_firsttransfer;
  wire             tristate_bridge_flash_avalon_slave_write_pending;
  wire             wait_for_cfi_flash_s1_counter;
  reg              write_n_to_the_cfi_flash /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~tristate_bridge_flash_avalon_slave_end_xfer;
    end


  assign tristate_bridge_flash_avalon_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_cfi_flash_s1 | cpu_instruction_master_qualified_request_cfi_flash_s1));
  assign cpu_data_master_requests_cfi_flash_s1 = ({cpu_data_master_address_to_slave[27 : 23] , 23'b0} == 28'h8800000) & (cpu_data_master_read | cpu_data_master_write);
  //~select_n_to_the_cfi_flash of type chipselect to ~p1_select_n_to_the_cfi_flash, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          select_n_to_the_cfi_flash <= ~0;
      else 
        select_n_to_the_cfi_flash <= p1_select_n_to_the_cfi_flash;
    end


  assign tristate_bridge_flash_avalon_slave_write_pending = 0;
  //tristate_bridge_flash/avalon_slave read pending calc, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_read_pending = 0;

  //tristate_bridge_flash_avalon_slave_arb_share_counter set values, which is an e_mux
  assign tristate_bridge_flash_avalon_slave_arb_share_set_values = (cpu_data_master_granted_cfi_flash_s1)? 2 :
    (cpu_instruction_master_granted_cfi_flash_s1)? 2 :
    (cpu_data_master_granted_cfi_flash_s1)? 2 :
    (cpu_instruction_master_granted_cfi_flash_s1)? 2 :
    1;

  //tristate_bridge_flash_avalon_slave_non_bursting_master_requests mux, which is an e_mux
  assign tristate_bridge_flash_avalon_slave_non_bursting_master_requests = cpu_data_master_requests_cfi_flash_s1 |
    cpu_instruction_master_requests_cfi_flash_s1 |
    cpu_data_master_requests_cfi_flash_s1 |
    cpu_instruction_master_requests_cfi_flash_s1;

  //tristate_bridge_flash_avalon_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign tristate_bridge_flash_avalon_slave_any_bursting_master_saved_grant = 0;

  //tristate_bridge_flash_avalon_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_arb_share_counter_next_value = tristate_bridge_flash_avalon_slave_firsttransfer ? (tristate_bridge_flash_avalon_slave_arb_share_set_values - 1) : |tristate_bridge_flash_avalon_slave_arb_share_counter ? (tristate_bridge_flash_avalon_slave_arb_share_counter - 1) : 0;

  //tristate_bridge_flash_avalon_slave_allgrants all slave grants, which is an e_mux
  assign tristate_bridge_flash_avalon_slave_allgrants = (|tristate_bridge_flash_avalon_slave_grant_vector) |
    (|tristate_bridge_flash_avalon_slave_grant_vector) |
    (|tristate_bridge_flash_avalon_slave_grant_vector) |
    (|tristate_bridge_flash_avalon_slave_grant_vector);

  //tristate_bridge_flash_avalon_slave_end_xfer assignment, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_end_xfer = ~(cfi_flash_s1_waits_for_read | cfi_flash_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave = tristate_bridge_flash_avalon_slave_end_xfer & (~tristate_bridge_flash_avalon_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //tristate_bridge_flash_avalon_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave & tristate_bridge_flash_avalon_slave_allgrants) | (end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave & ~tristate_bridge_flash_avalon_slave_non_bursting_master_requests);

  //tristate_bridge_flash_avalon_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_flash_avalon_slave_arb_share_counter <= 0;
      else if (tristate_bridge_flash_avalon_slave_arb_counter_enable)
          tristate_bridge_flash_avalon_slave_arb_share_counter <= tristate_bridge_flash_avalon_slave_arb_share_counter_next_value;
    end


  //tristate_bridge_flash_avalon_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_flash_avalon_slave_slavearbiterlockenable <= 0;
      else if ((|tristate_bridge_flash_avalon_slave_master_qreq_vector & end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave) | (end_xfer_arb_share_counter_term_tristate_bridge_flash_avalon_slave & ~tristate_bridge_flash_avalon_slave_non_bursting_master_requests))
          tristate_bridge_flash_avalon_slave_slavearbiterlockenable <= |tristate_bridge_flash_avalon_slave_arb_share_counter_next_value;
    end


  //cpu/data_master tristate_bridge_flash/avalon_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = tristate_bridge_flash_avalon_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //tristate_bridge_flash_avalon_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_slavearbiterlockenable2 = |tristate_bridge_flash_avalon_slave_arb_share_counter_next_value;

  //cpu/data_master tristate_bridge_flash/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = tristate_bridge_flash_avalon_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master tristate_bridge_flash/avalon_slave arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = tristate_bridge_flash_avalon_slave_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master tristate_bridge_flash/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = tristate_bridge_flash_avalon_slave_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted cfi_flash/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_cfi_flash_s1 <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_cfi_flash_s1 <= cpu_instruction_master_saved_grant_cfi_flash_s1 ? 1 : (tristate_bridge_flash_avalon_slave_arbitration_holdoff_internal | ~cpu_instruction_master_requests_cfi_flash_s1) ? 0 : last_cycle_cpu_instruction_master_granted_slave_cfi_flash_s1;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_cfi_flash_s1 & cpu_instruction_master_requests_cfi_flash_s1;

  //tristate_bridge_flash_avalon_slave_any_continuerequest at least one master continues requesting, which is an e_mux
  assign tristate_bridge_flash_avalon_slave_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_cfi_flash_s1 = cpu_data_master_requests_cfi_flash_s1 & ~((cpu_data_master_read & (tristate_bridge_flash_avalon_slave_write_pending | (tristate_bridge_flash_avalon_slave_read_pending) | (2 < cpu_data_master_latency_counter))) | ((tristate_bridge_flash_avalon_slave_read_pending | !cpu_data_master_byteenable_cfi_flash_s1) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_data_master_read_data_valid_cfi_flash_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_cfi_flash_s1_shift_register_in = cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_read & ~cfi_flash_s1_waits_for_read;

  //shift register p1 cpu_data_master_read_data_valid_cfi_flash_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_cfi_flash_s1_shift_register = {cpu_data_master_read_data_valid_cfi_flash_s1_shift_register, cpu_data_master_read_data_valid_cfi_flash_s1_shift_register_in};

  //cpu_data_master_read_data_valid_cfi_flash_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_cfi_flash_s1_shift_register <= 0;
      else 
        cpu_data_master_read_data_valid_cfi_flash_s1_shift_register <= p1_cpu_data_master_read_data_valid_cfi_flash_s1_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_cfi_flash_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_cfi_flash_s1 = cpu_data_master_read_data_valid_cfi_flash_s1_shift_register[1];

  //data_to_and_from_the_cfi_flash register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          incoming_data_to_and_from_the_cfi_flash <= 0;
      else 
        incoming_data_to_and_from_the_cfi_flash <= data_to_and_from_the_cfi_flash;
    end


  //cfi_flash_s1_with_write_latency assignment, which is an e_assign
  assign cfi_flash_s1_with_write_latency = in_a_write_cycle & (cpu_data_master_qualified_request_cfi_flash_s1 | cpu_instruction_master_qualified_request_cfi_flash_s1);

  //time to write the data, which is an e_mux
  assign time_to_write = (cfi_flash_s1_with_write_latency)? 1 :
    0;

  //d1_outgoing_data_to_and_from_the_cfi_flash register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_outgoing_data_to_and_from_the_cfi_flash <= 0;
      else 
        d1_outgoing_data_to_and_from_the_cfi_flash <= outgoing_data_to_and_from_the_cfi_flash;
    end


  //write cycle delayed by 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_in_a_write_cycle <= 0;
      else 
        d1_in_a_write_cycle <= time_to_write;
    end


  //d1_outgoing_data_to_and_from_the_cfi_flash tristate driver, which is an e_assign
  assign data_to_and_from_the_cfi_flash = (d1_in_a_write_cycle)? d1_outgoing_data_to_and_from_the_cfi_flash:{16{1'bz}};

  //outgoing_data_to_and_from_the_cfi_flash mux, which is an e_mux
  assign outgoing_data_to_and_from_the_cfi_flash = cpu_data_master_dbs_write_16;

  assign cpu_instruction_master_requests_cfi_flash_s1 = (({cpu_instruction_master_address_to_slave[27 : 23] , 23'b0} == 28'h8800000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted cfi_flash/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_cfi_flash_s1 <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_cfi_flash_s1 <= cpu_data_master_saved_grant_cfi_flash_s1 ? 1 : (tristate_bridge_flash_avalon_slave_arbitration_holdoff_internal | ~cpu_data_master_requests_cfi_flash_s1) ? 0 : last_cycle_cpu_data_master_granted_slave_cfi_flash_s1;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_cfi_flash_s1 & cpu_data_master_requests_cfi_flash_s1;

  assign cpu_instruction_master_qualified_request_cfi_flash_s1 = cpu_instruction_master_requests_cfi_flash_s1 & ~((cpu_instruction_master_read & (tristate_bridge_flash_avalon_slave_write_pending | (tristate_bridge_flash_avalon_slave_read_pending) | (2 < cpu_instruction_master_latency_counter))) | cpu_data_master_arbiterlock);
  //cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register_in = cpu_instruction_master_granted_cfi_flash_s1 & cpu_instruction_master_read & ~cfi_flash_s1_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register = {cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register, cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register_in};

  //cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register <= 0;
      else 
        cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register <= p1_cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_cfi_flash_s1, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cfi_flash_s1 = cpu_instruction_master_read_data_valid_cfi_flash_s1_shift_register[1];

  //allow new arb cycle for tristate_bridge_flash/avalon_slave, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for cfi_flash/s1, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_master_qreq_vector[0] = cpu_instruction_master_qualified_request_cfi_flash_s1;

  //cpu/instruction_master grant cfi_flash/s1, which is an e_assign
  assign cpu_instruction_master_granted_cfi_flash_s1 = tristate_bridge_flash_avalon_slave_grant_vector[0];

  //cpu/instruction_master saved-grant cfi_flash/s1, which is an e_assign
  assign cpu_instruction_master_saved_grant_cfi_flash_s1 = tristate_bridge_flash_avalon_slave_arb_winner[0] && cpu_instruction_master_requests_cfi_flash_s1;

  //cpu/data_master assignment into master qualified-requests vector for cfi_flash/s1, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_master_qreq_vector[1] = cpu_data_master_qualified_request_cfi_flash_s1;

  //cpu/data_master grant cfi_flash/s1, which is an e_assign
  assign cpu_data_master_granted_cfi_flash_s1 = tristate_bridge_flash_avalon_slave_grant_vector[1];

  //cpu/data_master saved-grant cfi_flash/s1, which is an e_assign
  assign cpu_data_master_saved_grant_cfi_flash_s1 = tristate_bridge_flash_avalon_slave_arb_winner[1] && cpu_data_master_requests_cfi_flash_s1;

  //tristate_bridge_flash/avalon_slave chosen-master double-vector, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_chosen_master_double_vector = {tristate_bridge_flash_avalon_slave_master_qreq_vector, tristate_bridge_flash_avalon_slave_master_qreq_vector} & ({~tristate_bridge_flash_avalon_slave_master_qreq_vector, ~tristate_bridge_flash_avalon_slave_master_qreq_vector} + tristate_bridge_flash_avalon_slave_arb_addend);

  //stable onehot encoding of arb winner
  assign tristate_bridge_flash_avalon_slave_arb_winner = (tristate_bridge_flash_avalon_slave_allow_new_arb_cycle & | tristate_bridge_flash_avalon_slave_grant_vector) ? tristate_bridge_flash_avalon_slave_grant_vector : tristate_bridge_flash_avalon_slave_saved_chosen_master_vector;

  //saved tristate_bridge_flash_avalon_slave_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_flash_avalon_slave_saved_chosen_master_vector <= 0;
      else if (tristate_bridge_flash_avalon_slave_allow_new_arb_cycle)
          tristate_bridge_flash_avalon_slave_saved_chosen_master_vector <= |tristate_bridge_flash_avalon_slave_grant_vector ? tristate_bridge_flash_avalon_slave_grant_vector : tristate_bridge_flash_avalon_slave_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign tristate_bridge_flash_avalon_slave_grant_vector = {(tristate_bridge_flash_avalon_slave_chosen_master_double_vector[1] | tristate_bridge_flash_avalon_slave_chosen_master_double_vector[3]),
    (tristate_bridge_flash_avalon_slave_chosen_master_double_vector[0] | tristate_bridge_flash_avalon_slave_chosen_master_double_vector[2])};

  //tristate_bridge_flash/avalon_slave chosen master rotated left, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_chosen_master_rot_left = (tristate_bridge_flash_avalon_slave_arb_winner << 1) ? (tristate_bridge_flash_avalon_slave_arb_winner << 1) : 1;

  //tristate_bridge_flash/avalon_slave's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_flash_avalon_slave_arb_addend <= 1;
      else if (|tristate_bridge_flash_avalon_slave_grant_vector)
          tristate_bridge_flash_avalon_slave_arb_addend <= tristate_bridge_flash_avalon_slave_end_xfer? tristate_bridge_flash_avalon_slave_chosen_master_rot_left : tristate_bridge_flash_avalon_slave_grant_vector;
    end


  assign p1_select_n_to_the_cfi_flash = ~(cpu_data_master_granted_cfi_flash_s1 | cpu_instruction_master_granted_cfi_flash_s1);
  //tristate_bridge_flash_avalon_slave_firsttransfer first transaction, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_firsttransfer = tristate_bridge_flash_avalon_slave_begins_xfer ? tristate_bridge_flash_avalon_slave_unreg_firsttransfer : tristate_bridge_flash_avalon_slave_reg_firsttransfer;

  //tristate_bridge_flash_avalon_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_unreg_firsttransfer = ~(tristate_bridge_flash_avalon_slave_slavearbiterlockenable & tristate_bridge_flash_avalon_slave_any_continuerequest);

  //tristate_bridge_flash_avalon_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tristate_bridge_flash_avalon_slave_reg_firsttransfer <= 1'b1;
      else if (tristate_bridge_flash_avalon_slave_begins_xfer)
          tristate_bridge_flash_avalon_slave_reg_firsttransfer <= tristate_bridge_flash_avalon_slave_unreg_firsttransfer;
    end


  //tristate_bridge_flash_avalon_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_beginbursttransfer_internal = tristate_bridge_flash_avalon_slave_begins_xfer;

  //tristate_bridge_flash_avalon_slave_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign tristate_bridge_flash_avalon_slave_arbitration_holdoff_internal = tristate_bridge_flash_avalon_slave_begins_xfer & tristate_bridge_flash_avalon_slave_firsttransfer;

  //~read_n_to_the_cfi_flash of type read to ~p1_read_n_to_the_cfi_flash, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          read_n_to_the_cfi_flash <= ~0;
      else 
        read_n_to_the_cfi_flash <= p1_read_n_to_the_cfi_flash;
    end


  //~p1_read_n_to_the_cfi_flash assignment, which is an e_mux
  assign p1_read_n_to_the_cfi_flash = ~((cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_read) | (cpu_instruction_master_granted_cfi_flash_s1 & cpu_instruction_master_read));

  //~write_n_to_the_cfi_flash of type write to ~p1_write_n_to_the_cfi_flash, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          write_n_to_the_cfi_flash <= ~0;
      else 
        write_n_to_the_cfi_flash <= p1_write_n_to_the_cfi_flash;
    end


  //~p1_write_n_to_the_cfi_flash assignment, which is an e_mux
  assign p1_write_n_to_the_cfi_flash = ~(cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_write);

  //address_to_the_cfi_flash of type address to p1_address_to_the_cfi_flash, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          address_to_the_cfi_flash <= 0;
      else 
        address_to_the_cfi_flash <= p1_address_to_the_cfi_flash;
    end


  //p1_address_to_the_cfi_flash mux, which is an e_mux
  assign p1_address_to_the_cfi_flash = (cpu_data_master_granted_cfi_flash_s1)? ({cpu_data_master_address_to_slave >> 2,
    cpu_data_master_dbs_address[1],
    {1 {1'b0}}}) :
    ({cpu_instruction_master_address_to_slave >> 2,
    cpu_instruction_master_dbs_address[1],
    {1 {1'b0}}});

  //d1_tristate_bridge_flash_avalon_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_tristate_bridge_flash_avalon_slave_end_xfer <= 1;
      else 
        d1_tristate_bridge_flash_avalon_slave_end_xfer <= tristate_bridge_flash_avalon_slave_end_xfer;
    end


  //cfi_flash_s1_waits_for_read in a cycle, which is an e_mux
  assign cfi_flash_s1_waits_for_read = cfi_flash_s1_in_a_read_cycle & wait_for_cfi_flash_s1_counter;

  //cfi_flash_s1_in_a_read_cycle assignment, which is an e_assign
  assign cfi_flash_s1_in_a_read_cycle = (cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_read) | (cpu_instruction_master_granted_cfi_flash_s1 & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cfi_flash_s1_in_a_read_cycle;

  //cfi_flash_s1_waits_for_write in a cycle, which is an e_mux
  assign cfi_flash_s1_waits_for_write = cfi_flash_s1_in_a_write_cycle & wait_for_cfi_flash_s1_counter;

  //cfi_flash_s1_in_a_write_cycle assignment, which is an e_assign
  assign cfi_flash_s1_in_a_write_cycle = cpu_data_master_granted_cfi_flash_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cfi_flash_s1_in_a_write_cycle;

  assign cfi_flash_s1_wait_counter_eq_0 = cfi_flash_s1_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cfi_flash_s1_wait_counter <= 0;
      else 
        cfi_flash_s1_wait_counter <= cfi_flash_s1_counter_load_value;
    end


  assign cfi_flash_s1_counter_load_value = ((cfi_flash_s1_in_a_read_cycle & tristate_bridge_flash_avalon_slave_begins_xfer))? 8 :
    ((cfi_flash_s1_in_a_write_cycle & tristate_bridge_flash_avalon_slave_begins_xfer))? 8 :
    (~cfi_flash_s1_wait_counter_eq_0)? cfi_flash_s1_wait_counter - 1 :
    0;

  assign wait_for_cfi_flash_s1_counter = tristate_bridge_flash_avalon_slave_begins_xfer | ~cfi_flash_s1_wait_counter_eq_0;
  assign {cpu_data_master_byteenable_cfi_flash_s1_segment_1,
cpu_data_master_byteenable_cfi_flash_s1_segment_0} = cpu_data_master_byteenable;
  assign cpu_data_master_byteenable_cfi_flash_s1 = ((cpu_data_master_dbs_address[1] == 0))? cpu_data_master_byteenable_cfi_flash_s1_segment_0 :
    cpu_data_master_byteenable_cfi_flash_s1_segment_1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //incoming_data_to_and_from_the_cfi_flash_bit_0_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_0_is_x = ^(incoming_data_to_and_from_the_cfi_flash[0]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[0] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[0] = incoming_data_to_and_from_the_cfi_flash_bit_0_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[0];

  //incoming_data_to_and_from_the_cfi_flash_bit_1_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_1_is_x = ^(incoming_data_to_and_from_the_cfi_flash[1]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[1] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[1] = incoming_data_to_and_from_the_cfi_flash_bit_1_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[1];

  //incoming_data_to_and_from_the_cfi_flash_bit_2_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_2_is_x = ^(incoming_data_to_and_from_the_cfi_flash[2]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[2] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[2] = incoming_data_to_and_from_the_cfi_flash_bit_2_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[2];

  //incoming_data_to_and_from_the_cfi_flash_bit_3_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_3_is_x = ^(incoming_data_to_and_from_the_cfi_flash[3]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[3] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[3] = incoming_data_to_and_from_the_cfi_flash_bit_3_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[3];

  //incoming_data_to_and_from_the_cfi_flash_bit_4_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_4_is_x = ^(incoming_data_to_and_from_the_cfi_flash[4]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[4] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[4] = incoming_data_to_and_from_the_cfi_flash_bit_4_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[4];

  //incoming_data_to_and_from_the_cfi_flash_bit_5_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_5_is_x = ^(incoming_data_to_and_from_the_cfi_flash[5]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[5] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[5] = incoming_data_to_and_from_the_cfi_flash_bit_5_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[5];

  //incoming_data_to_and_from_the_cfi_flash_bit_6_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_6_is_x = ^(incoming_data_to_and_from_the_cfi_flash[6]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[6] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[6] = incoming_data_to_and_from_the_cfi_flash_bit_6_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[6];

  //incoming_data_to_and_from_the_cfi_flash_bit_7_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_7_is_x = ^(incoming_data_to_and_from_the_cfi_flash[7]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[7] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[7] = incoming_data_to_and_from_the_cfi_flash_bit_7_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[7];

  //incoming_data_to_and_from_the_cfi_flash_bit_8_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_8_is_x = ^(incoming_data_to_and_from_the_cfi_flash[8]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[8] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[8] = incoming_data_to_and_from_the_cfi_flash_bit_8_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[8];

  //incoming_data_to_and_from_the_cfi_flash_bit_9_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_9_is_x = ^(incoming_data_to_and_from_the_cfi_flash[9]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[9] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[9] = incoming_data_to_and_from_the_cfi_flash_bit_9_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[9];

  //incoming_data_to_and_from_the_cfi_flash_bit_10_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_10_is_x = ^(incoming_data_to_and_from_the_cfi_flash[10]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[10] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[10] = incoming_data_to_and_from_the_cfi_flash_bit_10_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[10];

  //incoming_data_to_and_from_the_cfi_flash_bit_11_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_11_is_x = ^(incoming_data_to_and_from_the_cfi_flash[11]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[11] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[11] = incoming_data_to_and_from_the_cfi_flash_bit_11_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[11];

  //incoming_data_to_and_from_the_cfi_flash_bit_12_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_12_is_x = ^(incoming_data_to_and_from_the_cfi_flash[12]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[12] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[12] = incoming_data_to_and_from_the_cfi_flash_bit_12_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[12];

  //incoming_data_to_and_from_the_cfi_flash_bit_13_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_13_is_x = ^(incoming_data_to_and_from_the_cfi_flash[13]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[13] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[13] = incoming_data_to_and_from_the_cfi_flash_bit_13_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[13];

  //incoming_data_to_and_from_the_cfi_flash_bit_14_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_14_is_x = ^(incoming_data_to_and_from_the_cfi_flash[14]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[14] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[14] = incoming_data_to_and_from_the_cfi_flash_bit_14_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[14];

  //incoming_data_to_and_from_the_cfi_flash_bit_15_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_flash_bit_15_is_x = ^(incoming_data_to_and_from_the_cfi_flash[15]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[15] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0[15] = incoming_data_to_and_from_the_cfi_flash_bit_15_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi_flash[15];

  //cfi_flash/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_cfi_flash_s1 + cpu_instruction_master_granted_cfi_flash_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_cfi_flash_s1 + cpu_instruction_master_saved_grant_cfi_flash_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  
//  assign incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0 = incoming_data_to_and_from_the_cfi_flash;
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module tristate_bridge_flash_bridge_arbitrator 
;



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module uart_s1_arbitrator (
                            // inputs:
                             clk,
                             cpu_data_master_address_to_slave,
                             cpu_data_master_latency_counter,
                             cpu_data_master_read,
                             cpu_data_master_write,
                             cpu_data_master_writedata,
                             reset_n,
                             uart_s1_dataavailable,
                             uart_s1_irq,
                             uart_s1_readdata,
                             uart_s1_readyfordata,

                            // outputs:
                             cpu_data_master_granted_uart_s1,
                             cpu_data_master_qualified_request_uart_s1,
                             cpu_data_master_read_data_valid_uart_s1,
                             cpu_data_master_requests_uart_s1,
                             d1_uart_s1_end_xfer,
                             uart_s1_address,
                             uart_s1_begintransfer,
                             uart_s1_chipselect,
                             uart_s1_dataavailable_from_sa,
                             uart_s1_irq_from_sa,
                             uart_s1_read_n,
                             uart_s1_readdata_from_sa,
                             uart_s1_readyfordata_from_sa,
                             uart_s1_reset_n,
                             uart_s1_write_n,
                             uart_s1_writedata
                          )
;

  output           cpu_data_master_granted_uart_s1;
  output           cpu_data_master_qualified_request_uart_s1;
  output           cpu_data_master_read_data_valid_uart_s1;
  output           cpu_data_master_requests_uart_s1;
  output           d1_uart_s1_end_xfer;
  output  [  2: 0] uart_s1_address;
  output           uart_s1_begintransfer;
  output           uart_s1_chipselect;
  output           uart_s1_dataavailable_from_sa;
  output           uart_s1_irq_from_sa;
  output           uart_s1_read_n;
  output  [ 15: 0] uart_s1_readdata_from_sa;
  output           uart_s1_readyfordata_from_sa;
  output           uart_s1_reset_n;
  output           uart_s1_write_n;
  output  [ 15: 0] uart_s1_writedata;
  input            clk;
  input   [ 27: 0] cpu_data_master_address_to_slave;
  input   [  1: 0] cpu_data_master_latency_counter;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;
  input            uart_s1_dataavailable;
  input            uart_s1_irq;
  input   [ 15: 0] uart_s1_readdata;
  input            uart_s1_readyfordata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_uart_s1;
  wire             cpu_data_master_qualified_request_uart_s1;
  wire             cpu_data_master_read_data_valid_uart_s1;
  wire             cpu_data_master_requests_uart_s1;
  wire             cpu_data_master_saved_grant_uart_s1;
  reg              d1_reasons_to_wait;
  reg              d1_uart_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_uart_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 27: 0] shifted_address_to_uart_s1_from_cpu_data_master;
  wire    [  2: 0] uart_s1_address;
  wire             uart_s1_allgrants;
  wire             uart_s1_allow_new_arb_cycle;
  wire             uart_s1_any_bursting_master_saved_grant;
  wire             uart_s1_any_continuerequest;
  wire             uart_s1_arb_counter_enable;
  reg     [  1: 0] uart_s1_arb_share_counter;
  wire    [  1: 0] uart_s1_arb_share_counter_next_value;
  wire    [  1: 0] uart_s1_arb_share_set_values;
  wire             uart_s1_beginbursttransfer_internal;
  wire             uart_s1_begins_xfer;
  wire             uart_s1_begintransfer;
  wire             uart_s1_chipselect;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_end_xfer;
  wire             uart_s1_firsttransfer;
  wire             uart_s1_grant_vector;
  wire             uart_s1_in_a_read_cycle;
  wire             uart_s1_in_a_write_cycle;
  wire             uart_s1_irq_from_sa;
  wire             uart_s1_master_qreq_vector;
  wire             uart_s1_non_bursting_master_requests;
  wire             uart_s1_read_n;
  wire    [ 15: 0] uart_s1_readdata_from_sa;
  wire             uart_s1_readyfordata_from_sa;
  reg              uart_s1_reg_firsttransfer;
  wire             uart_s1_reset_n;
  reg              uart_s1_slavearbiterlockenable;
  wire             uart_s1_slavearbiterlockenable2;
  wire             uart_s1_unreg_firsttransfer;
  wire             uart_s1_waits_for_read;
  wire             uart_s1_waits_for_write;
  wire             uart_s1_write_n;
  wire    [ 15: 0] uart_s1_writedata;
  wire             wait_for_uart_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~uart_s1_end_xfer;
    end


  assign uart_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_uart_s1));
  //assign uart_s1_readdata_from_sa = uart_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_readdata_from_sa = uart_s1_readdata;

  assign cpu_data_master_requests_uart_s1 = ({cpu_data_master_address_to_slave[27 : 5] , 5'b0} == 28'h2001040) & (cpu_data_master_read | cpu_data_master_write);
  //assign uart_s1_dataavailable_from_sa = uart_s1_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_dataavailable_from_sa = uart_s1_dataavailable;

  //assign uart_s1_readyfordata_from_sa = uart_s1_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_readyfordata_from_sa = uart_s1_readyfordata;

  //uart_s1_arb_share_counter set values, which is an e_mux
  assign uart_s1_arb_share_set_values = 1;

  //uart_s1_non_bursting_master_requests mux, which is an e_mux
  assign uart_s1_non_bursting_master_requests = cpu_data_master_requests_uart_s1;

  //uart_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign uart_s1_any_bursting_master_saved_grant = 0;

  //uart_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign uart_s1_arb_share_counter_next_value = uart_s1_firsttransfer ? (uart_s1_arb_share_set_values - 1) : |uart_s1_arb_share_counter ? (uart_s1_arb_share_counter - 1) : 0;

  //uart_s1_allgrants all slave grants, which is an e_mux
  assign uart_s1_allgrants = |uart_s1_grant_vector;

  //uart_s1_end_xfer assignment, which is an e_assign
  assign uart_s1_end_xfer = ~(uart_s1_waits_for_read | uart_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_uart_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_uart_s1 = uart_s1_end_xfer & (~uart_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //uart_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign uart_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_uart_s1 & uart_s1_allgrants) | (end_xfer_arb_share_counter_term_uart_s1 & ~uart_s1_non_bursting_master_requests);

  //uart_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_arb_share_counter <= 0;
      else if (uart_s1_arb_counter_enable)
          uart_s1_arb_share_counter <= uart_s1_arb_share_counter_next_value;
    end


  //uart_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_slavearbiterlockenable <= 0;
      else if ((|uart_s1_master_qreq_vector & end_xfer_arb_share_counter_term_uart_s1) | (end_xfer_arb_share_counter_term_uart_s1 & ~uart_s1_non_bursting_master_requests))
          uart_s1_slavearbiterlockenable <= |uart_s1_arb_share_counter_next_value;
    end


  //cpu/data_master uart/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = uart_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //uart_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign uart_s1_slavearbiterlockenable2 = |uart_s1_arb_share_counter_next_value;

  //cpu/data_master uart/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = uart_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //uart_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign uart_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_uart_s1 = cpu_data_master_requests_uart_s1 & ~((cpu_data_master_read & ((cpu_data_master_latency_counter != 0))));
  //local readdatavalid cpu_data_master_read_data_valid_uart_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_uart_s1 = cpu_data_master_granted_uart_s1 & cpu_data_master_read & ~uart_s1_waits_for_read;

  //uart_s1_writedata mux, which is an e_mux
  assign uart_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_uart_s1 = cpu_data_master_qualified_request_uart_s1;

  //cpu/data_master saved-grant uart/s1, which is an e_assign
  assign cpu_data_master_saved_grant_uart_s1 = cpu_data_master_requests_uart_s1;

  //allow new arb cycle for uart/s1, which is an e_assign
  assign uart_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign uart_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign uart_s1_master_qreq_vector = 1;

  assign uart_s1_begintransfer = uart_s1_begins_xfer;
  //uart_s1_reset_n assignment, which is an e_assign
  assign uart_s1_reset_n = reset_n;

  assign uart_s1_chipselect = cpu_data_master_granted_uart_s1;
  //uart_s1_firsttransfer first transaction, which is an e_assign
  assign uart_s1_firsttransfer = uart_s1_begins_xfer ? uart_s1_unreg_firsttransfer : uart_s1_reg_firsttransfer;

  //uart_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign uart_s1_unreg_firsttransfer = ~(uart_s1_slavearbiterlockenable & uart_s1_any_continuerequest);

  //uart_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_reg_firsttransfer <= 1'b1;
      else if (uart_s1_begins_xfer)
          uart_s1_reg_firsttransfer <= uart_s1_unreg_firsttransfer;
    end


  //uart_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign uart_s1_beginbursttransfer_internal = uart_s1_begins_xfer;

  //~uart_s1_read_n assignment, which is an e_mux
  assign uart_s1_read_n = ~(cpu_data_master_granted_uart_s1 & cpu_data_master_read);

  //~uart_s1_write_n assignment, which is an e_mux
  assign uart_s1_write_n = ~(cpu_data_master_granted_uart_s1 & cpu_data_master_write);

  assign shifted_address_to_uart_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //uart_s1_address mux, which is an e_mux
  assign uart_s1_address = shifted_address_to_uart_s1_from_cpu_data_master >> 2;

  //d1_uart_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_uart_s1_end_xfer <= 1;
      else 
        d1_uart_s1_end_xfer <= uart_s1_end_xfer;
    end


  //uart_s1_waits_for_read in a cycle, which is an e_mux
  assign uart_s1_waits_for_read = uart_s1_in_a_read_cycle & uart_s1_begins_xfer;

  //uart_s1_in_a_read_cycle assignment, which is an e_assign
  assign uart_s1_in_a_read_cycle = cpu_data_master_granted_uart_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = uart_s1_in_a_read_cycle;

  //uart_s1_waits_for_write in a cycle, which is an e_mux
  assign uart_s1_waits_for_write = uart_s1_in_a_write_cycle & uart_s1_begins_xfer;

  //uart_s1_in_a_write_cycle assignment, which is an e_assign
  assign uart_s1_in_a_write_cycle = cpu_data_master_granted_uart_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = uart_s1_in_a_write_cycle;

  assign wait_for_uart_s1_counter = 0;
  //assign uart_s1_irq_from_sa = uart_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_irq_from_sa = uart_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //uart/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_reset_pll_c0_system_domain_synch_module (
                                                             // inputs:
                                                              clk,
                                                              data_in,
                                                              reset_n,

                                                             // outputs:
                                                              data_out
                                                           )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_reset_clk_25_domain_synch_module (
                                                      // inputs:
                                                       clk,
                                                       data_in,
                                                       reset_n,

                                                      // outputs:
                                                       data_out
                                                    )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_reset_clk_50_domain_synch_module (
                                                      // inputs:
                                                       clk,
                                                       data_in,
                                                       reset_n,

                                                      // outputs:
                                                       data_out
                                                    )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC_reset_pll_c1_memory_domain_synch_module (
                                                             // inputs:
                                                              clk,
                                                              data_in,
                                                              reset_n,

                                                             // outputs:
                                                              data_out
                                                           )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_70_SOPC (
                     // 1) global signals:
                      clk_25,
                      clk_50,
                      pll_c0_system,
                      pll_c1_memory,
                      reset_n,

                     // the_DM9000A
                      avs_s1_export_ENET_CLK_from_the_DM9000A,
                      avs_s1_export_ENET_CMD_from_the_DM9000A,
                      avs_s1_export_ENET_CS_N_from_the_DM9000A,
                      avs_s1_export_ENET_DATA_to_and_from_the_DM9000A,
                      avs_s1_export_ENET_INT_to_the_DM9000A,
                      avs_s1_export_ENET_RD_N_from_the_DM9000A,
                      avs_s1_export_ENET_RST_N_from_the_DM9000A,
                      avs_s1_export_ENET_WR_N_from_the_DM9000A,

                     // the_sdram_u1
                      zs_addr_from_the_sdram_u1,
                      zs_ba_from_the_sdram_u1,
                      zs_cas_n_from_the_sdram_u1,
                      zs_cke_from_the_sdram_u1,
                      zs_cs_n_from_the_sdram_u1,
                      zs_dq_to_and_from_the_sdram_u1,
                      zs_dqm_from_the_sdram_u1,
                      zs_ras_n_from_the_sdram_u1,
                      zs_we_n_from_the_sdram_u1,

                     // the_tristate_bridge_flash_avalon_slave
                      address_to_the_cfi_flash,
                      data_to_and_from_the_cfi_flash,
                      read_n_to_the_cfi_flash,
                      select_n_to_the_cfi_flash,
                      write_n_to_the_cfi_flash,

                     // the_uart
                      cts_n_to_the_uart,
                      rts_n_from_the_uart,
                      rxd_to_the_uart,
                      txd_from_the_uart
                   )
;

  output  [ 22: 0] address_to_the_cfi_flash;
  output           avs_s1_export_ENET_CLK_from_the_DM9000A;
  output           avs_s1_export_ENET_CMD_from_the_DM9000A;
  output           avs_s1_export_ENET_CS_N_from_the_DM9000A;
  inout   [ 15: 0] avs_s1_export_ENET_DATA_to_and_from_the_DM9000A;
  output           avs_s1_export_ENET_RD_N_from_the_DM9000A;
  output           avs_s1_export_ENET_RST_N_from_the_DM9000A;
  output           avs_s1_export_ENET_WR_N_from_the_DM9000A;
  inout   [ 15: 0] data_to_and_from_the_cfi_flash;
  output           pll_c0_system;
  output           pll_c1_memory;
  output           read_n_to_the_cfi_flash;
  output           rts_n_from_the_uart;
  output           select_n_to_the_cfi_flash;
  output           txd_from_the_uart;
  output           write_n_to_the_cfi_flash;
  output  [ 12: 0] zs_addr_from_the_sdram_u1;
  output  [  1: 0] zs_ba_from_the_sdram_u1;
  output           zs_cas_n_from_the_sdram_u1;
  output           zs_cke_from_the_sdram_u1;
  output           zs_cs_n_from_the_sdram_u1;
  inout   [ 15: 0] zs_dq_to_and_from_the_sdram_u1;
  output  [  1: 0] zs_dqm_from_the_sdram_u1;
  output           zs_ras_n_from_the_sdram_u1;
  output           zs_we_n_from_the_sdram_u1;
  input            avs_s1_export_ENET_INT_to_the_DM9000A;
  input            clk_25;
  input            clk_50;
  input            cts_n_to_the_uart;
  input            reset_n;
  input            rxd_to_the_uart;

  wire    [ 24: 0] DE2_70_SOPC_clock_0_in_address;
  wire    [  1: 0] DE2_70_SOPC_clock_0_in_byteenable;
  wire             DE2_70_SOPC_clock_0_in_endofpacket;
  wire             DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  wire    [ 23: 0] DE2_70_SOPC_clock_0_in_nativeaddress;
  wire             DE2_70_SOPC_clock_0_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_in_readdata;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_in_readdata_from_sa;
  wire             DE2_70_SOPC_clock_0_in_reset_n;
  wire             DE2_70_SOPC_clock_0_in_waitrequest;
  wire             DE2_70_SOPC_clock_0_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_0_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_in_writedata;
  wire    [ 24: 0] DE2_70_SOPC_clock_0_out_address;
  wire    [ 24: 0] DE2_70_SOPC_clock_0_out_address_to_slave;
  wire    [  1: 0] DE2_70_SOPC_clock_0_out_byteenable;
  wire             DE2_70_SOPC_clock_0_out_endofpacket;
  wire             DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1;
  wire    [ 23: 0] DE2_70_SOPC_clock_0_out_nativeaddress;
  wire             DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_read;
  wire             DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_out_readdata;
  wire             DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_0_out_reset_n;
  wire             DE2_70_SOPC_clock_0_out_waitrequest;
  wire             DE2_70_SOPC_clock_0_out_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_out_writedata;
  wire    [ 24: 0] DE2_70_SOPC_clock_1_in_address;
  wire    [  1: 0] DE2_70_SOPC_clock_1_in_byteenable;
  wire             DE2_70_SOPC_clock_1_in_endofpacket;
  wire             DE2_70_SOPC_clock_1_in_endofpacket_from_sa;
  wire    [ 23: 0] DE2_70_SOPC_clock_1_in_nativeaddress;
  wire             DE2_70_SOPC_clock_1_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_in_readdata;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_in_readdata_from_sa;
  wire             DE2_70_SOPC_clock_1_in_reset_n;
  wire             DE2_70_SOPC_clock_1_in_waitrequest;
  wire             DE2_70_SOPC_clock_1_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_1_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_in_writedata;
  wire    [ 24: 0] DE2_70_SOPC_clock_1_out_address;
  wire    [ 24: 0] DE2_70_SOPC_clock_1_out_address_to_slave;
  wire    [  1: 0] DE2_70_SOPC_clock_1_out_byteenable;
  wire             DE2_70_SOPC_clock_1_out_endofpacket;
  wire             DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1;
  wire    [ 23: 0] DE2_70_SOPC_clock_1_out_nativeaddress;
  wire             DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_read;
  wire             DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_out_readdata;
  wire             DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1;
  wire             DE2_70_SOPC_clock_1_out_reset_n;
  wire             DE2_70_SOPC_clock_1_out_waitrequest;
  wire             DE2_70_SOPC_clock_1_out_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_1_out_writedata;
  wire    [  3: 0] DE2_70_SOPC_clock_2_in_address;
  wire    [  1: 0] DE2_70_SOPC_clock_2_in_byteenable;
  wire             DE2_70_SOPC_clock_2_in_endofpacket;
  wire             DE2_70_SOPC_clock_2_in_endofpacket_from_sa;
  wire    [  2: 0] DE2_70_SOPC_clock_2_in_nativeaddress;
  wire             DE2_70_SOPC_clock_2_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_in_readdata;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_in_readdata_from_sa;
  wire             DE2_70_SOPC_clock_2_in_reset_n;
  wire             DE2_70_SOPC_clock_2_in_waitrequest;
  wire             DE2_70_SOPC_clock_2_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_2_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_in_writedata;
  wire    [  3: 0] DE2_70_SOPC_clock_2_out_address;
  wire    [  3: 0] DE2_70_SOPC_clock_2_out_address_to_slave;
  wire    [  1: 0] DE2_70_SOPC_clock_2_out_byteenable;
  wire             DE2_70_SOPC_clock_2_out_endofpacket;
  wire             DE2_70_SOPC_clock_2_out_granted_pll_s1;
  wire    [  2: 0] DE2_70_SOPC_clock_2_out_nativeaddress;
  wire             DE2_70_SOPC_clock_2_out_qualified_request_pll_s1;
  wire             DE2_70_SOPC_clock_2_out_read;
  wire             DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_out_readdata;
  wire             DE2_70_SOPC_clock_2_out_requests_pll_s1;
  wire             DE2_70_SOPC_clock_2_out_reset_n;
  wire             DE2_70_SOPC_clock_2_out_waitrequest;
  wire             DE2_70_SOPC_clock_2_out_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_2_out_writedata;
  wire    [  1: 0] DE2_70_SOPC_clock_3_in_address;
  wire    [  1: 0] DE2_70_SOPC_clock_3_in_byteenable;
  wire             DE2_70_SOPC_clock_3_in_endofpacket;
  wire             DE2_70_SOPC_clock_3_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_3_in_nativeaddress;
  wire             DE2_70_SOPC_clock_3_in_read;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_in_readdata;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_in_readdata_from_sa;
  wire             DE2_70_SOPC_clock_3_in_reset_n;
  wire             DE2_70_SOPC_clock_3_in_waitrequest;
  wire             DE2_70_SOPC_clock_3_in_waitrequest_from_sa;
  wire             DE2_70_SOPC_clock_3_in_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_in_writedata;
  wire    [  1: 0] DE2_70_SOPC_clock_3_out_address;
  wire    [  1: 0] DE2_70_SOPC_clock_3_out_address_to_slave;
  wire    [  1: 0] DE2_70_SOPC_clock_3_out_byteenable;
  wire             DE2_70_SOPC_clock_3_out_endofpacket;
  wire             DE2_70_SOPC_clock_3_out_granted_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_nativeaddress;
  wire             DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_read;
  wire             DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_out_readdata;
  wire             DE2_70_SOPC_clock_3_out_requests_DM9000A_s1;
  wire             DE2_70_SOPC_clock_3_out_reset_n;
  wire             DE2_70_SOPC_clock_3_out_waitrequest;
  wire             DE2_70_SOPC_clock_3_out_write;
  wire    [ 15: 0] DE2_70_SOPC_clock_3_out_writedata;
  wire             DM9000A_s1_address;
  wire             DM9000A_s1_chipselect_n;
  wire             DM9000A_s1_irq;
  wire             DM9000A_s1_irq_from_sa;
  wire             DM9000A_s1_read_n;
  wire    [ 15: 0] DM9000A_s1_readdata;
  wire    [ 15: 0] DM9000A_s1_readdata_from_sa;
  wire             DM9000A_s1_reset_n;
  wire             DM9000A_s1_wait_counter_eq_0;
  wire             DM9000A_s1_write_n;
  wire    [ 15: 0] DM9000A_s1_writedata;
  wire    [ 22: 0] address_to_the_cfi_flash;
  wire             avs_s1_export_ENET_CLK_from_the_DM9000A;
  wire             avs_s1_export_ENET_CMD_from_the_DM9000A;
  wire             avs_s1_export_ENET_CS_N_from_the_DM9000A;
  wire    [ 15: 0] avs_s1_export_ENET_DATA_to_and_from_the_DM9000A;
  wire             avs_s1_export_ENET_RD_N_from_the_DM9000A;
  wire             avs_s1_export_ENET_RST_N_from_the_DM9000A;
  wire             avs_s1_export_ENET_WR_N_from_the_DM9000A;
  wire             cfi_flash_s1_wait_counter_eq_0;
  wire             clk_25_reset_n;
  wire             clk_50_reset_n;
  wire    [ 27: 0] cpu_data_master_address;
  wire    [ 27: 0] cpu_data_master_address_to_slave;
  wire    [  3: 0] cpu_data_master_byteenable;
  wire    [  1: 0] cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in;
  wire    [  1: 0] cpu_data_master_byteenable_cfi_flash_s1;
  wire    [  1: 0] cpu_data_master_dbs_address;
  wire    [ 15: 0] cpu_data_master_dbs_write_16;
  wire             cpu_data_master_debugaccess;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_granted_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_granted_cfi_flash_s1;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_granted_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire             cpu_data_master_granted_timer_s1;
  wire             cpu_data_master_granted_timer_stamp_s1;
  wire             cpu_data_master_granted_uart_s1;
  wire    [ 31: 0] cpu_data_master_irq;
  wire    [  1: 0] cpu_data_master_latency_counter;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_qualified_request_cfi_flash_s1;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_qualified_request_timer_s1;
  wire             cpu_data_master_qualified_request_timer_stamp_s1;
  wire             cpu_data_master_qualified_request_uart_s1;
  wire             cpu_data_master_read;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_read_data_valid_cfi_flash_s1;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire             cpu_data_master_read_data_valid_timer_s1;
  wire             cpu_data_master_read_data_valid_timer_stamp_s1;
  wire             cpu_data_master_read_data_valid_uart_s1;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_readdatavalid;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_1_in;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_2_in;
  wire             cpu_data_master_requests_DE2_70_SOPC_clock_3_in;
  wire             cpu_data_master_requests_cfi_flash_s1;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_epcs_flash_controller_epcs_control_port;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_requests_timer_s1;
  wire             cpu_data_master_requests_timer_stamp_s1;
  wire             cpu_data_master_requests_uart_s1;
  wire             cpu_data_master_waitrequest;
  wire             cpu_data_master_write;
  wire    [ 31: 0] cpu_data_master_writedata;
  wire    [ 27: 0] cpu_instruction_master_address;
  wire    [ 27: 0] cpu_instruction_master_address_to_slave;
  wire    [  1: 0] cpu_instruction_master_dbs_address;
  wire             cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_granted_cfi_flash_s1;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port;
  wire    [  1: 0] cpu_instruction_master_latency_counter;
  wire             cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_qualified_request_cfi_flash_s1;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_read;
  wire             cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_read_data_valid_cfi_flash_s1;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in;
  wire             cpu_instruction_master_requests_cfi_flash_s1;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port;
  wire             cpu_instruction_master_waitrequest;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire             cpu_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  wire             d1_DE2_70_SOPC_clock_0_in_end_xfer;
  wire             d1_DE2_70_SOPC_clock_1_in_end_xfer;
  wire             d1_DE2_70_SOPC_clock_2_in_end_xfer;
  wire             d1_DE2_70_SOPC_clock_3_in_end_xfer;
  wire             d1_DM9000A_s1_end_xfer;
  wire             d1_cpu_jtag_debug_module_end_xfer;
  wire             d1_epcs_flash_controller_epcs_control_port_end_xfer;
  wire             d1_pll_s1_end_xfer;
  wire             d1_sdram_u1_s1_end_xfer;
  wire             d1_sysid_control_slave_end_xfer;
  wire             d1_timer_s1_end_xfer;
  wire             d1_timer_stamp_s1_end_xfer;
  wire             d1_tristate_bridge_flash_avalon_slave_end_xfer;
  wire             d1_uart_s1_end_xfer;
  wire    [ 15: 0] data_to_and_from_the_cfi_flash;
  wire    [  8: 0] epcs_flash_controller_epcs_control_port_address;
  wire             epcs_flash_controller_epcs_control_port_chipselect;
  wire             epcs_flash_controller_epcs_control_port_dataavailable;
  wire             epcs_flash_controller_epcs_control_port_dataavailable_from_sa;
  wire             epcs_flash_controller_epcs_control_port_endofpacket;
  wire             epcs_flash_controller_epcs_control_port_endofpacket_from_sa;
  wire             epcs_flash_controller_epcs_control_port_irq;
  wire             epcs_flash_controller_epcs_control_port_irq_from_sa;
  wire             epcs_flash_controller_epcs_control_port_read_n;
  wire    [ 31: 0] epcs_flash_controller_epcs_control_port_readdata;
  wire    [ 31: 0] epcs_flash_controller_epcs_control_port_readdata_from_sa;
  wire             epcs_flash_controller_epcs_control_port_readyfordata;
  wire             epcs_flash_controller_epcs_control_port_readyfordata_from_sa;
  wire             epcs_flash_controller_epcs_control_port_reset_n;
  wire             epcs_flash_controller_epcs_control_port_write_n;
  wire    [ 31: 0] epcs_flash_controller_epcs_control_port_writedata;
  wire    [ 15: 0] incoming_data_to_and_from_the_cfi_flash;
  wire    [ 15: 0] incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0;
  wire             out_clk_pll_c0;
  wire             out_clk_pll_c1;
  wire             pll_c0_system;
  wire             pll_c0_system_reset_n;
  wire             pll_c1_memory;
  wire             pll_c1_memory_reset_n;
  wire    [  2: 0] pll_s1_address;
  wire             pll_s1_chipselect;
  wire             pll_s1_read;
  wire    [ 15: 0] pll_s1_readdata;
  wire    [ 15: 0] pll_s1_readdata_from_sa;
  wire             pll_s1_reset_n;
  wire             pll_s1_resetrequest;
  wire             pll_s1_resetrequest_from_sa;
  wire             pll_s1_write;
  wire    [ 15: 0] pll_s1_writedata;
  wire             read_n_to_the_cfi_flash;
  wire             reset_n_sources;
  wire             rts_n_from_the_uart;
  wire    [ 23: 0] sdram_u1_s1_address;
  wire    [  1: 0] sdram_u1_s1_byteenable_n;
  wire             sdram_u1_s1_chipselect;
  wire             sdram_u1_s1_read_n;
  wire    [ 15: 0] sdram_u1_s1_readdata;
  wire    [ 15: 0] sdram_u1_s1_readdata_from_sa;
  wire             sdram_u1_s1_readdatavalid;
  wire             sdram_u1_s1_reset_n;
  wire             sdram_u1_s1_waitrequest;
  wire             sdram_u1_s1_waitrequest_from_sa;
  wire             sdram_u1_s1_write_n;
  wire    [ 15: 0] sdram_u1_s1_writedata;
  wire             select_n_to_the_cfi_flash;
  wire             sysid_control_slave_address;
  wire    [ 31: 0] sysid_control_slave_readdata;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_chipselect;
  wire             timer_s1_irq;
  wire             timer_s1_irq_from_sa;
  wire    [ 15: 0] timer_s1_readdata;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  wire             timer_s1_reset_n;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire    [  3: 0] timer_stamp_s1_address;
  wire             timer_stamp_s1_chipselect;
  wire             timer_stamp_s1_irq;
  wire             timer_stamp_s1_irq_from_sa;
  wire    [ 15: 0] timer_stamp_s1_readdata;
  wire    [ 15: 0] timer_stamp_s1_readdata_from_sa;
  wire             timer_stamp_s1_reset_n;
  wire             timer_stamp_s1_write_n;
  wire    [ 15: 0] timer_stamp_s1_writedata;
  wire             txd_from_the_uart;
  wire    [  2: 0] uart_s1_address;
  wire             uart_s1_begintransfer;
  wire             uart_s1_chipselect;
  wire             uart_s1_dataavailable;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_irq;
  wire             uart_s1_irq_from_sa;
  wire             uart_s1_read_n;
  wire    [ 15: 0] uart_s1_readdata;
  wire    [ 15: 0] uart_s1_readdata_from_sa;
  wire             uart_s1_readyfordata;
  wire             uart_s1_readyfordata_from_sa;
  wire             uart_s1_reset_n;
  wire             uart_s1_write_n;
  wire    [ 15: 0] uart_s1_writedata;
  wire             write_n_to_the_cfi_flash;
  wire    [ 12: 0] zs_addr_from_the_sdram_u1;
  wire    [  1: 0] zs_ba_from_the_sdram_u1;
  wire             zs_cas_n_from_the_sdram_u1;
  wire             zs_cke_from_the_sdram_u1;
  wire             zs_cs_n_from_the_sdram_u1;
  wire    [ 15: 0] zs_dq_to_and_from_the_sdram_u1;
  wire    [  1: 0] zs_dqm_from_the_sdram_u1;
  wire             zs_ras_n_from_the_sdram_u1;
  wire             zs_we_n_from_the_sdram_u1;
  DE2_70_SOPC_clock_0_in_arbitrator the_DE2_70_SOPC_clock_0_in
    (
      .DE2_70_SOPC_clock_0_in_address                                  (DE2_70_SOPC_clock_0_in_address),
      .DE2_70_SOPC_clock_0_in_byteenable                               (DE2_70_SOPC_clock_0_in_byteenable),
      .DE2_70_SOPC_clock_0_in_endofpacket                              (DE2_70_SOPC_clock_0_in_endofpacket),
      .DE2_70_SOPC_clock_0_in_endofpacket_from_sa                      (DE2_70_SOPC_clock_0_in_endofpacket_from_sa),
      .DE2_70_SOPC_clock_0_in_nativeaddress                            (DE2_70_SOPC_clock_0_in_nativeaddress),
      .DE2_70_SOPC_clock_0_in_read                                     (DE2_70_SOPC_clock_0_in_read),
      .DE2_70_SOPC_clock_0_in_readdata                                 (DE2_70_SOPC_clock_0_in_readdata),
      .DE2_70_SOPC_clock_0_in_readdata_from_sa                         (DE2_70_SOPC_clock_0_in_readdata_from_sa),
      .DE2_70_SOPC_clock_0_in_reset_n                                  (DE2_70_SOPC_clock_0_in_reset_n),
      .DE2_70_SOPC_clock_0_in_waitrequest                              (DE2_70_SOPC_clock_0_in_waitrequest),
      .DE2_70_SOPC_clock_0_in_waitrequest_from_sa                      (DE2_70_SOPC_clock_0_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_0_in_write                                    (DE2_70_SOPC_clock_0_in_write),
      .clk                                                             (pll_c0_system),
      .cpu_instruction_master_address_to_slave                         (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_dbs_address                              (cpu_instruction_master_dbs_address),
      .cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in           (cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_latency_counter                          (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in (cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_read                                     (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in   (cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in          (cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in),
      .d1_DE2_70_SOPC_clock_0_in_end_xfer                              (d1_DE2_70_SOPC_clock_0_in_end_xfer),
      .reset_n                                                         (pll_c0_system_reset_n)
    );

  DE2_70_SOPC_clock_0_out_arbitrator the_DE2_70_SOPC_clock_0_out
    (
      .DE2_70_SOPC_clock_0_out_address                                    (DE2_70_SOPC_clock_0_out_address),
      .DE2_70_SOPC_clock_0_out_address_to_slave                           (DE2_70_SOPC_clock_0_out_address_to_slave),
      .DE2_70_SOPC_clock_0_out_byteenable                                 (DE2_70_SOPC_clock_0_out_byteenable),
      .DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1                        (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1              (DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_read                                       (DE2_70_SOPC_clock_0_out_read),
      .DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1                (DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register (DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register),
      .DE2_70_SOPC_clock_0_out_readdata                                   (DE2_70_SOPC_clock_0_out_readdata),
      .DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1                       (DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_reset_n                                    (DE2_70_SOPC_clock_0_out_reset_n),
      .DE2_70_SOPC_clock_0_out_waitrequest                                (DE2_70_SOPC_clock_0_out_waitrequest),
      .DE2_70_SOPC_clock_0_out_write                                      (DE2_70_SOPC_clock_0_out_write),
      .DE2_70_SOPC_clock_0_out_writedata                                  (DE2_70_SOPC_clock_0_out_writedata),
      .clk                                                                (pll_c1_memory),
      .d1_sdram_u1_s1_end_xfer                                            (d1_sdram_u1_s1_end_xfer),
      .reset_n                                                            (pll_c1_memory_reset_n),
      .sdram_u1_s1_readdata_from_sa                                       (sdram_u1_s1_readdata_from_sa),
      .sdram_u1_s1_waitrequest_from_sa                                    (sdram_u1_s1_waitrequest_from_sa)
    );

  DE2_70_SOPC_clock_0 the_DE2_70_SOPC_clock_0
    (
      .master_address       (DE2_70_SOPC_clock_0_out_address),
      .master_byteenable    (DE2_70_SOPC_clock_0_out_byteenable),
      .master_clk           (pll_c1_memory),
      .master_endofpacket   (DE2_70_SOPC_clock_0_out_endofpacket),
      .master_nativeaddress (DE2_70_SOPC_clock_0_out_nativeaddress),
      .master_read          (DE2_70_SOPC_clock_0_out_read),
      .master_readdata      (DE2_70_SOPC_clock_0_out_readdata),
      .master_reset_n       (DE2_70_SOPC_clock_0_out_reset_n),
      .master_waitrequest   (DE2_70_SOPC_clock_0_out_waitrequest),
      .master_write         (DE2_70_SOPC_clock_0_out_write),
      .master_writedata     (DE2_70_SOPC_clock_0_out_writedata),
      .slave_address        (DE2_70_SOPC_clock_0_in_address),
      .slave_byteenable     (DE2_70_SOPC_clock_0_in_byteenable),
      .slave_clk            (pll_c0_system),
      .slave_endofpacket    (DE2_70_SOPC_clock_0_in_endofpacket),
      .slave_nativeaddress  (DE2_70_SOPC_clock_0_in_nativeaddress),
      .slave_read           (DE2_70_SOPC_clock_0_in_read),
      .slave_readdata       (DE2_70_SOPC_clock_0_in_readdata),
      .slave_reset_n        (DE2_70_SOPC_clock_0_in_reset_n),
      .slave_waitrequest    (DE2_70_SOPC_clock_0_in_waitrequest),
      .slave_write          (DE2_70_SOPC_clock_0_in_write),
      .slave_writedata      (DE2_70_SOPC_clock_0_in_writedata)
    );

  DE2_70_SOPC_clock_1_in_arbitrator the_DE2_70_SOPC_clock_1_in
    (
      .DE2_70_SOPC_clock_1_in_address                           (DE2_70_SOPC_clock_1_in_address),
      .DE2_70_SOPC_clock_1_in_byteenable                        (DE2_70_SOPC_clock_1_in_byteenable),
      .DE2_70_SOPC_clock_1_in_endofpacket                       (DE2_70_SOPC_clock_1_in_endofpacket),
      .DE2_70_SOPC_clock_1_in_endofpacket_from_sa               (DE2_70_SOPC_clock_1_in_endofpacket_from_sa),
      .DE2_70_SOPC_clock_1_in_nativeaddress                     (DE2_70_SOPC_clock_1_in_nativeaddress),
      .DE2_70_SOPC_clock_1_in_read                              (DE2_70_SOPC_clock_1_in_read),
      .DE2_70_SOPC_clock_1_in_readdata                          (DE2_70_SOPC_clock_1_in_readdata),
      .DE2_70_SOPC_clock_1_in_readdata_from_sa                  (DE2_70_SOPC_clock_1_in_readdata_from_sa),
      .DE2_70_SOPC_clock_1_in_reset_n                           (DE2_70_SOPC_clock_1_in_reset_n),
      .DE2_70_SOPC_clock_1_in_waitrequest                       (DE2_70_SOPC_clock_1_in_waitrequest),
      .DE2_70_SOPC_clock_1_in_waitrequest_from_sa               (DE2_70_SOPC_clock_1_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_1_in_write                             (DE2_70_SOPC_clock_1_in_write),
      .DE2_70_SOPC_clock_1_in_writedata                         (DE2_70_SOPC_clock_1_in_writedata),
      .clk                                                      (pll_c0_system),
      .cpu_data_master_address_to_slave                         (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                               (cpu_data_master_byteenable),
      .cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in        (cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_dbs_address                              (cpu_data_master_dbs_address),
      .cpu_data_master_dbs_write_16                             (cpu_data_master_dbs_write_16),
      .cpu_data_master_granted_DE2_70_SOPC_clock_1_in           (cpu_data_master_granted_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_latency_counter                          (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in (cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_read                                     (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in   (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_requests_DE2_70_SOPC_clock_1_in          (cpu_data_master_requests_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_write                                    (cpu_data_master_write),
      .d1_DE2_70_SOPC_clock_1_in_end_xfer                       (d1_DE2_70_SOPC_clock_1_in_end_xfer),
      .reset_n                                                  (pll_c0_system_reset_n)
    );

  DE2_70_SOPC_clock_1_out_arbitrator the_DE2_70_SOPC_clock_1_out
    (
      .DE2_70_SOPC_clock_1_out_address                                    (DE2_70_SOPC_clock_1_out_address),
      .DE2_70_SOPC_clock_1_out_address_to_slave                           (DE2_70_SOPC_clock_1_out_address_to_slave),
      .DE2_70_SOPC_clock_1_out_byteenable                                 (DE2_70_SOPC_clock_1_out_byteenable),
      .DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1                        (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1              (DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_read                                       (DE2_70_SOPC_clock_1_out_read),
      .DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1                (DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register (DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register),
      .DE2_70_SOPC_clock_1_out_readdata                                   (DE2_70_SOPC_clock_1_out_readdata),
      .DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1                       (DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_reset_n                                    (DE2_70_SOPC_clock_1_out_reset_n),
      .DE2_70_SOPC_clock_1_out_waitrequest                                (DE2_70_SOPC_clock_1_out_waitrequest),
      .DE2_70_SOPC_clock_1_out_write                                      (DE2_70_SOPC_clock_1_out_write),
      .DE2_70_SOPC_clock_1_out_writedata                                  (DE2_70_SOPC_clock_1_out_writedata),
      .clk                                                                (pll_c1_memory),
      .d1_sdram_u1_s1_end_xfer                                            (d1_sdram_u1_s1_end_xfer),
      .reset_n                                                            (pll_c1_memory_reset_n),
      .sdram_u1_s1_readdata_from_sa                                       (sdram_u1_s1_readdata_from_sa),
      .sdram_u1_s1_waitrequest_from_sa                                    (sdram_u1_s1_waitrequest_from_sa)
    );

  DE2_70_SOPC_clock_1 the_DE2_70_SOPC_clock_1
    (
      .master_address       (DE2_70_SOPC_clock_1_out_address),
      .master_byteenable    (DE2_70_SOPC_clock_1_out_byteenable),
      .master_clk           (pll_c1_memory),
      .master_endofpacket   (DE2_70_SOPC_clock_1_out_endofpacket),
      .master_nativeaddress (DE2_70_SOPC_clock_1_out_nativeaddress),
      .master_read          (DE2_70_SOPC_clock_1_out_read),
      .master_readdata      (DE2_70_SOPC_clock_1_out_readdata),
      .master_reset_n       (DE2_70_SOPC_clock_1_out_reset_n),
      .master_waitrequest   (DE2_70_SOPC_clock_1_out_waitrequest),
      .master_write         (DE2_70_SOPC_clock_1_out_write),
      .master_writedata     (DE2_70_SOPC_clock_1_out_writedata),
      .slave_address        (DE2_70_SOPC_clock_1_in_address),
      .slave_byteenable     (DE2_70_SOPC_clock_1_in_byteenable),
      .slave_clk            (pll_c0_system),
      .slave_endofpacket    (DE2_70_SOPC_clock_1_in_endofpacket),
      .slave_nativeaddress  (DE2_70_SOPC_clock_1_in_nativeaddress),
      .slave_read           (DE2_70_SOPC_clock_1_in_read),
      .slave_readdata       (DE2_70_SOPC_clock_1_in_readdata),
      .slave_reset_n        (DE2_70_SOPC_clock_1_in_reset_n),
      .slave_waitrequest    (DE2_70_SOPC_clock_1_in_waitrequest),
      .slave_write          (DE2_70_SOPC_clock_1_in_write),
      .slave_writedata      (DE2_70_SOPC_clock_1_in_writedata)
    );

  DE2_70_SOPC_clock_2_in_arbitrator the_DE2_70_SOPC_clock_2_in
    (
      .DE2_70_SOPC_clock_2_in_address                           (DE2_70_SOPC_clock_2_in_address),
      .DE2_70_SOPC_clock_2_in_byteenable                        (DE2_70_SOPC_clock_2_in_byteenable),
      .DE2_70_SOPC_clock_2_in_endofpacket                       (DE2_70_SOPC_clock_2_in_endofpacket),
      .DE2_70_SOPC_clock_2_in_endofpacket_from_sa               (DE2_70_SOPC_clock_2_in_endofpacket_from_sa),
      .DE2_70_SOPC_clock_2_in_nativeaddress                     (DE2_70_SOPC_clock_2_in_nativeaddress),
      .DE2_70_SOPC_clock_2_in_read                              (DE2_70_SOPC_clock_2_in_read),
      .DE2_70_SOPC_clock_2_in_readdata                          (DE2_70_SOPC_clock_2_in_readdata),
      .DE2_70_SOPC_clock_2_in_readdata_from_sa                  (DE2_70_SOPC_clock_2_in_readdata_from_sa),
      .DE2_70_SOPC_clock_2_in_reset_n                           (DE2_70_SOPC_clock_2_in_reset_n),
      .DE2_70_SOPC_clock_2_in_waitrequest                       (DE2_70_SOPC_clock_2_in_waitrequest),
      .DE2_70_SOPC_clock_2_in_waitrequest_from_sa               (DE2_70_SOPC_clock_2_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_2_in_write                             (DE2_70_SOPC_clock_2_in_write),
      .DE2_70_SOPC_clock_2_in_writedata                         (DE2_70_SOPC_clock_2_in_writedata),
      .clk                                                      (pll_c0_system),
      .cpu_data_master_address_to_slave                         (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                               (cpu_data_master_byteenable),
      .cpu_data_master_granted_DE2_70_SOPC_clock_2_in           (cpu_data_master_granted_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_latency_counter                          (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in (cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_read                                     (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in   (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_requests_DE2_70_SOPC_clock_2_in          (cpu_data_master_requests_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_write                                    (cpu_data_master_write),
      .cpu_data_master_writedata                                (cpu_data_master_writedata),
      .d1_DE2_70_SOPC_clock_2_in_end_xfer                       (d1_DE2_70_SOPC_clock_2_in_end_xfer),
      .reset_n                                                  (pll_c0_system_reset_n)
    );

  DE2_70_SOPC_clock_2_out_arbitrator the_DE2_70_SOPC_clock_2_out
    (
      .DE2_70_SOPC_clock_2_out_address                  (DE2_70_SOPC_clock_2_out_address),
      .DE2_70_SOPC_clock_2_out_address_to_slave         (DE2_70_SOPC_clock_2_out_address_to_slave),
      .DE2_70_SOPC_clock_2_out_byteenable               (DE2_70_SOPC_clock_2_out_byteenable),
      .DE2_70_SOPC_clock_2_out_granted_pll_s1           (DE2_70_SOPC_clock_2_out_granted_pll_s1),
      .DE2_70_SOPC_clock_2_out_qualified_request_pll_s1 (DE2_70_SOPC_clock_2_out_qualified_request_pll_s1),
      .DE2_70_SOPC_clock_2_out_read                     (DE2_70_SOPC_clock_2_out_read),
      .DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1   (DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1),
      .DE2_70_SOPC_clock_2_out_readdata                 (DE2_70_SOPC_clock_2_out_readdata),
      .DE2_70_SOPC_clock_2_out_requests_pll_s1          (DE2_70_SOPC_clock_2_out_requests_pll_s1),
      .DE2_70_SOPC_clock_2_out_reset_n                  (DE2_70_SOPC_clock_2_out_reset_n),
      .DE2_70_SOPC_clock_2_out_waitrequest              (DE2_70_SOPC_clock_2_out_waitrequest),
      .DE2_70_SOPC_clock_2_out_write                    (DE2_70_SOPC_clock_2_out_write),
      .DE2_70_SOPC_clock_2_out_writedata                (DE2_70_SOPC_clock_2_out_writedata),
      .clk                                              (clk_50),
      .d1_pll_s1_end_xfer                               (d1_pll_s1_end_xfer),
      .pll_s1_readdata_from_sa                          (pll_s1_readdata_from_sa),
      .reset_n                                          (clk_50_reset_n)
    );

  DE2_70_SOPC_clock_2 the_DE2_70_SOPC_clock_2
    (
      .master_address       (DE2_70_SOPC_clock_2_out_address),
      .master_byteenable    (DE2_70_SOPC_clock_2_out_byteenable),
      .master_clk           (clk_50),
      .master_endofpacket   (DE2_70_SOPC_clock_2_out_endofpacket),
      .master_nativeaddress (DE2_70_SOPC_clock_2_out_nativeaddress),
      .master_read          (DE2_70_SOPC_clock_2_out_read),
      .master_readdata      (DE2_70_SOPC_clock_2_out_readdata),
      .master_reset_n       (DE2_70_SOPC_clock_2_out_reset_n),
      .master_waitrequest   (DE2_70_SOPC_clock_2_out_waitrequest),
      .master_write         (DE2_70_SOPC_clock_2_out_write),
      .master_writedata     (DE2_70_SOPC_clock_2_out_writedata),
      .slave_address        (DE2_70_SOPC_clock_2_in_address),
      .slave_byteenable     (DE2_70_SOPC_clock_2_in_byteenable),
      .slave_clk            (pll_c0_system),
      .slave_endofpacket    (DE2_70_SOPC_clock_2_in_endofpacket),
      .slave_nativeaddress  (DE2_70_SOPC_clock_2_in_nativeaddress),
      .slave_read           (DE2_70_SOPC_clock_2_in_read),
      .slave_readdata       (DE2_70_SOPC_clock_2_in_readdata),
      .slave_reset_n        (DE2_70_SOPC_clock_2_in_reset_n),
      .slave_waitrequest    (DE2_70_SOPC_clock_2_in_waitrequest),
      .slave_write          (DE2_70_SOPC_clock_2_in_write),
      .slave_writedata      (DE2_70_SOPC_clock_2_in_writedata)
    );

  DE2_70_SOPC_clock_3_in_arbitrator the_DE2_70_SOPC_clock_3_in
    (
      .DE2_70_SOPC_clock_3_in_address                           (DE2_70_SOPC_clock_3_in_address),
      .DE2_70_SOPC_clock_3_in_byteenable                        (DE2_70_SOPC_clock_3_in_byteenable),
      .DE2_70_SOPC_clock_3_in_endofpacket                       (DE2_70_SOPC_clock_3_in_endofpacket),
      .DE2_70_SOPC_clock_3_in_endofpacket_from_sa               (DE2_70_SOPC_clock_3_in_endofpacket_from_sa),
      .DE2_70_SOPC_clock_3_in_nativeaddress                     (DE2_70_SOPC_clock_3_in_nativeaddress),
      .DE2_70_SOPC_clock_3_in_read                              (DE2_70_SOPC_clock_3_in_read),
      .DE2_70_SOPC_clock_3_in_readdata                          (DE2_70_SOPC_clock_3_in_readdata),
      .DE2_70_SOPC_clock_3_in_readdata_from_sa                  (DE2_70_SOPC_clock_3_in_readdata_from_sa),
      .DE2_70_SOPC_clock_3_in_reset_n                           (DE2_70_SOPC_clock_3_in_reset_n),
      .DE2_70_SOPC_clock_3_in_waitrequest                       (DE2_70_SOPC_clock_3_in_waitrequest),
      .DE2_70_SOPC_clock_3_in_waitrequest_from_sa               (DE2_70_SOPC_clock_3_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_3_in_write                             (DE2_70_SOPC_clock_3_in_write),
      .DE2_70_SOPC_clock_3_in_writedata                         (DE2_70_SOPC_clock_3_in_writedata),
      .clk                                                      (pll_c0_system),
      .cpu_data_master_address_to_slave                         (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                               (cpu_data_master_byteenable),
      .cpu_data_master_granted_DE2_70_SOPC_clock_3_in           (cpu_data_master_granted_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_latency_counter                          (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in (cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_read                                     (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in   (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_requests_DE2_70_SOPC_clock_3_in          (cpu_data_master_requests_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_write                                    (cpu_data_master_write),
      .cpu_data_master_writedata                                (cpu_data_master_writedata),
      .d1_DE2_70_SOPC_clock_3_in_end_xfer                       (d1_DE2_70_SOPC_clock_3_in_end_xfer),
      .reset_n                                                  (pll_c0_system_reset_n)
    );

  DE2_70_SOPC_clock_3_out_arbitrator the_DE2_70_SOPC_clock_3_out
    (
      .DE2_70_SOPC_clock_3_out_address                      (DE2_70_SOPC_clock_3_out_address),
      .DE2_70_SOPC_clock_3_out_address_to_slave             (DE2_70_SOPC_clock_3_out_address_to_slave),
      .DE2_70_SOPC_clock_3_out_byteenable                   (DE2_70_SOPC_clock_3_out_byteenable),
      .DE2_70_SOPC_clock_3_out_granted_DM9000A_s1           (DE2_70_SOPC_clock_3_out_granted_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1 (DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_read                         (DE2_70_SOPC_clock_3_out_read),
      .DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1   (DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_readdata                     (DE2_70_SOPC_clock_3_out_readdata),
      .DE2_70_SOPC_clock_3_out_requests_DM9000A_s1          (DE2_70_SOPC_clock_3_out_requests_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_reset_n                      (DE2_70_SOPC_clock_3_out_reset_n),
      .DE2_70_SOPC_clock_3_out_waitrequest                  (DE2_70_SOPC_clock_3_out_waitrequest),
      .DE2_70_SOPC_clock_3_out_write                        (DE2_70_SOPC_clock_3_out_write),
      .DE2_70_SOPC_clock_3_out_writedata                    (DE2_70_SOPC_clock_3_out_writedata),
      .DM9000A_s1_readdata_from_sa                          (DM9000A_s1_readdata_from_sa),
      .DM9000A_s1_wait_counter_eq_0                         (DM9000A_s1_wait_counter_eq_0),
      .clk                                                  (clk_25),
      .d1_DM9000A_s1_end_xfer                               (d1_DM9000A_s1_end_xfer),
      .reset_n                                              (clk_25_reset_n)
    );

  DE2_70_SOPC_clock_3 the_DE2_70_SOPC_clock_3
    (
      .master_address       (DE2_70_SOPC_clock_3_out_address),
      .master_byteenable    (DE2_70_SOPC_clock_3_out_byteenable),
      .master_clk           (clk_25),
      .master_endofpacket   (DE2_70_SOPC_clock_3_out_endofpacket),
      .master_nativeaddress (DE2_70_SOPC_clock_3_out_nativeaddress),
      .master_read          (DE2_70_SOPC_clock_3_out_read),
      .master_readdata      (DE2_70_SOPC_clock_3_out_readdata),
      .master_reset_n       (DE2_70_SOPC_clock_3_out_reset_n),
      .master_waitrequest   (DE2_70_SOPC_clock_3_out_waitrequest),
      .master_write         (DE2_70_SOPC_clock_3_out_write),
      .master_writedata     (DE2_70_SOPC_clock_3_out_writedata),
      .slave_address        (DE2_70_SOPC_clock_3_in_address),
      .slave_byteenable     (DE2_70_SOPC_clock_3_in_byteenable),
      .slave_clk            (pll_c0_system),
      .slave_endofpacket    (DE2_70_SOPC_clock_3_in_endofpacket),
      .slave_nativeaddress  (DE2_70_SOPC_clock_3_in_nativeaddress),
      .slave_read           (DE2_70_SOPC_clock_3_in_read),
      .slave_readdata       (DE2_70_SOPC_clock_3_in_readdata),
      .slave_reset_n        (DE2_70_SOPC_clock_3_in_reset_n),
      .slave_waitrequest    (DE2_70_SOPC_clock_3_in_waitrequest),
      .slave_write          (DE2_70_SOPC_clock_3_in_write),
      .slave_writedata      (DE2_70_SOPC_clock_3_in_writedata)
    );

  DM9000A_s1_arbitrator the_DM9000A_s1
    (
      .DE2_70_SOPC_clock_3_out_address_to_slave             (DE2_70_SOPC_clock_3_out_address_to_slave),
      .DE2_70_SOPC_clock_3_out_granted_DM9000A_s1           (DE2_70_SOPC_clock_3_out_granted_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_nativeaddress                (DE2_70_SOPC_clock_3_out_nativeaddress),
      .DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1 (DE2_70_SOPC_clock_3_out_qualified_request_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_read                         (DE2_70_SOPC_clock_3_out_read),
      .DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1   (DE2_70_SOPC_clock_3_out_read_data_valid_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_requests_DM9000A_s1          (DE2_70_SOPC_clock_3_out_requests_DM9000A_s1),
      .DE2_70_SOPC_clock_3_out_write                        (DE2_70_SOPC_clock_3_out_write),
      .DE2_70_SOPC_clock_3_out_writedata                    (DE2_70_SOPC_clock_3_out_writedata),
      .DM9000A_s1_address                                   (DM9000A_s1_address),
      .DM9000A_s1_chipselect_n                              (DM9000A_s1_chipselect_n),
      .DM9000A_s1_irq                                       (DM9000A_s1_irq),
      .DM9000A_s1_irq_from_sa                               (DM9000A_s1_irq_from_sa),
      .DM9000A_s1_read_n                                    (DM9000A_s1_read_n),
      .DM9000A_s1_readdata                                  (DM9000A_s1_readdata),
      .DM9000A_s1_readdata_from_sa                          (DM9000A_s1_readdata_from_sa),
      .DM9000A_s1_reset_n                                   (DM9000A_s1_reset_n),
      .DM9000A_s1_wait_counter_eq_0                         (DM9000A_s1_wait_counter_eq_0),
      .DM9000A_s1_write_n                                   (DM9000A_s1_write_n),
      .DM9000A_s1_writedata                                 (DM9000A_s1_writedata),
      .clk                                                  (clk_25),
      .d1_DM9000A_s1_end_xfer                               (d1_DM9000A_s1_end_xfer),
      .reset_n                                              (clk_25_reset_n)
    );

  DM9000A the_DM9000A
    (
      .avs_s1_address_iCMD       (DM9000A_s1_address),
      .avs_s1_chipselect_n_iCS_N (DM9000A_s1_chipselect_n),
      .avs_s1_clk_iCLK           (clk_25),
      .avs_s1_export_ENET_CLK    (avs_s1_export_ENET_CLK_from_the_DM9000A),
      .avs_s1_export_ENET_CMD    (avs_s1_export_ENET_CMD_from_the_DM9000A),
      .avs_s1_export_ENET_CS_N   (avs_s1_export_ENET_CS_N_from_the_DM9000A),
      .avs_s1_export_ENET_DATA   (avs_s1_export_ENET_DATA_to_and_from_the_DM9000A),
      .avs_s1_export_ENET_INT    (avs_s1_export_ENET_INT_to_the_DM9000A),
      .avs_s1_export_ENET_RD_N   (avs_s1_export_ENET_RD_N_from_the_DM9000A),
      .avs_s1_export_ENET_RST_N  (avs_s1_export_ENET_RST_N_from_the_DM9000A),
      .avs_s1_export_ENET_WR_N   (avs_s1_export_ENET_WR_N_from_the_DM9000A),
      .avs_s1_irq_oINT           (DM9000A_s1_irq),
      .avs_s1_read_n_iRD_N       (DM9000A_s1_read_n),
      .avs_s1_readdata_oDATA     (DM9000A_s1_readdata),
      .avs_s1_reset_n_iRST_N     (DM9000A_s1_reset_n),
      .avs_s1_write_n_iWR_N      (DM9000A_s1_write_n),
      .avs_s1_writedata_iDATA    (DM9000A_s1_writedata)
    );

  cpu_jtag_debug_module_arbitrator the_cpu_jtag_debug_module
    (
      .clk                                                            (pll_c0_system),
      .cpu_data_master_address_to_slave                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                     (cpu_data_master_byteenable),
      .cpu_data_master_debugaccess                                    (cpu_data_master_debugaccess),
      .cpu_data_master_granted_cpu_jtag_debug_module                  (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_latency_counter                                (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module        (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_read                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module          (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_requests_cpu_jtag_debug_module                 (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_write                                          (cpu_data_master_write),
      .cpu_data_master_writedata                                      (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_jtag_debug_module_address                                  (cpu_jtag_debug_module_address),
      .cpu_jtag_debug_module_begintransfer                            (cpu_jtag_debug_module_begintransfer),
      .cpu_jtag_debug_module_byteenable                               (cpu_jtag_debug_module_byteenable),
      .cpu_jtag_debug_module_chipselect                               (cpu_jtag_debug_module_chipselect),
      .cpu_jtag_debug_module_debugaccess                              (cpu_jtag_debug_module_debugaccess),
      .cpu_jtag_debug_module_readdata                                 (cpu_jtag_debug_module_readdata),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .cpu_jtag_debug_module_reset_n                                  (cpu_jtag_debug_module_reset_n),
      .cpu_jtag_debug_module_resetrequest                             (cpu_jtag_debug_module_resetrequest),
      .cpu_jtag_debug_module_resetrequest_from_sa                     (cpu_jtag_debug_module_resetrequest_from_sa),
      .cpu_jtag_debug_module_write                                    (cpu_jtag_debug_module_write),
      .cpu_jtag_debug_module_writedata                                (cpu_jtag_debug_module_writedata),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .reset_n                                                        (pll_c0_system_reset_n)
    );

  cpu_data_master_arbitrator the_cpu_data_master
    (
      .DE2_70_SOPC_clock_1_in_readdata_from_sa                                   (DE2_70_SOPC_clock_1_in_readdata_from_sa),
      .DE2_70_SOPC_clock_1_in_waitrequest_from_sa                                (DE2_70_SOPC_clock_1_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_2_in_readdata_from_sa                                   (DE2_70_SOPC_clock_2_in_readdata_from_sa),
      .DE2_70_SOPC_clock_2_in_waitrequest_from_sa                                (DE2_70_SOPC_clock_2_in_waitrequest_from_sa),
      .DE2_70_SOPC_clock_3_in_readdata_from_sa                                   (DE2_70_SOPC_clock_3_in_readdata_from_sa),
      .DE2_70_SOPC_clock_3_in_waitrequest_from_sa                                (DE2_70_SOPC_clock_3_in_waitrequest_from_sa),
      .DM9000A_s1_irq_from_sa                                                    (DM9000A_s1_irq_from_sa),
      .cfi_flash_s1_wait_counter_eq_0                                            (cfi_flash_s1_wait_counter_eq_0),
      .clk                                                                       (pll_c0_system),
      .cpu_data_master_address                                                   (cpu_data_master_address),
      .cpu_data_master_address_to_slave                                          (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                (cpu_data_master_byteenable),
      .cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in                         (cpu_data_master_byteenable_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_byteenable_cfi_flash_s1                                   (cpu_data_master_byteenable_cfi_flash_s1),
      .cpu_data_master_dbs_address                                               (cpu_data_master_dbs_address),
      .cpu_data_master_dbs_write_16                                              (cpu_data_master_dbs_write_16),
      .cpu_data_master_granted_DE2_70_SOPC_clock_1_in                            (cpu_data_master_granted_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_granted_DE2_70_SOPC_clock_2_in                            (cpu_data_master_granted_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_granted_DE2_70_SOPC_clock_3_in                            (cpu_data_master_granted_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_granted_cfi_flash_s1                                      (cpu_data_master_granted_cfi_flash_s1),
      .cpu_data_master_granted_cpu_jtag_debug_module                             (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_granted_epcs_flash_controller_epcs_control_port           (cpu_data_master_granted_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_granted_sysid_control_slave                               (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_granted_timer_s1                                          (cpu_data_master_granted_timer_s1),
      .cpu_data_master_granted_timer_stamp_s1                                    (cpu_data_master_granted_timer_stamp_s1),
      .cpu_data_master_granted_uart_s1                                           (cpu_data_master_granted_uart_s1),
      .cpu_data_master_irq                                                       (cpu_data_master_irq),
      .cpu_data_master_latency_counter                                           (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in                  (cpu_data_master_qualified_request_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in                  (cpu_data_master_qualified_request_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in                  (cpu_data_master_qualified_request_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_qualified_request_cfi_flash_s1                            (cpu_data_master_qualified_request_cfi_flash_s1),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module                   (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port (cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_qualified_request_sysid_control_slave                     (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_qualified_request_timer_s1                                (cpu_data_master_qualified_request_timer_s1),
      .cpu_data_master_qualified_request_timer_stamp_s1                          (cpu_data_master_qualified_request_timer_stamp_s1),
      .cpu_data_master_qualified_request_uart_s1                                 (cpu_data_master_qualified_request_uart_s1),
      .cpu_data_master_read                                                      (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in                    (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in                    (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in                    (cpu_data_master_read_data_valid_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_read_data_valid_cfi_flash_s1                              (cpu_data_master_read_data_valid_cfi_flash_s1),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module                     (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port   (cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_read_data_valid_sysid_control_slave                       (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_read_data_valid_timer_s1                                  (cpu_data_master_read_data_valid_timer_s1),
      .cpu_data_master_read_data_valid_timer_stamp_s1                            (cpu_data_master_read_data_valid_timer_stamp_s1),
      .cpu_data_master_read_data_valid_uart_s1                                   (cpu_data_master_read_data_valid_uart_s1),
      .cpu_data_master_readdata                                                  (cpu_data_master_readdata),
      .cpu_data_master_readdatavalid                                             (cpu_data_master_readdatavalid),
      .cpu_data_master_requests_DE2_70_SOPC_clock_1_in                           (cpu_data_master_requests_DE2_70_SOPC_clock_1_in),
      .cpu_data_master_requests_DE2_70_SOPC_clock_2_in                           (cpu_data_master_requests_DE2_70_SOPC_clock_2_in),
      .cpu_data_master_requests_DE2_70_SOPC_clock_3_in                           (cpu_data_master_requests_DE2_70_SOPC_clock_3_in),
      .cpu_data_master_requests_cfi_flash_s1                                     (cpu_data_master_requests_cfi_flash_s1),
      .cpu_data_master_requests_cpu_jtag_debug_module                            (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_requests_epcs_flash_controller_epcs_control_port          (cpu_data_master_requests_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_requests_sysid_control_slave                              (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_requests_timer_s1                                         (cpu_data_master_requests_timer_s1),
      .cpu_data_master_requests_timer_stamp_s1                                   (cpu_data_master_requests_timer_stamp_s1),
      .cpu_data_master_requests_uart_s1                                          (cpu_data_master_requests_uart_s1),
      .cpu_data_master_waitrequest                                               (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                     (cpu_data_master_write),
      .cpu_data_master_writedata                                                 (cpu_data_master_writedata),
      .cpu_jtag_debug_module_readdata_from_sa                                    (cpu_jtag_debug_module_readdata_from_sa),
      .d1_DE2_70_SOPC_clock_1_in_end_xfer                                        (d1_DE2_70_SOPC_clock_1_in_end_xfer),
      .d1_DE2_70_SOPC_clock_2_in_end_xfer                                        (d1_DE2_70_SOPC_clock_2_in_end_xfer),
      .d1_DE2_70_SOPC_clock_3_in_end_xfer                                        (d1_DE2_70_SOPC_clock_3_in_end_xfer),
      .d1_cpu_jtag_debug_module_end_xfer                                         (d1_cpu_jtag_debug_module_end_xfer),
      .d1_epcs_flash_controller_epcs_control_port_end_xfer                       (d1_epcs_flash_controller_epcs_control_port_end_xfer),
      .d1_sysid_control_slave_end_xfer                                           (d1_sysid_control_slave_end_xfer),
      .d1_timer_s1_end_xfer                                                      (d1_timer_s1_end_xfer),
      .d1_timer_stamp_s1_end_xfer                                                (d1_timer_stamp_s1_end_xfer),
      .d1_tristate_bridge_flash_avalon_slave_end_xfer                            (d1_tristate_bridge_flash_avalon_slave_end_xfer),
      .d1_uart_s1_end_xfer                                                       (d1_uart_s1_end_xfer),
      .epcs_flash_controller_epcs_control_port_irq_from_sa                       (epcs_flash_controller_epcs_control_port_irq_from_sa),
      .epcs_flash_controller_epcs_control_port_readdata_from_sa                  (epcs_flash_controller_epcs_control_port_readdata_from_sa),
      .incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0            (incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0),
      .pll_c0_system                                                             (pll_c0_system),
      .pll_c0_system_reset_n                                                     (pll_c0_system_reset_n),
      .reset_n                                                                   (pll_c0_system_reset_n),
      .sysid_control_slave_readdata_from_sa                                      (sysid_control_slave_readdata_from_sa),
      .timer_s1_irq_from_sa                                                      (timer_s1_irq_from_sa),
      .timer_s1_readdata_from_sa                                                 (timer_s1_readdata_from_sa),
      .timer_stamp_s1_irq_from_sa                                                (timer_stamp_s1_irq_from_sa),
      .timer_stamp_s1_readdata_from_sa                                           (timer_stamp_s1_readdata_from_sa),
      .uart_s1_irq_from_sa                                                       (uart_s1_irq_from_sa),
      .uart_s1_readdata_from_sa                                                  (uart_s1_readdata_from_sa)
    );

  cpu_instruction_master_arbitrator the_cpu_instruction_master
    (
      .DE2_70_SOPC_clock_0_in_readdata_from_sa                                          (DE2_70_SOPC_clock_0_in_readdata_from_sa),
      .DE2_70_SOPC_clock_0_in_waitrequest_from_sa                                       (DE2_70_SOPC_clock_0_in_waitrequest_from_sa),
      .cfi_flash_s1_wait_counter_eq_0                                                   (cfi_flash_s1_wait_counter_eq_0),
      .clk                                                                              (pll_c0_system),
      .cpu_instruction_master_address                                                   (cpu_instruction_master_address),
      .cpu_instruction_master_address_to_slave                                          (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_dbs_address                                               (cpu_instruction_master_dbs_address),
      .cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in                            (cpu_instruction_master_granted_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_granted_cfi_flash_s1                                      (cpu_instruction_master_granted_cfi_flash_s1),
      .cpu_instruction_master_granted_cpu_jtag_debug_module                             (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port           (cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_latency_counter                                           (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in                  (cpu_instruction_master_qualified_request_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_qualified_request_cfi_flash_s1                            (cpu_instruction_master_qualified_request_cfi_flash_s1),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module                   (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port (cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_read                                                      (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in                    (cpu_instruction_master_read_data_valid_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_read_data_valid_cfi_flash_s1                              (cpu_instruction_master_read_data_valid_cfi_flash_s1),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module                     (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port   (cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_readdata                                                  (cpu_instruction_master_readdata),
      .cpu_instruction_master_readdatavalid                                             (cpu_instruction_master_readdatavalid),
      .cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in                           (cpu_instruction_master_requests_DE2_70_SOPC_clock_0_in),
      .cpu_instruction_master_requests_cfi_flash_s1                                     (cpu_instruction_master_requests_cfi_flash_s1),
      .cpu_instruction_master_requests_cpu_jtag_debug_module                            (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port          (cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_waitrequest                                               (cpu_instruction_master_waitrequest),
      .cpu_jtag_debug_module_readdata_from_sa                                           (cpu_jtag_debug_module_readdata_from_sa),
      .d1_DE2_70_SOPC_clock_0_in_end_xfer                                               (d1_DE2_70_SOPC_clock_0_in_end_xfer),
      .d1_cpu_jtag_debug_module_end_xfer                                                (d1_cpu_jtag_debug_module_end_xfer),
      .d1_epcs_flash_controller_epcs_control_port_end_xfer                              (d1_epcs_flash_controller_epcs_control_port_end_xfer),
      .d1_tristate_bridge_flash_avalon_slave_end_xfer                                   (d1_tristate_bridge_flash_avalon_slave_end_xfer),
      .epcs_flash_controller_epcs_control_port_readdata_from_sa                         (epcs_flash_controller_epcs_control_port_readdata_from_sa),
      .incoming_data_to_and_from_the_cfi_flash                                          (incoming_data_to_and_from_the_cfi_flash),
      .reset_n                                                                          (pll_c0_system_reset_n)
    );

  cpu the_cpu
    (
      .clk                                   (pll_c0_system),
      .d_address                             (cpu_data_master_address),
      .d_byteenable                          (cpu_data_master_byteenable),
      .d_irq                                 (cpu_data_master_irq),
      .d_read                                (cpu_data_master_read),
      .d_readdata                            (cpu_data_master_readdata),
      .d_readdatavalid                       (cpu_data_master_readdatavalid),
      .d_waitrequest                         (cpu_data_master_waitrequest),
      .d_write                               (cpu_data_master_write),
      .d_writedata                           (cpu_data_master_writedata),
      .i_address                             (cpu_instruction_master_address),
      .i_read                                (cpu_instruction_master_read),
      .i_readdata                            (cpu_instruction_master_readdata),
      .i_readdatavalid                       (cpu_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (cpu_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (cpu_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_jtag_debug_module_writedata),
      .reset_n                               (cpu_jtag_debug_module_reset_n)
    );

  epcs_flash_controller_epcs_control_port_arbitrator the_epcs_flash_controller_epcs_control_port
    (
      .clk                                                                              (pll_c0_system),
      .cpu_data_master_address_to_slave                                                 (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_epcs_flash_controller_epcs_control_port                  (cpu_data_master_granted_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_latency_counter                                                  (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port        (cpu_data_master_qualified_request_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_read                                                             (cpu_data_master_read),
      .cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port          (cpu_data_master_read_data_valid_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_requests_epcs_flash_controller_epcs_control_port                 (cpu_data_master_requests_epcs_flash_controller_epcs_control_port),
      .cpu_data_master_write                                                            (cpu_data_master_write),
      .cpu_data_master_writedata                                                        (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                                          (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port           (cpu_instruction_master_granted_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_latency_counter                                           (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port (cpu_instruction_master_qualified_request_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_read                                                      (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port   (cpu_instruction_master_read_data_valid_epcs_flash_controller_epcs_control_port),
      .cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port          (cpu_instruction_master_requests_epcs_flash_controller_epcs_control_port),
      .d1_epcs_flash_controller_epcs_control_port_end_xfer                              (d1_epcs_flash_controller_epcs_control_port_end_xfer),
      .epcs_flash_controller_epcs_control_port_address                                  (epcs_flash_controller_epcs_control_port_address),
      .epcs_flash_controller_epcs_control_port_chipselect                               (epcs_flash_controller_epcs_control_port_chipselect),
      .epcs_flash_controller_epcs_control_port_dataavailable                            (epcs_flash_controller_epcs_control_port_dataavailable),
      .epcs_flash_controller_epcs_control_port_dataavailable_from_sa                    (epcs_flash_controller_epcs_control_port_dataavailable_from_sa),
      .epcs_flash_controller_epcs_control_port_endofpacket                              (epcs_flash_controller_epcs_control_port_endofpacket),
      .epcs_flash_controller_epcs_control_port_endofpacket_from_sa                      (epcs_flash_controller_epcs_control_port_endofpacket_from_sa),
      .epcs_flash_controller_epcs_control_port_irq                                      (epcs_flash_controller_epcs_control_port_irq),
      .epcs_flash_controller_epcs_control_port_irq_from_sa                              (epcs_flash_controller_epcs_control_port_irq_from_sa),
      .epcs_flash_controller_epcs_control_port_read_n                                   (epcs_flash_controller_epcs_control_port_read_n),
      .epcs_flash_controller_epcs_control_port_readdata                                 (epcs_flash_controller_epcs_control_port_readdata),
      .epcs_flash_controller_epcs_control_port_readdata_from_sa                         (epcs_flash_controller_epcs_control_port_readdata_from_sa),
      .epcs_flash_controller_epcs_control_port_readyfordata                             (epcs_flash_controller_epcs_control_port_readyfordata),
      .epcs_flash_controller_epcs_control_port_readyfordata_from_sa                     (epcs_flash_controller_epcs_control_port_readyfordata_from_sa),
      .epcs_flash_controller_epcs_control_port_reset_n                                  (epcs_flash_controller_epcs_control_port_reset_n),
      .epcs_flash_controller_epcs_control_port_write_n                                  (epcs_flash_controller_epcs_control_port_write_n),
      .epcs_flash_controller_epcs_control_port_writedata                                (epcs_flash_controller_epcs_control_port_writedata),
      .reset_n                                                                          (pll_c0_system_reset_n)
    );

  epcs_flash_controller the_epcs_flash_controller
    (
      .address       (epcs_flash_controller_epcs_control_port_address),
      .chipselect    (epcs_flash_controller_epcs_control_port_chipselect),
      .clk           (pll_c0_system),
      .dataavailable (epcs_flash_controller_epcs_control_port_dataavailable),
      .endofpacket   (epcs_flash_controller_epcs_control_port_endofpacket),
      .irq           (epcs_flash_controller_epcs_control_port_irq),
      .read_n        (epcs_flash_controller_epcs_control_port_read_n),
      .readdata      (epcs_flash_controller_epcs_control_port_readdata),
      .readyfordata  (epcs_flash_controller_epcs_control_port_readyfordata),
      .reset_n       (epcs_flash_controller_epcs_control_port_reset_n),
      .write_n       (epcs_flash_controller_epcs_control_port_write_n),
      .writedata     (epcs_flash_controller_epcs_control_port_writedata)
    );

  pll_s1_arbitrator the_pll_s1
    (
      .DE2_70_SOPC_clock_2_out_address_to_slave         (DE2_70_SOPC_clock_2_out_address_to_slave),
      .DE2_70_SOPC_clock_2_out_granted_pll_s1           (DE2_70_SOPC_clock_2_out_granted_pll_s1),
      .DE2_70_SOPC_clock_2_out_nativeaddress            (DE2_70_SOPC_clock_2_out_nativeaddress),
      .DE2_70_SOPC_clock_2_out_qualified_request_pll_s1 (DE2_70_SOPC_clock_2_out_qualified_request_pll_s1),
      .DE2_70_SOPC_clock_2_out_read                     (DE2_70_SOPC_clock_2_out_read),
      .DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1   (DE2_70_SOPC_clock_2_out_read_data_valid_pll_s1),
      .DE2_70_SOPC_clock_2_out_requests_pll_s1          (DE2_70_SOPC_clock_2_out_requests_pll_s1),
      .DE2_70_SOPC_clock_2_out_write                    (DE2_70_SOPC_clock_2_out_write),
      .DE2_70_SOPC_clock_2_out_writedata                (DE2_70_SOPC_clock_2_out_writedata),
      .clk                                              (clk_50),
      .d1_pll_s1_end_xfer                               (d1_pll_s1_end_xfer),
      .pll_s1_address                                   (pll_s1_address),
      .pll_s1_chipselect                                (pll_s1_chipselect),
      .pll_s1_read                                      (pll_s1_read),
      .pll_s1_readdata                                  (pll_s1_readdata),
      .pll_s1_readdata_from_sa                          (pll_s1_readdata_from_sa),
      .pll_s1_reset_n                                   (pll_s1_reset_n),
      .pll_s1_resetrequest                              (pll_s1_resetrequest),
      .pll_s1_resetrequest_from_sa                      (pll_s1_resetrequest_from_sa),
      .pll_s1_write                                     (pll_s1_write),
      .pll_s1_writedata                                 (pll_s1_writedata),
      .reset_n                                          (clk_50_reset_n)
    );

  //pll_c0_system out_clk assignment, which is an e_assign
  assign pll_c0_system = out_clk_pll_c0;

  //pll_c1_memory out_clk assignment, which is an e_assign
  assign pll_c1_memory = out_clk_pll_c1;

  pll the_pll
    (
      .address      (pll_s1_address),
      .c0           (out_clk_pll_c0),
      .c1           (out_clk_pll_c1),
      .chipselect   (pll_s1_chipselect),
      .clk          (clk_50),
      .read         (pll_s1_read),
      .readdata     (pll_s1_readdata),
      .reset_n      (pll_s1_reset_n),
      .resetrequest (pll_s1_resetrequest),
      .write        (pll_s1_write),
      .writedata    (pll_s1_writedata)
    );

  sdram_u1_s1_arbitrator the_sdram_u1_s1
    (
      .DE2_70_SOPC_clock_0_out_address_to_slave                           (DE2_70_SOPC_clock_0_out_address_to_slave),
      .DE2_70_SOPC_clock_0_out_byteenable                                 (DE2_70_SOPC_clock_0_out_byteenable),
      .DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1                        (DE2_70_SOPC_clock_0_out_granted_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1              (DE2_70_SOPC_clock_0_out_qualified_request_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_read                                       (DE2_70_SOPC_clock_0_out_read),
      .DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1                (DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register (DE2_70_SOPC_clock_0_out_read_data_valid_sdram_u1_s1_shift_register),
      .DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1                       (DE2_70_SOPC_clock_0_out_requests_sdram_u1_s1),
      .DE2_70_SOPC_clock_0_out_write                                      (DE2_70_SOPC_clock_0_out_write),
      .DE2_70_SOPC_clock_0_out_writedata                                  (DE2_70_SOPC_clock_0_out_writedata),
      .DE2_70_SOPC_clock_1_out_address_to_slave                           (DE2_70_SOPC_clock_1_out_address_to_slave),
      .DE2_70_SOPC_clock_1_out_byteenable                                 (DE2_70_SOPC_clock_1_out_byteenable),
      .DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1                        (DE2_70_SOPC_clock_1_out_granted_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1              (DE2_70_SOPC_clock_1_out_qualified_request_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_read                                       (DE2_70_SOPC_clock_1_out_read),
      .DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1                (DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register (DE2_70_SOPC_clock_1_out_read_data_valid_sdram_u1_s1_shift_register),
      .DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1                       (DE2_70_SOPC_clock_1_out_requests_sdram_u1_s1),
      .DE2_70_SOPC_clock_1_out_write                                      (DE2_70_SOPC_clock_1_out_write),
      .DE2_70_SOPC_clock_1_out_writedata                                  (DE2_70_SOPC_clock_1_out_writedata),
      .clk                                                                (pll_c1_memory),
      .d1_sdram_u1_s1_end_xfer                                            (d1_sdram_u1_s1_end_xfer),
      .reset_n                                                            (pll_c1_memory_reset_n),
      .sdram_u1_s1_address                                                (sdram_u1_s1_address),
      .sdram_u1_s1_byteenable_n                                           (sdram_u1_s1_byteenable_n),
      .sdram_u1_s1_chipselect                                             (sdram_u1_s1_chipselect),
      .sdram_u1_s1_read_n                                                 (sdram_u1_s1_read_n),
      .sdram_u1_s1_readdata                                               (sdram_u1_s1_readdata),
      .sdram_u1_s1_readdata_from_sa                                       (sdram_u1_s1_readdata_from_sa),
      .sdram_u1_s1_readdatavalid                                          (sdram_u1_s1_readdatavalid),
      .sdram_u1_s1_reset_n                                                (sdram_u1_s1_reset_n),
      .sdram_u1_s1_waitrequest                                            (sdram_u1_s1_waitrequest),
      .sdram_u1_s1_waitrequest_from_sa                                    (sdram_u1_s1_waitrequest_from_sa),
      .sdram_u1_s1_write_n                                                (sdram_u1_s1_write_n),
      .sdram_u1_s1_writedata                                              (sdram_u1_s1_writedata)
    );

  sdram_u1 the_sdram_u1
    (
      .az_addr        (sdram_u1_s1_address),
      .az_be_n        (sdram_u1_s1_byteenable_n),
      .az_cs          (sdram_u1_s1_chipselect),
      .az_data        (sdram_u1_s1_writedata),
      .az_rd_n        (sdram_u1_s1_read_n),
      .az_wr_n        (sdram_u1_s1_write_n),
      .clk            (pll_c1_memory),
      .reset_n        (sdram_u1_s1_reset_n),
      .za_data        (sdram_u1_s1_readdata),
      .za_valid       (sdram_u1_s1_readdatavalid),
      .za_waitrequest (sdram_u1_s1_waitrequest),
      .zs_addr        (zs_addr_from_the_sdram_u1),
      .zs_ba          (zs_ba_from_the_sdram_u1),
      .zs_cas_n       (zs_cas_n_from_the_sdram_u1),
      .zs_cke         (zs_cke_from_the_sdram_u1),
      .zs_cs_n        (zs_cs_n_from_the_sdram_u1),
      .zs_dq          (zs_dq_to_and_from_the_sdram_u1),
      .zs_dqm         (zs_dqm_from_the_sdram_u1),
      .zs_ras_n       (zs_ras_n_from_the_sdram_u1),
      .zs_we_n        (zs_we_n_from_the_sdram_u1)
    );

  sysid_control_slave_arbitrator the_sysid_control_slave
    (
      .clk                                                   (pll_c0_system),
      .cpu_data_master_address_to_slave                      (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_sysid_control_slave           (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_latency_counter                       (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_sysid_control_slave (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_read                                  (cpu_data_master_read),
      .cpu_data_master_read_data_valid_sysid_control_slave   (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_requests_sysid_control_slave          (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_write                                 (cpu_data_master_write),
      .d1_sysid_control_slave_end_xfer                       (d1_sysid_control_slave_end_xfer),
      .reset_n                                               (pll_c0_system_reset_n),
      .sysid_control_slave_address                           (sysid_control_slave_address),
      .sysid_control_slave_readdata                          (sysid_control_slave_readdata),
      .sysid_control_slave_readdata_from_sa                  (sysid_control_slave_readdata_from_sa)
    );

  sysid the_sysid
    (
      .address  (sysid_control_slave_address),
      .readdata (sysid_control_slave_readdata)
    );

  timer_s1_arbitrator the_timer_s1
    (
      .clk                                        (pll_c0_system),
      .cpu_data_master_address_to_slave           (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_timer_s1           (cpu_data_master_granted_timer_s1),
      .cpu_data_master_latency_counter            (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_timer_s1 (cpu_data_master_qualified_request_timer_s1),
      .cpu_data_master_read                       (cpu_data_master_read),
      .cpu_data_master_read_data_valid_timer_s1   (cpu_data_master_read_data_valid_timer_s1),
      .cpu_data_master_requests_timer_s1          (cpu_data_master_requests_timer_s1),
      .cpu_data_master_write                      (cpu_data_master_write),
      .cpu_data_master_writedata                  (cpu_data_master_writedata),
      .d1_timer_s1_end_xfer                       (d1_timer_s1_end_xfer),
      .reset_n                                    (pll_c0_system_reset_n),
      .timer_s1_address                           (timer_s1_address),
      .timer_s1_chipselect                        (timer_s1_chipselect),
      .timer_s1_irq                               (timer_s1_irq),
      .timer_s1_irq_from_sa                       (timer_s1_irq_from_sa),
      .timer_s1_readdata                          (timer_s1_readdata),
      .timer_s1_readdata_from_sa                  (timer_s1_readdata_from_sa),
      .timer_s1_reset_n                           (timer_s1_reset_n),
      .timer_s1_write_n                           (timer_s1_write_n),
      .timer_s1_writedata                         (timer_s1_writedata)
    );

  timer the_timer
    (
      .address    (timer_s1_address),
      .chipselect (timer_s1_chipselect),
      .clk        (pll_c0_system),
      .irq        (timer_s1_irq),
      .readdata   (timer_s1_readdata),
      .reset_n    (timer_s1_reset_n),
      .write_n    (timer_s1_write_n),
      .writedata  (timer_s1_writedata)
    );

  timer_stamp_s1_arbitrator the_timer_stamp_s1
    (
      .clk                                              (pll_c0_system),
      .cpu_data_master_address_to_slave                 (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_timer_stamp_s1           (cpu_data_master_granted_timer_stamp_s1),
      .cpu_data_master_latency_counter                  (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_timer_stamp_s1 (cpu_data_master_qualified_request_timer_stamp_s1),
      .cpu_data_master_read                             (cpu_data_master_read),
      .cpu_data_master_read_data_valid_timer_stamp_s1   (cpu_data_master_read_data_valid_timer_stamp_s1),
      .cpu_data_master_requests_timer_stamp_s1          (cpu_data_master_requests_timer_stamp_s1),
      .cpu_data_master_write                            (cpu_data_master_write),
      .cpu_data_master_writedata                        (cpu_data_master_writedata),
      .d1_timer_stamp_s1_end_xfer                       (d1_timer_stamp_s1_end_xfer),
      .reset_n                                          (pll_c0_system_reset_n),
      .timer_stamp_s1_address                           (timer_stamp_s1_address),
      .timer_stamp_s1_chipselect                        (timer_stamp_s1_chipselect),
      .timer_stamp_s1_irq                               (timer_stamp_s1_irq),
      .timer_stamp_s1_irq_from_sa                       (timer_stamp_s1_irq_from_sa),
      .timer_stamp_s1_readdata                          (timer_stamp_s1_readdata),
      .timer_stamp_s1_readdata_from_sa                  (timer_stamp_s1_readdata_from_sa),
      .timer_stamp_s1_reset_n                           (timer_stamp_s1_reset_n),
      .timer_stamp_s1_write_n                           (timer_stamp_s1_write_n),
      .timer_stamp_s1_writedata                         (timer_stamp_s1_writedata)
    );

  timer_stamp the_timer_stamp
    (
      .address    (timer_stamp_s1_address),
      .chipselect (timer_stamp_s1_chipselect),
      .clk        (pll_c0_system),
      .irq        (timer_stamp_s1_irq),
      .readdata   (timer_stamp_s1_readdata),
      .reset_n    (timer_stamp_s1_reset_n),
      .write_n    (timer_stamp_s1_write_n),
      .writedata  (timer_stamp_s1_writedata)
    );

  tristate_bridge_flash_avalon_slave_arbitrator the_tristate_bridge_flash_avalon_slave
    (
      .address_to_the_cfi_flash                                       (address_to_the_cfi_flash),
      .cfi_flash_s1_wait_counter_eq_0                                 (cfi_flash_s1_wait_counter_eq_0),
      .clk                                                            (pll_c0_system),
      .cpu_data_master_address_to_slave                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                     (cpu_data_master_byteenable),
      .cpu_data_master_byteenable_cfi_flash_s1                        (cpu_data_master_byteenable_cfi_flash_s1),
      .cpu_data_master_dbs_address                                    (cpu_data_master_dbs_address),
      .cpu_data_master_dbs_write_16                                   (cpu_data_master_dbs_write_16),
      .cpu_data_master_granted_cfi_flash_s1                           (cpu_data_master_granted_cfi_flash_s1),
      .cpu_data_master_latency_counter                                (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_cfi_flash_s1                 (cpu_data_master_qualified_request_cfi_flash_s1),
      .cpu_data_master_read                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cfi_flash_s1                   (cpu_data_master_read_data_valid_cfi_flash_s1),
      .cpu_data_master_requests_cfi_flash_s1                          (cpu_data_master_requests_cfi_flash_s1),
      .cpu_data_master_write                                          (cpu_data_master_write),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_dbs_address                             (cpu_instruction_master_dbs_address),
      .cpu_instruction_master_granted_cfi_flash_s1                    (cpu_instruction_master_granted_cfi_flash_s1),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cfi_flash_s1          (cpu_instruction_master_qualified_request_cfi_flash_s1),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cfi_flash_s1            (cpu_instruction_master_read_data_valid_cfi_flash_s1),
      .cpu_instruction_master_requests_cfi_flash_s1                   (cpu_instruction_master_requests_cfi_flash_s1),
      .d1_tristate_bridge_flash_avalon_slave_end_xfer                 (d1_tristate_bridge_flash_avalon_slave_end_xfer),
      .data_to_and_from_the_cfi_flash                                 (data_to_and_from_the_cfi_flash),
      .incoming_data_to_and_from_the_cfi_flash                        (incoming_data_to_and_from_the_cfi_flash),
      .incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0 (incoming_data_to_and_from_the_cfi_flash_with_Xs_converted_to_0),
      .read_n_to_the_cfi_flash                                        (read_n_to_the_cfi_flash),
      .reset_n                                                        (pll_c0_system_reset_n),
      .select_n_to_the_cfi_flash                                      (select_n_to_the_cfi_flash),
      .write_n_to_the_cfi_flash                                       (write_n_to_the_cfi_flash)
    );

  uart_s1_arbitrator the_uart_s1
    (
      .clk                                       (pll_c0_system),
      .cpu_data_master_address_to_slave          (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_uart_s1           (cpu_data_master_granted_uart_s1),
      .cpu_data_master_latency_counter           (cpu_data_master_latency_counter),
      .cpu_data_master_qualified_request_uart_s1 (cpu_data_master_qualified_request_uart_s1),
      .cpu_data_master_read                      (cpu_data_master_read),
      .cpu_data_master_read_data_valid_uart_s1   (cpu_data_master_read_data_valid_uart_s1),
      .cpu_data_master_requests_uart_s1          (cpu_data_master_requests_uart_s1),
      .cpu_data_master_write                     (cpu_data_master_write),
      .cpu_data_master_writedata                 (cpu_data_master_writedata),
      .d1_uart_s1_end_xfer                       (d1_uart_s1_end_xfer),
      .reset_n                                   (pll_c0_system_reset_n),
      .uart_s1_address                           (uart_s1_address),
      .uart_s1_begintransfer                     (uart_s1_begintransfer),
      .uart_s1_chipselect                        (uart_s1_chipselect),
      .uart_s1_dataavailable                     (uart_s1_dataavailable),
      .uart_s1_dataavailable_from_sa             (uart_s1_dataavailable_from_sa),
      .uart_s1_irq                               (uart_s1_irq),
      .uart_s1_irq_from_sa                       (uart_s1_irq_from_sa),
      .uart_s1_read_n                            (uart_s1_read_n),
      .uart_s1_readdata                          (uart_s1_readdata),
      .uart_s1_readdata_from_sa                  (uart_s1_readdata_from_sa),
      .uart_s1_readyfordata                      (uart_s1_readyfordata),
      .uart_s1_readyfordata_from_sa              (uart_s1_readyfordata_from_sa),
      .uart_s1_reset_n                           (uart_s1_reset_n),
      .uart_s1_write_n                           (uart_s1_write_n),
      .uart_s1_writedata                         (uart_s1_writedata)
    );

  uart the_uart
    (
      .address       (uart_s1_address),
      .begintransfer (uart_s1_begintransfer),
      .chipselect    (uart_s1_chipselect),
      .clk           (pll_c0_system),
      .cts_n         (cts_n_to_the_uart),
      .dataavailable (uart_s1_dataavailable),
      .irq           (uart_s1_irq),
      .read_n        (uart_s1_read_n),
      .readdata      (uart_s1_readdata),
      .readyfordata  (uart_s1_readyfordata),
      .reset_n       (uart_s1_reset_n),
      .rts_n         (rts_n_from_the_uart),
      .rxd           (rxd_to_the_uart),
      .txd           (txd_from_the_uart),
      .write_n       (uart_s1_write_n),
      .writedata     (uart_s1_writedata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE2_70_SOPC_reset_pll_c0_system_domain_synch_module DE2_70_SOPC_reset_pll_c0_system_domain_synch
    (
      .clk      (pll_c0_system),
      .data_in  (1'b1),
      .data_out (pll_c0_system_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    0 |
    cpu_jtag_debug_module_resetrequest_from_sa |
    cpu_jtag_debug_module_resetrequest_from_sa |
    0 |
    pll_s1_resetrequest_from_sa |
    pll_s1_resetrequest_from_sa |
    0);

  //reset is asserted asynchronously and deasserted synchronously
  DE2_70_SOPC_reset_clk_25_domain_synch_module DE2_70_SOPC_reset_clk_25_domain_synch
    (
      .clk      (clk_25),
      .data_in  (1'b1),
      .data_out (clk_25_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE2_70_SOPC_reset_clk_50_domain_synch_module DE2_70_SOPC_reset_clk_50_domain_synch
    (
      .clk      (clk_50),
      .data_in  (1'b1),
      .data_out (clk_50_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE2_70_SOPC_reset_pll_c1_memory_domain_synch_module DE2_70_SOPC_reset_pll_c1_memory_domain_synch
    (
      .clk      (pll_c1_memory),
      .data_in  (1'b1),
      .data_out (pll_c1_memory_reset_n),
      .reset_n  (reset_n_sources)
    );

  //DE2_70_SOPC_clock_0_in_writedata of type writedata does not connect to anything so wire it to default (0)
  assign DE2_70_SOPC_clock_0_in_writedata = 0;

  //DE2_70_SOPC_clock_0_out_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign DE2_70_SOPC_clock_0_out_endofpacket = 0;

  //DE2_70_SOPC_clock_1_out_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign DE2_70_SOPC_clock_1_out_endofpacket = 0;

  //DE2_70_SOPC_clock_2_out_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign DE2_70_SOPC_clock_2_out_endofpacket = 0;

  //DE2_70_SOPC_clock_3_out_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign DE2_70_SOPC_clock_3_out_endofpacket = 0;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi_flash_lane0_module (
                                // inputs:
                                 data,
                                 rdaddress,
                                 rdclken,
                                 wraddress,
                                 wrclock,
                                 wren,

                                // outputs:
                                 q
                              )
;

  output  [  7: 0] q;
  input   [  7: 0] data;
  input   [ 21: 0] rdaddress;
  input            rdclken;
  input   [ 21: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [  7: 0] mem_array [4194303: 0];
  wire    [  7: 0] q;
  reg     [ 21: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(rdaddress)
    begin
      read_address = rdaddress;
    end


  // Data read is asynchronous.
  assign q = mem_array[read_address];

initial
    $readmemh("cfi_flash_lane0.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "cfi_flash_lane0.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 22,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi_flash_lane1_module (
                                // inputs:
                                 data,
                                 rdaddress,
                                 rdclken,
                                 wraddress,
                                 wrclock,
                                 wren,

                                // outputs:
                                 q
                              )
;

  output  [  7: 0] q;
  input   [  7: 0] data;
  input   [ 21: 0] rdaddress;
  input            rdclken;
  input   [ 21: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [  7: 0] mem_array [4194303: 0];
  wire    [  7: 0] q;
  reg     [ 21: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(rdaddress)
    begin
      read_address = rdaddress;
    end


  // Data read is asynchronous.
  assign q = mem_array[read_address];

initial
    $readmemh("cfi_flash_lane1.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "cfi_flash_lane1.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 22,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi_flash (
                   // inputs:
                    address,
                    read_n,
                    select_n,
                    write_n,

                   // outputs:
                    data
                 )
;

  inout   [ 15: 0] data;
  input   [ 21: 0] address;
  input            read_n;
  input            select_n;
  input            write_n;

  wire    [ 15: 0] data;
  wire    [  7: 0] data_0;
  wire    [  7: 0] data_1;
  wire    [ 15: 0] logic_vector_gasket;
  wire    [  7: 0] q_0;
  wire    [  7: 0] q_1;
  //s1, which is an e_ptf_slave

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  assign logic_vector_gasket = data;
  assign data_0 = logic_vector_gasket[7 : 0];
  //cfi_flash_lane0, which is an e_ram
  cfi_flash_lane0_module cfi_flash_lane0
    (
      .data      (data_0),
      .q         (q_0),
      .rdaddress (address),
      .rdclken   (1'b1),
      .wraddress (address),
      .wrclock   (write_n),
      .wren      (~select_n)
    );

  assign data_1 = logic_vector_gasket[15 : 8];
  //cfi_flash_lane1, which is an e_ram
  cfi_flash_lane1_module cfi_flash_lane1
    (
      .data      (data_1),
      .q         (q_1),
      .rdaddress (address),
      .rdclken   (1'b1),
      .wraddress (address),
      .wrclock   (write_n),
      .wren      (~select_n)
    );

  assign data = (~select_n & ~read_n)? {q_1,
    q_0}: {16{1'bz}};


//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/91/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/91/quartus/eda/sim_lib/220model.v"
`include "c:/altera/91/quartus/eda/sim_lib/sgate.v"
`include "DM9000A.v"
`include "epcs_flash_controller.v"
`include "pll.v"
`include "altpllpll.v"
`include "DE2_70_SOPC_clock_0.v"
`include "uart.v"
`include "cpu_test_bench.v"
`include "cpu_mult_cell.v"
`include "cpu_oci_test_bench.v"
`include "cpu_jtag_debug_module_tck.v"
`include "cpu_jtag_debug_module_sysclk.v"
`include "cpu_jtag_debug_module_wrapper.v"
`include "cpu.v"
`include "DE2_70_SOPC_clock_1.v"
`include "sysid.v"
`include "timer.v"
`include "DE2_70_SOPC_clock_3.v"
`include "sdram_u1.v"
`include "sdram_u1_test_component.v"
`include "DE2_70_SOPC_clock_2.v"
`include "timer_stamp.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             DE2_70_SOPC_clock_0_in_endofpacket_from_sa;
  wire    [ 15: 0] DE2_70_SOPC_clock_0_in_writedata;
  wire             DE2_70_SOPC_clock_0_out_endofpacket;
  wire    [ 23: 0] DE2_70_SOPC_clock_0_out_nativeaddress;
  wire             DE2_70_SOPC_clock_1_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_1_out_endofpacket;
  wire    [ 23: 0] DE2_70_SOPC_clock_1_out_nativeaddress;
  wire             DE2_70_SOPC_clock_2_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_2_out_endofpacket;
  wire             DE2_70_SOPC_clock_3_in_endofpacket_from_sa;
  wire             DE2_70_SOPC_clock_3_out_endofpacket;
  wire    [ 22: 0] address_to_the_cfi_flash;
  wire             avs_s1_export_ENET_CLK_from_the_DM9000A;
  wire             avs_s1_export_ENET_CMD_from_the_DM9000A;
  wire             avs_s1_export_ENET_CS_N_from_the_DM9000A;
  wire    [ 15: 0] avs_s1_export_ENET_DATA_to_and_from_the_DM9000A;
  wire             avs_s1_export_ENET_INT_to_the_DM9000A;
  wire             avs_s1_export_ENET_RD_N_from_the_DM9000A;
  wire             avs_s1_export_ENET_RST_N_from_the_DM9000A;
  wire             avs_s1_export_ENET_WR_N_from_the_DM9000A;
  wire             clk;
  reg              clk_25;
  reg              clk_50;
  wire             cts_n_to_the_uart;
  wire    [ 15: 0] data_to_and_from_the_cfi_flash;
  wire             epcs_flash_controller_epcs_control_port_dataavailable_from_sa;
  wire             epcs_flash_controller_epcs_control_port_endofpacket_from_sa;
  wire             epcs_flash_controller_epcs_control_port_readyfordata_from_sa;
  wire             pll_c0_system;
  wire             pll_c1_memory;
  wire             read_n_to_the_cfi_flash;
  reg              reset_n;
  wire             rts_n_from_the_uart;
  wire             rxd_to_the_uart;
  wire             select_n_to_the_cfi_flash;
  wire             txd_from_the_uart;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_readyfordata_from_sa;
  wire             write_n_to_the_cfi_flash;
  wire    [ 12: 0] zs_addr_from_the_sdram_u1;
  wire    [  1: 0] zs_ba_from_the_sdram_u1;
  wire             zs_cas_n_from_the_sdram_u1;
  wire             zs_cke_from_the_sdram_u1;
  wire             zs_cs_n_from_the_sdram_u1;
  wire    [ 15: 0] zs_dq_to_and_from_the_sdram_u1;
  wire    [  1: 0] zs_dqm_from_the_sdram_u1;
  wire             zs_ras_n_from_the_sdram_u1;
  wire             zs_we_n_from_the_sdram_u1;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  DE2_70_SOPC DUT
    (
      .address_to_the_cfi_flash                        (address_to_the_cfi_flash),
      .avs_s1_export_ENET_CLK_from_the_DM9000A         (avs_s1_export_ENET_CLK_from_the_DM9000A),
      .avs_s1_export_ENET_CMD_from_the_DM9000A         (avs_s1_export_ENET_CMD_from_the_DM9000A),
      .avs_s1_export_ENET_CS_N_from_the_DM9000A        (avs_s1_export_ENET_CS_N_from_the_DM9000A),
      .avs_s1_export_ENET_DATA_to_and_from_the_DM9000A (avs_s1_export_ENET_DATA_to_and_from_the_DM9000A),
      .avs_s1_export_ENET_INT_to_the_DM9000A           (avs_s1_export_ENET_INT_to_the_DM9000A),
      .avs_s1_export_ENET_RD_N_from_the_DM9000A        (avs_s1_export_ENET_RD_N_from_the_DM9000A),
      .avs_s1_export_ENET_RST_N_from_the_DM9000A       (avs_s1_export_ENET_RST_N_from_the_DM9000A),
      .avs_s1_export_ENET_WR_N_from_the_DM9000A        (avs_s1_export_ENET_WR_N_from_the_DM9000A),
      .clk_25                                          (clk_25),
      .clk_50                                          (clk_50),
      .cts_n_to_the_uart                               (cts_n_to_the_uart),
      .data_to_and_from_the_cfi_flash                  (data_to_and_from_the_cfi_flash),
      .pll_c0_system                                   (pll_c0_system),
      .pll_c1_memory                                   (pll_c1_memory),
      .read_n_to_the_cfi_flash                         (read_n_to_the_cfi_flash),
      .reset_n                                         (reset_n),
      .rts_n_from_the_uart                             (rts_n_from_the_uart),
      .rxd_to_the_uart                                 (rxd_to_the_uart),
      .select_n_to_the_cfi_flash                       (select_n_to_the_cfi_flash),
      .txd_from_the_uart                               (txd_from_the_uart),
      .write_n_to_the_cfi_flash                        (write_n_to_the_cfi_flash),
      .zs_addr_from_the_sdram_u1                       (zs_addr_from_the_sdram_u1),
      .zs_ba_from_the_sdram_u1                         (zs_ba_from_the_sdram_u1),
      .zs_cas_n_from_the_sdram_u1                      (zs_cas_n_from_the_sdram_u1),
      .zs_cke_from_the_sdram_u1                        (zs_cke_from_the_sdram_u1),
      .zs_cs_n_from_the_sdram_u1                       (zs_cs_n_from_the_sdram_u1),
      .zs_dq_to_and_from_the_sdram_u1                  (zs_dq_to_and_from_the_sdram_u1),
      .zs_dqm_from_the_sdram_u1                        (zs_dqm_from_the_sdram_u1),
      .zs_ras_n_from_the_sdram_u1                      (zs_ras_n_from_the_sdram_u1),
      .zs_we_n_from_the_sdram_u1                       (zs_we_n_from_the_sdram_u1)
    );

  cfi_flash the_cfi_flash
    (
      .address  (address_to_the_cfi_flash[22 : 1]),
      .data     (data_to_and_from_the_cfi_flash),
      .read_n   (read_n_to_the_cfi_flash),
      .select_n (select_n_to_the_cfi_flash),
      .write_n  (write_n_to_the_cfi_flash)
    );

  sdram_u1_test_component the_sdram_u1_test_component
    (
      .clk      (pll_c1_memory),
      .zs_addr  (zs_addr_from_the_sdram_u1),
      .zs_ba    (zs_ba_from_the_sdram_u1),
      .zs_cas_n (zs_cas_n_from_the_sdram_u1),
      .zs_cke   (zs_cke_from_the_sdram_u1),
      .zs_cs_n  (zs_cs_n_from_the_sdram_u1),
      .zs_dq    (zs_dq_to_and_from_the_sdram_u1),
      .zs_dqm   (zs_dqm_from_the_sdram_u1),
      .zs_ras_n (zs_ras_n_from_the_sdram_u1),
      .zs_we_n  (zs_we_n_from_the_sdram_u1)
    );

  initial
    clk_25 = 1'b0;
  always
    #20 clk_25 <= ~clk_25;
  
  initial
    clk_50 = 1'b0;
  always
    #10 clk_50 <= ~clk_50;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on