`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2020 12:00:12
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
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input A,B,
    input [2:0] ALU_Sel,
    output reg ALU_out
);
    
    reg ALU_Result;
    
    always@(*)
    begin
     case(ALU_Sel)
        3'b000: // Addition
           ALU_Result = A + B ; 
        3'b001: 
           ALU_Result = A ;
        3'b010: 
           ALU_Result = B - 1'b1;
        3'b011: 
           ALU_Result = A + !B;
        3'b100: 
           ALU_Result = A - !B;
        3'b101: 
           ALU_Result = A + 1'b1;
        3'b110: 
           ALU_Result = !B +1;
        3'b111: 
           ALU_Result = A - !B;
         default: ALU_Result = A + B ; 
     endcase
    
     ALU_out <= ALU_Result;
    end

endmodule
