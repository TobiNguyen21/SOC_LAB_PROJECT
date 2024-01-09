// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Tue Jan 09 16:27:13 2024"

module uart(
	uart_rxd,
	CLOCK_50,
	KEY,
	SW,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_ras_n,
	sdram_we_n,
	uart_txd,
	LEDR,
	sdram_addr,
	sdram_ba,
	sdram_dq,
	sdram_dqm
);


input wire	uart_rxd;
input wire	CLOCK_50;
input wire	[0:0] KEY;
input wire	[7:0] SW;
output wire	sdram_cas_n;
output wire	sdram_cke;
output wire	sdram_cs_n;
output wire	sdram_ras_n;
output wire	sdram_we_n;
output wire	uart_txd;
output wire	[7:0] LEDR;
output wire	[11:0] sdram_addr;
output wire	[1:0] sdram_ba;
inout wire	[15:0] sdram_dq;
output wire	[1:0] sdram_dqm;






uart_module	b2v_inst(
	.clk_clk(CLOCK_50),
	.reset_reset_n(KEY),
	.uart_rxd(uart_rxd),
	.sdram_dq(sdram_dq),
	.switch_export(SW),
	.sdram_cas_n(sdram_cas_n),
	.sdram_cke(sdram_cke),
	.sdram_cs_n(sdram_cs_n),
	.sdram_ras_n(sdram_ras_n),
	.sdram_we_n(sdram_we_n),
	.uart_txd(uart_txd),
	.led_export(LEDR),
	.sdram_addr(sdram_addr),
	.sdram_ba(sdram_ba),
	
	.sdram_dqm(sdram_dqm));


endmodule
