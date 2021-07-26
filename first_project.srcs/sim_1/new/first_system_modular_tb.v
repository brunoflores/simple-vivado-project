`timescale 1ns / 1ps

module first_system_modular_tb;

// Inputs.
reg in1t, in2t;

// Outputs.
wire out1t, out2t;

// Unit Under Test.
first_system_modular UUT (
    .out1(out1t),
    .out2(out2t),
    .in1(in1t),
    .in2(in2t));

reg [1:0] testsetrom [3:0];
integer line;

initial $readmemb(
    "./first_system_modular_tb_mem.mem", 
    testsetrom);

// Provide input to the UUT.
initial begin
    // Wait for global reset to finish.
    #100;
    
    // Add stimulus.
    line = 0;
    repeat (4) begin
        #50 {in1t, in2t} = testsetrom[line];
        #50 line = line + 1;
    end
end

// Display the result (optional).
initial begin
    $display("in1 in2 out1 out2");
    $monitor("\t%b \t%b \t%b \t%b", in1t, in2t, out1t, out2t);
end

endmodule
