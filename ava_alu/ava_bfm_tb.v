`timescale 	1ns/100ps
module	ava_bfm_tb();
reg	clk;
reg 	reset;

initial begin
	clk = 1'b0;
end
always #5	clk	<= 	~clk;


wire	[31:0]	addr;
wire	[3:0]	be;
wire	[31:0]	wd;
wire	[31:0]	rd;

ava_master	mast(
	.clk(clk),
	.reset(reset),
	.master_address(addr),
	.master_write(write),
	.master_read(read),
	.master_byteenable(be),
	.master_writedata(wd),
	.master_readdata(rd),
	.master_waitrequest(waitrequest)
);

assign	chipselect = (addr[31:4] == 0);


ava_alu	alu(
	.clk(clk),
	.reset(reset),
	.ava_chipselect(chipselect),
	.ava_address(addr[3:2]),
	.ava_read(read),
	.ava_write(write),
	.ava_readdata(rd),
	.ava_writedata(wd),
	.ava_byteenable(be),
	.ava_waitrequest(waitrequest)
);

reg	[31:0]	data;

initial begin

	reset	=	1'b1;
	#50	reset	=	1'b0;
	@(posedge clk);
	mast.ava_wr1(0,4'b1111,32'h01234567);
	@(posedge clk);
	mast.ava_wr1(4,4'b1111,32'h01234568);
	@(posedge clk);
	mast.ava_wr1(8,4'b1111,32'h1);
	@(posedge clk);
	mast.ava_rd1(12,4'b1111,data);
	$display("data = %x",data);
	repeat(3) @(posedge clk);
	
	mast.ava_wr1(8,4'b1111,32'h2);
	@(posedge clk);
	mast.ava_rd1(12,4'b1111,data);
	$display("data = %x",data);
	repeat(3) @(posedge clk);
	
	mast.ava_wr1(8,4'b1111,32'h3);
	@(posedge clk);
	mast.ava_rd1(12,4'b1111,data);
	$display("data = %x",data);
	repeat(3) @(posedge clk);
	
	mast.ava_wr1(8,4'b1111,32'h4);
	@(posedge clk);
	mast.ava_rd1(12,4'b1111,data);
	$display("data = %x",data);
	repeat(3) @(posedge clk);
	
	mast.ava_wr1(8,4'b1111,32'h5);
	@(posedge clk);
	mast.ava_rd1(12,4'b1111,data);
	$display("data = %x",data);
	repeat(3) @(posedge clk);
	
	$stop();
	

end




/*
module ava_mem(
	clk,
	reset,
	ava_chipselect,
	ava_address,
	ava_read,
	ava_write,
	ava_readdata,
	ava_writedata,
	ava_byteenable,
	ava_waitrequest
);

module	ava_master(
	clk,
	reset,
	master_address,
	master_write,
	master_read,
	master_byteenable,
	master_writedata,
	master_readdata,
	master_waitrequest
);
*/

endmodule
