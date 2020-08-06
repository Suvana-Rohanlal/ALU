`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2020 20:28:30
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
    reg A,B;
    reg[2:0] ALU_Sel;

    //output
    wire ALU_Out;

    //instantiate the module
    ALU ut(A,B,ALU_Sel,ALU_Out);

    integer i;
    initial begin

        $display("A  B  ALU_Sel  ALU_Out");
        $monitor("%b  %b  %b     %b",A,B,ALU_Sel, ALU_Out);

        A = 1'b0;
        B = 1'b0;
        ALU_Sel = 4'b0;

        #10

        for(i=1; i<=7; i=i+1) begin
            ALU_Sel = ALU_Sel + 1'b1;
            #10;
        end

        $display("\n A  B  ALU_Sel  ALU_Out");
        A = 1'b0;
        B = 1'b1;

        ALU_Sel = 4'b0;
        #10
        for(i=1; i<=7; i=i+1) begin
            ALU_Sel = ALU_Sel + 1'b1;
            #10;
        end

        $display("\n A  B  ALU_Sel  ALU_Out");
        A = 1'b1;
        B = 1'b0;

        ALU_Sel = 4'b0;
        #10
        for(i=1; i<=7; i=i+1) begin
            ALU_Sel = ALU_Sel + 1'b1;
            #10;
        end

        $display("\n A  B  ALU_Sel  ALU_Out");
        A = 1'b1;
        B = 1'b1;

        ALU_Sel = 4'b0;
        #10
        for(i=1; i<=7; i=i+1) begin
            ALU_Sel = ALU_Sel + 1'b1;
            #10;
        end

    end
endmodule
