`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:58 08/23/2017 
// Design Name: 
// Module Name:    Adder_4Bit 
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
module Adder_4Bit(
    input [0:3] A,
    input [0:3] B,
    input  Cin,
    output wire [0:3] Cout,
    output [0:3] S
    );
	 
assign S[0]= !A[0] ^ !B[0] ^ !Cin ;
assign Cout[0]= !A[0]&!B[0] | !A[0]&!Cin | !B[0]&!Cin; //same formula applied for 1 bit adder 

assign S[1]= !A[1] ^ !B[1] ^ Cout[0] ;
assign Cout[1]= !A[1]&!B[1] | !A[1]&Cout[0] | !B[1]&Cout[0];

assign S[2]= !A[2] ^ !B[2] ^ Cout[1] ;
assign Cout[2]= !A[2]&!B[2] | !A[2]&Cout[1] | !B[2]&Cout[1];

assign S[3]= !A[3] ^ !B[3] ^ Cout[2] ;
assign Cout[3]= !A[3]&!B[3] | !A[3]&Cout[2] | !B[3]&Cout[2];




endmodule
