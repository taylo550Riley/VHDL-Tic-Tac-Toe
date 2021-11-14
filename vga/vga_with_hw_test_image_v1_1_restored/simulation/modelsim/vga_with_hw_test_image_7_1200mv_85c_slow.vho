-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "11/14/2021 16:04:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_with_hw_test_image IS
    PORT (
	pixel_clk : OUT std_logic;
	clk : IN std_logic;
	h_sync : OUT std_logic;
	v_sync : OUT std_logic;
	n_blank : OUT std_logic;
	n_sync : OUT std_logic;
	r1 : OUT std_logic;
	Reset : IN std_logic;
	clock : IN std_logic;
	b1 : IN std_logic;
	confirmButton : IN std_logic;
	a0 : OUT std_logic;
	b0 : OUT std_logic;
	c0 : OUT std_logic;
	d0 : OUT std_logic;
	e0 : OUT std_logic;
	f0 : OUT std_logic;
	g0 : OUT std_logic;
	r2 : OUT std_logic;
	blue : OUT std_logic_vector(7 DOWNTO 0);
	green : OUT std_logic_vector(7 DOWNTO 0);
	red : OUT std_logic_vector(7 DOWNTO 0)
	);
END vga_with_hw_test_image;

-- Design Ports Information
-- pixel_clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- h_sync	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- v_sync	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_blank	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_sync	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r1	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a0	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b0	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- c0	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d0	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- e0	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- f0	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g0	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r2	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b1	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- confirmButton	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vga_with_hw_test_image IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_n_blank : std_logic;
SIGNAL ww_n_sync : std_logic;
SIGNAL ww_r1 : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_confirmButton : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_e0 : std_logic;
SIGNAL ww_f0 : std_logic;
SIGNAL ww_g0 : std_logic;
SIGNAL ww_r2 : std_logic;
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst11|a0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|red[7]~48clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|h_count~11_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~10_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|h_count~9_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|h_count~8_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|h_count~6_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|h_count~5_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|h_count~4_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|h_count~3_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|h_count~7_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|h_sync~q\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~7_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~9_combout\ : std_logic;
SIGNAL \inst1|Add1~30_combout\ : std_logic;
SIGNAL \inst1|Add1~10\ : std_logic;
SIGNAL \inst1|Add1~11_combout\ : std_logic;
SIGNAL \inst1|Add1~31_combout\ : std_logic;
SIGNAL \inst1|Add1~12\ : std_logic;
SIGNAL \inst1|Add1~13_combout\ : std_logic;
SIGNAL \inst1|Add1~32_combout\ : std_logic;
SIGNAL \inst1|Add1~14\ : std_logic;
SIGNAL \inst1|Add1~15_combout\ : std_logic;
SIGNAL \inst1|Add1~26_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|Add1~16\ : std_logic;
SIGNAL \inst1|Add1~18\ : std_logic;
SIGNAL \inst1|Add1~19_combout\ : std_logic;
SIGNAL \inst1|Add1~28_combout\ : std_logic;
SIGNAL \inst1|Add1~20\ : std_logic;
SIGNAL \inst1|Add1~21_combout\ : std_logic;
SIGNAL \inst1|Add1~29_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~22\ : std_logic;
SIGNAL \inst1|Add1~23_combout\ : std_logic;
SIGNAL \inst1|Add1~25_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|Add1~17_combout\ : std_logic;
SIGNAL \inst1|Add1~27_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|LessThan7~2_combout\ : std_logic;
SIGNAL \inst1|LessThan7~3_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|v_sync~q\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|Equal57~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst11|columnNum~4_combout\ : std_logic;
SIGNAL \inst11|buttonState~0_combout\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|LessThan6~1_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|disp_ena~q\ : std_logic;
SIGNAL \inst11|buttonState~q\ : std_logic;
SIGNAL \inst11|columnNum[0]~1_combout\ : std_logic;
SIGNAL \inst11|columnNum[3]~2_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|columnNum~5_combout\ : std_logic;
SIGNAL \inst11|columnNum~0_combout\ : std_logic;
SIGNAL \inst11|columnNum~3_combout\ : std_logic;
SIGNAL \inst11|a0~0_combout\ : std_logic;
SIGNAL \inst11|Equal54~0_combout\ : std_logic;
SIGNAL \inst11|a0~1_combout\ : std_logic;
SIGNAL \inst11|a0~1clkctrl_outclk\ : std_logic;
SIGNAL \inst11|a0~combout\ : std_logic;
SIGNAL \inst11|b0~0_combout\ : std_logic;
SIGNAL \inst11|b0~combout\ : std_logic;
SIGNAL \inst11|Equal55~0_combout\ : std_logic;
SIGNAL \inst11|c0~combout\ : std_logic;
SIGNAL \inst11|d0~0_combout\ : std_logic;
SIGNAL \inst11|d0~combout\ : std_logic;
SIGNAL \inst11|e0~0_combout\ : std_logic;
SIGNAL \inst11|e0~combout\ : std_logic;
SIGNAL \inst11|f0~0_combout\ : std_logic;
SIGNAL \inst11|f0~combout\ : std_logic;
SIGNAL \inst11|g0~0_combout\ : std_logic;
SIGNAL \inst11|g0~combout\ : std_logic;
SIGNAL \confirmButton~input_o\ : std_logic;
SIGNAL \inst11|Equal61~0_combout\ : std_logic;
SIGNAL \inst11|process_0~80_combout\ : std_logic;
SIGNAL \inst11|G[1]~2_combout\ : std_logic;
SIGNAL \inst11|p2~3_combout\ : std_logic;
SIGNAL \inst11|process_0~89_combout\ : std_logic;
SIGNAL \inst11|p2~5_combout\ : std_logic;
SIGNAL \inst11|buttonStateConfirm~0_combout\ : std_logic;
SIGNAL \inst11|buttonStateConfirm~q\ : std_logic;
SIGNAL \inst11|A[0]~0_combout\ : std_logic;
SIGNAL \inst11|process_0~90_combout\ : std_logic;
SIGNAL \inst11|E[1]~1_combout\ : std_logic;
SIGNAL \inst11|process_0~77_combout\ : std_logic;
SIGNAL \inst11|E~0_combout\ : std_logic;
SIGNAL \inst11|E~2_combout\ : std_logic;
SIGNAL \inst11|process_0~75_combout\ : std_logic;
SIGNAL \inst11|process_0~104_combout\ : std_logic;
SIGNAL \inst11|F~0_combout\ : std_logic;
SIGNAL \inst11|F[1]~2_combout\ : std_logic;
SIGNAL \inst11|process_0~83_combout\ : std_logic;
SIGNAL \inst11|F~1_combout\ : std_logic;
SIGNAL \inst11|process_0~84_combout\ : std_logic;
SIGNAL \inst11|p1~4_combout\ : std_logic;
SIGNAL \inst11|C~4_combout\ : std_logic;
SIGNAL \inst11|C[1]~2_combout\ : std_logic;
SIGNAL \inst11|Equal54~1_combout\ : std_logic;
SIGNAL \inst11|C~3_combout\ : std_logic;
SIGNAL \inst11|process_0~81_combout\ : std_logic;
SIGNAL \inst11|process_0~94_combout\ : std_logic;
SIGNAL \inst11|B~1_combout\ : std_logic;
SIGNAL \inst11|B[1]~3_combout\ : std_logic;
SIGNAL \inst11|B~0_combout\ : std_logic;
SIGNAL \inst11|B~2_combout\ : std_logic;
SIGNAL \inst11|process_0~79_combout\ : std_logic;
SIGNAL \inst11|p1~2_combout\ : std_logic;
SIGNAL \inst11|p1~6_combout\ : std_logic;
SIGNAL \inst11|process_0~87_combout\ : std_logic;
SIGNAL \inst11|p2~0_combout\ : std_logic;
SIGNAL \inst11|process_0~92_combout\ : std_logic;
SIGNAL \inst11|A[1]~3_combout\ : std_logic;
SIGNAL \inst11|A~1_combout\ : std_logic;
SIGNAL \inst11|A~2_combout\ : std_logic;
SIGNAL \inst11|process_0~78_combout\ : std_logic;
SIGNAL \inst11|process_0~91_combout\ : std_logic;
SIGNAL \inst11|process_0~95_combout\ : std_logic;
SIGNAL \inst11|process_0~96_combout\ : std_logic;
SIGNAL \inst11|process_0~93_combout\ : std_logic;
SIGNAL \inst11|D~2_combout\ : std_logic;
SIGNAL \inst11|D~4_combout\ : std_logic;
SIGNAL \inst11|D[1]~3_combout\ : std_logic;
SIGNAL \inst11|process_0~82_combout\ : std_logic;
SIGNAL \inst11|process_0~76_combout\ : std_logic;
SIGNAL \inst11|p1~3_combout\ : std_logic;
SIGNAL \inst11|p1~5_combout\ : std_logic;
SIGNAL \inst11|process_0~98_combout\ : std_logic;
SIGNAL \inst11|process_0~99_combout\ : std_logic;
SIGNAL \inst11|G[1]~3_combout\ : std_logic;
SIGNAL \inst11|H[1]~0_combout\ : std_logic;
SIGNAL \inst11|H~1_combout\ : std_logic;
SIGNAL \inst11|process_0~86_combout\ : std_logic;
SIGNAL \inst11|process_0~105_combout\ : std_logic;
SIGNAL \inst11|I[1]~1_combout\ : std_logic;
SIGNAL \inst11|I~0_combout\ : std_logic;
SIGNAL \inst11|Equal62~0_combout\ : std_logic;
SIGNAL \inst11|process_0~88_combout\ : std_logic;
SIGNAL \inst11|p2~4_combout\ : std_logic;
SIGNAL \inst11|p1~10_combout\ : std_logic;
SIGNAL \inst11|p1~7_combout\ : std_logic;
SIGNAL \inst11|p1~8_combout\ : std_logic;
SIGNAL \inst11|p1~9_combout\ : std_logic;
SIGNAL \inst11|p2~1_combout\ : std_logic;
SIGNAL \inst11|p2~2_combout\ : std_logic;
SIGNAL \inst11|G~0_combout\ : std_logic;
SIGNAL \inst11|G~1_combout\ : std_logic;
SIGNAL \inst11|process_0~85_combout\ : std_logic;
SIGNAL \inst11|process_0~97_combout\ : std_logic;
SIGNAL \inst11|G[1]~4_combout\ : std_logic;
SIGNAL \inst1|LessThan7~4_combout\ : std_logic;
SIGNAL \inst1|LessThan7~5_combout\ : std_logic;
SIGNAL \inst11|LessThan25~3_combout\ : std_logic;
SIGNAL \inst11|LessThan25~4_combout\ : std_logic;
SIGNAL \inst1|row[0]~0_combout\ : std_logic;
SIGNAL \inst11|process_0~23_combout\ : std_logic;
SIGNAL \inst11|LessThan25~1_combout\ : std_logic;
SIGNAL \inst11|LessThan25~2_combout\ : std_logic;
SIGNAL \inst11|LessThan24~0_combout\ : std_logic;
SIGNAL \inst1|row[31]~feeder_combout\ : std_logic;
SIGNAL \inst11|LessThan23~1_combout\ : std_logic;
SIGNAL \inst11|LessThan4~1_combout\ : std_logic;
SIGNAL \inst11|LessThan26~0_combout\ : std_logic;
SIGNAL \inst11|LessThan26~1_combout\ : std_logic;
SIGNAL \inst11|green[7]~5_combout\ : std_logic;
SIGNAL \inst11|process_0~12_combout\ : std_logic;
SIGNAL \inst1|column[0]~0_combout\ : std_logic;
SIGNAL \inst11|LessThan2~3_combout\ : std_logic;
SIGNAL \inst11|LessThan2~4_combout\ : std_logic;
SIGNAL \inst11|process_0~47_combout\ : std_logic;
SIGNAL \inst11|process_0~48_combout\ : std_logic;
SIGNAL \inst11|process_0~49_combout\ : std_logic;
SIGNAL \inst1|column[31]~feeder_combout\ : std_logic;
SIGNAL \inst11|process_0~14_combout\ : std_logic;
SIGNAL \inst11|process_0~50_combout\ : std_logic;
SIGNAL \inst11|process_0~51_combout\ : std_logic;
SIGNAL \inst11|green[7]~7_combout\ : std_logic;
SIGNAL \inst11|red[7]~30_combout\ : std_logic;
SIGNAL \inst11|LessThan18~0_combout\ : std_logic;
SIGNAL \inst11|process_0~21_combout\ : std_logic;
SIGNAL \inst11|LessThan17~0_combout\ : std_logic;
SIGNAL \inst11|process_0~20_combout\ : std_logic;
SIGNAL \inst11|LessThan17~1_combout\ : std_logic;
SIGNAL \inst11|LessThan18~1_combout\ : std_logic;
SIGNAL \inst11|LessThan25~0_combout\ : std_logic;
SIGNAL \inst11|LessThan18~2_combout\ : std_logic;
SIGNAL \inst11|red[7]~16_combout\ : std_logic;
SIGNAL \inst11|red[7]~17_combout\ : std_logic;
SIGNAL \inst11|LessThan1~0_combout\ : std_logic;
SIGNAL \inst11|LessThan24~1_combout\ : std_logic;
SIGNAL \inst11|green[7]~10_combout\ : std_logic;
SIGNAL \inst11|green[7]~2_combout\ : std_logic;
SIGNAL \inst11|LessThan23~0_combout\ : std_logic;
SIGNAL \inst11|LessThan23~2_combout\ : std_logic;
SIGNAL \inst11|LessThan23~3_combout\ : std_logic;
SIGNAL \inst11|green[7]~3_combout\ : std_logic;
SIGNAL \inst11|process_0~41_combout\ : std_logic;
SIGNAL \inst11|process_0~42_combout\ : std_logic;
SIGNAL \inst11|process_0~37_combout\ : std_logic;
SIGNAL \inst11|process_0~38_combout\ : std_logic;
SIGNAL \inst11|process_0~26_combout\ : std_logic;
SIGNAL \inst11|process_0~39_combout\ : std_logic;
SIGNAL \inst11|LessThan3~0_combout\ : std_logic;
SIGNAL \inst11|process_0~40_combout\ : std_logic;
SIGNAL \inst11|process_0~43_combout\ : std_logic;
SIGNAL \inst11|green[7]~4_combout\ : std_logic;
SIGNAL \inst11|process_0~45_combout\ : std_logic;
SIGNAL \inst11|process_0~16_combout\ : std_logic;
SIGNAL \inst11|LessThan2~2_combout\ : std_logic;
SIGNAL \inst11|process_0~44_combout\ : std_logic;
SIGNAL \inst11|LessThan8~0_combout\ : std_logic;
SIGNAL \inst11|process_0~46_combout\ : std_logic;
SIGNAL \inst11|green[7]~6_combout\ : std_logic;
SIGNAL \inst11|red[6]~29_combout\ : std_logic;
SIGNAL \inst11|red[6]~31_combout\ : std_logic;
SIGNAL \inst11|red[7]~24_combout\ : std_logic;
SIGNAL \inst11|red[7]~34_combout\ : std_logic;
SIGNAL \inst11|red[6]~35_combout\ : std_logic;
SIGNAL \inst11|green[7]~8_combout\ : std_logic;
SIGNAL \inst11|red[7]~32_combout\ : std_logic;
SIGNAL \inst11|red[7]~21_combout\ : std_logic;
SIGNAL \inst11|red[6]~33_combout\ : std_logic;
SIGNAL \inst11|red[6]~36_combout\ : std_logic;
SIGNAL \inst11|LessThan30~2_combout\ : std_logic;
SIGNAL \inst11|process_0~22_combout\ : std_logic;
SIGNAL \inst11|process_0~24_combout\ : std_logic;
SIGNAL \inst11|process_0~25_combout\ : std_logic;
SIGNAL \inst11|process_0~28_combout\ : std_logic;
SIGNAL \inst11|process_0~27_combout\ : std_logic;
SIGNAL \inst11|process_0~29_combout\ : std_logic;
SIGNAL \inst11|process_0~30_combout\ : std_logic;
SIGNAL \inst11|process_0~31_combout\ : std_logic;
SIGNAL \inst11|process_0~32_combout\ : std_logic;
SIGNAL \inst11|process_0~33_combout\ : std_logic;
SIGNAL \inst11|process_0~13_combout\ : std_logic;
SIGNAL \inst11|process_0~15_combout\ : std_logic;
SIGNAL \inst11|LessThan5~0_combout\ : std_logic;
SIGNAL \inst11|LessThan4~0_combout\ : std_logic;
SIGNAL \inst11|process_0~18_combout\ : std_logic;
SIGNAL \inst11|process_0~19_combout\ : std_logic;
SIGNAL \inst11|process_0~17_combout\ : std_logic;
SIGNAL \inst11|process_0~100_combout\ : std_logic;
SIGNAL \inst11|red[7]~12_combout\ : std_logic;
SIGNAL \inst11|process_0~35_combout\ : std_logic;
SIGNAL \inst11|process_0~36_combout\ : std_logic;
SIGNAL \inst11|process_0~106_combout\ : std_logic;
SIGNAL \inst11|process_0~34_combout\ : std_logic;
SIGNAL \inst11|process_0~107_combout\ : std_logic;
SIGNAL \inst11|red[7]~13_combout\ : std_logic;
SIGNAL \inst11|red[7]~25_combout\ : std_logic;
SIGNAL \inst11|red[6]~26_combout\ : std_logic;
SIGNAL \inst11|red[7]~27_combout\ : std_logic;
SIGNAL \inst11|red[7]~14_combout\ : std_logic;
SIGNAL \inst11|red[6]~15_combout\ : std_logic;
SIGNAL \inst11|red[7]~18_combout\ : std_logic;
SIGNAL \inst11|red[7]~19_combout\ : std_logic;
SIGNAL \inst11|red[6]~20_combout\ : std_logic;
SIGNAL \inst11|red[7]~22_combout\ : std_logic;
SIGNAL \inst11|red[6]~23_combout\ : std_logic;
SIGNAL \inst11|red[6]~28_combout\ : std_logic;
SIGNAL \inst11|red[7]~37_combout\ : std_logic;
SIGNAL \inst11|process_0~62_combout\ : std_logic;
SIGNAL \inst11|process_0~63_combout\ : std_logic;
SIGNAL \inst11|process_0~60_combout\ : std_logic;
SIGNAL \inst11|process_0~61_combout\ : std_logic;
SIGNAL \inst11|process_0~64_combout\ : std_logic;
SIGNAL \inst11|LessThan37~0_combout\ : std_logic;
SIGNAL \inst11|LessThan37~1_combout\ : std_logic;
SIGNAL \inst11|LessThan38~0_combout\ : std_logic;
SIGNAL \inst11|LessThan38~1_combout\ : std_logic;
SIGNAL \inst11|LessThan38~2_combout\ : std_logic;
SIGNAL \inst11|process_0~52_combout\ : std_logic;
SIGNAL \inst11|red[6]~38_combout\ : std_logic;
SIGNAL \inst11|process_0~55_combout\ : std_logic;
SIGNAL \inst11|process_0~56_combout\ : std_logic;
SIGNAL \inst11|process_0~53_combout\ : std_logic;
SIGNAL \inst11|process_0~54_combout\ : std_logic;
SIGNAL \inst11|process_0~57_combout\ : std_logic;
SIGNAL \inst11|process_0~58_combout\ : std_logic;
SIGNAL \inst11|process_0~59_combout\ : std_logic;
SIGNAL \inst11|Equal61~1_combout\ : std_logic;
SIGNAL \inst11|blue[7]~4_combout\ : std_logic;
SIGNAL \inst11|process_0~67_combout\ : std_logic;
SIGNAL \inst11|process_0~68_combout\ : std_logic;
SIGNAL \inst11|process_0~69_combout\ : std_logic;
SIGNAL \inst11|process_0~70_combout\ : std_logic;
SIGNAL \inst11|LessThan30~3_combout\ : std_logic;
SIGNAL \inst11|LessThan30~5_combout\ : std_logic;
SIGNAL \inst11|LessThan30~4_combout\ : std_logic;
SIGNAL \inst11|LessThan29~0_combout\ : std_logic;
SIGNAL \inst11|process_0~65_combout\ : std_logic;
SIGNAL \inst11|process_0~72_combout\ : std_logic;
SIGNAL \inst11|blue[7]~12_combout\ : std_logic;
SIGNAL \inst11|process_0~66_combout\ : std_logic;
SIGNAL \inst11|blue[7]~5_combout\ : std_logic;
SIGNAL \inst11|blue[7]~6_combout\ : std_logic;
SIGNAL \inst11|process_0~74_combout\ : std_logic;
SIGNAL \inst11|LessThan27~0_combout\ : std_logic;
SIGNAL \inst11|LessThan27~1_combout\ : std_logic;
SIGNAL \inst11|LessThan28~0_combout\ : std_logic;
SIGNAL \inst11|LessThan28~1_combout\ : std_logic;
SIGNAL \inst11|LessThan28~2_combout\ : std_logic;
SIGNAL \inst11|process_0~103_combout\ : std_logic;
SIGNAL \inst11|blue[7]~7_combout\ : std_logic;
SIGNAL \inst11|process_0~101_combout\ : std_logic;
SIGNAL \inst11|process_0~102_combout\ : std_logic;
SIGNAL \inst11|blue[7]~8_combout\ : std_logic;
SIGNAL \inst11|blue[7]~9_combout\ : std_logic;
SIGNAL \inst11|blue[7]~10_combout\ : std_logic;
SIGNAL \inst11|blue[7]~11_combout\ : std_logic;
SIGNAL \inst11|LessThan1~1_combout\ : std_logic;
SIGNAL \inst11|LessThan23~4_combout\ : std_logic;
SIGNAL \inst11|LessThan1~2_combout\ : std_logic;
SIGNAL \inst11|red[7]~39_combout\ : std_logic;
SIGNAL \inst11|red[7]~40_combout\ : std_logic;
SIGNAL \inst11|red[7]~41_combout\ : std_logic;
SIGNAL \inst11|process_0~73_combout\ : std_logic;
SIGNAL \inst11|red[7]~44_combout\ : std_logic;
SIGNAL \inst11|red[7]~45_combout\ : std_logic;
SIGNAL \inst11|red[7]~60_combout\ : std_logic;
SIGNAL \inst11|red[7]~46_combout\ : std_logic;
SIGNAL \inst11|red[7]~61_combout\ : std_logic;
SIGNAL \inst11|red[7]~42_combout\ : std_logic;
SIGNAL \inst11|red[7]~59_combout\ : std_logic;
SIGNAL \inst11|process_0~71_combout\ : std_logic;
SIGNAL \inst11|red[7]~43_combout\ : std_logic;
SIGNAL \inst11|red[7]~47_combout\ : std_logic;
SIGNAL \inst11|red[7]~48_combout\ : std_logic;
SIGNAL \inst11|red[7]~48clkctrl_outclk\ : std_logic;
SIGNAL \inst11|red[6]~49_combout\ : std_logic;
SIGNAL \inst11|red[6]~50_combout\ : std_logic;
SIGNAL \inst11|red[6]~51_combout\ : std_logic;
SIGNAL \inst11|red[6]~52_combout\ : std_logic;
SIGNAL \inst11|red[6]~53_combout\ : std_logic;
SIGNAL \inst11|red[6]~54_combout\ : std_logic;
SIGNAL \inst11|red[6]~55_combout\ : std_logic;
SIGNAL \inst11|red[5]~56_combout\ : std_logic;
SIGNAL \inst11|green[7]~9_combout\ : std_logic;
SIGNAL \inst11|red[6]~57_combout\ : std_logic;
SIGNAL \inst11|red[7]~58_combout\ : std_logic;
SIGNAL \inst11|F\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|p2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|columnNum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|A\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|E\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|C\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|B\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|H\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|D\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|I\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|p1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|blue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_confirmButton~input_o\ : std_logic;
SIGNAL \ALT_INV_b1~input_o\ : std_logic;

