`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 10:33:22
// Design Name: 
// Module Name: ROM
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


module ROM#(parameter k = 8,parameter l = 4,parameter m = 2)(


    input wire [m-1:0] read_adr,
    output wire [k-1:0] data_out

    );
    
    reg [k-1:0] ROM [l-1:0];
    
    assign  data_out = ROM[read_adr];
    
    always @(*) begin
    
    ROM[0] = 8'd5;
    ROM[1] = 8'd6; 
    ROM[2] = 8'd7; 
    ROM[3] = 8'd8;  
    
    end
     
    
    
endmodule
