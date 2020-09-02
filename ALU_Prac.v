`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2020 13:53:17
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
module ALU(
  input clk,
  input [7:0]A,
  input [7:0]B,
  input [3:0] ALU_Sel,
  output reg[7:0] ALU_out
);
  //output register
  reg [7:0]Acc = 8'b0;
    
  always@(posedge clk)
    begin
     case(ALU_Sel)
        4'b0000: // Addition
           Acc = A + B ; 
        4'b0001: //Subtraction 
           Acc = A - B;
        4'b0010: //Multiplication
           Acc = A *  B;
        4'b0011: //Div
           Acc = A/B;
        4'b0100: //ADDA
           Acc = Acc + A ; 
        4'b0101: //MULA 
           Acc = Acc * A;
        4'b0110: //MAC
          Acc = Acc + (A*B);
        4'b0111: //ROL
          Acc = {A[6:0],A[7]};
        4'b1000: // ROR
          Acc = {A[0],A[7:1]}; 
        4'b1001: //AND
           Acc = A & B;
        4'b1010: //OR
           Acc = A | B;
        4'b1011: //XOR
           Acc = A^B;
        4'b1100: //NAND
           Acc = ~(A & B); 
        4'b1101: //ETH
          Acc = (A==B)?8'hFF:8'b0;
        4'b1110: //GTH
          Acc = (A>B)?8'hFF:8'b0;
        4'b1111: //LTH
          Acc = (A<B)?8'hFF:8'b0;
        default: Acc = A + B; //Addition
     endcase
    
     ALU_out <= Acc;
    end
endmodule

