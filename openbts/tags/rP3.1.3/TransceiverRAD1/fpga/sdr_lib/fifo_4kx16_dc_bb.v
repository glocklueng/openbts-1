// megafunction wizard: %FIFO%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: dcfifo 

// ============================================================
// File Name: fifo_4kx16_dc.v
// Megafunction Name(s):
// 			dcfifo
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 5.1 Build 213 01/19/2006 SP 1 SJ Web Edition
// ************************************************************

//Copyright (C) 1991-2006 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module fifo_4kx16_dc (
	aclr,
	data,
	rdclk,
	rdreq,
	wrclk,
	wrreq,
	q,
	rdempty,
	rdusedw,
	wrfull,
	wrusedw);

	input	  aclr;
	input	[15:0]  data;
	input	  rdclk;
	input	  rdreq;
	input	  wrclk;
	input	  wrreq;
	output	[15:0]  q;
	output	  rdempty;
	output	[11:0]  rdusedw;
	output	  wrfull;
	output	[11:0]  wrusedw;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AlmostEmpty NUMERIC "0"
// Retrieval info: PRIVATE: AlmostEmptyThr NUMERIC "-1"
// Retrieval info: PRIVATE: AlmostFull NUMERIC "0"
// Retrieval info: PRIVATE: AlmostFullThr NUMERIC "-1"
// Retrieval info: PRIVATE: CLOCKS_ARE_SYNCHRONIZED NUMERIC "0"
// Retrieval info: PRIVATE: Clock NUMERIC "4"
// Retrieval info: PRIVATE: Depth NUMERIC "4096"
// Retrieval info: PRIVATE: Empty NUMERIC "1"
// Retrieval info: PRIVATE: Full NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: PRIVATE: LE_BasedFIFO NUMERIC "0"
// Retrieval info: PRIVATE: LegacyRREQ NUMERIC "0"
// Retrieval info: PRIVATE: MAX_DEPTH_BY_9 NUMERIC "0"
// Retrieval info: PRIVATE: OVERFLOW_CHECKING NUMERIC "1"
// Retrieval info: PRIVATE: Optimize NUMERIC "2"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: UNDERFLOW_CHECKING NUMERIC "1"
// Retrieval info: PRIVATE: UsedW NUMERIC "1"
// Retrieval info: PRIVATE: Width NUMERIC "16"
// Retrieval info: PRIVATE: dc_aclr NUMERIC "1"
// Retrieval info: PRIVATE: rsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: rsFull NUMERIC "0"
// Retrieval info: PRIVATE: rsUsedW NUMERIC "1"
// Retrieval info: PRIVATE: sc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: sc_sclr NUMERIC "0"
// Retrieval info: PRIVATE: wsEmpty NUMERIC "0"
// Retrieval info: PRIVATE: wsFull NUMERIC "1"
// Retrieval info: PRIVATE: wsUsedW NUMERIC "1"
// Retrieval info: CONSTANT: ADD_RAM_OUTPUT_REGISTER STRING "OFF"
// Retrieval info: CONSTANT: CLOCKS_ARE_SYNCHRONIZED STRING "FALSE"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone"
// Retrieval info: CONSTANT: LPM_NUMWORDS NUMERIC "4096"
// Retrieval info: CONSTANT: LPM_SHOWAHEAD STRING "ON"
// Retrieval info: CONSTANT: LPM_TYPE STRING "dcfifo"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
// Retrieval info: CONSTANT: LPM_WIDTHU NUMERIC "12"
// Retrieval info: CONSTANT: OVERFLOW_CHECKING STRING "OFF"
// Retrieval info: CONSTANT: UNDERFLOW_CHECKING STRING "OFF"
// Retrieval info: CONSTANT: USE_EAB STRING "ON"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT GND aclr
// Retrieval info: USED_PORT: data 0 0 16 0 INPUT NODEFVAL data[15..0]
// Retrieval info: USED_PORT: q 0 0 16 0 OUTPUT NODEFVAL q[15..0]
// Retrieval info: USED_PORT: rdclk 0 0 0 0 INPUT NODEFVAL rdclk
// Retrieval info: USED_PORT: rdempty 0 0 0 0 OUTPUT NODEFVAL rdempty
// Retrieval info: USED_PORT: rdreq 0 0 0 0 INPUT NODEFVAL rdreq
// Retrieval info: USED_PORT: rdusedw 0 0 12 0 OUTPUT NODEFVAL rdusedw[11..0]
// Retrieval info: USED_PORT: wrclk 0 0 0 0 INPUT NODEFVAL wrclk
// Retrieval info: USED_PORT: wrfull 0 0 0 0 OUTPUT NODEFVAL wrfull
// Retrieval info: USED_PORT: wrreq 0 0 0 0 INPUT NODEFVAL wrreq
// Retrieval info: USED_PORT: wrusedw 0 0 12 0 OUTPUT NODEFVAL wrusedw[11..0]
// Retrieval info: CONNECT: @data 0 0 16 0 data 0 0 16 0
// Retrieval info: CONNECT: q 0 0 16 0 @q 0 0 16 0
// Retrieval info: CONNECT: @wrreq 0 0 0 0 wrreq 0 0 0 0
// Retrieval info: CONNECT: @rdreq 0 0 0 0 rdreq 0 0 0 0
// Retrieval info: CONNECT: @rdclk 0 0 0 0 rdclk 0 0 0 0
// Retrieval info: CONNECT: @wrclk 0 0 0 0 wrclk 0 0 0 0
// Retrieval info: CONNECT: rdempty 0 0 0 0 @rdempty 0 0 0 0
// Retrieval info: CONNECT: rdusedw 0 0 12 0 @rdusedw 0 0 12 0
// Retrieval info: CONNECT: wrfull 0 0 0 0 @wrfull 0 0 0 0
// Retrieval info: CONNECT: wrusedw 0 0 12 0 @wrusedw 0 0 12 0
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc_waveforms.html FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_4kx16_dc_wave*.jpg FALSE
