module Uart_Demo_Top(
	CLOCK_50,
	KEY,
	SW,
	LEDR
);


input wire	CLOCK_50;
input wire	[2:0] KEY;
input wire	[2:0] SW;
output wire	[7:0] LEDR;


UART_IO	b2v_inst(
	.clk_clk(CLOCK_50),
	.reset_reset_n(KEY[2]),
	.pio_button_external_connection_export(KEY[1:0]),
	.pio_switch_external_connection_export(SW),
	
	.pio_led_external_connection_export(LEDR));


endmodule
