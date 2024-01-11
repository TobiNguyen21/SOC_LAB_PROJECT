
module UART_IO (
	clk_clk,
	pio_button_external_connection_export,
	pio_led_external_connection_export,
	pio_switch_external_connection_export,
	pll_sys_locked_export,
	reset_reset_n);	

	input		clk_clk;
	input	[1:0]	pio_button_external_connection_export;
	output	[7:0]	pio_led_external_connection_export;
	input	[2:0]	pio_switch_external_connection_export;
	output		pll_sys_locked_export;
	input		reset_reset_n;
endmodule
