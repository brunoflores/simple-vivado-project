`timescale 1ns / 1ps

module first_system_tb;

// Inputs.
reg in1t, in2t;

// Outputs.
wire out1t, out2t;

// Unit Under Test.
first_system UUT (
    .out1(out1t),
    .out2(out2t),
    .in1(in1t),
    .in2(in2t));

// Provide input to the UUT.
initial begin
    // Initiliase inputs.
    in1t = 0;
    in2t = 0;
    
    // Wait for global reset to finish.
    #100;
    
    // Add stimulus.
    repeat (4) begin
        #100 {in1t, in2t} = {in1t, in2t} + 1'b1;
    end
end

// Display the result (optional).
initial begin
    $display("in1 in2 out1 out2");
    $monitor("\t%b \t%b \t%b \t%b", in1t, in2t, out1t, out2t);
end

endmodule
