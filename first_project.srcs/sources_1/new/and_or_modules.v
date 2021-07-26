`timescale 1ns / 1ps

module and_module(and_out, in1, in2);

input in1, in2;
output and_out;

assign and_out = in1 & in2;

endmodule


module or_module(or_out, in1, in2);

input in1, in2;
output or_out;

assign or_out = in1 | in2;

endmodule