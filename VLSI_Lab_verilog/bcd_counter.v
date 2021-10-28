`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:35 10/22/2020 
// Design Name: 
// Module Name:    bcd_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_counter(clk, reset, dout);
	output [3:0] dout;
	reg [3:0] dout;
	
	input clk;
	wire clk;
	input reset;
	wire reset;

	initial dout<=0;
	 
	always@(posedge(clk)) begin
	
		if(reset==1'b1) dout<=0;
		
		else if(dout<9) dout<=dout+1;
		
		else if(dout==9) dout<=0;
	end

endmodule
