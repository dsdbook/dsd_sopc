`timescale 1ns/100ps
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

input	clk;
input	reset;
output	reg	[31:0]	master_address;
output	reg	master_write;
output	reg	master_read;
output	reg	[3:0] 	master_byteenable;
output	reg	[31:0]	master_writedata;
input	[31:0]	master_readdata;
input	master_waitrequest;

always@(posedge clk or posedge reset)
begin
	if(reset)	begin
		master_address 	<= 	32'b0;
		master_write	<=	1'b0;
		master_read	<=	1'b0;
		master_byteenable <=	4'b0;
		master_writedata <=	32'b0;
	end
end


task	ava_wr1;
input	[31:0]	a;
input	[3:0]	s;
input	[31:0]	d;
begin
	#1;
	master_address		=	a;
	master_byteenable	=	s;
	master_write		=	1'b1;
	master_writedata	=	d;
	@(posedge clk);
	while(master_waitrequest == 1'b1) @(posedge clk);
	master_write		=	1'b0;
end
endtask

task	ava_rd1;
input	[31:0]	a;
input	[3:0]	s;
output	[31:0]	d;
begin
	#1;
	master_address		=	a;
	master_byteenable	=	s;
	master_read		=	1'b1;
	@(posedge clk);
	while(master_waitrequest == 1'b1) @(posedge clk);
	master_read		=	1'b0;
	d			=	master_readdata;
end
endtask


endmodule
