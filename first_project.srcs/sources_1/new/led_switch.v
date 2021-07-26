`timescale 1ns / 1ps

module led_switch(led, pio1);

output led;
input pio1;

assign led = pio1;

endmodule