BEGIN

pixel_clk <= ww_pixel_clk;
ww_clk <= clk;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
n_blank <= ww_n_blank;
n_sync <= ww_n_sync;
r1 <= ww_r1;
ww_Reset <= Reset;
ww_clock <= clock;
ww_b1 <= b1;
ww_confirmButton <= confirmButton;
a0 <= ww_a0;
b0 <= ww_b0;
c0 <= ww_c0;
d0 <= ww_d0;
e0 <= ww_e0;
f0 <= ww_f0;
g0 <= ww_g0;
r2 <= ww_r2;
blue <= ww_blue;
green <= ww_green;
red <= ww_red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst11|a0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|a0~1_combout\);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst11|red[7]~48clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|red[7]~48_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_confirmButton~input_o\ <= NOT \confirmButton~input_o\;
\ALT_INV_b1~input_o\ <= NOT \b1~input_o\;

-- Location: IOOBUF_X47_Y73_N2
\pixel_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_pixel_clk);

-- Location: IOOBUF_X38_Y73_N16
\h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|h_sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X54_Y73_N2
\v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|v_sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOOBUF_X31_Y73_N9
\n_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_blank);

-- Location: IOOBUF_X35_Y73_N16
\n_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_n_sync);

-- Location: IOOBUF_X69_Y73_N16
\r1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_b1~input_o\,
	devoe => ww_devoe,
	o => ww_r1);

-- Location: IOOBUF_X69_Y73_N23
\a0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|a0~combout\,
	devoe => ww_devoe,
	o => ww_a0);

-- Location: IOOBUF_X107_Y73_N23
\b0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|b0~combout\,
	devoe => ww_devoe,
	o => ww_b0);

-- Location: IOOBUF_X67_Y73_N23
\c0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|c0~combout\,
	devoe => ww_devoe,
	o => ww_c0);

-- Location: IOOBUF_X115_Y50_N2
\d0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|d0~combout\,
	devoe => ww_devoe,
	o => ww_d0);

-- Location: IOOBUF_X115_Y54_N16
\e0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|e0~combout\,
	devoe => ww_devoe,
	o => ww_e0);

-- Location: IOOBUF_X115_Y67_N16
\f0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|f0~combout\,
	devoe => ww_devoe,
	o => ww_f0);

-- Location: IOOBUF_X115_Y69_N2
\g0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|g0~combout\,
	devoe => ww_devoe,
	o => ww_g0);

-- Location: IOOBUF_X94_Y73_N2
\r2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_confirmButton~input_o\,
	devoe => ww_devoe,
	o => ww_r2);

-- Location: IOOBUF_X52_Y73_N23
\blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(7),
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X23_Y73_N9
\blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(6),
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X52_Y73_N16
\blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X42_Y73_N2
\blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X42_Y73_N9
\blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X23_Y73_N2
\blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X38_Y73_N2
\blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X38_Y73_N9
\blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X23_Y73_N16
\green[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|green\(7),
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X20_Y73_N2
\green[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(6),
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X16_Y73_N2
\green[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X16_Y73_N9
\green[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X25_Y73_N23
\green[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X11_Y73_N9
\green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X25_Y73_N16
\green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X11_Y73_N16
\green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X20_Y73_N16
\red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|red\(7),
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X11_Y73_N23
\red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(6),
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X40_Y73_N9
\red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X20_Y73_N9
\red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X33_Y73_N9
\red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X35_Y73_N23
\red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X31_Y73_N2
\red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X33_Y73_N2
\red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|blue\(5),
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\inst2|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 15,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 58,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 19,
	m => 58,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 215,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y57_N4
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|h_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X76_Y57_N16
\inst1|h_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~11_combout\ = (\inst1|Add0~0_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~11_combout\);

-- Location: FF_X76_Y57_N17
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X77_Y57_N6
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X75_Y57_N16
\inst1|h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~10_combout\ = (\inst1|Add0~2_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|h_count~10_combout\);

-- Location: FF_X77_Y57_N29
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: LCCOMB_X77_Y57_N8
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X76_Y57_N10
\inst1|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~9_combout\ = (\inst1|Add0~4_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~9_combout\);

-- Location: FF_X77_Y57_N9
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X77_Y57_N10
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|h_count\(3) & (!\inst1|Add0~5\)) # (!\inst1|h_count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X76_Y57_N14
\inst1|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~8_combout\ = (\inst1|Add0~6_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~8_combout\);

-- Location: FF_X77_Y57_N11
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: LCCOMB_X77_Y57_N28
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst1|h_count\(3) & (\inst1|h_count\(2) & (\inst1|h_count\(1) & \inst1|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(3),
	datab => \inst1|h_count\(2),
	datac => \inst1|h_count\(1),
	datad => \inst1|h_count\(4),
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X77_Y57_N12
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X77_Y57_N14
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X74_Y57_N8
\inst1|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~6_combout\ = (\inst1|Add0~10_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~6_combout\);

-- Location: FF_X77_Y57_N15
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: LCCOMB_X77_Y57_N16
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X76_Y57_N28
\inst1|h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~5_combout\ = (\inst1|Add0~12_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~5_combout\);

-- Location: FF_X77_Y57_N3
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X77_Y57_N18
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X77_Y57_N30
\inst1|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~4_combout\ = (\inst1|Add0~14_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|h_count~4_combout\);

-- Location: FF_X77_Y57_N19
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X77_Y57_N20
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|h_count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|h_count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|h_count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X72_Y57_N8
\inst1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~3_combout\ = (\inst1|Add0~16_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~3_combout\);

-- Location: FF_X77_Y57_N21
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X77_Y57_N22
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|h_count\(9) & (!\inst1|Add0~17\)) # (!\inst1|h_count\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X73_Y57_N10
\inst1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~18_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|h_count\(10),
	datad => \inst1|h_count\(11),
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X77_Y57_N1
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X77_Y57_N2
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst1|h_count\(7)) # ((\inst1|h_count\(5)) # ((\inst1|h_count\(6)) # (\inst1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(5),
	datac => \inst1|h_count\(6),
	datad => \inst1|h_count\(8),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X77_Y57_N0
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|h_count\(9) & ((\inst1|process_0~0_combout\) # ((\inst1|h_count\(0) & \inst1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datab => \inst1|process_0~1_combout\,
	datac => \inst1|h_count\(9),
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X77_Y57_N24
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|h_count\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|h_count\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|h_count\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X72_Y57_N14
\inst1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~20_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X72_Y57_N23
\inst1|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(10));

-- Location: LCCOMB_X77_Y57_N26
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = \inst1|Add0~21\ $ (\inst1|h_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(11),
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\);

-- Location: LCCOMB_X72_Y57_N26
\inst1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~22_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X72_Y57_N29
\inst1|h_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(11));

-- Location: LCCOMB_X76_Y57_N20
\inst1|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~7_combout\ = (\inst1|Add0~8_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~7_combout\);

-- Location: FF_X77_Y57_N13
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X76_Y57_N24
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|Add0~12_combout\ & ((\inst1|Add0~8_combout\) # (\inst1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X76_Y57_N12
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count\(11) & ((\inst1|process_0~2_combout\) # (\inst1|h_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X73_Y57_N20
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|process_0~3_combout\) # ((\inst1|Add0~16_combout\) # ((\inst1|process_0~4_combout\ & \inst1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X73_Y57_N8
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|process_0~5_combout\) # ((\inst1|Add0~18_combout\) # ((\inst1|Add0~20_combout\) # (!\inst1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~5_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X73_Y57_N9
\inst1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_sync~q\);

-- Location: FF_X69_Y60_N25
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X68_Y60_N10
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|v_count\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X68_Y59_N24
\inst1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~7_combout\ = (\inst1|process_0~3_combout\ & (\inst1|Add1~0_combout\ & (\inst1|LessThan1~3_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~0_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(0),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~7_combout\);

-- Location: FF_X68_Y59_N25
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X68_Y60_N12
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X69_Y59_N18
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~2_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(1),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~8_combout\);

-- Location: FF_X69_Y59_N25
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: LCCOMB_X68_Y60_N14
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X68_Y60_N4
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\ & \inst1|Add1~4_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|Add1~6_combout\);

-- Location: FF_X68_Y60_N15
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: LCCOMB_X68_Y60_N16
\inst1|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~9_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~10\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~9_combout\,
	cout => \inst1|Add1~10\);

-- Location: LCCOMB_X69_Y60_N6
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~9_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~9_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~30_combout\);

-- Location: FF_X69_Y60_N7
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X68_Y60_N18
\inst1|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~11_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~10\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~10\ & VCC))
-- \inst1|Add1~12\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~10\,
	combout => \inst1|Add1~11_combout\,
	cout => \inst1|Add1~12\);

-- Location: LCCOMB_X69_Y59_N22
\inst1|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~31_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\ & \inst1|Add1~11_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|Add1~11_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~31_combout\);

-- Location: FF_X69_Y59_N29
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X68_Y60_N20
\inst1|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~13_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~12\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~12\) # (GND)))
-- \inst1|Add1~14\ = CARRY((!\inst1|Add1~12\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~12\,
	combout => \inst1|Add1~13_combout\,
	cout => \inst1|Add1~14\);

-- Location: LCCOMB_X69_Y60_N14
\inst1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~32_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~13_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~13_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~32_combout\);

-- Location: FF_X69_Y60_N23
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X68_Y60_N22
\inst1|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~15_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~14\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~14\ & VCC))
-- \inst1|Add1~16\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~14\,
	combout => \inst1|Add1~15_combout\,
	cout => \inst1|Add1~16\);

-- Location: LCCOMB_X68_Y60_N6
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~15_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|Add1~15_combout\,
	datad => \inst1|v_count\(6),
	combout => \inst1|Add1~26_combout\);

-- Location: FF_X68_Y60_N23
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X68_Y60_N8
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|v_count\(2) & (!\inst1|v_count\(1) & (!\inst1|v_count\(4) & !\inst1|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(1),
	datac => \inst1|v_count\(4),
	datad => \inst1|v_count\(3),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X68_Y60_N2
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (((!\inst1|v_count\(0) & \inst1|LessThan1~0_combout\)) # (!\inst1|v_count\(5))) # (!\inst1|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(0),
	datab => \inst1|v_count\(6),
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|v_count\(5),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X68_Y60_N24
\inst1|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~17_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~16\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~16\) # (GND)))
-- \inst1|Add1~18\ = CARRY((!\inst1|Add1~16\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~16\,
	combout => \inst1|Add1~17_combout\,
	cout => \inst1|Add1~18\);

-- Location: LCCOMB_X68_Y60_N26
\inst1|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~19_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~18\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~18\ & VCC))
-- \inst1|Add1~20\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~18\,
	combout => \inst1|Add1~19_combout\,
	cout => \inst1|Add1~20\);

-- Location: LCCOMB_X68_Y60_N0
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~19_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|Add1~19_combout\,
	datad => \inst1|v_count\(8),
	combout => \inst1|Add1~28_combout\);

-- Location: FF_X69_Y60_N11
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X68_Y60_N28
\inst1|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~21_combout\ = (\inst1|v_count\(9) & (!\inst1|Add1~20\)) # (!\inst1|v_count\(9) & ((\inst1|Add1~20\) # (GND)))
-- \inst1|Add1~22\ = CARRY((!\inst1|Add1~20\) # (!\inst1|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(9),
	datad => VCC,
	cin => \inst1|Add1~20\,
	combout => \inst1|Add1~21_combout\,
	cout => \inst1|Add1~22\);

-- Location: LCCOMB_X69_Y60_N20
\inst1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~29_combout\ = (\inst1|process_0~3_combout\ & (\inst1|Add1~21_combout\ & (\inst1|LessThan1~3_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|Add1~21_combout\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|v_count\(9),
	combout => \inst1|Add1~29_combout\);

-- Location: FF_X69_Y60_N27
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X69_Y60_N22
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|v_count\(8) & (!\inst1|v_count\(9) & !\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datab => \inst1|v_count\(9),
	datad => \inst1|v_count\(7),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X68_Y60_N30
\inst1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~23_combout\ = \inst1|v_count\(10) $ (!\inst1|Add1~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(10),
	cin => \inst1|Add1~22\,
	combout => \inst1|Add1~23_combout\);

-- Location: LCCOMB_X69_Y60_N2
\inst1|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~25_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|Add1~23_combout\ & \inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(10),
	datab => \inst1|Add1~23_combout\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~25_combout\);

-- Location: FF_X69_Y60_N1
\inst1|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(10));

-- Location: LCCOMB_X69_Y60_N24
\inst1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = ((\inst1|LessThan1~1_combout\ & \inst1|LessThan1~2_combout\)) # (!\inst1|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~1_combout\,
	datab => \inst1|LessThan1~2_combout\,
	datad => \inst1|v_count\(10),
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X69_Y60_N16
\inst1|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~27_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\ & \inst1|Add1~17_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|v_count\(7),
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add1~17_combout\,
	combout => \inst1|Add1~27_combout\);

