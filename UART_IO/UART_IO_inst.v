	UART_IO u0 (
		.clk_clk                               (<connected-to-clk_clk>),                               //                            clk.clk
		.pio_button_external_connection_export (<connected-to-pio_button_external_connection_export>), // pio_button_external_connection.export
		.pio_led_external_connection_export    (<connected-to-pio_led_external_connection_export>),    //    pio_led_external_connection.export
		.pio_switch_external_connection_export (<connected-to-pio_switch_external_connection_export>), // pio_switch_external_connection.export
		.pll_sys_locked_export                 (<connected-to-pll_sys_locked_export>),                 //                 pll_sys_locked.export
		.reset_reset_n                         (<connected-to-reset_reset_n>)                          //                          reset.reset_n
	);

