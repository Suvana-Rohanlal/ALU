`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2020 13:57:07
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
    //inputs
  	reg clk;
  reg [7:0]A;
    reg [7:0]B;
    reg[3:0] ALU_Sel;

    //output
    wire[7:0] ALU_Out;

    //instantiate the module
    ALU ut(clk,A,B,ALU_Sel,ALU_Out);

    integer i;
    initial begin
    	clk=1'b0;

        A = 8'b00000001;
        B = 8'b00000011;
        ALU_Sel = 4'b0;
	#10;
      
      for(i=1; i<16;i=i+1)begin
      	#20;
        ALU_Sel = ALU_Sel + 1'b1;
      end
    end  
  
    always
        #10 clk = !clk;

    initial begin
      $display("clk A  B  ALU_Sel  ALU_Out");
      $monitor("%b %b  %b  %b     %b",clk,A,B,ALU_Sel, ALU_Out);
    end
  
  initial 
    #320 $finish; 
  	
endmodule