-- Location: LCCOMB_X69_Y60_N26
\inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (!\inst1|Add1~27_combout\ & (!\inst1|Add1~26_combout\ & (!\inst1|Add1~29_combout\ & !\inst1|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~27_combout\,
	datab => \inst1|Add1~26_combout\,
	datac => \inst1|Add1~29_combout\,
	datad => \inst1|Add1~28_combout\,
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X70_Y59_N20
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = ((!\inst1|Add1~7_combout\ & !\inst1|Add1~8_combout\)) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~7_combout\,
	datac => \inst1|Add1~8_combout\,
	datad => \inst1|Add1~25_combout\,
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X69_Y59_N28
\inst1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(5) & ((\inst1|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: LCCOMB_X69_Y59_N24
\inst1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~2_combout\ = (\inst1|LessThan7~1_combout\ & ((\inst1|Add1~11_combout\) # (!\inst1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|Add1~11_combout\,
	datad => \inst1|LessThan7~1_combout\,
	combout => \inst1|LessThan7~2_combout\);

-- Location: LCCOMB_X69_Y60_N18
\inst1|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~3_combout\ = (\inst1|LessThan7~2_combout\ & (\inst1|Add1~30_combout\ & ((\inst1|Add1~13_combout\) # (!\inst1|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|Add1~13_combout\,
	datac => \inst1|LessThan7~2_combout\,
	datad => \inst1|Add1~30_combout\,
	combout => \inst1|LessThan7~3_combout\);

-- Location: LCCOMB_X70_Y60_N0
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|LessThan7~0_combout\ & (!\inst1|Add1~6_combout\ & (!\inst1|process_0~7_combout\ & \inst1|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~0_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|LessThan7~3_combout\,
	combout => \inst1|process_0~8_combout\);

-- Location: FF_X70_Y60_N1
\inst1|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_sync~q\);

-- Location: IOIBUF_X115_Y40_N8
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X72_Y60_N22
\inst11|Equal57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal57~0_combout\ = (\inst11|columnNum\(1) & \inst11|columnNum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datac => \inst11|columnNum\(0),
	combout => \inst11|Equal57~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X72_Y60_N28
\inst11|columnNum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|columnNum~4_combout\ = (\inst11|columnNum[3]~2_combout\ & (\Reset~input_o\ & (\inst11|Equal57~0_combout\ $ (\inst11|columnNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal57~0_combout\,
	datab => \inst11|columnNum[3]~2_combout\,
	datac => \inst11|columnNum\(2),
	datad => \Reset~input_o\,
	combout => \inst11|columnNum~4_combout\);

-- Location: LCCOMB_X74_Y59_N12
\inst11|buttonState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|buttonState~0_combout\ = !\b1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b1~input_o\,
	combout => \inst11|buttonState~0_combout\);

-- Location: LCCOMB_X73_Y54_N0
\inst1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = ((!\inst1|Add0~16_combout\) # (!\inst1|Add0~14_combout\)) # (!\inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|LessThan6~0_combout\);

-- Location: LCCOMB_X73_Y57_N26
\inst1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~1_combout\ = (\inst1|process_0~3_combout\) # ((!\inst1|Add0~22_combout\ & ((\inst1|LessThan6~0_combout\) # (!\inst1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan6~0_combout\,
	datab => \inst1|Add0~22_combout\,
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|LessThan6~1_combout\);

-- Location: LCCOMB_X70_Y60_N28
\inst1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = (\inst1|LessThan6~1_combout\ & (((\inst1|LessThan7~0_combout\ & !\inst1|LessThan7~3_combout\)) # (!\inst1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~0_combout\,
	datab => \inst1|Add1~25_combout\,
	datac => \inst1|LessThan6~1_combout\,
	datad => \inst1|LessThan7~3_combout\,
	combout => \inst1|process_0~9_combout\);

-- Location: FF_X70_Y60_N29
\inst1|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|disp_ena~q\);

-- Location: FF_X74_Y59_N13
\inst11|buttonState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|buttonState~0_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|buttonState~q\);

-- Location: LCCOMB_X74_Y59_N6
\inst11|columnNum[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|columnNum[0]~1_combout\ = (\inst1|disp_ena~q\ & (((!\inst11|buttonState~q\ & !\b1~input_o\)) # (!\Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|buttonState~q\,
	datab => \b1~input_o\,
	datac => \Reset~input_o\,
	datad => \inst1|disp_ena~q\,
	combout => \inst11|columnNum[0]~1_combout\);

-- Location: FF_X72_Y60_N29
\inst11|columnNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|columnNum~4_combout\,
	ena => \inst11|columnNum[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|columnNum\(2));

-- Location: LCCOMB_X72_Y60_N14
\inst11|columnNum[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|columnNum[3]~2_combout\ = ((\inst11|columnNum\(1) & (\inst11|columnNum\(0) & \inst11|columnNum\(2)))) # (!\inst11|columnNum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|columnNum[3]~2_combout\);

-- Location: LCCOMB_X72_Y60_N4
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|columnNum\(3) $ (((\inst11|columnNum\(1) & (\inst11|columnNum\(0) & \inst11|columnNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|Add0~0_combout\);

-- Location: LCCOMB_X72_Y60_N30
\inst11|columnNum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|columnNum~5_combout\ = ((\inst11|columnNum[3]~2_combout\ & \inst11|Add0~0_combout\)) # (!\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|columnNum[3]~2_combout\,
	datac => \inst11|Add0~0_combout\,
	datad => \Reset~input_o\,
	combout => \inst11|columnNum~5_combout\);

-- Location: FF_X72_Y60_N31
\inst11|columnNum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|columnNum~5_combout\,
	ena => \inst11|columnNum[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|columnNum\(3));

-- Location: LCCOMB_X72_Y60_N2
\inst11|columnNum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|columnNum~0_combout\ = ((!\inst11|columnNum\(3) & !\inst11|columnNum\(0))) # (!\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \Reset~input_o\,
	combout => \inst11|columnNum~0_combout\);

-- Location: FF_X72_Y60_N3
\inst11|columnNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|columnNum~0_combout\,
	ena => \inst11|columnNum[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|columnNum\(0));

-- Location: LCCOMB_X72_Y60_N6
\inst11|columnNum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|columnNum~3_combout\ = (\inst11|columnNum[3]~2_combout\ & (\Reset~input_o\ & (\inst11|columnNum\(0) $ (\inst11|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(0),
	datab => \inst11|columnNum[3]~2_combout\,
	datac => \inst11|columnNum\(1),
	datad => \Reset~input_o\,
	combout => \inst11|columnNum~3_combout\);

-- Location: FF_X72_Y60_N7
\inst11|columnNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|columnNum~3_combout\,
	ena => \inst11|columnNum[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|columnNum\(1));

-- Location: LCCOMB_X75_Y60_N0
\inst11|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|a0~0_combout\ = (!\inst11|columnNum\(3) & (!\inst11|columnNum\(2) & (\inst11|columnNum\(1) $ (!\inst11|columnNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(2),
	combout => \inst11|a0~0_combout\);

-- Location: LCCOMB_X75_Y60_N26
\inst11|Equal54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal54~0_combout\ = (!\inst11|columnNum\(1) & !\inst11|columnNum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datac => \inst11|columnNum\(0),
	combout => \inst11|Equal54~0_combout\);

-- Location: LCCOMB_X72_Y60_N0
\inst11|a0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|a0~1_combout\ = (\inst1|disp_ena~q\ & (((!\inst11|columnNum\(2) & \inst11|Equal54~0_combout\)) # (!\inst11|columnNum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(3),
	datab => \inst11|columnNum\(2),
	datac => \inst11|Equal54~0_combout\,
	datad => \inst1|disp_ena~q\,
	combout => \inst11|a0~1_combout\);

-- Location: CLKCTRL_G14
\inst11|a0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|a0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|a0~1clkctrl_outclk\);

-- Location: LCCOMB_X74_Y61_N16
\inst11|a0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|a0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (\inst11|a0~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|a0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|a0~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|a0~combout\,
	combout => \inst11|a0~combout\);

-- Location: LCCOMB_X75_Y60_N28
\inst11|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|b0~0_combout\ = (!\inst11|columnNum\(1) & (!\inst11|columnNum\(3) & \inst11|columnNum\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|b0~0_combout\);

-- Location: LCCOMB_X103_Y67_N24
\inst11|b0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|b0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (\inst11|b0~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|b0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|b0~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|b0~combout\,
	combout => \inst11|b0~combout\);

-- Location: LCCOMB_X73_Y60_N10
\inst11|Equal55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal55~0_combout\ = (!\inst11|columnNum\(2) & (!\inst11|columnNum\(1) & (\inst11|columnNum\(0) & !\inst11|columnNum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(2),
	datab => \inst11|columnNum\(1),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(3),
	combout => \inst11|Equal55~0_combout\);

-- Location: LCCOMB_X73_Y61_N0
\inst11|c0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|c0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (\inst11|Equal55~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|c0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal55~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|c0~combout\,
	combout => \inst11|c0~combout\);

-- Location: LCCOMB_X75_Y60_N6
\inst11|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|d0~0_combout\ = (!\inst11|columnNum\(3) & ((\inst11|columnNum\(1) & (\inst11|columnNum\(0) $ (\inst11|columnNum\(2)))) # (!\inst11|columnNum\(1) & (!\inst11|columnNum\(0) & !\inst11|columnNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(2),
	combout => \inst11|d0~0_combout\);

-- Location: LCCOMB_X80_Y61_N24
\inst11|d0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|d0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (\inst11|d0~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|d0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|d0~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|d0~combout\,
	combout => \inst11|d0~combout\);

-- Location: LCCOMB_X75_Y60_N24
\inst11|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|e0~0_combout\ = (!\inst11|columnNum\(3) & (\inst11|columnNum\(0) & ((\inst11|columnNum\(2)) # (!\inst11|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(2),
	combout => \inst11|e0~0_combout\);

-- Location: LCCOMB_X105_Y58_N0
\inst11|e0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|e0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (!\inst11|e0~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|e0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|e0~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|e0~combout\,
	combout => \inst11|e0~combout\);

-- Location: LCCOMB_X75_Y60_N2
\inst11|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|f0~0_combout\ = (\inst11|columnNum\(3)) # ((\inst11|columnNum\(1) & (\inst11|columnNum\(0))) # (!\inst11|columnNum\(1) & ((\inst11|columnNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(2),
	combout => \inst11|f0~0_combout\);

-- Location: LCCOMB_X81_Y64_N0
\inst11|f0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|f0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (!\inst11|f0~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|f0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|f0~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|f0~combout\,
	combout => \inst11|f0~combout\);

-- Location: LCCOMB_X75_Y60_N12
\inst11|g0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|g0~0_combout\ = (!\inst11|columnNum\(3) & (!\inst11|columnNum\(0) & (\inst11|columnNum\(1) $ (!\inst11|columnNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(2),
	combout => \inst11|g0~0_combout\);

-- Location: LCCOMB_X106_Y67_N0
\inst11|g0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|g0~combout\ = (GLOBAL(\inst11|a0~1clkctrl_outclk\) & (\inst11|g0~0_combout\)) # (!GLOBAL(\inst11|a0~1clkctrl_outclk\) & ((\inst11|g0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|g0~0_combout\,
	datac => \inst11|a0~1clkctrl_outclk\,
	datad => \inst11|g0~combout\,
	combout => \inst11|g0~combout\);

-- Location: IOIBUF_X115_Y53_N15
\confirmButton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmButton,
	o => \confirmButton~input_o\);

-- Location: LCCOMB_X74_Y60_N14
\inst11|Equal61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal61~0_combout\ = (!\inst11|columnNum\(3) & \inst11|columnNum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|Equal61~0_combout\);

-- Location: LCCOMB_X75_Y60_N8
\inst11|process_0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~80_combout\ = (\inst11|columnNum\(1) & !\inst11|columnNum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datac => \inst11|columnNum\(0),
	combout => \inst11|process_0~80_combout\);

-- Location: LCCOMB_X75_Y59_N16
\inst11|G[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|G[1]~2_combout\ = (\Reset~input_o\) # (!\inst1|disp_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \inst1|disp_ena~q\,
	combout => \inst11|G[1]~2_combout\);

-- Location: LCCOMB_X75_Y59_N0
\inst11|p2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p2~3_combout\ = (\inst11|p2~2_combout\ & (\inst11|process_0~98_combout\ & ((!\inst11|p1\(0)) # (!\inst11|process_0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~85_combout\,
	datab => \inst11|p1\(0),
	datac => \inst11|p2~2_combout\,
	datad => \inst11|process_0~98_combout\,
	combout => \inst11|p2~3_combout\);

-- Location: LCCOMB_X75_Y59_N24
\inst11|process_0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~89_combout\ = (\inst11|process_0~88_combout\ & (!\inst11|process_0~86_combout\ & \inst11|p1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~88_combout\,
	datac => \inst11|process_0~86_combout\,
	datad => \inst11|p1~5_combout\,
	combout => \inst11|process_0~89_combout\);

-- Location: LCCOMB_X75_Y59_N10
\inst11|p2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p2~5_combout\ = (\inst11|p2~3_combout\ & (\Reset~input_o\ & ((\inst11|process_0~89_combout\) # (!\inst11|process_0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~88_combout\,
	datab => \inst11|p2~3_combout\,
	datac => \inst11|process_0~89_combout\,
	datad => \Reset~input_o\,
	combout => \inst11|p2~5_combout\);

-- Location: LCCOMB_X74_Y59_N0
\inst11|buttonStateConfirm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|buttonStateConfirm~0_combout\ = ((!\inst11|buttonState~q\ & \inst11|buttonStateConfirm~q\)) # (!\confirmButton~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|buttonState~q\,
	datac => \inst11|buttonStateConfirm~q\,
	datad => \confirmButton~input_o\,
	combout => \inst11|buttonStateConfirm~0_combout\);

-- Location: FF_X74_Y59_N1
\inst11|buttonStateConfirm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|buttonStateConfirm~0_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|buttonStateConfirm~q\);

-- Location: LCCOMB_X74_Y59_N10
\inst11|A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|A[0]~0_combout\ = (\inst1|disp_ena~q\ & (((!\confirmButton~input_o\ & !\inst11|buttonStateConfirm~q\)) # (!\Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmButton~input_o\,
	datab => \inst11|buttonStateConfirm~q\,
	datac => \Reset~input_o\,
	datad => \inst1|disp_ena~q\,
	combout => \inst11|A[0]~0_combout\);

-- Location: FF_X75_Y59_N11
\inst11|p2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|p2~5_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|p2\(0));

-- Location: LCCOMB_X72_Y59_N12
\inst11|process_0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~90_combout\ = (\inst11|process_0~82_combout\ & !\inst11|p1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~82_combout\,
	datad => \inst11|p1\(0),
	combout => \inst11|process_0~90_combout\);

-- Location: LCCOMB_X72_Y59_N16
\inst11|E[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|E[1]~1_combout\ = (\inst11|E~0_combout\ & (((\inst11|E\(1))))) # (!\inst11|E~0_combout\ & ((\inst11|A[0]~0_combout\ & ((\Reset~input_o\))) # (!\inst11|A[0]~0_combout\ & (\inst11|E\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|E~0_combout\,
	datab => \inst11|A[0]~0_combout\,
	datac => \inst11|E\(1),
	datad => \Reset~input_o\,
	combout => \inst11|E[1]~1_combout\);

-- Location: FF_X72_Y59_N17
\inst11|E[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|E[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|E\(1));

-- Location: LCCOMB_X72_Y59_N2
\inst11|process_0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~77_combout\ = (!\inst11|E\(0) & (!\inst11|E\(1) & (\inst11|Equal61~0_combout\ & \inst11|Equal54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|E\(0),
	datab => \inst11|E\(1),
	datac => \inst11|Equal61~0_combout\,
	datad => \inst11|Equal54~0_combout\,
	combout => \inst11|process_0~77_combout\);

-- Location: LCCOMB_X72_Y59_N24
\inst11|E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|E~0_combout\ = (\Reset~input_o\ & (((\inst11|process_0~104_combout\) # (!\inst11|process_0~77_combout\)) # (!\inst11|p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p2~0_combout\,
	datab => \inst11|process_0~77_combout\,
	datac => \inst11|process_0~104_combout\,
	datad => \Reset~input_o\,
	combout => \inst11|E~0_combout\);

-- Location: LCCOMB_X72_Y59_N18
\inst11|E~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|E~2_combout\ = (\inst11|E~0_combout\ & ((\inst11|process_0~104_combout\) # (\inst11|E\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~104_combout\,
	datac => \inst11|E\(0),
	datad => \inst11|E~0_combout\,
	combout => \inst11|E~2_combout\);

-- Location: FF_X72_Y59_N19
\inst11|E[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|E~2_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|E\(0));

-- Location: LCCOMB_X72_Y60_N20
\inst11|process_0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~75_combout\ = (!\inst11|columnNum\(1) & (!\inst11|columnNum\(0) & (!\inst11|columnNum\(3) & \inst11|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|process_0~75_combout\);

-- Location: LCCOMB_X72_Y59_N14
\inst11|process_0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~104_combout\ = (!\inst11|E\(0) & (!\inst11|E\(1) & (\inst11|process_0~75_combout\ & !\inst11|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|E\(0),
	datab => \inst11|E\(1),
	datac => \inst11|process_0~75_combout\,
	datad => \inst11|p1\(0),
	combout => \inst11|process_0~104_combout\);

-- Location: LCCOMB_X72_Y59_N10
\inst11|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|F~0_combout\ = (\Reset~input_o\ & (((!\inst11|p2~0_combout\) # (!\inst11|process_0~84_combout\)) # (!\inst11|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datab => \Reset~input_o\,
	datac => \inst11|process_0~84_combout\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|F~0_combout\);

-- Location: LCCOMB_X72_Y59_N30
\inst11|F[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|F[1]~2_combout\ = (\inst11|F~0_combout\ & (((\inst11|F\(1))))) # (!\inst11|F~0_combout\ & ((\inst11|A[0]~0_combout\ & ((\Reset~input_o\))) # (!\inst11|A[0]~0_combout\ & (\inst11|F\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|F~0_combout\,
	datab => \inst11|A[0]~0_combout\,
	datac => \inst11|F\(1),
	datad => \Reset~input_o\,
	combout => \inst11|F[1]~2_combout\);

-- Location: FF_X72_Y59_N31
\inst11|F[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|F[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|F\(1));

-- Location: LCCOMB_X72_Y60_N26
\inst11|process_0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~83_combout\ = (!\inst11|columnNum\(1) & (\inst11|columnNum\(0) & (!\inst11|columnNum\(3) & \inst11|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|process_0~83_combout\);

-- Location: LCCOMB_X72_Y59_N20
\inst11|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|F~1_combout\ = (\inst11|F~0_combout\ & ((\inst11|F\(0)) # ((\inst11|process_0~84_combout\ & !\inst11|p1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|F~0_combout\,
	datab => \inst11|process_0~84_combout\,
	datac => \inst11|F\(0),
	datad => \inst11|p1\(0),
	combout => \inst11|F~1_combout\);

-- Location: FF_X72_Y59_N21
\inst11|F[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|F~1_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|F\(0));

-- Location: LCCOMB_X72_Y59_N22
\inst11|process_0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~84_combout\ = (!\inst11|F\(1) & (\inst11|process_0~83_combout\ & !\inst11|F\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|F\(1),
	datab => \inst11|process_0~83_combout\,
	datad => \inst11|F\(0),
	combout => \inst11|process_0~84_combout\);

-- Location: LCCOMB_X72_Y59_N8
\inst11|p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~4_combout\ = (\inst11|p1\(0)) # ((!\inst11|process_0~85_combout\ & !\inst11|process_0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~85_combout\,
	datac => \inst11|process_0~84_combout\,
	datad => \inst11|p1\(0),
	combout => \inst11|p1~4_combout\);

-- Location: LCCOMB_X74_Y58_N20
\inst11|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|C~4_combout\ = (\Reset~input_o\ & (((!\inst11|p1\(0)) # (!\inst11|p2~0_combout\)) # (!\inst11|process_0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~81_combout\,
	datab => \inst11|p2~0_combout\,
	datac => \inst11|p1\(0),
	datad => \Reset~input_o\,
	combout => \inst11|C~4_combout\);

-- Location: LCCOMB_X74_Y58_N28
\inst11|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|C[1]~2_combout\ = (\inst11|A[0]~0_combout\ & ((\inst11|C~4_combout\ & (\inst11|C\(1))) # (!\inst11|C~4_combout\ & ((\Reset~input_o\))))) # (!\inst11|A[0]~0_combout\ & (((\inst11|C\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|A[0]~0_combout\,
	datab => \inst11|C~4_combout\,
	datac => \inst11|C\(1),
	datad => \Reset~input_o\,
	combout => \inst11|C[1]~2_combout\);

-- Location: FF_X74_Y58_N29
\inst11|C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|C[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|C\(1));

-- Location: LCCOMB_X72_Y60_N8
\inst11|Equal54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal54~1_combout\ = (!\inst11|columnNum\(3) & !\inst11|columnNum\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|Equal54~1_combout\);

-- Location: LCCOMB_X74_Y58_N8
\inst11|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|C~3_combout\ = (\inst11|C~4_combout\ & ((\inst11|C\(0)) # ((\inst11|process_0~81_combout\ & !\inst11|p1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~81_combout\,
	datab => \inst11|p1\(0),
	datac => \inst11|C\(0),
	datad => \inst11|C~4_combout\,
	combout => \inst11|C~3_combout\);

-- Location: FF_X74_Y58_N9
\inst11|C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|C~3_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|C\(0));

-- Location: LCCOMB_X74_Y58_N6
\inst11|process_0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~81_combout\ = (!\inst11|C\(1) & (\inst11|Equal54~1_combout\ & (!\inst11|C\(0) & \inst11|process_0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|C\(1),
	datab => \inst11|Equal54~1_combout\,
	datac => \inst11|C\(0),
	datad => \inst11|process_0~80_combout\,
	combout => \inst11|process_0~81_combout\);

-- Location: LCCOMB_X74_Y58_N16
\inst11|process_0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~94_combout\ = ((!\inst11|p1\(0) & !\inst11|process_0~78_combout\)) # (!\inst11|process_0~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|p1\(0),
	datac => \inst11|process_0~79_combout\,
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|process_0~94_combout\);

-- Location: LCCOMB_X70_Y58_N26
\inst11|B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|B~1_combout\ = (\Reset~input_o\ & (((\inst11|process_0~94_combout\) # (!\inst11|p2~0_combout\)) # (!\inst11|process_0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~91_combout\,
	datab => \inst11|process_0~94_combout\,
	datac => \Reset~input_o\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|B~1_combout\);

-- Location: LCCOMB_X74_Y58_N14
\inst11|B[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|B[1]~3_combout\ = (\inst11|A[0]~0_combout\ & ((\inst11|B~1_combout\ & (\inst11|B\(1))) # (!\inst11|B~1_combout\ & ((\Reset~input_o\))))) # (!\inst11|A[0]~0_combout\ & (((\inst11|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|A[0]~0_combout\,
	datab => \inst11|B~1_combout\,
	datac => \inst11|B\(1),
	datad => \Reset~input_o\,
	combout => \inst11|B[1]~3_combout\);

-- Location: FF_X74_Y58_N15
\inst11|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|B[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|B\(1));

-- Location: LCCOMB_X74_Y58_N30
\inst11|B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|B~0_combout\ = (\inst11|B\(0)) # ((!\inst11|p1\(0) & (\inst11|process_0~79_combout\ & !\inst11|process_0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|B\(0),
	datab => \inst11|p1\(0),
	datac => \inst11|process_0~79_combout\,
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|B~0_combout\);

-- Location: LCCOMB_X74_Y58_N26
\inst11|B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|B~2_combout\ = (\inst11|B~1_combout\ & \inst11|B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|B~1_combout\,
	datad => \inst11|B~0_combout\,
	combout => \inst11|B~2_combout\);

-- Location: FF_X74_Y58_N27
\inst11|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|B~2_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|B\(0));

-- Location: LCCOMB_X73_Y60_N20
\inst11|process_0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~79_combout\ = (!\inst11|B\(1) & (!\inst11|B\(0) & \inst11|Equal55~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|B\(1),
	datac => \inst11|B\(0),
	datad => \inst11|Equal55~0_combout\,
	combout => \inst11|process_0~79_combout\);

-- Location: LCCOMB_X74_Y58_N0
\inst11|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~2_combout\ = (\inst11|p1\(0)) # ((!\inst11|process_0~81_combout\ & (!\inst11|process_0~79_combout\ & !\inst11|process_0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~81_combout\,
	datab => \inst11|p1\(0),
	datac => \inst11|process_0~79_combout\,
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|p1~2_combout\);

-- Location: LCCOMB_X72_Y59_N6
\inst11|p1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~6_combout\ = (!\inst11|process_0~90_combout\ & (!\inst11|process_0~104_combout\ & (\inst11|p1~4_combout\ & \inst11|p1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~90_combout\,
	datab => \inst11|process_0~104_combout\,
	datac => \inst11|p1~4_combout\,
	datad => \inst11|p1~2_combout\,
	combout => \inst11|p1~6_combout\);

-- Location: LCCOMB_X75_Y59_N22
\inst11|process_0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~87_combout\ = (\inst11|process_0~86_combout\ & \inst11|p1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~86_combout\,
	datad => \inst11|p1~5_combout\,
	combout => \inst11|process_0~87_combout\);

-- Location: LCCOMB_X75_Y59_N4
\inst11|p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p2~0_combout\ = (\inst11|p2\(0)) # (((\inst11|process_0~87_combout\) # (\inst11|process_0~89_combout\)) # (!\inst11|p1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p2\(0),
	datab => \inst11|p1~6_combout\,
	datac => \inst11|process_0~87_combout\,
	datad => \inst11|process_0~89_combout\,
	combout => \inst11|p2~0_combout\);

-- Location: LCCOMB_X74_Y58_N24
\inst11|process_0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~92_combout\ = ((!\inst11|p2~0_combout\) # (!\inst11|p1\(0))) # (!\inst11|process_0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|p1\(0),
	datad => \inst11|p2~0_combout\,
	combout => \inst11|process_0~92_combout\);

-- Location: LCCOMB_X74_Y59_N16
\inst11|A[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|A[1]~3_combout\ = (\inst11|A[0]~0_combout\ & (\Reset~input_o\ & ((\inst11|A\(1)) # (!\inst11|process_0~92_combout\)))) # (!\inst11|A[0]~0_combout\ & (((\inst11|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \inst11|process_0~92_combout\,
	datac => \inst11|A\(1),
	datad => \inst11|A[0]~0_combout\,
	combout => \inst11|A[1]~3_combout\);

-- Location: FF_X74_Y59_N17
\inst11|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|A[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|A\(1));

-- Location: LCCOMB_X75_Y58_N18
\inst11|A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|A~1_combout\ = (\inst11|A\(0)) # ((!\inst11|p1\(0) & \inst11|process_0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datab => \inst11|A\(0),
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|A~1_combout\);

-- Location: LCCOMB_X72_Y58_N28
\inst11|A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|A~2_combout\ = (\inst11|A~1_combout\ & (\Reset~input_o\ & ((\inst11|process_0~91_combout\) # (!\inst11|p2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|A~1_combout\,
	datab => \inst11|process_0~91_combout\,
	datac => \Reset~input_o\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|A~2_combout\);

-- Location: FF_X72_Y58_N29
\inst11|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|A~2_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|A\(0));

-- Location: LCCOMB_X75_Y58_N24
\inst11|process_0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~78_combout\ = (!\inst11|A\(1) & (!\inst11|A\(0) & (\inst11|Equal54~1_combout\ & \inst11|Equal54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|A\(1),
	datab => \inst11|A\(0),
	datac => \inst11|Equal54~1_combout\,
	datad => \inst11|Equal54~0_combout\,
	combout => \inst11|process_0~78_combout\);

-- Location: LCCOMB_X75_Y58_N4
\inst11|process_0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~91_combout\ = (!\inst11|process_0~78_combout\) # (!\inst11|p1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|process_0~91_combout\);

-- Location: LCCOMB_X74_Y58_N12
\inst11|process_0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~95_combout\ = (!\inst11|process_0~81_combout\) # (!\inst11|p1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|p1\(0),
	datad => \inst11|process_0~81_combout\,
	combout => \inst11|process_0~95_combout\);

-- Location: LCCOMB_X70_Y58_N24
\inst11|process_0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~96_combout\ = ((\inst11|process_0~91_combout\ & (\inst11|process_0~94_combout\ & \inst11|process_0~95_combout\))) # (!\inst11|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~91_combout\,
	datab => \inst11|process_0~94_combout\,
	datac => \inst11|process_0~95_combout\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|process_0~96_combout\);

-- Location: LCCOMB_X72_Y58_N10
\inst11|process_0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~93_combout\ = (!\inst11|p1\(0)) # (!\inst11|process_0~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~82_combout\,
	datad => \inst11|p1\(0),
	combout => \inst11|process_0~93_combout\);

-- Location: LCCOMB_X72_Y58_N20
\inst11|D~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|D~2_combout\ = (\Reset~input_o\ & (((\inst11|process_0~93_combout\) # (!\inst11|p2~0_combout\)) # (!\inst11|process_0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~96_combout\,
	datab => \inst11|process_0~93_combout\,
	datac => \Reset~input_o\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|D~2_combout\);

-- Location: LCCOMB_X72_Y58_N12
\inst11|D~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|D~4_combout\ = (\inst11|D~2_combout\ & ((\inst11|D\(0)) # ((!\inst11|p1\(0) & \inst11|process_0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datab => \inst11|D~2_combout\,
	datac => \inst11|D\(0),
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|D~4_combout\);

-- Location: FF_X72_Y58_N13
\inst11|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|D~4_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|D\(0));

-- Location: LCCOMB_X72_Y58_N30
\inst11|D[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|D[1]~3_combout\ = (\inst11|A[0]~0_combout\ & ((\inst11|D~2_combout\ & ((\inst11|D\(1)))) # (!\inst11|D~2_combout\ & (\Reset~input_o\)))) # (!\inst11|A[0]~0_combout\ & (((\inst11|D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|A[0]~0_combout\,
	datab => \Reset~input_o\,
	datac => \inst11|D\(1),
	datad => \inst11|D~2_combout\,
	combout => \inst11|D[1]~3_combout\);

-- Location: FF_X72_Y58_N31
\inst11|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|D[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|D\(1));

-- Location: LCCOMB_X72_Y58_N0
\inst11|process_0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~82_combout\ = (!\inst11|D\(0) & (!\inst11|D\(1) & (\inst11|Equal57~0_combout\ & \inst11|Equal54~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|D\(0),
	datab => \inst11|D\(1),
	datac => \inst11|Equal57~0_combout\,
	datad => \inst11|Equal54~1_combout\,
	combout => \inst11|process_0~82_combout\);

-- Location: LCCOMB_X72_Y59_N0
\inst11|process_0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~76_combout\ = (!\inst11|E\(1) & !\inst11|E\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|E\(1),
	datac => \inst11|E\(0),
	combout => \inst11|process_0~76_combout\);

-- Location: LCCOMB_X72_Y59_N4
\inst11|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~3_combout\ = (\inst11|p1\(0)) # ((!\inst11|process_0~82_combout\ & ((!\inst11|process_0~76_combout\) # (!\inst11|process_0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datab => \inst11|process_0~82_combout\,
	datac => \inst11|process_0~75_combout\,
	datad => \inst11|process_0~76_combout\,
	combout => \inst11|p1~3_combout\);

-- Location: LCCOMB_X72_Y59_N26
\inst11|p1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~5_combout\ = (!\inst11|p1\(0) & (\inst11|p1~3_combout\ & (\inst11|p1~4_combout\ & \inst11|p1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datab => \inst11|p1~3_combout\,
	datac => \inst11|p1~4_combout\,
	datad => \inst11|p1~2_combout\,
	combout => \inst11|p1~5_combout\);

-- Location: LCCOMB_X75_Y59_N28
\inst11|process_0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~98_combout\ = (\inst11|p1~5_combout\) # (!\inst11|process_0~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~86_combout\,
	datad => \inst11|p1~5_combout\,
	combout => \inst11|process_0~98_combout\);

-- Location: LCCOMB_X75_Y59_N30
\inst11|process_0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~99_combout\ = ((\inst11|process_0~98_combout\) # ((\inst11|process_0~85_combout\ & \inst11|p1\(0)))) # (!\inst11|p2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~85_combout\,
	datab => \inst11|p1\(0),
	datac => \inst11|p2~2_combout\,
	datad => \inst11|process_0~98_combout\,
	combout => \inst11|process_0~99_combout\);

-- Location: LCCOMB_X74_Y59_N2
\inst11|G[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|G[1]~3_combout\ = (!\confirmButton~input_o\ & (!\inst11|buttonStateConfirm~q\ & (\Reset~input_o\ & \inst1|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmButton~input_o\,
	datab => \inst11|buttonStateConfirm~q\,
	datac => \Reset~input_o\,
	datad => \inst1|disp_ena~q\,
	combout => \inst11|G[1]~3_combout\);

-- Location: LCCOMB_X74_Y59_N20
\inst11|H[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|H[1]~0_combout\ = (\inst11|process_0~99_combout\ & (((\inst11|H\(1) & \inst11|G[1]~2_combout\)))) # (!\inst11|process_0~99_combout\ & ((\inst11|G[1]~3_combout\) # ((\inst11|H\(1) & \inst11|G[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~99_combout\,
	datab => \inst11|G[1]~3_combout\,
	datac => \inst11|H\(1),
	datad => \inst11|G[1]~2_combout\,
	combout => \inst11|H[1]~0_combout\);

-- Location: FF_X74_Y59_N21
\inst11|H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|H[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|H\(1));

-- Location: LCCOMB_X75_Y59_N26
\inst11|H~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|H~1_combout\ = (\inst11|process_0~99_combout\ & (\Reset~input_o\ & ((\inst11|process_0~87_combout\) # (\inst11|H\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~87_combout\,
	datab => \inst11|process_0~99_combout\,
	datac => \inst11|H\(0),
	datad => \Reset~input_o\,
	combout => \inst11|H~1_combout\);

-- Location: FF_X75_Y59_N27
\inst11|H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|H~1_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|H\(0));

-- Location: LCCOMB_X72_Y58_N8
\inst11|process_0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~86_combout\ = (!\inst11|H\(1) & (\inst11|Equal61~0_combout\ & (\inst11|Equal57~0_combout\ & !\inst11|H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|H\(1),
	datab => \inst11|Equal61~0_combout\,
	datac => \inst11|Equal57~0_combout\,
	datad => \inst11|H\(0),
	combout => \inst11|process_0~86_combout\);

-- Location: LCCOMB_X75_Y59_N12
\inst11|process_0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~105_combout\ = (((!\inst11|process_0~86_combout\ & \inst11|p1~5_combout\)) # (!\inst11|p2~3_combout\)) # (!\inst11|process_0~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~88_combout\,
	datab => \inst11|process_0~86_combout\,
	datac => \inst11|p1~5_combout\,
	datad => \inst11|p2~3_combout\,
	combout => \inst11|process_0~105_combout\);

-- Location: LCCOMB_X74_Y59_N30
\inst11|I[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|I[1]~1_combout\ = (\inst11|G[1]~2_combout\ & ((\inst11|I\(1)) # ((!\inst11|process_0~105_combout\ & \inst11|G[1]~3_combout\)))) # (!\inst11|G[1]~2_combout\ & (!\inst11|process_0~105_combout\ & ((\inst11|G[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|G[1]~2_combout\,
	datab => \inst11|process_0~105_combout\,
	datac => \inst11|I\(1),
	datad => \inst11|G[1]~3_combout\,
	combout => \inst11|I[1]~1_combout\);

-- Location: FF_X74_Y59_N31
\inst11|I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|I[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|I\(1));

-- Location: LCCOMB_X75_Y59_N20
\inst11|I~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|I~0_combout\ = (\inst11|process_0~105_combout\ & (\Reset~input_o\ & ((\inst11|process_0~89_combout\) # (\inst11|I\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~89_combout\,
	datab => \inst11|process_0~105_combout\,
	datac => \inst11|I\(0),
	datad => \Reset~input_o\,
	combout => \inst11|I~0_combout\);

-- Location: FF_X75_Y59_N21
\inst11|I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|I~0_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|I\(0));

-- Location: LCCOMB_X74_Y60_N30
\inst11|Equal62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal62~0_combout\ = (!\inst11|columnNum\(1) & (!\inst11|columnNum\(0) & (\inst11|columnNum\(3) & !\inst11|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|Equal62~0_combout\);

-- Location: LCCOMB_X74_Y59_N8
\inst11|process_0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~88_combout\ = (!\inst11|I\(1) & (!\inst11|I\(0) & \inst11|Equal62~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|I\(1),
	datac => \inst11|I\(0),
	datad => \inst11|Equal62~0_combout\,
	combout => \inst11|process_0~88_combout\);

-- Location: LCCOMB_X72_Y58_N18
\inst11|p2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p2~4_combout\ = (\inst11|p2~1_combout\ & (\inst11|process_0~96_combout\ & ((\inst11|process_0~93_combout\) # (!\inst11|p2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p2~1_combout\,
	datab => \inst11|process_0~96_combout\,
	datac => \inst11|process_0~93_combout\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|p2~4_combout\);

-- Location: LCCOMB_X75_Y59_N6
\inst11|p1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~10_combout\ = (\inst11|p2~4_combout\ & ((\inst11|process_0~88_combout\) # ((\inst11|process_0~86_combout\) # (!\inst11|p1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~88_combout\,
	datab => \inst11|process_0~86_combout\,
	datac => \inst11|p2~4_combout\,
	datad => \inst11|p1~5_combout\,
	combout => \inst11|p1~10_combout\);

-- Location: LCCOMB_X75_Y59_N18
\inst11|p1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~7_combout\ = (((\inst11|p2~2_combout\ & !\inst11|process_0~98_combout\)) # (!\inst11|process_0~105_combout\)) # (!\inst11|process_0~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~97_combout\,
	datab => \inst11|p2~2_combout\,
	datac => \inst11|process_0~105_combout\,
	datad => \inst11|process_0~98_combout\,
	combout => \inst11|p1~7_combout\);

-- Location: LCCOMB_X74_Y59_N4
\inst11|p1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~8_combout\ = (\inst11|buttonStateConfirm~q\ & (((\inst11|p1\(0))))) # (!\inst11|buttonStateConfirm~q\ & (\inst11|p1~10_combout\ & ((!\inst11|p1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1~10_combout\,
	datab => \inst11|p1\(0),
	datac => \inst11|p1~7_combout\,
	datad => \inst11|buttonStateConfirm~q\,
	combout => \inst11|p1~8_combout\);

-- Location: LCCOMB_X74_Y59_N28
\inst11|p1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p1~9_combout\ = (\Reset~input_o\ & ((\confirmButton~input_o\ & ((\inst11|p1\(0)))) # (!\confirmButton~input_o\ & (\inst11|p1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \inst11|p1~8_combout\,
	datac => \inst11|p1\(0),
	datad => \confirmButton~input_o\,
	combout => \inst11|p1~9_combout\);

-- Location: FF_X74_Y59_N29
\inst11|p1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|p1~9_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|p1\(0));

-- Location: LCCOMB_X72_Y59_N28
\inst11|p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p2~1_combout\ = (((!\inst11|process_0~77_combout\ & !\inst11|process_0~84_combout\)) # (!\inst11|p2~0_combout\)) # (!\inst11|p1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p1\(0),
	datab => \inst11|process_0~77_combout\,
	datac => \inst11|process_0~84_combout\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|p2~1_combout\);

-- Location: LCCOMB_X72_Y58_N2
\inst11|p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|p2~2_combout\ = (\inst11|p2~1_combout\ & (\inst11|process_0~96_combout\ & (\inst11|process_0~93_combout\ & \inst11|p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|p2~1_combout\,
	datab => \inst11|process_0~96_combout\,
	datac => \inst11|process_0~93_combout\,
	datad => \inst11|p2~0_combout\,
	combout => \inst11|p2~2_combout\);

-- Location: LCCOMB_X75_Y59_N14
\inst11|G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|G~0_combout\ = (\Reset~input_o\ & ((\inst11|G\(0)) # ((\inst11|process_0~85_combout\ & !\inst11|p1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~85_combout\,
	datab => \inst11|p1\(0),
	datac => \inst11|G\(0),
	datad => \Reset~input_o\,
	combout => \inst11|G~0_combout\);

-- Location: LCCOMB_X75_Y59_N8
\inst11|G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|G~1_combout\ = (\inst11|G~0_combout\ & (((!\inst11|p1\(0)) # (!\inst11|p2~2_combout\)) # (!\inst11|process_0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~85_combout\,
	datab => \inst11|p2~2_combout\,
	datac => \inst11|G~0_combout\,
	datad => \inst11|p1\(0),
	combout => \inst11|G~1_combout\);

-- Location: FF_X75_Y59_N9
\inst11|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|G~1_combout\,
	ena => \inst11|A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|G\(0));

-- Location: LCCOMB_X74_Y59_N14
\inst11|process_0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~85_combout\ = (\inst11|Equal61~0_combout\ & (\inst11|process_0~80_combout\ & (!\inst11|G\(0) & !\inst11|G\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal61~0_combout\,
	datab => \inst11|process_0~80_combout\,
	datac => \inst11|G\(0),
	datad => \inst11|G\(1),
	combout => \inst11|process_0~85_combout\);

-- Location: LCCOMB_X75_Y59_N2
\inst11|process_0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~97_combout\ = ((!\inst11|p1\(0)) # (!\inst11|p2~2_combout\)) # (!\inst11|process_0~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~85_combout\,
	datab => \inst11|p2~2_combout\,
	datad => \inst11|p1\(0),
	combout => \inst11|process_0~97_combout\);

-- Location: LCCOMB_X74_Y59_N18
\inst11|G[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|G[1]~4_combout\ = (\inst11|process_0~97_combout\ & (((\inst11|G\(1) & \inst11|G[1]~2_combout\)))) # (!\inst11|process_0~97_combout\ & ((\inst11|G[1]~3_combout\) # ((\inst11|G\(1) & \inst11|G[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~97_combout\,
	datab => \inst11|G[1]~3_combout\,
	datac => \inst11|G\(1),
	datad => \inst11|G[1]~2_combout\,
	combout => \inst11|G[1]~4_combout\);

-- Location: FF_X74_Y59_N19
\inst11|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|G[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|G\(1));

-- Location: LCCOMB_X69_Y60_N0
\inst1|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~4_combout\ = (!\inst1|Add1~27_combout\ & (!\inst1|Add1~26_combout\ & !\inst1|LessThan7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~27_combout\,
	datab => \inst1|Add1~26_combout\,
	datad => \inst1|LessThan7~3_combout\,
	combout => \inst1|LessThan7~4_combout\);

-- Location: LCCOMB_X69_Y60_N10
\inst1|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~5_combout\ = ((\inst1|LessThan7~4_combout\ & (!\inst1|Add1~29_combout\ & !\inst1|Add1~28_combout\))) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~4_combout\,
	datab => \inst1|Add1~29_combout\,
	datac => \inst1|Add1~28_combout\,
	datad => \inst1|Add1~25_combout\,
	combout => \inst1|LessThan7~5_combout\);

-- Location: FF_X69_Y60_N15
\inst1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~32_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(5));

-- Location: FF_X69_Y60_N21
\inst1|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~29_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(9));

-- Location: FF_X69_Y60_N31
\inst1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~26_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(6));

-- Location: FF_X69_Y60_N17
\inst1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~27_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(7));

-- Location: LCCOMB_X69_Y60_N30
\inst11|LessThan25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~3_combout\ = (\inst1|row\(5) & (\inst1|row\(9) & (\inst1|row\(6) & \inst1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(9),
	datac => \inst1|row\(6),
	datad => \inst1|row\(7),
	combout => \inst11|LessThan25~3_combout\);

-- Location: FF_X69_Y60_N3
\inst1|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~25_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(10));

-- Location: FF_X69_Y60_N5
\inst1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~28_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(8));

-- Location: LCCOMB_X69_Y60_N4
\inst11|LessThan25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~4_combout\ = (\inst11|LessThan25~3_combout\) # ((\inst1|row\(10)) # ((\inst1|row\(8) & \inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan25~3_combout\,
	datab => \inst1|row\(10),
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst11|LessThan25~4_combout\);

-- Location: FF_X70_Y59_N21
\inst1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~8_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(1));

-- Location: LCCOMB_X70_Y59_N18
\inst1|row[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[0]~0_combout\ = !\inst1|Add1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add1~7_combout\,
	combout => \inst1|row[0]~0_combout\);

-- Location: FF_X70_Y59_N19
\inst1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[0]~0_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(0));

-- Location: LCCOMB_X70_Y59_N2
\inst11|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~23_combout\ = (\inst1|row\(1) & !\inst1|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(1),
	datad => \inst1|row\(0),
	combout => \inst11|process_0~23_combout\);

-- Location: FF_X69_Y59_N23
\inst1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~31_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(4));

-- Location: LCCOMB_X69_Y59_N16
\inst11|LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~1_combout\ = (\inst1|row\(6) & (\inst1|row\(9) & (\inst1|row\(4) & \inst1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(9),
	datac => \inst1|row\(4),
	datad => \inst1|row\(7),
	combout => \inst11|LessThan25~1_combout\);

-- Location: FF_X69_Y59_N15
\inst1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~30_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(3));

-- Location: FF_X69_Y59_N27
\inst1|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~6_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(2));

-- Location: LCCOMB_X69_Y59_N12
\inst11|LessThan25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~2_combout\ = (\inst11|LessThan25~1_combout\ & ((\inst11|process_0~23_combout\) # ((\inst1|row\(3)) # (\inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~23_combout\,
	datab => \inst11|LessThan25~1_combout\,
	datac => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst11|LessThan25~2_combout\);

-- Location: LCCOMB_X70_Y60_N30
\inst11|LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan24~0_combout\ = (!\inst1|row\(6) & !\inst1|row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(6),
	datad => \inst1|row\(5),
	combout => \inst11|LessThan24~0_combout\);

-- Location: LCCOMB_X70_Y60_N20
\inst1|row[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|row[31]~feeder_combout\);

-- Location: FF_X70_Y60_N21
\inst1|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[31]~feeder_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(31));

-- Location: LCCOMB_X70_Y60_N26
\inst11|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan23~1_combout\ = (\inst1|row\(7) & \inst1|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(7),
	datad => \inst1|row\(8),
	combout => \inst11|LessThan23~1_combout\);

-- Location: LCCOMB_X70_Y60_N6
\inst11|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~1_combout\ = (\inst1|row\(31) & ((\inst1|row\(10)) # ((\inst11|LessThan23~1_combout\ & \inst1|row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(31),
	datac => \inst11|LessThan23~1_combout\,
	datad => \inst1|row\(9),
	combout => \inst11|LessThan4~1_combout\);

-- Location: LCCOMB_X69_Y59_N2
\inst11|LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan26~0_combout\ = (((!\inst1|row\(2)) # (!\inst1|row\(1))) # (!\inst1|row\(3))) # (!\inst1|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(3),
	datac => \inst1|row\(1),
	datad => \inst1|row\(2),
	combout => \inst11|LessThan26~0_combout\);

-- Location: LCCOMB_X70_Y60_N8
\inst11|LessThan26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan26~1_combout\ = ((\inst11|LessThan24~0_combout\ & (\inst11|LessThan26~0_combout\ & !\inst1|row\(10)))) # (!\inst11|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst11|LessThan4~1_combout\,
	datac => \inst11|LessThan26~0_combout\,
	datad => \inst1|row\(10),
	combout => \inst11|LessThan26~1_combout\);

-- Location: LCCOMB_X73_Y58_N8
\inst11|green[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~5_combout\ = (\inst11|LessThan26~1_combout\ & (\inst1|row\(31) & ((\inst11|LessThan25~4_combout\) # (\inst11|LessThan25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan25~4_combout\,
	datab => \inst11|LessThan25~2_combout\,
	datac => \inst11|LessThan26~1_combout\,
	datad => \inst1|row\(31),
	combout => \inst11|green[7]~5_combout\);

-- Location: FF_X75_Y57_N15
\inst1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~9_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(2));

-- Location: FF_X75_Y57_N29
\inst1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~8_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(3));

-- Location: FF_X75_Y57_N19
\inst1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~7_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(4));

-- Location: LCCOMB_X75_Y57_N24
\inst11|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~12_combout\ = (\inst1|column\(3) & \inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datac => \inst1|column\(4),
	combout => \inst11|process_0~12_combout\);

-- Location: LCCOMB_X75_Y57_N30
\inst1|column[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[0]~0_combout\ = !\inst1|h_count~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count~11_combout\,
	combout => \inst1|column[0]~0_combout\);

-- Location: FF_X75_Y57_N31
\inst1|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[0]~0_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(0));

-- Location: FF_X75_Y57_N17
\inst1|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~10_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(1));

-- Location: LCCOMB_X75_Y57_N10
\inst11|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~3_combout\ = (\inst11|process_0~12_combout\ & ((\inst1|column\(2)) # ((\inst1|column\(1)) # (!\inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst11|process_0~12_combout\,
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst11|LessThan2~3_combout\);

-- Location: FF_X74_Y57_N9
\inst1|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~6_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(5));

-- Location: FF_X73_Y57_N7
\inst1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~4_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(7));

-- Location: FF_X73_Y57_N3
\inst1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~5_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(6));

-- Location: LCCOMB_X73_Y57_N6
\inst11|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~4_combout\ = (\inst1|column\(7) & ((\inst1|column\(6)) # ((\inst11|LessThan2~3_combout\ & \inst1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan2~3_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(7),
	datad => \inst1|column\(6),
	combout => \inst11|LessThan2~4_combout\);

-- Location: FF_X73_Y57_N11
\inst1|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(9));

-- Location: LCCOMB_X75_Y57_N0
\inst11|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~47_combout\ = (!\inst1|column\(3) & !\inst1|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(3),
	datad => \inst1|column\(2),
	combout => \inst11|process_0~47_combout\);

-- Location: LCCOMB_X75_Y57_N6
\inst11|process_0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~48_combout\ = (\inst1|column\(6)) # ((\inst1|column\(5) & (!\inst11|process_0~47_combout\ & \inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst11|process_0~47_combout\,
	datac => \inst1|column\(6),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~48_combout\);

-- Location: FF_X74_Y57_N3
\inst1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~3_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(8));

-- Location: LCCOMB_X73_Y57_N4
\inst11|process_0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~49_combout\ = (!\inst1|column\(8) & (((\inst1|column\(7) & \inst11|process_0~48_combout\)) # (!\inst1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(7),
	datac => \inst11|process_0~48_combout\,
	datad => \inst1|column\(8),
	combout => \inst11|process_0~49_combout\);

-- Location: FF_X73_Y57_N17
\inst1|column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~1_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(10));

-- Location: FF_X72_Y57_N27
\inst1|column[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(11));

-- Location: LCCOMB_X72_Y57_N18
\inst1|column[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|column[31]~feeder_combout\);

-- Location: FF_X72_Y57_N19
\inst1|column[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[31]~feeder_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(31));

-- Location: LCCOMB_X72_Y57_N28
\inst11|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~14_combout\ = (!\inst1|column\(11) & \inst1|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datad => \inst1|column\(31),
	combout => \inst11|process_0~14_combout\);

-- Location: LCCOMB_X73_Y57_N14
\inst11|process_0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~50_combout\ = (!\inst1|column\(10) & (\inst11|process_0~14_combout\ & ((!\inst1|column\(9)) # (!\inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst1|column\(10),
	datac => \inst1|column\(9),
	datad => \inst11|process_0~14_combout\,
	combout => \inst11|process_0~50_combout\);

-- Location: LCCOMB_X73_Y57_N30
\inst11|process_0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~51_combout\ = (\inst11|process_0~49_combout\) # (((!\inst11|LessThan2~4_combout\ & !\inst1|column\(9))) # (!\inst11|process_0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan2~4_combout\,
	datab => \inst11|process_0~49_combout\,
	datac => \inst11|process_0~50_combout\,
	datad => \inst1|column\(9),
	combout => \inst11|process_0~51_combout\);

-- Location: LCCOMB_X73_Y58_N30
\inst11|green[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~7_combout\ = (\inst11|G\(1) & (!\inst11|G\(0) & (\inst11|green[7]~5_combout\ & !\inst11|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|G\(1),
	datab => \inst11|G\(0),
	datac => \inst11|green[7]~5_combout\,
	datad => \inst11|process_0~51_combout\,
	combout => \inst11|green[7]~7_combout\);

-- Location: LCCOMB_X73_Y58_N2
\inst11|red[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~30_combout\ = (!\inst11|A\(0) & \inst11|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|A\(0),
	datad => \inst11|A\(1),
	combout => \inst11|red[7]~30_combout\);

-- Location: LCCOMB_X70_Y57_N12
\inst11|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan18~0_combout\ = (!\inst1|row\(10) & (!\inst1|row\(8) & !\inst1|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst11|LessThan18~0_combout\);

-- Location: LCCOMB_X70_Y59_N26
\inst11|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~21_combout\ = (\inst1|row\(3) & \inst1|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst11|process_0~21_combout\);

-- Location: LCCOMB_X70_Y59_N14
\inst11|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan17~0_combout\ = ((\inst11|process_0~21_combout\ & ((\inst1|row\(2)) # (\inst11|process_0~23_combout\)))) # (!\inst11|LessThan24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst11|process_0~23_combout\,
	datac => \inst11|process_0~21_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|LessThan17~0_combout\);

-- Location: LCCOMB_X70_Y57_N22
\inst11|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~20_combout\ = (!\inst1|row\(10) & !\inst1|row\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datad => \inst1|row\(9),
	combout => \inst11|process_0~20_combout\);

-- Location: LCCOMB_X70_Y57_N18
\inst11|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan17~1_combout\ = (\inst1|row\(8)) # (((\inst11|LessThan17~0_combout\ & \inst1|row\(7))) # (!\inst11|process_0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan17~0_combout\,
	datab => \inst1|row\(8),
	datac => \inst1|row\(7),
	datad => \inst11|process_0~20_combout\,
	combout => \inst11|LessThan17~1_combout\);

-- Location: LCCOMB_X69_Y59_N20
\inst11|LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan18~1_combout\ = (!\inst1|row\(4) & (!\inst1|row\(3) & ((!\inst1|row\(2)) # (!\inst1|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(3),
	datac => \inst1|row\(1),
	datad => \inst1|row\(2),
	combout => \inst11|LessThan18~1_combout\);

-- Location: LCCOMB_X70_Y59_N22
\inst11|LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~0_combout\ = (\inst1|row\(6) & \inst1|row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(6),
	datad => \inst1|row\(5),
	combout => \inst11|LessThan25~0_combout\);

-- Location: LCCOMB_X70_Y57_N14
\inst11|LessThan18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan18~2_combout\ = (!\inst1|row\(7) & (\inst11|process_0~20_combout\ & ((\inst11|LessThan18~1_combout\) # (!\inst11|LessThan25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan18~1_combout\,
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst1|row\(7),
	datad => \inst11|process_0~20_combout\,
	combout => \inst11|LessThan18~2_combout\);

-- Location: LCCOMB_X70_Y57_N0
\inst11|red[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~16_combout\ = (\inst11|LessThan17~1_combout\ & (\inst1|row\(31) & ((\inst11|LessThan18~0_combout\) # (\inst11|LessThan18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan18~0_combout\,
	datab => \inst11|LessThan17~1_combout\,
	datac => \inst11|LessThan18~2_combout\,
	datad => \inst1|row\(31),
	combout => \inst11|red[7]~16_combout\);

-- Location: LCCOMB_X73_Y58_N14
\inst11|red[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~17_combout\ = (\inst11|red[7]~16_combout\ & !\inst11|process_0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|red[7]~16_combout\,
	datad => \inst11|process_0~51_combout\,
	combout => \inst11|red[7]~17_combout\);

-- Location: LCCOMB_X69_Y60_N12
\inst11|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~0_combout\ = (!\inst1|row\(8) & !\inst1|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(8),
	datad => \inst1|row\(7),
	combout => \inst11|LessThan1~0_combout\);

-- Location: LCCOMB_X69_Y59_N0
\inst11|LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan24~1_combout\ = (!\inst1|row\(4) & (!\inst1|row\(3) & (!\inst1|row\(1) & !\inst1|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(3),
	datac => \inst1|row\(1),
	datad => \inst1|row\(2),
	combout => \inst11|LessThan24~1_combout\);

-- Location: LCCOMB_X69_Y60_N8
\inst11|green[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~10_combout\ = (!\inst1|row\(6) & (\inst11|LessThan24~1_combout\ & (!\inst1|row\(8) & !\inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst11|LessThan24~1_combout\,
	datac => \inst1|row\(8),
	datad => \inst1|row\(5),
	combout => \inst11|green[7]~10_combout\);

-- Location: LCCOMB_X69_Y60_N28
\inst11|green[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~2_combout\ = (\inst1|row\(10) & (((!\inst1|row\(9))))) # (!\inst1|row\(10) & (\inst1|row\(9) & ((\inst11|LessThan1~0_combout\) # (\inst11|green[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan1~0_combout\,
	datab => \inst1|row\(10),
	datac => \inst11|green[7]~10_combout\,
	datad => \inst1|row\(9),
	combout => \inst11|green[7]~2_combout\);

-- Location: LCCOMB_X69_Y59_N26
\inst11|LessThan23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan23~0_combout\ = (\inst1|row\(3)) # ((\inst1|row\(1) & (\inst1|row\(2) & !\inst1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(2),
	datad => \inst1|row\(0),
	combout => \inst11|LessThan23~0_combout\);

-- Location: LCCOMB_X70_Y60_N4
\inst11|LessThan23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan23~2_combout\ = (\inst1|row\(6)) # ((\inst1|row\(4) & (\inst11|LessThan23~0_combout\ & \inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst11|LessThan23~0_combout\,
	datac => \inst1|row\(6),
	datad => \inst1|row\(5),
	combout => \inst11|LessThan23~2_combout\);

-- Location: LCCOMB_X70_Y60_N2
\inst11|LessThan23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan23~3_combout\ = (\inst1|row\(8) & (\inst11|LessThan23~2_combout\ & (\inst1|row\(7) & \inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst11|LessThan23~2_combout\,
	datac => \inst1|row\(7),
	datad => \inst1|row\(31),
	combout => \inst11|LessThan23~3_combout\);

-- Location: LCCOMB_X72_Y58_N14
\inst11|green[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~3_combout\ = (\inst1|row\(31) & ((\inst11|green[7]~2_combout\ & (\inst1|row\(9))) # (!\inst11|green[7]~2_combout\ & (!\inst1|row\(9) & \inst11|LessThan23~3_combout\)))) # (!\inst1|row\(31) & (((\inst11|LessThan23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|green[7]~2_combout\,
	datab => \inst1|row\(31),
	datac => \inst1|row\(9),
	datad => \inst11|LessThan23~3_combout\,
	combout => \inst11|green[7]~3_combout\);

-- Location: LCCOMB_X73_Y57_N0
\inst11|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~41_combout\ = (\inst1|column\(8) & (!\inst1|column\(7) & (!\inst1|column\(6)))) # (!\inst1|column\(8) & (((!\inst1|column\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst1|column\(6),
	datac => \inst1|column\(10),
	datad => \inst1|column\(8),
	combout => \inst11|process_0~41_combout\);

-- Location: LCCOMB_X73_Y57_N2
\inst11|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~42_combout\ = (\inst11|process_0~41_combout\) # ((!\inst1|column\(9) & ((\inst1|column\(7)) # (\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(7),
	datac => \inst1|column\(6),
	datad => \inst11|process_0~41_combout\,
	combout => \inst11|process_0~42_combout\);

-- Location: LCCOMB_X75_Y57_N26
\inst11|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~37_combout\ = (\inst1|column\(2) & \inst1|column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(2),
	datad => \inst1|column\(1),
	combout => \inst11|process_0~37_combout\);

-- Location: LCCOMB_X74_Y57_N18
\inst11|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~38_combout\ = (!\inst1|column\(9) & (\inst11|process_0~37_combout\ & (\inst1|column\(5) & \inst11|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst11|process_0~37_combout\,
	datac => \inst1|column\(5),
	datad => \inst11|process_0~12_combout\,
	combout => \inst11|process_0~38_combout\);

-- Location: LCCOMB_X72_Y57_N16
\inst11|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~26_combout\ = (!\inst1|column\(11) & (\inst1|column\(31) & ((!\inst1|column\(10)) # (!\inst1|column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst1|column\(31),
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst11|process_0~26_combout\);

-- Location: LCCOMB_X75_Y57_N2
\inst11|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~39_combout\ = (!\inst1|column\(2) & ((\inst1|column\(0)) # (!\inst1|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(2),
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst11|process_0~39_combout\);

-- Location: LCCOMB_X74_Y57_N22
\inst11|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~0_combout\ = (!\inst1|column\(4) & (!\inst1|column\(3) & !\inst1|column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(3),
	datad => \inst1|column\(5),
	combout => \inst11|LessThan3~0_combout\);

-- Location: LCCOMB_X74_Y57_N16
\inst11|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~40_combout\ = (\inst11|process_0~39_combout\ & (\inst11|LessThan3~0_combout\ & (!\inst1|column\(10) & !\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~39_combout\,
	datab => \inst11|LessThan3~0_combout\,
	datac => \inst1|column\(10),
	datad => \inst1|column\(7),
	combout => \inst11|process_0~40_combout\);

-- Location: LCCOMB_X73_Y57_N12
\inst11|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~43_combout\ = (\inst11|process_0~42_combout\) # ((\inst11|process_0~38_combout\) # ((\inst11|process_0~40_combout\) # (!\inst11|process_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~42_combout\,
	datab => \inst11|process_0~38_combout\,
	datac => \inst11|process_0~26_combout\,
	datad => \inst11|process_0~40_combout\,
	combout => \inst11|process_0~43_combout\);

-- Location: LCCOMB_X72_Y58_N4
\inst11|green[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~4_combout\ = (\inst11|green[7]~3_combout\ & !\inst11|process_0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|green[7]~3_combout\,
	datad => \inst11|process_0~43_combout\,
	combout => \inst11|green[7]~4_combout\);

-- Location: LCCOMB_X75_Y57_N28
\inst11|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~45_combout\ = (!\inst1|column\(5) & (!\inst1|column\(8) & !\inst1|column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(8),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~45_combout\);

-- Location: LCCOMB_X72_Y57_N20
\inst11|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~16_combout\ = (!\inst1|column\(11) & (\inst1|column\(31) & (!\inst1|column\(9) & \inst1|column\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst1|column\(31),
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst11|process_0~16_combout\);

-- Location: LCCOMB_X74_Y57_N4
\inst11|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~2_combout\ = (\inst1|column\(7) & \inst1|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(7),
	datad => \inst1|column\(6),
	combout => \inst11|LessThan2~2_combout\);

-- Location: LCCOMB_X74_Y57_N14
\inst11|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~44_combout\ = ((\inst11|LessThan2~2_combout\ & (!\inst11|LessThan3~0_combout\ & \inst1|column\(8))) # (!\inst11|LessThan2~2_combout\ & ((!\inst1|column\(8))))) # (!\inst11|process_0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~16_combout\,
	datab => \inst11|LessThan2~2_combout\,
	datac => \inst11|LessThan3~0_combout\,
	datad => \inst1|column\(8),
	combout => \inst11|process_0~44_combout\);

-- Location: LCCOMB_X75_Y57_N22
\inst11|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~0_combout\ = (\inst1|column\(2) & ((\inst1|column\(1)) # (!\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(2),
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst11|LessThan8~0_combout\);

-- Location: LCCOMB_X74_Y58_N10
\inst11|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~46_combout\ = (\inst11|process_0~44_combout\) # ((\inst11|process_0~45_combout\ & ((!\inst11|LessThan8~0_combout\) # (!\inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~45_combout\,
	datab => \inst11|process_0~44_combout\,
	datac => \inst1|column\(3),
	datad => \inst11|LessThan8~0_combout\,
	combout => \inst11|process_0~46_combout\);

-- Location: LCCOMB_X73_Y58_N0
\inst11|green[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~6_combout\ = (\inst11|F\(1) & (!\inst11|F\(0) & (!\inst11|process_0~46_combout\ & \inst11|green[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|F\(1),
	datab => \inst11|F\(0),
	datac => \inst11|process_0~46_combout\,
	datad => \inst11|green[7]~3_combout\,
	combout => \inst11|green[7]~6_combout\);

-- Location: LCCOMB_X73_Y58_N20
\inst11|red[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~29_combout\ = (!\inst11|green[7]~6_combout\ & (((\inst11|E\(0)) # (!\inst11|green[7]~4_combout\)) # (!\inst11|E\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|E\(1),
	datab => \inst11|E\(0),
	datac => \inst11|green[7]~4_combout\,
	datad => \inst11|green[7]~6_combout\,
	combout => \inst11|red[6]~29_combout\);

-- Location: LCCOMB_X73_Y58_N10
\inst11|red[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~31_combout\ = (!\inst11|green[7]~7_combout\ & (\inst11|red[6]~29_combout\ & ((!\inst11|red[7]~17_combout\) # (!\inst11|red[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|green[7]~7_combout\,
	datab => \inst11|red[7]~30_combout\,
	datac => \inst11|red[7]~17_combout\,
	datad => \inst11|red[6]~29_combout\,
	combout => \inst11|red[6]~31_combout\);

-- Location: LCCOMB_X72_Y58_N26
\inst11|red[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~24_combout\ = (\inst11|green[7]~5_combout\ & !\inst11|process_0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|green[7]~5_combout\,
	datad => \inst11|process_0~43_combout\,
	combout => \inst11|red[7]~24_combout\);

-- Location: LCCOMB_X72_Y58_N22
\inst11|red[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~34_combout\ = (!\inst11|D\(0) & (\inst11|D\(1) & (\inst11|green[7]~3_combout\ & !\inst11|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|D\(0),
	datab => \inst11|D\(1),
	datac => \inst11|green[7]~3_combout\,
	datad => \inst11|process_0~51_combout\,
	combout => \inst11|red[7]~34_combout\);

-- Location: LCCOMB_X72_Y58_N6
\inst11|red[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~35_combout\ = (!\inst11|red[7]~34_combout\ & ((\inst11|H\(0)) # ((!\inst11|red[7]~24_combout\) # (!\inst11|H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|H\(0),
	datab => \inst11|H\(1),
	datac => \inst11|red[7]~24_combout\,
	datad => \inst11|red[7]~34_combout\,
	combout => \inst11|red[6]~35_combout\);

-- Location: LCCOMB_X73_Y58_N4
\inst11|green[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~8_combout\ = (!\inst11|I\(0) & (\inst11|I\(1) & (!\inst11|process_0~46_combout\ & \inst11|green[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|I\(0),
	datab => \inst11|I\(1),
	datac => \inst11|process_0~46_combout\,
	datad => \inst11|green[7]~5_combout\,
	combout => \inst11|green[7]~8_combout\);

-- Location: LCCOMB_X74_Y58_N22
\inst11|red[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~32_combout\ = (!\inst11|B\(0) & (\inst11|B\(1) & (\inst11|red[7]~16_combout\ & !\inst11|process_0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|B\(0),
	datab => \inst11|B\(1),
	datac => \inst11|red[7]~16_combout\,
	datad => \inst11|process_0~43_combout\,
	combout => \inst11|red[7]~32_combout\);

-- Location: LCCOMB_X74_Y58_N2
\inst11|red[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~21_combout\ = (\inst11|red[7]~16_combout\ & !\inst11|process_0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|red[7]~16_combout\,
	datad => \inst11|process_0~46_combout\,
	combout => \inst11|red[7]~21_combout\);

-- Location: LCCOMB_X74_Y58_N4
\inst11|red[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~33_combout\ = (!\inst11|red[7]~32_combout\ & (((\inst11|C\(0)) # (!\inst11|red[7]~21_combout\)) # (!\inst11|C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|C\(1),
	datab => \inst11|C\(0),
	datac => \inst11|red[7]~32_combout\,
	datad => \inst11|red[7]~21_combout\,
	combout => \inst11|red[6]~33_combout\);

-- Location: LCCOMB_X73_Y58_N6
\inst11|red[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~36_combout\ = (\inst11|red[6]~31_combout\ & (\inst11|red[6]~35_combout\ & (!\inst11|green[7]~8_combout\ & \inst11|red[6]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~31_combout\,
	datab => \inst11|red[6]~35_combout\,
	datac => \inst11|green[7]~8_combout\,
	datad => \inst11|red[6]~33_combout\,
	combout => \inst11|red[6]~36_combout\);

-- Location: LCCOMB_X70_Y59_N24
\inst11|LessThan30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan30~2_combout\ = (!\inst1|row\(2) & !\inst1|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datad => \inst1|row\(1),
	combout => \inst11|LessThan30~2_combout\);

-- Location: LCCOMB_X70_Y59_N4
\inst11|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~22_combout\ = (\inst11|LessThan24~0_combout\ & (\inst1|row\(7) & ((\inst11|LessThan30~2_combout\) # (!\inst11|process_0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst1|row\(7),
	datac => \inst11|process_0~21_combout\,
	datad => \inst11|LessThan30~2_combout\,
	combout => \inst11|process_0~22_combout\);

-- Location: LCCOMB_X70_Y59_N10
\inst11|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~24_combout\ = (\inst1|row\(4)) # ((\inst1|row\(3) & ((\inst1|row\(2)) # (\inst11|process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst11|process_0~23_combout\,
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst11|process_0~24_combout\);

-- Location: LCCOMB_X70_Y59_N16
\inst11|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~25_combout\ = (\inst11|process_0~22_combout\) # ((\inst11|LessThan25~0_combout\ & (!\inst1|row\(7) & \inst11|process_0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan25~0_combout\,
	datab => \inst1|row\(7),
	datac => \inst11|process_0~22_combout\,
	datad => \inst11|process_0~24_combout\,
	combout => \inst11|process_0~25_combout\);

-- Location: LCCOMB_X72_Y57_N12
\inst11|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~28_combout\ = (\inst1|column\(6) & (\inst1|column\(10) & (\inst1|column\(8) & \inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(10),
	datac => \inst1|column\(8),
	datad => \inst1|column\(7),
	combout => \inst11|process_0~28_combout\);

-- Location: LCCOMB_X76_Y57_N22
\inst11|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~27_combout\ = (\inst1|column\(5)) # ((\inst1|column\(4)) # ((\inst1|column\(2) & \inst1|column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~27_combout\);

-- Location: LCCOMB_X72_Y57_N24
\inst11|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~29_combout\ = (\inst1|row\(31) & (\inst11|process_0~26_combout\ & ((!\inst11|process_0~27_combout\) # (!\inst11|process_0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~28_combout\,
	datab => \inst1|row\(31),
	datac => \inst11|process_0~27_combout\,
	datad => \inst11|process_0~26_combout\,
	combout => \inst11|process_0~29_combout\);

-- Location: LCCOMB_X75_Y57_N8
\inst11|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~30_combout\ = (\inst1|column\(5) & (\inst1|column\(4) & ((\inst11|LessThan8~0_combout\) # (\inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst11|LessThan8~0_combout\,
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~30_combout\);

-- Location: LCCOMB_X70_Y57_N16
\inst11|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~31_combout\ = (((!\inst11|process_0~30_combout\ & !\inst1|column\(6))) # (!\inst1|column\(8))) # (!\inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~30_combout\,
	datab => \inst1|column\(7),
	datac => \inst1|column\(6),
	datad => \inst1|column\(8),
	combout => \inst11|process_0~31_combout\);

-- Location: LCCOMB_X70_Y57_N6
\inst11|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~32_combout\ = (\inst11|process_0~29_combout\ & (((\inst1|column\(10)) # (\inst1|column\(9))) # (!\inst11|process_0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~29_combout\,
	datab => \inst11|process_0~31_combout\,
	datac => \inst1|column\(10),
	datad => \inst1|column\(9),
	combout => \inst11|process_0~32_combout\);

-- Location: LCCOMB_X70_Y57_N2
\inst11|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~33_combout\ = (\inst11|process_0~25_combout\ & (\inst11|process_0~20_combout\ & (\inst1|row\(8) & \inst11|process_0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~25_combout\,
	datab => \inst11|process_0~20_combout\,
	datac => \inst1|row\(8),
	datad => \inst11|process_0~32_combout\,
	combout => \inst11|process_0~33_combout\);

-- Location: LCCOMB_X74_Y57_N20
\inst11|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~13_combout\ = (((!\inst1|column\(4) & !\inst1|column\(3))) # (!\inst1|column\(6))) # (!\inst1|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(5),
	datac => \inst1|column\(3),
	datad => \inst1|column\(6),
	combout => \inst11|process_0~13_combout\);

-- Location: LCCOMB_X74_Y57_N6
\inst11|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~15_combout\ = (\inst11|process_0~14_combout\ & (\inst11|process_0~13_combout\ & (!\inst1|column\(10) & \inst1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~14_combout\,
	datab => \inst11|process_0~13_combout\,
	datac => \inst1|column\(10),
	datad => \inst1|column\(9),
	combout => \inst11|process_0~15_combout\);

-- Location: LCCOMB_X70_Y60_N22
\inst11|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~0_combout\ = (\inst1|row\(7) & (((\inst1|row\(4) & \inst11|LessThan23~0_combout\)) # (!\inst11|LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst1|row\(4),
	datac => \inst1|row\(7),
	datad => \inst11|LessThan23~0_combout\,
	combout => \inst11|LessThan5~0_combout\);

-- Location: LCCOMB_X70_Y60_N16
\inst11|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~0_combout\ = (!\inst1|row\(10) & (!\inst1|row\(6) & ((\inst11|LessThan24~1_combout\) # (!\inst1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(6),
	datac => \inst11|LessThan24~1_combout\,
	datad => \inst1|row\(5),
	combout => \inst11|LessThan4~0_combout\);

-- Location: LCCOMB_X70_Y60_N10
\inst11|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~18_combout\ = (\inst11|LessThan18~0_combout\ & (\inst11|LessThan5~0_combout\ & ((\inst11|LessThan4~0_combout\) # (!\inst11|LessThan4~1_combout\)))) # (!\inst11|LessThan18~0_combout\ & (((\inst11|LessThan4~0_combout\)) # 
-- (!\inst11|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan18~0_combout\,
	datab => \inst11|LessThan4~1_combout\,
	datac => \inst11|LessThan5~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst11|process_0~18_combout\);

-- Location: LCCOMB_X74_Y57_N28
\inst11|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~19_combout\ = (\inst1|row\(31) & (!\inst1|column\(8) & \inst11|process_0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(31),
	datac => \inst1|column\(8),
	datad => \inst11|process_0~18_combout\,
	combout => \inst11|process_0~19_combout\);

-- Location: LCCOMB_X74_Y57_N12
\inst11|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~17_combout\ = (\inst11|process_0~16_combout\ & ((\inst11|LessThan2~3_combout\) # ((\inst1|column\(5)) # (\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~16_combout\,
	datab => \inst11|LessThan2~3_combout\,
	datac => \inst1|column\(5),
	datad => \inst1|column\(6),
	combout => \inst11|process_0~17_combout\);

-- Location: LCCOMB_X74_Y57_N0
\inst11|process_0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~100_combout\ = (\inst11|process_0~17_combout\ & (\inst1|column\(7) & ((\inst11|LessThan3~0_combout\) # (!\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~17_combout\,
	datab => \inst1|column\(7),
	datac => \inst11|LessThan3~0_combout\,
	datad => \inst1|column\(6),
	combout => \inst11|process_0~100_combout\);

-- Location: LCCOMB_X74_Y57_N24
\inst11|red[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~12_combout\ = ((!\inst11|process_0~100_combout\ & ((!\inst11|LessThan2~4_combout\) # (!\inst11|process_0~15_combout\)))) # (!\inst11|process_0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~15_combout\,
	datab => \inst11|process_0~19_combout\,
	datac => \inst11|LessThan2~4_combout\,
	datad => \inst11|process_0~100_combout\,
	combout => \inst11|red[7]~12_combout\);

-- Location: LCCOMB_X70_Y59_N28
\inst11|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~35_combout\ = (\inst1|row\(2) & (!\inst1|row\(6) & (\inst11|process_0~21_combout\ & \inst11|process_0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(6),
	datac => \inst11|process_0~21_combout\,
	datad => \inst11|process_0~23_combout\,
	combout => \inst11|process_0~35_combout\);

-- Location: LCCOMB_X69_Y59_N8
\inst11|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~36_combout\ = (\inst1|row\(6) & (((!\inst1|row\(2)) # (!\inst1|row\(1))) # (!\inst1|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(3),
	datac => \inst1|row\(1),
	datad => \inst1|row\(2),
	combout => \inst11|process_0~36_combout\);

-- Location: LCCOMB_X69_Y59_N10
\inst11|process_0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~106_combout\ = (\inst1|row\(5) & (!\inst1|row\(6))) # (!\inst1|row\(5) & (((\inst11|process_0~36_combout\ & !\inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst11|process_0~36_combout\,
	datac => \inst1|row\(4),
	datad => \inst1|row\(5),
	combout => \inst11|process_0~106_combout\);

-- Location: LCCOMB_X70_Y57_N26
\inst11|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~34_combout\ = (!\inst1|row\(10) & (!\inst1|row\(8) & (\inst1|row\(7) & \inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(8),
	datac => \inst1|row\(7),
	datad => \inst1|row\(9),
	combout => \inst11|process_0~34_combout\);

-- Location: LCCOMB_X70_Y57_N10
\inst11|process_0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~107_combout\ = (\inst11|process_0~34_combout\ & (\inst11|process_0~32_combout\ & ((\inst11|process_0~35_combout\) # (\inst11|process_0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~35_combout\,
	datab => \inst11|process_0~106_combout\,
	datac => \inst11|process_0~34_combout\,
	datad => \inst11|process_0~32_combout\,
	combout => \inst11|process_0~107_combout\);

-- Location: LCCOMB_X70_Y57_N20
\inst11|red[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~13_combout\ = (!\inst11|process_0~33_combout\ & (\inst11|red[7]~12_combout\ & !\inst11|process_0~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~33_combout\,
	datac => \inst11|red[7]~12_combout\,
	datad => \inst11|process_0~107_combout\,
	combout => \inst11|red[7]~13_combout\);

-- Location: LCCOMB_X72_Y58_N24
\inst11|red[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~25_combout\ = (\inst11|D\(0) & (!\inst11|D\(1) & (\inst11|green[7]~3_combout\ & !\inst11|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|D\(0),
	datab => \inst11|D\(1),
	datac => \inst11|green[7]~3_combout\,
	datad => \inst11|process_0~51_combout\,
	combout => \inst11|red[7]~25_combout\);

-- Location: LCCOMB_X72_Y58_N16
\inst11|red[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~26_combout\ = (!\inst11|red[7]~25_combout\ & (((\inst11|H\(1)) # (!\inst11|red[7]~24_combout\)) # (!\inst11|H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|H\(0),
	datab => \inst11|H\(1),
	datac => \inst11|red[7]~24_combout\,
	datad => \inst11|red[7]~25_combout\,
	combout => \inst11|red[6]~26_combout\);

-- Location: LCCOMB_X73_Y58_N16
\inst11|red[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~27_combout\ = (\inst11|I\(0) & (!\inst11|I\(1) & (!\inst11|process_0~46_combout\ & \inst11|green[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|I\(0),
	datab => \inst11|I\(1),
	datac => \inst11|process_0~46_combout\,
	datad => \inst11|green[7]~5_combout\,
	combout => \inst11|red[7]~27_combout\);

-- Location: LCCOMB_X73_Y58_N24
\inst11|red[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~14_combout\ = (!\inst11|F\(1) & (\inst11|F\(0) & (!\inst11|process_0~46_combout\ & \inst11|green[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|F\(1),
	datab => \inst11|F\(0),
	datac => \inst11|process_0~46_combout\,
	datad => \inst11|green[7]~3_combout\,
	combout => \inst11|red[7]~14_combout\);

-- Location: LCCOMB_X73_Y58_N22
\inst11|red[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~15_combout\ = (!\inst11|red[7]~14_combout\ & ((\inst11|E\(1)) # ((!\inst11|green[7]~4_combout\) # (!\inst11|E\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|E\(1),
	datab => \inst11|E\(0),
	datac => \inst11|green[7]~4_combout\,
	datad => \inst11|red[7]~14_combout\,
	combout => \inst11|red[6]~15_combout\);

-- Location: LCCOMB_X73_Y58_N18
\inst11|red[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~18_combout\ = (\inst11|A\(0) & !\inst11|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|A\(0),
	datad => \inst11|A\(1),
	combout => \inst11|red[7]~18_combout\);

-- Location: LCCOMB_X73_Y58_N28
\inst11|red[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~19_combout\ = (!\inst11|G\(1) & (\inst11|G\(0) & (\inst11|green[7]~5_combout\ & !\inst11|process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|G\(1),
	datab => \inst11|G\(0),
	datac => \inst11|green[7]~5_combout\,
	datad => \inst11|process_0~51_combout\,
	combout => \inst11|red[7]~19_combout\);

-- Location: LCCOMB_X73_Y58_N26
\inst11|red[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~20_combout\ = (\inst11|red[6]~15_combout\ & (!\inst11|red[7]~19_combout\ & ((!\inst11|red[7]~17_combout\) # (!\inst11|red[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~15_combout\,
	datab => \inst11|red[7]~18_combout\,
	datac => \inst11|red[7]~17_combout\,
	datad => \inst11|red[7]~19_combout\,
	combout => \inst11|red[6]~20_combout\);

-- Location: LCCOMB_X73_Y57_N24
\inst11|red[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~22_combout\ = (!\inst11|B\(1) & (\inst11|B\(0) & (\inst11|red[7]~16_combout\ & !\inst11|process_0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|B\(1),
	datab => \inst11|B\(0),
	datac => \inst11|red[7]~16_combout\,
	datad => \inst11|process_0~43_combout\,
	combout => \inst11|red[7]~22_combout\);

-- Location: LCCOMB_X74_Y58_N18
\inst11|red[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~23_combout\ = (!\inst11|red[7]~22_combout\ & ((\inst11|C\(1)) # ((!\inst11|red[7]~21_combout\) # (!\inst11|C\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|C\(1),
	datab => \inst11|C\(0),
	datac => \inst11|red[7]~22_combout\,
	datad => \inst11|red[7]~21_combout\,
	combout => \inst11|red[6]~23_combout\);

-- Location: LCCOMB_X73_Y58_N12
\inst11|red[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~28_combout\ = (\inst11|red[6]~26_combout\ & (!\inst11|red[7]~27_combout\ & (\inst11|red[6]~20_combout\ & \inst11|red[6]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~26_combout\,
	datab => \inst11|red[7]~27_combout\,
	datac => \inst11|red[6]~20_combout\,
	datad => \inst11|red[6]~23_combout\,
	combout => \inst11|red[6]~28_combout\);

-- Location: LCCOMB_X73_Y59_N0
\inst11|red[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~37_combout\ = (\inst11|red[6]~36_combout\ & (\inst11|red[7]~13_combout\ & \inst11|red[6]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|red[6]~36_combout\,
	datac => \inst11|red[7]~13_combout\,
	datad => \inst11|red[6]~28_combout\,
	combout => \inst11|red[7]~37_combout\);

-- Location: LCCOMB_X75_Y57_N18
\inst11|process_0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~62_combout\ = (\inst1|column\(4)) # ((!\inst1|column\(0) & (\inst1|column\(3) & \inst11|process_0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	datad => \inst11|process_0~37_combout\,
	combout => \inst11|process_0~62_combout\);

-- Location: LCCOMB_X74_Y57_N2
\inst11|process_0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~63_combout\ = (\inst1|column\(6) & (((\inst1|column\(8))))) # (!\inst1|column\(6) & (\inst1|column\(5) & (\inst11|process_0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst11|process_0~62_combout\,
	datac => \inst1|column\(8),
	datad => \inst1|column\(6),
	combout => \inst11|process_0~63_combout\);

-- Location: LCCOMB_X75_Y57_N4
\inst11|process_0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~60_combout\ = (!\inst1|column\(3) & (!\inst1|column\(4) & ((!\inst1|column\(1)) # (!\inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(1),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~60_combout\);

-- Location: LCCOMB_X74_Y57_N30
\inst11|process_0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~61_combout\ = (!\inst1|column\(8) & (((\inst11|process_0~60_combout\) # (!\inst11|LessThan2~2_combout\)) # (!\inst1|column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst11|LessThan2~2_combout\,
	datac => \inst1|column\(8),
	datad => \inst11|process_0~60_combout\,
	combout => \inst11|process_0~61_combout\);

-- Location: LCCOMB_X73_Y57_N28
\inst11|process_0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~64_combout\ = ((\inst11|process_0~61_combout\) # ((\inst11|process_0~63_combout\ & \inst1|column\(7)))) # (!\inst11|process_0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~63_combout\,
	datab => \inst11|process_0~16_combout\,
	datac => \inst11|process_0~61_combout\,
	datad => \inst1|column\(7),
	combout => \inst11|process_0~64_combout\);

-- Location: LCCOMB_X69_Y59_N30
\inst11|LessThan37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan37~0_combout\ = (\inst1|row\(7) & ((\inst1|row\(4)) # ((\inst1|row\(2) & \inst1|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(7),
	combout => \inst11|LessThan37~0_combout\);

-- Location: LCCOMB_X69_Y59_N4
\inst11|LessThan37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan37~1_combout\ = (\inst1|row\(9) & ((\inst1|row\(8)) # ((\inst11|LessThan37~0_combout\ & \inst11|LessThan25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan37~0_combout\,
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst11|LessThan37~1_combout\);

-- Location: LCCOMB_X70_Y59_N0
\inst11|LessThan38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan38~0_combout\ = ((!\inst1|row\(1) & \inst1|row\(0))) # (!\inst1|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(1),
	datad => \inst1|row\(0),
	combout => \inst11|LessThan38~0_combout\);

-- Location: LCCOMB_X70_Y60_N24
\inst11|LessThan38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan38~1_combout\ = (\inst11|LessThan24~0_combout\ & (\inst11|LessThan38~0_combout\ & (!\inst1|row\(3) & !\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst11|LessThan38~0_combout\,
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst11|LessThan38~1_combout\);

-- Location: LCCOMB_X70_Y60_N12
\inst11|LessThan38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan38~2_combout\ = (!\inst1|row\(10) & ((\inst11|LessThan38~1_combout\) # ((!\inst1|row\(9)) # (!\inst11|LessThan23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst11|LessThan38~1_combout\,
	datac => \inst11|LessThan23~1_combout\,
	datad => \inst1|row\(9),
	combout => \inst11|LessThan38~2_combout\);

-- Location: LCCOMB_X70_Y60_N18
\inst11|process_0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~52_combout\ = (\inst1|row\(31) & (\inst11|LessThan38~2_combout\ & ((\inst1|row\(10)) # (\inst11|LessThan37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(31),
	datac => \inst11|LessThan37~1_combout\,
	datad => \inst11|LessThan38~2_combout\,
	combout => \inst11|process_0~52_combout\);

-- Location: LCCOMB_X73_Y60_N16
\inst11|red[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~38_combout\ = (\inst11|Equal62~0_combout\ & (!\inst11|process_0~64_combout\ & \inst11|process_0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal62~0_combout\,
	datac => \inst11|process_0~64_combout\,
	datad => \inst11|process_0~52_combout\,
	combout => \inst11|red[6]~38_combout\);

-- Location: LCCOMB_X75_Y57_N14
\inst11|process_0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~55_combout\ = (!\inst1|column\(7) & (((!\inst1|column\(3)) # (!\inst1|column\(2))) # (!\inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst1|column\(4),
	datac => \inst1|column\(2),
	datad => \inst1|column\(3),
	combout => \inst11|process_0~55_combout\);

-- Location: LCCOMB_X72_Y57_N30
\inst11|process_0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~56_combout\ = (!\inst1|column\(10) & (((!\inst1|column\(5) & \inst11|process_0~55_combout\)) # (!\inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(5),
	datac => \inst11|process_0~55_combout\,
	datad => \inst1|column\(8),
	combout => \inst11|process_0~56_combout\);

-- Location: LCCOMB_X72_Y57_N10
\inst11|process_0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~53_combout\ = (\inst1|column\(5) & ((\inst11|LessThan8~0_combout\) # ((\inst1|column\(3)) # (\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan8~0_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~53_combout\);

-- Location: LCCOMB_X72_Y57_N22
\inst11|process_0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~54_combout\ = (!\inst1|column\(9) & ((\inst11|process_0~53_combout\) # (\inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~53_combout\,
	datab => \inst1|column\(8),
	datad => \inst1|column\(9),
	combout => \inst11|process_0~54_combout\);

-- Location: LCCOMB_X73_Y57_N16
\inst11|process_0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~57_combout\ = (\inst1|column\(7) & (((\inst1|column\(10))))) # (!\inst1|column\(7) & ((\inst1|column\(6) & (\inst1|column\(10))) # (!\inst1|column\(6) & ((\inst1|column\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst1|column\(6),
	datac => \inst1|column\(10),
	datad => \inst1|column\(9),
	combout => \inst11|process_0~57_combout\);

-- Location: LCCOMB_X72_Y57_N6
\inst11|process_0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~58_combout\ = (\inst11|process_0~56_combout\) # (((\inst11|process_0~54_combout\) # (\inst11|process_0~57_combout\)) # (!\inst11|process_0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~56_combout\,
	datab => \inst11|process_0~14_combout\,
	datac => \inst11|process_0~54_combout\,
	datad => \inst11|process_0~57_combout\,
	combout => \inst11|process_0~58_combout\);

-- Location: LCCOMB_X74_Y60_N6
\inst11|process_0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~59_combout\ = (!\inst11|process_0~58_combout\ & \inst11|process_0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~58_combout\,
	datad => \inst11|process_0~52_combout\,
	combout => \inst11|process_0~59_combout\);

-- Location: LCCOMB_X75_Y60_N22
\inst11|Equal61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal61~1_combout\ = (\inst11|columnNum\(1) & (!\inst11|columnNum\(3) & (\inst11|columnNum\(0) & \inst11|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(3),
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(2),
	combout => \inst11|Equal61~1_combout\);

-- Location: LCCOMB_X74_Y60_N8
\inst11|blue[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~4_combout\ = (\inst11|red[7]~37_combout\) # ((\inst11|Equal61~1_combout\ & ((\inst11|process_0~59_combout\))) # (!\inst11|Equal61~1_combout\ & (\inst11|red[6]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[7]~37_combout\,
	datab => \inst11|red[6]~38_combout\,
	datac => \inst11|process_0~59_combout\,
	datad => \inst11|Equal61~1_combout\,
	combout => \inst11|blue[7]~4_combout\);

-- Location: LCCOMB_X75_Y57_N20
\inst11|process_0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~67_combout\ = (!\inst1|column\(5) & (((\inst11|process_0~47_combout\ & !\inst1|column\(1))) # (!\inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst11|process_0~47_combout\,
	datac => \inst1|column\(1),
	datad => \inst1|column\(4),
	combout => \inst11|process_0~67_combout\);

-- Location: LCCOMB_X74_Y57_N10
\inst11|process_0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~68_combout\ = ((!\inst1|column\(9) & ((\inst11|process_0~67_combout\) # (!\inst11|LessThan2~2_combout\)))) # (!\inst11|process_0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~50_combout\,
	datab => \inst11|LessThan2~2_combout\,
	datac => \inst11|process_0~67_combout\,
	datad => \inst1|column\(9),
	combout => \inst11|process_0~68_combout\);

-- Location: LCCOMB_X75_Y57_N12
\inst11|process_0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~69_combout\ = (\inst1|column\(5)) # ((\inst1|column\(6)) # ((\inst11|process_0~12_combout\ & !\inst11|process_0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(6),
	datac => \inst11|process_0~12_combout\,
	datad => \inst11|process_0~39_combout\,
	combout => \inst11|process_0~69_combout\);

-- Location: LCCOMB_X74_Y57_N26
\inst11|process_0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~70_combout\ = (\inst11|process_0~68_combout\) # ((!\inst1|column\(8) & (\inst11|process_0~69_combout\ & \inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~68_combout\,
	datab => \inst1|column\(8),
	datac => \inst11|process_0~69_combout\,
	datad => \inst1|column\(7),
	combout => \inst11|process_0~70_combout\);

-- Location: LCCOMB_X70_Y59_N12
\inst11|LessThan30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan30~3_combout\ = ((!\inst1|row\(2) & (!\inst1|row\(1) & \inst1|row\(0)))) # (!\inst1|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(1),
	datac => \inst1|row\(3),
	datad => \inst1|row\(0),
	combout => \inst11|LessThan30~3_combout\);

-- Location: LCCOMB_X70_Y59_N6
\inst11|LessThan30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan30~5_combout\ = (((\inst11|LessThan30~3_combout\ & !\inst1|row\(4))) # (!\inst1|row\(5))) # (!\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan30~3_combout\,
	datab => \inst1|row\(4),
	datac => \inst1|row\(6),
	datad => \inst1|row\(5),
	combout => \inst11|LessThan30~5_combout\);

-- Location: LCCOMB_X70_Y57_N28
\inst11|LessThan30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan30~4_combout\ = (!\inst1|row\(10) & (((\inst11|LessThan30~5_combout\ & \inst11|LessThan1~0_combout\)) # (!\inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst11|LessThan30~5_combout\,
	datac => \inst11|LessThan1~0_combout\,
	datad => \inst1|row\(9),
	combout => \inst11|LessThan30~4_combout\);

-- Location: LCCOMB_X70_Y60_N14
\inst11|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan29~0_combout\ = (\inst1|row\(6) & (\inst11|LessThan23~1_combout\ & ((\inst1|row\(4)) # (\inst1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(4),
	datac => \inst11|LessThan23~1_combout\,
	datad => \inst1|row\(5),
	combout => \inst11|LessThan29~0_combout\);

-- Location: LCCOMB_X70_Y57_N8
\inst11|process_0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~65_combout\ = (\inst11|LessThan30~4_combout\ & (\inst1|row\(31) & ((\inst11|LessThan29~0_combout\) # (!\inst11|process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~20_combout\,
	datab => \inst11|LessThan30~4_combout\,
	datac => \inst11|LessThan29~0_combout\,
	datad => \inst1|row\(31),
	combout => \inst11|process_0~65_combout\);

-- Location: LCCOMB_X74_Y60_N16
\inst11|process_0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~72_combout\ = (!\inst11|process_0~58_combout\ & \inst11|process_0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~58_combout\,
	datad => \inst11|process_0~65_combout\,
	combout => \inst11|process_0~72_combout\);

-- Location: LCCOMB_X74_Y60_N10
\inst11|blue[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~12_combout\ = (\inst11|columnNum\(1) & (\inst11|process_0~52_combout\ & (!\inst11|process_0~70_combout\))) # (!\inst11|columnNum\(1) & (((\inst11|process_0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|process_0~52_combout\,
	datac => \inst11|process_0~70_combout\,
	datad => \inst11|process_0~72_combout\,
	combout => \inst11|blue[7]~12_combout\);

-- Location: LCCOMB_X74_Y60_N4
\inst11|process_0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~66_combout\ = (!\inst11|process_0~64_combout\ & \inst11|process_0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~64_combout\,
	datad => \inst11|process_0~65_combout\,
	combout => \inst11|process_0~66_combout\);

-- Location: LCCOMB_X74_Y60_N12
\inst11|blue[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~5_combout\ = (\inst11|red[7]~37_combout\) # ((\inst11|columnNum\(0) & ((\inst11|process_0~66_combout\))) # (!\inst11|columnNum\(0) & (\inst11|blue[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|blue[7]~12_combout\,
	datab => \inst11|columnNum\(0),
	datac => \inst11|red[7]~37_combout\,
	datad => \inst11|process_0~66_combout\,
	combout => \inst11|blue[7]~5_combout\);

-- Location: LCCOMB_X74_Y60_N20
\inst11|blue[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~6_combout\ = (\inst11|columnNum\(1) & ((\inst11|columnNum\(0) & (\inst11|blue[7]~4_combout\)) # (!\inst11|columnNum\(0) & ((\inst11|blue[7]~5_combout\))))) # (!\inst11|columnNum\(1) & (((\inst11|blue[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|blue[7]~4_combout\,
	datad => \inst11|blue[7]~5_combout\,
	combout => \inst11|blue[7]~6_combout\);

-- Location: LCCOMB_X72_Y60_N10
\inst11|process_0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~74_combout\ = (\inst11|process_0~65_combout\ & !\inst11|process_0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~65_combout\,
	datad => \inst11|process_0~70_combout\,
	combout => \inst11|process_0~74_combout\);

-- Location: LCCOMB_X69_Y59_N6
\inst11|LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan27~0_combout\ = (\inst1|row\(4) & (\inst1|row\(5) & ((\inst1|row\(2)) # (\inst1|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(5),
	combout => \inst11|LessThan27~0_combout\);

-- Location: LCCOMB_X73_Y60_N22
\inst11|LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan27~1_combout\ = ((\inst1|row\(7) & ((\inst1|row\(6)) # (\inst11|LessThan27~0_combout\)))) # (!\inst11|LessThan18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst1|row\(6),
	datac => \inst11|LessThan18~0_combout\,
	datad => \inst11|LessThan27~0_combout\,
	combout => \inst11|LessThan27~1_combout\);

-- Location: LCCOMB_X70_Y59_N8
\inst11|LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan28~0_combout\ = (((!\inst1|row\(1) & \inst1|row\(0))) # (!\inst1|row\(3))) # (!\inst1|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(1),
	datac => \inst1|row\(3),
	datad => \inst1|row\(0),
	combout => \inst11|LessThan28~0_combout\);

-- Location: LCCOMB_X70_Y59_N30
\inst11|LessThan28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan28~1_combout\ = ((!\inst1|row\(4) & (\inst11|LessThan28~0_combout\ & !\inst1|row\(5)))) # (!\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(4),
	datac => \inst11|LessThan28~0_combout\,
	datad => \inst1|row\(5),
	combout => \inst11|LessThan28~1_combout\);

-- Location: LCCOMB_X73_Y60_N12
\inst11|LessThan28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan28~2_combout\ = (\inst11|process_0~20_combout\ & (((!\inst1|row\(7) & \inst11|LessThan28~1_combout\)) # (!\inst1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~20_combout\,
	datab => \inst1|row\(7),
	datac => \inst1|row\(8),
	datad => \inst11|LessThan28~1_combout\,
	combout => \inst11|LessThan28~2_combout\);

-- Location: LCCOMB_X73_Y60_N28
\inst11|process_0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~103_combout\ = (!\inst11|process_0~64_combout\ & (\inst1|row\(31) & (\inst11|LessThan27~1_combout\ & \inst11|LessThan28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~64_combout\,
	datab => \inst1|row\(31),
	datac => \inst11|LessThan27~1_combout\,
	datad => \inst11|LessThan28~2_combout\,
	combout => \inst11|process_0~103_combout\);

-- Location: LCCOMB_X72_Y60_N12
\inst11|blue[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~7_combout\ = (\inst11|columnNum\(0) & ((\inst11|process_0~74_combout\) # ((!\inst11|columnNum\(1))))) # (!\inst11|columnNum\(0) & (((\inst11|process_0~103_combout\ & \inst11|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~74_combout\,
	datab => \inst11|process_0~103_combout\,
	datac => \inst11|columnNum\(0),
	datad => \inst11|columnNum\(1),
	combout => \inst11|blue[7]~7_combout\);

-- Location: LCCOMB_X72_Y60_N24
\inst11|process_0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~101_combout\ = (!\inst11|process_0~58_combout\ & (\inst11|LessThan27~1_combout\ & (\inst11|LessThan28~2_combout\ & \inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~58_combout\,
	datab => \inst11|LessThan27~1_combout\,
	datac => \inst11|LessThan28~2_combout\,
	datad => \inst1|row\(31),
	combout => \inst11|process_0~101_combout\);

-- Location: LCCOMB_X73_Y60_N24
\inst11|process_0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~102_combout\ = (\inst11|LessThan28~2_combout\ & (\inst1|row\(31) & (\inst11|LessThan27~1_combout\ & !\inst11|process_0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan28~2_combout\,
	datab => \inst1|row\(31),
	datac => \inst11|LessThan27~1_combout\,
	datad => \inst11|process_0~70_combout\,
	combout => \inst11|process_0~102_combout\);

-- Location: LCCOMB_X72_Y60_N16
\inst11|blue[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~8_combout\ = (\inst11|blue[7]~7_combout\ & ((\inst11|process_0~101_combout\) # ((\inst11|columnNum\(1))))) # (!\inst11|blue[7]~7_combout\ & (((\inst11|process_0~102_combout\ & !\inst11|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|blue[7]~7_combout\,
	datab => \inst11|process_0~101_combout\,
	datac => \inst11|process_0~102_combout\,
	datad => \inst11|columnNum\(1),
	combout => \inst11|blue[7]~8_combout\);

-- Location: LCCOMB_X73_Y59_N2
\inst11|blue[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~9_combout\ = (\inst11|blue[7]~8_combout\) # ((\inst11|red[7]~13_combout\ & (\inst11|red[6]~36_combout\ & \inst11|red[6]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[7]~13_combout\,
	datab => \inst11|blue[7]~8_combout\,
	datac => \inst11|red[6]~36_combout\,
	datad => \inst11|red[6]~28_combout\,
	combout => \inst11|blue[7]~9_combout\);

-- Location: LCCOMB_X74_Y59_N24
\inst11|blue[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~10_combout\ = (\inst11|Equal61~0_combout\ & ((\inst11|blue[7]~6_combout\) # ((\inst11|Equal54~1_combout\ & \inst11|blue[7]~9_combout\)))) # (!\inst11|Equal61~0_combout\ & (\inst11|Equal54~1_combout\ & ((\inst11|blue[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal61~0_combout\,
	datab => \inst11|Equal54~1_combout\,
	datac => \inst11|blue[7]~6_combout\,
	datad => \inst11|blue[7]~9_combout\,
	combout => \inst11|blue[7]~10_combout\);

-- Location: LCCOMB_X74_Y59_N26
\inst11|blue[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue[7]~11_combout\ = (\inst11|blue[7]~10_combout\) # ((\inst11|columnNum\(3) & \inst11|blue[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|columnNum\(3),
	datac => \inst11|blue[7]~4_combout\,
	datad => \inst11|blue[7]~10_combout\,
	combout => \inst11|blue[7]~11_combout\);

-- Location: LCCOMB_X69_Y59_N14
\inst11|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~1_combout\ = (!\inst1|row\(9) & (((!\inst1|row\(5)) # (!\inst1|row\(3))) # (!\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(9),
	datac => \inst1|row\(3),
	datad => \inst1|row\(5),
	combout => \inst11|LessThan1~1_combout\);

-- Location: LCCOMB_X70_Y57_N30
\inst11|LessThan23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan23~4_combout\ = (\inst1|row\(31) & \inst1|row\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(31),
	datad => \inst1|row\(10),
	combout => \inst11|LessThan23~4_combout\);

-- Location: LCCOMB_X70_Y57_N24
\inst11|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~2_combout\ = ((\inst11|LessThan1~1_combout\ & (\inst11|LessThan1~0_combout\ & !\inst1|row\(6)))) # (!\inst11|LessThan23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan1~1_combout\,
	datab => \inst11|LessThan1~0_combout\,
	datac => \inst11|LessThan23~4_combout\,
	datad => \inst1|row\(6),
	combout => \inst11|LessThan1~2_combout\);

-- Location: LCCOMB_X73_Y57_N22
\inst11|red[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~39_combout\ = (((!\inst1|column\(8)) # (!\inst1|column\(7))) # (!\inst1|column\(10))) # (!\inst1|column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(10),
	datac => \inst1|column\(7),
	datad => \inst1|column\(8),
	combout => \inst11|red[7]~39_combout\);

-- Location: LCCOMB_X72_Y57_N2
\inst11|red[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~40_combout\ = (\inst11|LessThan1~2_combout\ & (((!\inst1|column\(11) & \inst11|red[7]~39_combout\)) # (!\inst1|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan1~2_combout\,
	datab => \inst1|column\(31),
	datac => \inst1|column\(11),
	datad => \inst11|red[7]~39_combout\,
	combout => \inst11|red[7]~40_combout\);

-- Location: LCCOMB_X73_Y60_N30
\inst11|red[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~41_combout\ = (((\inst11|red[7]~40_combout\) # (!\inst11|red[6]~28_combout\)) # (!\inst11|red[6]~36_combout\)) # (!\inst11|red[7]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[7]~13_combout\,
	datab => \inst11|red[6]~36_combout\,
	datac => \inst11|red[6]~28_combout\,
	datad => \inst11|red[7]~40_combout\,
	combout => \inst11|red[7]~41_combout\);

-- Location: LCCOMB_X73_Y60_N18
\inst11|process_0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~73_combout\ = (\inst1|row\(31) & (\inst11|LessThan27~1_combout\ & \inst11|LessThan28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(31),
	datac => \inst11|LessThan27~1_combout\,
	datad => \inst11|LessThan28~2_combout\,
	combout => \inst11|process_0~73_combout\);

-- Location: LCCOMB_X73_Y60_N4
\inst11|red[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~44_combout\ = (\inst11|columnNum\(1)) # ((\inst11|columnNum\(0) & (!\inst11|process_0~58_combout\ & \inst11|process_0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(0),
	datab => \inst11|columnNum\(1),
	datac => \inst11|process_0~58_combout\,
	datad => \inst11|process_0~73_combout\,
	combout => \inst11|red[7]~44_combout\);

-- Location: LCCOMB_X73_Y60_N26
\inst11|red[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~45_combout\ = (\inst11|red[7]~44_combout\ & (\inst11|columnNum\(0))) # (!\inst11|red[7]~44_combout\ & ((\inst11|red[7]~41_combout\) # ((!\inst11|columnNum\(0) & \inst11|process_0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(0),
	datab => \inst11|red[7]~44_combout\,
	datac => \inst11|red[7]~41_combout\,
	datad => \inst11|process_0~102_combout\,
	combout => \inst11|red[7]~45_combout\);

-- Location: LCCOMB_X73_Y60_N2
\inst11|red[7]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~60_combout\ = (\inst11|red[7]~41_combout\) # ((\inst11|red[7]~45_combout\ & (\inst11|process_0~65_combout\ & !\inst11|process_0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[7]~45_combout\,
	datab => \inst11|process_0~65_combout\,
	datac => \inst11|red[7]~41_combout\,
	datad => \inst11|process_0~70_combout\,
	combout => \inst11|red[7]~60_combout\);

-- Location: LCCOMB_X73_Y60_N8
\inst11|red[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~46_combout\ = (\inst11|columnNum\(1) & ((\inst11|red[7]~60_combout\) # ((!\inst11|red[7]~45_combout\ & \inst11|process_0~103_combout\)))) # (!\inst11|columnNum\(1) & (((\inst11|red[7]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|red[7]~60_combout\,
	datac => \inst11|red[7]~45_combout\,
	datad => \inst11|process_0~103_combout\,
	combout => \inst11|red[7]~46_combout\);

-- Location: LCCOMB_X73_Y57_N18
\inst11|red[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~61_combout\ = (\inst11|process_0~65_combout\ & ((\inst11|columnNum\(0) & (!\inst11|process_0~64_combout\)) # (!\inst11|columnNum\(0) & ((!\inst11|process_0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~65_combout\,
	datab => \inst11|process_0~64_combout\,
	datac => \inst11|columnNum\(0),
	datad => \inst11|process_0~58_combout\,
	combout => \inst11|red[7]~61_combout\);

-- Location: LCCOMB_X74_Y60_N22
\inst11|red[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~42_combout\ = (\inst11|columnNum\(1) & (\inst11|columnNum\(0))) # (!\inst11|columnNum\(1) & (((\inst11|red[7]~61_combout\) # (\inst11|red[7]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|columnNum\(0),
	datac => \inst11|red[7]~61_combout\,
	datad => \inst11|red[7]~41_combout\,
	combout => \inst11|red[7]~42_combout\);

-- Location: LCCOMB_X74_Y60_N24
\inst11|red[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~59_combout\ = (\inst11|red[7]~41_combout\) # ((!\inst11|process_0~58_combout\ & (\inst11|process_0~52_combout\ & \inst11|red[7]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~58_combout\,
	datab => \inst11|red[7]~41_combout\,
	datac => \inst11|process_0~52_combout\,
	datad => \inst11|red[7]~42_combout\,
	combout => \inst11|red[7]~59_combout\);

-- Location: LCCOMB_X74_Y60_N2
\inst11|process_0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~71_combout\ = (!\inst11|process_0~70_combout\ & \inst11|process_0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~70_combout\,
	datad => \inst11|process_0~52_combout\,
	combout => \inst11|process_0~71_combout\);

-- Location: LCCOMB_X74_Y60_N18
\inst11|red[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~43_combout\ = (\inst11|columnNum\(1) & ((\inst11|red[7]~59_combout\) # ((!\inst11|red[7]~42_combout\ & \inst11|process_0~71_combout\)))) # (!\inst11|columnNum\(1) & (((\inst11|red[7]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|red[7]~59_combout\,
	datac => \inst11|red[7]~42_combout\,
	datad => \inst11|process_0~71_combout\,
	combout => \inst11|red[7]~43_combout\);

-- Location: LCCOMB_X73_Y60_N14
\inst11|red[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~47_combout\ = (\inst11|Equal54~1_combout\ & ((\inst11|red[7]~46_combout\) # ((\inst11|Equal61~0_combout\ & \inst11|red[7]~43_combout\)))) # (!\inst11|Equal54~1_combout\ & (\inst11|Equal61~0_combout\ & ((\inst11|red[7]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal54~1_combout\,
	datab => \inst11|Equal61~0_combout\,
	datac => \inst11|red[7]~46_combout\,
	datad => \inst11|red[7]~43_combout\,
	combout => \inst11|red[7]~47_combout\);

-- Location: LCCOMB_X73_Y60_N0
\inst11|red[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~48_combout\ = (\inst11|red[7]~47_combout\) # ((\inst11|columnNum\(3) & ((\inst11|red[7]~41_combout\) # (\inst11|red[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[7]~41_combout\,
	datab => \inst11|columnNum\(3),
	datac => \inst11|red[7]~47_combout\,
	datad => \inst11|red[6]~38_combout\,
	combout => \inst11|red[7]~48_combout\);

-- Location: CLKCTRL_G12
\inst11|red[7]~48clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|red[7]~48clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|red[7]~48clkctrl_outclk\);

-- Location: LCCOMB_X74_Y59_N22
\inst11|blue[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue\(7) = (\inst1|disp_ena~q\ & ((GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & (\inst11|blue[7]~11_combout\)) # (!GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & ((\inst11|blue\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|blue[7]~11_combout\,
	datab => \inst1|disp_ena~q\,
	datac => \inst11|blue\(7),
	datad => \inst11|red[7]~48clkctrl_outclk\,
	combout => \inst11|blue\(7));

-- Location: LCCOMB_X74_Y60_N28
\inst11|red[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~49_combout\ = (\inst11|columnNum\(1) & (((\inst11|columnNum\(0))))) # (!\inst11|columnNum\(1) & ((\inst11|columnNum\(0) & ((\inst11|process_0~66_combout\))) # (!\inst11|columnNum\(0) & (\inst11|process_0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|process_0~72_combout\,
	datac => \inst11|columnNum\(0),
	datad => \inst11|process_0~66_combout\,
	combout => \inst11|red[6]~49_combout\);

-- Location: LCCOMB_X74_Y60_N26
\inst11|red[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~50_combout\ = (\inst11|columnNum\(1) & ((\inst11|red[6]~49_combout\ & ((\inst11|process_0~59_combout\))) # (!\inst11|red[6]~49_combout\ & (\inst11|process_0~71_combout\)))) # (!\inst11|columnNum\(1) & (((\inst11|red[6]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|columnNum\(1),
	datab => \inst11|process_0~71_combout\,
	datac => \inst11|process_0~59_combout\,
	datad => \inst11|red[6]~49_combout\,
	combout => \inst11|red[6]~50_combout\);

-- Location: LCCOMB_X73_Y60_N6
\inst11|red[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~51_combout\ = (\inst11|columnNum\(1) & (((\inst11|columnNum\(0)) # (\inst11|process_0~103_combout\)))) # (!\inst11|columnNum\(1) & (\inst11|process_0~102_combout\ & (!\inst11|columnNum\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~102_combout\,
	datab => \inst11|columnNum\(1),
	datac => \inst11|columnNum\(0),
	datad => \inst11|process_0~103_combout\,
	combout => \inst11|red[6]~51_combout\);

-- Location: LCCOMB_X72_Y60_N18
\inst11|red[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~52_combout\ = (\inst11|columnNum\(0) & ((\inst11|red[6]~51_combout\ & (\inst11|process_0~74_combout\)) # (!\inst11|red[6]~51_combout\ & ((\inst11|process_0~101_combout\))))) # (!\inst11|columnNum\(0) & (((\inst11|red[6]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~74_combout\,
	datab => \inst11|process_0~101_combout\,
	datac => \inst11|columnNum\(0),
	datad => \inst11|red[6]~51_combout\,
	combout => \inst11|red[6]~52_combout\);

-- Location: LCCOMB_X74_Y60_N0
\inst11|red[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~53_combout\ = (!\inst11|columnNum\(3) & ((\inst11|columnNum\(2) & (\inst11|red[6]~50_combout\)) # (!\inst11|columnNum\(2) & ((\inst11|red[6]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~50_combout\,
	datab => \inst11|red[6]~52_combout\,
	datac => \inst11|columnNum\(3),
	datad => \inst11|columnNum\(2),
	combout => \inst11|red[6]~53_combout\);

-- Location: LCCOMB_X73_Y59_N20
\inst11|red[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~54_combout\ = (\inst11|red[6]~36_combout\ & (!\inst11|red[6]~53_combout\ & ((!\inst11|columnNum\(3)) # (!\inst11|red[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~38_combout\,
	datab => \inst11|columnNum\(3),
	datac => \inst11|red[6]~36_combout\,
	datad => \inst11|red[6]~53_combout\,
	combout => \inst11|red[6]~54_combout\);

-- Location: LCCOMB_X73_Y59_N14
\inst11|red[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~55_combout\ = (\inst11|red[6]~28_combout\ & \inst11|red[6]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~28_combout\,
	datad => \inst11|red[6]~54_combout\,
	combout => \inst11|red[6]~55_combout\);

-- Location: LCCOMB_X73_Y59_N16
\inst11|blue[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue\(6) = (\inst1|disp_ena~q\ & ((GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & ((\inst11|red[6]~55_combout\))) # (!GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & (\inst11|blue\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datab => \inst11|blue\(6),
	datac => \inst11|red[6]~55_combout\,
	datad => \inst11|red[7]~48clkctrl_outclk\,
	combout => \inst11|blue\(6));

-- Location: LCCOMB_X73_Y59_N24
\inst11|red[5]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[5]~56_combout\ = ((\inst11|red[6]~53_combout\) # ((\inst11|red[6]~38_combout\ & \inst11|columnNum\(3)))) # (!\inst11|red[7]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~38_combout\,
	datab => \inst11|red[7]~37_combout\,
	datac => \inst11|columnNum\(3),
	datad => \inst11|red[6]~53_combout\,
	combout => \inst11|red[5]~56_combout\);

-- Location: LCCOMB_X73_Y59_N18
\inst11|blue[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|blue\(5) = (\inst1|disp_ena~q\ & ((GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & (!\inst11|red[5]~56_combout\)) # (!GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & ((\inst11|blue\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datab => \inst11|red[5]~56_combout\,
	datac => \inst11|red[7]~48clkctrl_outclk\,
	datad => \inst11|blue\(5),
	combout => \inst11|blue\(5));

-- Location: LCCOMB_X73_Y59_N26
\inst11|green[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green[7]~9_combout\ = ((\inst11|red[6]~28_combout\ & \inst11|red[7]~13_combout\)) # (!\inst11|red[6]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~28_combout\,
	datac => \inst11|red[7]~13_combout\,
	datad => \inst11|red[6]~54_combout\,
	combout => \inst11|green[7]~9_combout\);

-- Location: LCCOMB_X73_Y59_N28
\inst11|green[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|green\(7) = (\inst1|disp_ena~q\ & ((GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & ((\inst11|green[7]~9_combout\))) # (!GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & (\inst11|green\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datab => \inst11|green\(7),
	datac => \inst11|green[7]~9_combout\,
	datad => \inst11|red[7]~48clkctrl_outclk\,
	combout => \inst11|green\(7));

-- Location: LCCOMB_X73_Y59_N12
\inst11|red[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[6]~57_combout\ = (\inst11|red[6]~53_combout\) # ((\inst11|columnNum\(3) & \inst11|red[6]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|columnNum\(3),
	datac => \inst11|red[6]~38_combout\,
	datad => \inst11|red[6]~53_combout\,
	combout => \inst11|red[6]~57_combout\);

-- Location: LCCOMB_X73_Y59_N6
\inst11|red[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red[7]~58_combout\ = (\inst11|red[6]~57_combout\) # ((\inst11|red[6]~36_combout\ & ((\inst11|red[7]~13_combout\) # (!\inst11|red[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[6]~28_combout\,
	datab => \inst11|red[6]~36_combout\,
	datac => \inst11|red[7]~13_combout\,
	datad => \inst11|red[6]~57_combout\,
	combout => \inst11|red[7]~58_combout\);

-- Location: LCCOMB_X73_Y59_N22
\inst11|red[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|red\(7) = (\inst1|disp_ena~q\ & ((GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & (\inst11|red[7]~58_combout\)) # (!GLOBAL(\inst11|red[7]~48clkctrl_outclk\) & ((\inst11|red\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|red[7]~58_combout\,
	datab => \inst1|disp_ena~q\,
	datac => \inst11|red\(7),
	datad => \inst11|red[7]~48clkctrl_outclk\,
	combout => \inst11|red\(7));
END structure;


