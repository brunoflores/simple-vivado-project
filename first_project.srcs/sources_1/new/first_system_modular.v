module first_system_modular(out1, out2, in1, in2);

input in1, in2;
output out1, out2;

wire and_out, or_out;

and_module U1(
    .and_out(and_out),
    .in1(in1),
    .in2(in2));
    
or_module U2 (
    .or_out(or_out),
    .in1(in1),
    .in2(in2));
    
assign out1 = and_out ^ or_out;
assign out2 = ~ in2;

endmodule