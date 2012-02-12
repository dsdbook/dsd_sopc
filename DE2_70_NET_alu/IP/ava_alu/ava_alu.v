`timescale 1ns/100ps
module ava_alu(
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

input	clk;
input	reset;
input	ava_chipselect;
input	[ 1:0]	ava_address;
input	ava_read;
input	ava_write;
output	reg	[31:0] 	ava_readdata;
input	[31:0]	ava_writedata;
input	[3:0]	ava_byteenable;
output	ava_waitrequest;

parameter	OP_ADD = 3'b001;
parameter	OP_SUB = 3'b010;
parameter	OP_AND = 3'b011;
parameter	OP_OR	= 3'b100;
parameter	OP_XOR = 3'b101;

reg 	ava_waitrequest;
reg		[31:0]	A;
reg		[31:0]	B;
reg		[2:0]	OP;
reg		[31:0]	Y;


always@(*)
begin
	case(OP)
		OP_ADD : Y<= A + B;
		OP_SUB : Y<= A - B;
		OP_AND : Y<= A & B;
		OP_OR  : Y<= A | B;
		OP_XOR : Y<= A ^ B;
		default: Y <= 32'h0;
	endcase
end

always@(posedge clk)
begin
	if((ava_chipselect == 1'b1) & (ava_write == 1'b1))
	begin
		ava_waitrequest		<= 1'b0; 
		case(ava_address)
			2'b00:	A <= ava_writedata;
			2'b01:	B <= ava_writedata;
			2'b10: OP <= ava_writedata[2:0];
		endcase
	end
	else 	begin
			if((ava_chipselect == 1'b1) & (ava_read == 1'b1))
			begin
				ava_waitrequest	<= 1'b0;
				case(ava_address)
				2'b00:	ava_readdata <= A;
				2'b01:	ava_readdata <= B;
				2'b10: ava_readdata <= OP;
				2'b11: ava_readdata <= Y;
				endcase
			end
			else	begin
					ava_waitrequest	<= 1'b1;
			end
	end
end

endmodule
