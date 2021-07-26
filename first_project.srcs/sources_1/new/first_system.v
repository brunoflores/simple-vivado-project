`timescale 1ns / 1ps

module first_system(led, btn);

input [1:0]btn;
output [1:0]led;

wire and_out, or_out;

assign and_out = btn[0] & btn[1];
assign or_out = btn[0] | btn[1];
assign led[0] = and_out ^ or_out;
assign led[1] = ~ btn[1];

endmodule
