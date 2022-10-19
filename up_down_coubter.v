`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Peter Mbua
// 
// Create Date: 10/15/2022 08:15:28 AM
// Design Name: un_down Counter
// Module Name: up_down_coubter
// Project Name: Training
// Target Devices: Nexys 4
// Tool Versions: 2021.1
// Description: The counter is triggered by a clock and a sync reset. 
                //one switch with alternating binary values is used to 
                //make the counter count up or down as needed.
// 
// Dependencies: 
// 
// Revision: 22.01
// Revision 0.01 - File Created
// Additional Comments: synchrounous reset used, clock divider used too to make the counter practical.
// 
//////////////////////////////////////////////////////////////////////////////////

module up_down_counter(
    input clk, 
    input reset,
    input up_down_sw,
    //input load,
   // input [3:0] data,
    output reg [3:0] count = 0
    );
    // this design is for simulation ONLY, as such no clock divider is necessary. 

always@(posedge clk)
begin
    if (reset)         //set cuounter to 0
    count <= 4'b0000;   
    else if(up_down_sw)      // upward counting
        count <= count + 1;
    else                     //downward counting 
        count <= count - 1;
 end
endmodule
