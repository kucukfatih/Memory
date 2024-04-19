`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 10:15:06
// Design Name: 
// Module Name: RAM
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


module RAM_dist#(parameter k = 8,parameter l = 64,parameter m = 7)(

    input wire clk,
    input wire we,
    input wire [k-1:0] data_in,
    input wire [m-1:0] read_adr,
    input wire [m-1:0] write_adr,
    output wire [k-1:0] data_out

    );
    
    reg [k-1:0] RAM [l-1:0];
    
    assign data_out = RAM[read_adr];
    
     always @(posedge clk) begin 
    
        if (we) 
            
            RAM [write_adr] <= data_in;
        else
            RAM [write_adr] <= RAM [write_adr];
        end
    
    
endmodule

module RAM#(parameter k = 8,parameter l = 64,parameter m = 7)(

    input wire clk,
    input wire we,
    input wire [k-1:0] data_in,
    input wire [m-1:0] read_adr,
    input wire [m-1:0] write_adr,
    output reg [k-1:0] data_out

    );
    
    reg [k-1:0] RAM [l-1:0];
    
     always @(posedge clk) begin 
     
        data_out <= RAM[read_adr];
     
     end
     
    
     always @(posedge clk) begin 
    
        if (we) 
            
            RAM [write_adr] <= data_in;
        else
            RAM [write_adr] <= RAM [write_adr];

        end
    
    
endmodule
