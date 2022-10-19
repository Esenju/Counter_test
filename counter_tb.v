`timescale 1ns / 1ps

//testbench module.
module counter_tb;

    reg clk, reset, up_down_sw;
    wire [3:0] count;
    
    //instanntiating counter design under test
    up_down_counter dut(
           .clk (clk), 
           .reset(reset), 
           .count(count),
           .up_down_sw(up_down_sw));  //mapping test signals to counter inputs/outputs (ALL)
    
    //clock stimulus (start clock at active low, turn on and repeat alteration every 2 time-unit)
   always 
    #10 clk <= ~clk; // flip clock every 5ps 
    
   initial 
   begin
      
        clk <= 1'b0; 
        reset <= 1'b0;
        up_down_sw <= 1'b0;
  
        
    //input stimuli 
        #5  reset <= 1'b1;   // assert reset for 5 time-unit (TU),
        #200 reset <= 1'b0;   // then deactivate reset to low for 50 TUs
      
        #100 up_down_sw <= 1'b1;    //stimutate count up for 20TUs then count down
        #70 up_down_sw <= 1'b0; 
    end
endmodule
    