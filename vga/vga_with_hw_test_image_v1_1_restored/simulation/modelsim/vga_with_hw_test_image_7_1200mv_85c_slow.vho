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

-- DATE "11/22/2021 20:12:51"

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
	moveFoward : IN std_logic;
	moveBackward : IN std_logic;
	confirmButton : IN std_logic;
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
-- moveBackward	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- moveFoward	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- confirmButton	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_moveFoward : std_logic;
SIGNAL ww_moveBackward : std_logic;
SIGNAL ww_confirmButton : std_logic;
SIGNAL ww_r2 : std_logic;
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|red[7]~90clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|I[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \moveBackward~input_o\ : std_logic;
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
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~10_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|h_count~9_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|h_count~8_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|h_count~7_combout\ : std_logic;
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
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|h_count~11_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|h_count[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
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
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
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
SIGNAL \moveFoward~input_o\ : std_logic;
SIGNAL \confirmButton~input_o\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|LessThan6~1_combout\ : std_logic;
SIGNAL \inst1|row[31]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan7~4_combout\ : std_logic;
SIGNAL \inst1|LessThan7~5_combout\ : std_logic;
SIGNAL \inst1|row[0]~0_combout\ : std_logic;
SIGNAL \inst6|LessThan11~0_combout\ : std_logic;
SIGNAL \inst6|process_0~28_combout\ : std_logic;
SIGNAL \inst6|LessThan17~0_combout\ : std_logic;
SIGNAL \inst6|LessThan27~1_combout\ : std_logic;
SIGNAL \inst6|LessThan18~0_combout\ : std_logic;
SIGNAL \inst6|LessThan18~1_combout\ : std_logic;
SIGNAL \inst6|LessThan18~2_combout\ : std_logic;
SIGNAL \inst6|red[7]~53_combout\ : std_logic;
SIGNAL \inst6|LessThan16~0_combout\ : std_logic;
SIGNAL \inst6|LessThan16~1_combout\ : std_logic;
SIGNAL \inst6|process_0~65_combout\ : std_logic;
SIGNAL \inst1|column[0]~0_combout\ : std_logic;
SIGNAL \inst6|LessThan2~0_combout\ : std_logic;
SIGNAL \inst6|LessThan2~1_combout\ : std_logic;
SIGNAL \inst6|process_0~108_combout\ : std_logic;
SIGNAL \inst1|column[31]~feeder_combout\ : std_logic;
SIGNAL \inst6|process_0~35_combout\ : std_logic;
SIGNAL \inst6|red[7]~54_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|disp_ena~q\ : std_logic;
SIGNAL \inst6|buttonState~0_combout\ : std_logic;
SIGNAL \inst6|buttonState~q\ : std_logic;
SIGNAL \inst6|buttonStateConfirm~0_combout\ : std_logic;
SIGNAL \inst6|buttonStateConfirm~q\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~34_combout\ : std_logic;
SIGNAL \inst6|Add0~1_combout\ : std_logic;
SIGNAL \inst6|columnNum~9_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst6|I[0]~0_combout\ : std_logic;
SIGNAL \inst6|I[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst6|process_0~169_combout\ : std_logic;
SIGNAL \inst6|columnNum[3]~5_combout\ : std_logic;
SIGNAL \inst6|columnNum[0]~6_combout\ : std_logic;
SIGNAL \inst6|columnNum~7_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|columnNum~8_combout\ : std_logic;
SIGNAL \inst6|columnNum~4_combout\ : std_logic;
SIGNAL \inst6|Equal62~0_combout\ : std_logic;
SIGNAL \inst6|process_0~156_combout\ : std_logic;
SIGNAL \inst6|process_0~154_combout\ : std_logic;
SIGNAL \inst6|process_0~159_combout\ : std_logic;
SIGNAL \inst6|A[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~155_combout\ : std_logic;
SIGNAL \inst6|process_0~142_combout\ : std_logic;
SIGNAL \inst6|G~0_combout\ : std_logic;
SIGNAL \inst6|process_0~162_combout\ : std_logic;
SIGNAL \inst6|H[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~157_combout\ : std_logic;
SIGNAL \inst6|p1~1_combout\ : std_logic;
SIGNAL \inst6|process_0~163_combout\ : std_logic;
SIGNAL \inst6|G[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~152_combout\ : std_logic;
SIGNAL \inst6|process_0~145_combout\ : std_logic;
SIGNAL \inst6|process_0~153_combout\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|E~0_combout\ : std_logic;
SIGNAL \inst6|process_0~144_combout\ : std_logic;
SIGNAL \inst6|E[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~143_combout\ : std_logic;
SIGNAL \inst6|process_0~150_combout\ : std_logic;
SIGNAL \inst6|process_0~161_combout\ : std_logic;
SIGNAL \inst6|D[1]~1_combout\ : std_logic;
SIGNAL \inst6|D~0_combout\ : std_logic;
SIGNAL \inst6|process_0~151_combout\ : std_logic;
SIGNAL \inst6|Add4~0_combout\ : std_logic;
SIGNAL \inst6|C~0_combout\ : std_logic;
SIGNAL \inst6|process_0~167_combout\ : std_logic;
SIGNAL \inst6|C[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~147_combout\ : std_logic;
SIGNAL \inst6|process_0~148_combout\ : std_logic;
SIGNAL \inst6|B~0_combout\ : std_logic;
SIGNAL \inst6|process_0~160_combout\ : std_logic;
SIGNAL \inst6|B[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~149_combout\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|p1~0_combout\ : std_logic;
SIGNAL \inst6|H~0_combout\ : std_logic;
SIGNAL \inst6|process_0~165_combout\ : std_logic;
SIGNAL \inst6|process_0~166_combout\ : std_logic;
SIGNAL \inst6|I[1]~2_combout\ : std_logic;
SIGNAL \inst6|process_0~158_combout\ : std_logic;
SIGNAL \inst6|p1~2_combout\ : std_logic;
SIGNAL \inst6|I~1_combout\ : std_logic;
SIGNAL \inst6|p2~5_combout\ : std_logic;
SIGNAL \inst6|p2~0_combout\ : std_logic;
SIGNAL \inst6|F[1]~1_combout\ : std_logic;
SIGNAL \inst6|F~0_combout\ : std_logic;
SIGNAL \inst6|process_0~146_combout\ : std_logic;
SIGNAL \inst6|p2~2_combout\ : std_logic;
SIGNAL \inst6|Add12~0_combout\ : std_logic;
SIGNAL \inst6|p2~1_combout\ : std_logic;
SIGNAL \inst6|p2~3_combout\ : std_logic;
SIGNAL \inst6|process_0~168_combout\ : std_logic;
SIGNAL \inst6|Add14~0_combout\ : std_logic;
SIGNAL \inst6|p2~4_combout\ : std_logic;
SIGNAL \inst6|p1~3_combout\ : std_logic;
SIGNAL \inst6|p1~4_combout\ : std_logic;
SIGNAL \inst6|A~0_combout\ : std_logic;
SIGNAL \inst6|p2w~5_combout\ : std_logic;
SIGNAL \inst6|red[7]~38_combout\ : std_logic;
SIGNAL \inst6|process_0~109_combout\ : std_logic;
SIGNAL \inst6|LessThan24~0_combout\ : std_logic;
SIGNAL \inst6|LessThan24~1_combout\ : std_logic;
SIGNAL \inst6|LessThan24~2_combout\ : std_logic;
SIGNAL \inst6|LessThan13~1_combout\ : std_logic;
SIGNAL \inst6|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|LessThan23~0_combout\ : std_logic;
SIGNAL \inst6|LessThan23~1_combout\ : std_logic;
SIGNAL \inst6|red[7]~55_combout\ : std_logic;
SIGNAL \inst6|red[7]~56_combout\ : std_logic;
SIGNAL \inst6|red[5]~73_combout\ : std_logic;
SIGNAL \inst6|red[7]~36_combout\ : std_logic;
SIGNAL \inst6|red[7]~37_combout\ : std_logic;
SIGNAL \inst6|process_0~92_combout\ : std_logic;
SIGNAL \inst6|process_0~41_combout\ : std_logic;
SIGNAL \inst6|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|process_0~116_combout\ : std_logic;
SIGNAL \inst6|process_0~117_combout\ : std_logic;
SIGNAL \inst6|process_0~118_combout\ : std_logic;
SIGNAL \inst6|LessThan4~1_combout\ : std_logic;
SIGNAL \inst6|LessThan13~0_combout\ : std_logic;
SIGNAL \inst6|LessThan26~0_combout\ : std_logic;
SIGNAL \inst6|LessThan25~0_combout\ : std_logic;
SIGNAL \inst6|red[7]~61_combout\ : std_logic;
SIGNAL \inst6|red[7]~62_combout\ : std_logic;
SIGNAL \inst6|red[7]~63_combout\ : std_logic;
SIGNAL \inst6|red[7]~68_combout\ : std_logic;
SIGNAL \inst6|LessThan59~0_combout\ : std_logic;
SIGNAL \inst6|process_0~114_combout\ : std_logic;
SIGNAL \inst6|process_0~75_combout\ : std_logic;
SIGNAL \inst6|process_0~110_combout\ : std_logic;
SIGNAL \inst6|process_0~111_combout\ : std_logic;
SIGNAL \inst6|process_0~112_combout\ : std_logic;
SIGNAL \inst6|process_0~113_combout\ : std_logic;
SIGNAL \inst6|process_0~76_combout\ : std_logic;
SIGNAL \inst6|process_0~115_combout\ : std_logic;
SIGNAL \inst6|red[7]~69_combout\ : std_logic;
SIGNAL \inst6|red[5]~78_combout\ : std_logic;
SIGNAL \inst6|process_0~176_combout\ : std_logic;
SIGNAL \inst6|red[7]~33_combout\ : std_logic;
SIGNAL \inst6|red[7]~34_combout\ : std_logic;
SIGNAL \inst6|red[7]~35_combout\ : std_logic;
SIGNAL \inst6|red[7]~58_combout\ : std_logic;
SIGNAL \inst6|red[7]~59_combout\ : std_logic;
SIGNAL \inst6|red[5]~74_combout\ : std_logic;
SIGNAL \inst6|red[5]~75_combout\ : std_logic;
SIGNAL \inst6|red[7]~76_combout\ : std_logic;
SIGNAL \inst6|red[7]~65_combout\ : std_logic;
SIGNAL \inst6|red[5]~77_combout\ : std_logic;
SIGNAL \inst6|red[5]~79_combout\ : std_logic;
SIGNAL \inst6|red[7]~27_combout\ : std_logic;
SIGNAL \inst6|red[7]~29_combout\ : std_logic;
SIGNAL \inst6|red[6]~60_combout\ : std_logic;
SIGNAL \inst6|red[7]~26_combout\ : std_logic;
SIGNAL \inst6|red[6]~64_combout\ : std_logic;
SIGNAL \inst6|red[7]~31_combout\ : std_logic;
SIGNAL \inst6|red[7]~30_combout\ : std_logic;
SIGNAL \inst6|red[6]~70_combout\ : std_logic;
SIGNAL \inst6|red[7]~66_combout\ : std_logic;
SIGNAL \inst6|red[6]~67_combout\ : std_logic;
SIGNAL \inst6|red[7]~32_combout\ : std_logic;
SIGNAL \inst6|red[7]~28_combout\ : std_logic;
SIGNAL \inst6|red[6]~57_combout\ : std_logic;
SIGNAL \inst6|red[6]~71_combout\ : std_logic;
SIGNAL \inst6|process_0~101_combout\ : std_logic;
SIGNAL \inst6|process_0~99_combout\ : std_logic;
SIGNAL \inst6|process_0~100_combout\ : std_logic;
SIGNAL \inst6|LessThan13~2_combout\ : std_logic;
SIGNAL \inst6|process_0~102_combout\ : std_logic;
SIGNAL \inst6|process_0~68_combout\ : std_logic;
SIGNAL \inst6|LessThan8~0_combout\ : std_logic;
SIGNAL \inst6|process_0~105_combout\ : std_logic;
SIGNAL \inst6|process_0~106_combout\ : std_logic;
SIGNAL \inst6|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|process_0~104_combout\ : std_logic;
SIGNAL \inst6|process_0~103_combout\ : std_logic;
SIGNAL \inst6|process_0~107_combout\ : std_logic;
SIGNAL \inst6|LessThan61~0_combout\ : std_logic;
SIGNAL \inst6|process_0~93_combout\ : std_logic;
SIGNAL \inst6|process_0~94_combout\ : std_logic;
SIGNAL \inst6|LessThan5~1_combout\ : std_logic;
SIGNAL \inst6|LessThan4~0_combout\ : std_logic;
SIGNAL \inst6|process_0~95_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|process_0~90_combout\ : std_logic;
SIGNAL \inst6|LessThan59~1_combout\ : std_logic;
SIGNAL \inst6|process_0~91_combout\ : std_logic;
SIGNAL \inst6|red[7]~51_combout\ : std_logic;
SIGNAL \inst6|process_0~25_combout\ : std_logic;
SIGNAL \inst6|process_0~97_combout\ : std_logic;
SIGNAL \inst6|process_0~96_combout\ : std_logic;
SIGNAL \inst6|LessThan10~0_combout\ : std_logic;
SIGNAL \inst6|process_0~98_combout\ : std_logic;
SIGNAL \inst6|red[7]~52_combout\ : std_logic;
SIGNAL \inst6|red[7]~72_combout\ : std_logic;
SIGNAL \inst6|process_0~120_combout\ : std_logic;
SIGNAL \inst6|process_0~121_combout\ : std_logic;
SIGNAL \inst6|process_0~122_combout\ : std_logic;
SIGNAL \inst6|LessThan35~0_combout\ : std_logic;
SIGNAL \inst6|process_0~123_combout\ : std_logic;
SIGNAL \inst6|LessThan53~0_combout\ : std_logic;
SIGNAL \inst6|LessThan27~2_combout\ : std_logic;
SIGNAL \inst6|LessThan28~0_combout\ : std_logic;
SIGNAL \inst6|LessThan28~1_combout\ : std_logic;
SIGNAL \inst6|LessThan28~2_combout\ : std_logic;
SIGNAL \inst6|process_0~139_combout\ : std_logic;
SIGNAL \inst6|process_0~140_combout\ : std_logic;
SIGNAL \inst6|process_0~125_combout\ : std_logic;
SIGNAL \inst6|process_0~126_combout\ : std_logic;
SIGNAL \inst6|process_0~127_combout\ : std_logic;
SIGNAL \inst6|process_0~45_combout\ : std_logic;
SIGNAL \inst6|process_0~128_combout\ : std_logic;
SIGNAL \inst6|process_0~129_combout\ : std_logic;
SIGNAL \inst6|process_0~133_combout\ : std_logic;
SIGNAL \inst6|process_0~134_combout\ : std_logic;
SIGNAL \inst6|process_0~135_combout\ : std_logic;
SIGNAL \inst6|process_0~42_combout\ : std_logic;
SIGNAL \inst6|process_0~136_combout\ : std_logic;
SIGNAL \inst6|process_0~137_combout\ : std_logic;
SIGNAL \inst6|blue[7]~5_combout\ : std_logic;
SIGNAL \inst6|blue[7]~6_combout\ : std_logic;
SIGNAL \inst6|LessThan38~0_combout\ : std_logic;
SIGNAL \inst6|LessThan30~0_combout\ : std_logic;
SIGNAL \inst6|LessThan30~1_combout\ : std_logic;
SIGNAL \inst6|LessThan29~0_combout\ : std_logic;
SIGNAL \inst6|process_0~130_combout\ : std_logic;
SIGNAL \inst6|process_0~131_combout\ : std_logic;
SIGNAL \inst6|process_0~141_combout\ : std_logic;
SIGNAL \inst6|blue[7]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~138_combout\ : std_logic;
SIGNAL \inst6|process_0~132_combout\ : std_logic;
SIGNAL \inst6|blue[7]~0_combout\ : std_logic;
SIGNAL \inst6|LessThan37~0_combout\ : std_logic;
SIGNAL \inst6|LessThan37~1_combout\ : std_logic;
SIGNAL \inst6|LessThan38~1_combout\ : std_logic;
SIGNAL \inst6|LessThan38~2_combout\ : std_logic;
SIGNAL \inst6|process_0~119_combout\ : std_logic;
SIGNAL \inst6|blue[7]~7_combout\ : std_logic;
SIGNAL \inst6|blue[7]~8_combout\ : std_logic;
SIGNAL \inst6|blue[7]~2_combout\ : std_logic;
SIGNAL \inst6|process_0~124_combout\ : std_logic;
SIGNAL \inst6|red[6]~80_combout\ : std_logic;
SIGNAL \inst6|process_0~63_combout\ : std_logic;
SIGNAL \inst6|process_0~64_combout\ : std_logic;
SIGNAL \inst6|process_0~24_combout\ : std_logic;
SIGNAL \inst6|LessThan27~0_combout\ : std_logic;
SIGNAL \inst6|LessThan45~0_combout\ : std_logic;
SIGNAL \inst6|process_0~36_combout\ : std_logic;
SIGNAL \inst6|LessThan42~0_combout\ : std_logic;
SIGNAL \inst6|LessThan42~1_combout\ : std_logic;
SIGNAL \inst6|process_0~37_combout\ : std_logic;
SIGNAL \inst6|LessThan40~0_combout\ : std_logic;
SIGNAL \inst6|process_0~44_combout\ : std_logic;
SIGNAL \inst6|LessThan40~1_combout\ : std_logic;
SIGNAL \inst6|process_0~46_combout\ : std_logic;
SIGNAL \inst6|process_0~71_combout\ : std_logic;
SIGNAL \inst6|process_0~33_combout\ : std_logic;
SIGNAL \inst6|LessThan56~0_combout\ : std_logic;
SIGNAL \inst6|process_0~26_combout\ : std_logic;
SIGNAL \inst6|process_0~27_combout\ : std_logic;
SIGNAL \inst6|process_0~171_combout\ : std_logic;
SIGNAL \inst6|LessThan75~1_combout\ : std_logic;
SIGNAL \inst6|process_0~69_combout\ : std_logic;
SIGNAL \inst6|LessThan49~0_combout\ : std_logic;
SIGNAL \inst6|LessThan74~0_combout\ : std_logic;
SIGNAL \inst6|process_0~70_combout\ : std_logic;
SIGNAL \inst6|LessThan41~0_combout\ : std_logic;
SIGNAL \inst6|process_0~48_combout\ : std_logic;
SIGNAL \inst6|process_0~66_combout\ : std_logic;
SIGNAL \inst6|process_0~67_combout\ : std_logic;
SIGNAL \inst6|process_0~34_combout\ : std_logic;
SIGNAL \inst6|red[6]~40_combout\ : std_logic;
SIGNAL \inst6|red[6]~41_combout\ : std_logic;
SIGNAL \inst6|process_0~82_combout\ : std_logic;
SIGNAL \inst6|process_0~83_combout\ : std_logic;
SIGNAL \inst6|process_0~84_combout\ : std_logic;
SIGNAL \inst6|process_0~78_combout\ : std_logic;
SIGNAL \inst6|process_0~177_combout\ : std_logic;
SIGNAL \inst6|process_0~170_combout\ : std_logic;
SIGNAL \inst6|process_0~79_combout\ : std_logic;
SIGNAL \inst6|process_0~80_combout\ : std_logic;
SIGNAL \inst6|LessThan39~0_combout\ : std_logic;
SIGNAL \inst6|process_0~81_combout\ : std_logic;
SIGNAL \inst6|red[6]~44_combout\ : std_logic;
SIGNAL \inst6|process_0~86_combout\ : std_logic;
SIGNAL \inst6|process_0~77_combout\ : std_logic;
SIGNAL \inst6|process_0~175_combout\ : std_logic;
SIGNAL \inst6|process_0~174_combout\ : std_logic;
SIGNAL \inst6|process_0~85_combout\ : std_logic;
SIGNAL \inst6|red[6]~45_combout\ : std_logic;
SIGNAL \inst6|process_0~88_combout\ : std_logic;
SIGNAL \inst6|process_0~40_combout\ : std_logic;
SIGNAL \inst6|process_0~49_combout\ : std_logic;
SIGNAL \inst6|process_0~38_combout\ : std_logic;
SIGNAL \inst6|process_0~87_combout\ : std_logic;
SIGNAL \inst6|red[6]~46_combout\ : std_logic;
SIGNAL \inst6|process_0~89_combout\ : std_logic;
SIGNAL \inst6|red[6]~47_combout\ : std_logic;
SIGNAL \inst6|process_0~173_combout\ : std_logic;
SIGNAL \inst6|process_0~73_combout\ : std_logic;
SIGNAL \inst6|process_0~72_combout\ : std_logic;
SIGNAL \inst6|process_0~74_combout\ : std_logic;
SIGNAL \inst6|LessThan48~0_combout\ : std_logic;
SIGNAL \inst6|LessThan48~1_combout\ : std_logic;
SIGNAL \inst6|red[6]~42_combout\ : std_logic;
SIGNAL \inst6|process_0~172_combout\ : std_logic;
SIGNAL \inst6|process_0~29_combout\ : std_logic;
SIGNAL \inst6|red[6]~43_combout\ : std_logic;
SIGNAL \inst6|red[6]~48_combout\ : std_logic;
SIGNAL \inst6|red[6]~49_combout\ : std_logic;
SIGNAL \inst6|p1w~4_combout\ : std_logic;
SIGNAL \inst6|p1w~11_combout\ : std_logic;
SIGNAL \inst6|p1w~5_combout\ : std_logic;
SIGNAL \inst6|p1w~6_combout\ : std_logic;
SIGNAL \inst6|p1w~7_combout\ : std_logic;
SIGNAL \inst6|p1w~8_combout\ : std_logic;
SIGNAL \inst6|p1w~9_combout\ : std_logic;
SIGNAL \inst6|p1w~10_combout\ : std_logic;
SIGNAL \inst6|p2w~8_combout\ : std_logic;
SIGNAL \inst6|p2w~9_combout\ : std_logic;
SIGNAL \inst6|p2w~10_combout\ : std_logic;
SIGNAL \inst6|p2w~4_combout\ : std_logic;
SIGNAL \inst6|p2w~12_combout\ : std_logic;
SIGNAL \inst6|p2w~6_combout\ : std_logic;
SIGNAL \inst6|p2w~7_combout\ : std_logic;
SIGNAL \inst6|p2w~11_combout\ : std_logic;
SIGNAL \inst6|process_0~62_combout\ : std_logic;
SIGNAL \inst6|process_0~164_combout\ : std_logic;
SIGNAL \inst6|Add16~0_combout\ : std_logic;
SIGNAL \inst6|Add13~1_combout\ : std_logic;
SIGNAL \inst6|Add5~1_combout\ : std_logic;
SIGNAL \inst6|Add13~2_combout\ : std_logic;
SIGNAL \inst6|Add13~0_combout\ : std_logic;
SIGNAL \inst6|Add5~0_combout\ : std_logic;
SIGNAL \inst6|Add9~1\ : std_logic;
SIGNAL \inst6|Add9~3\ : std_logic;
SIGNAL \inst6|Add9~4_combout\ : std_logic;
SIGNAL \inst6|Add9~2_combout\ : std_logic;
SIGNAL \inst6|Add9~0_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|Add17~0_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[0]~32_combout\ : std_logic;
SIGNAL \inst6|Add1~1\ : std_logic;
SIGNAL \inst6|Add1~2_combout\ : std_logic;
SIGNAL \inst6|Add17~1\ : std_logic;
SIGNAL \inst6|Add17~2_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[0]~33\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[1]~35_combout\ : std_logic;
SIGNAL \inst6|Add1~3\ : std_logic;
SIGNAL \inst6|Add1~4_combout\ : std_logic;
SIGNAL \inst6|Add17~3\ : std_logic;
SIGNAL \inst6|Add17~4_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[1]~36\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[2]~37_combout\ : std_logic;
SIGNAL \inst6|Add1~5\ : std_logic;
SIGNAL \inst6|Add1~6_combout\ : std_logic;
SIGNAL \inst6|Add9~5\ : std_logic;
SIGNAL \inst6|Add9~6_combout\ : std_logic;
SIGNAL \inst6|Add17~5\ : std_logic;
SIGNAL \inst6|Add17~6_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[2]~38\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[3]~39_combout\ : std_logic;
SIGNAL \inst6|Add1~7\ : std_logic;
SIGNAL \inst6|Add1~8_combout\ : std_logic;
SIGNAL \inst6|Add17~7\ : std_logic;
SIGNAL \inst6|Add17~8_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[3]~40\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[4]~41_combout\ : std_logic;
SIGNAL \inst6|Add1~9\ : std_logic;
SIGNAL \inst6|Add1~10_combout\ : std_logic;
SIGNAL \inst6|Add17~9\ : std_logic;
SIGNAL \inst6|Add17~10_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[4]~42\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[5]~43_combout\ : std_logic;
SIGNAL \inst6|Add1~11\ : std_logic;
SIGNAL \inst6|Add1~12_combout\ : std_logic;
SIGNAL \inst6|Add17~11\ : std_logic;
SIGNAL \inst6|Add17~12_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[5]~44\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[6]~45_combout\ : std_logic;
SIGNAL \inst6|Add1~13\ : std_logic;
SIGNAL \inst6|Add1~14_combout\ : std_logic;
SIGNAL \inst6|Add17~13\ : std_logic;
SIGNAL \inst6|Add17~14_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[6]~46\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[7]~47_combout\ : std_logic;
SIGNAL \inst6|Add1~15\ : std_logic;
SIGNAL \inst6|Add1~16_combout\ : std_logic;
SIGNAL \inst6|Add17~15\ : std_logic;
SIGNAL \inst6|Add17~16_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[7]~48\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[8]~49_combout\ : std_logic;
SIGNAL \inst6|Add1~17\ : std_logic;
SIGNAL \inst6|Add1~18_combout\ : std_logic;
SIGNAL \inst6|Add17~17\ : std_logic;
SIGNAL \inst6|Add17~18_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[8]~50\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[9]~51_combout\ : std_logic;
SIGNAL \inst6|Add1~19\ : std_logic;
SIGNAL \inst6|Add1~20_combout\ : std_logic;
SIGNAL \inst6|Add17~19\ : std_logic;
SIGNAL \inst6|Add17~20_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[9]~52\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[10]~53_combout\ : std_logic;
SIGNAL \inst6|Add1~21\ : std_logic;
SIGNAL \inst6|Add1~22_combout\ : std_logic;
SIGNAL \inst6|Add17~21\ : std_logic;
SIGNAL \inst6|Add17~22_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[10]~54\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[11]~55_combout\ : std_logic;
SIGNAL \inst6|process_0~53_combout\ : std_logic;
SIGNAL \inst6|process_0~51_combout\ : std_logic;
SIGNAL \inst6|process_0~52_combout\ : std_logic;
SIGNAL \inst6|Add1~23\ : std_logic;
SIGNAL \inst6|Add1~24_combout\ : std_logic;
SIGNAL \inst6|Add17~23\ : std_logic;
SIGNAL \inst6|Add17~24_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[11]~56\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[12]~57_combout\ : std_logic;
SIGNAL \inst6|Add1~25\ : std_logic;
SIGNAL \inst6|Add1~26_combout\ : std_logic;
SIGNAL \inst6|Add17~25\ : std_logic;
SIGNAL \inst6|Add17~26_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[12]~58\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[13]~59_combout\ : std_logic;
SIGNAL \inst6|Add1~27\ : std_logic;
SIGNAL \inst6|Add1~28_combout\ : std_logic;
SIGNAL \inst6|Add17~27\ : std_logic;
SIGNAL \inst6|Add17~28_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[13]~60\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[14]~61_combout\ : std_logic;
SIGNAL \inst6|Add1~29\ : std_logic;
SIGNAL \inst6|Add1~30_combout\ : std_logic;
SIGNAL \inst6|Add17~29\ : std_logic;
SIGNAL \inst6|Add17~30_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[14]~62\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[15]~63_combout\ : std_logic;
SIGNAL \inst6|process_0~54_combout\ : std_logic;
SIGNAL \inst6|process_0~55_combout\ : std_logic;
SIGNAL \inst6|Add1~31\ : std_logic;
SIGNAL \inst6|Add1~32_combout\ : std_logic;
SIGNAL \inst6|Add17~31\ : std_logic;
SIGNAL \inst6|Add17~32_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[15]~64\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[16]~65_combout\ : std_logic;
SIGNAL \inst6|Add1~33\ : std_logic;
SIGNAL \inst6|Add1~34_combout\ : std_logic;
SIGNAL \inst6|Add17~33\ : std_logic;
SIGNAL \inst6|Add17~34_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[16]~66\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[17]~67_combout\ : std_logic;
SIGNAL \inst6|Add1~35\ : std_logic;
SIGNAL \inst6|Add1~36_combout\ : std_logic;
SIGNAL \inst6|Add17~35\ : std_logic;
SIGNAL \inst6|Add17~36_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[17]~68\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[18]~69_combout\ : std_logic;
SIGNAL \inst6|Add1~37\ : std_logic;
SIGNAL \inst6|Add1~38_combout\ : std_logic;
SIGNAL \inst6|Add17~37\ : std_logic;
SIGNAL \inst6|Add17~38_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[18]~70\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[19]~71_combout\ : std_logic;
SIGNAL \inst6|Add1~39\ : std_logic;
SIGNAL \inst6|Add1~40_combout\ : std_logic;
SIGNAL \inst6|Add17~39\ : std_logic;
SIGNAL \inst6|Add17~40_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[19]~72\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[20]~73_combout\ : std_logic;
SIGNAL \inst6|Add1~41\ : std_logic;
SIGNAL \inst6|Add1~42_combout\ : std_logic;
SIGNAL \inst6|Add17~41\ : std_logic;
SIGNAL \inst6|Add17~42_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[20]~74\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~75_combout\ : std_logic;
SIGNAL \inst6|Add1~43\ : std_logic;
SIGNAL \inst6|Add1~44_combout\ : std_logic;
SIGNAL \inst6|Add17~43\ : std_logic;
SIGNAL \inst6|Add17~44_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~76\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[22]~77_combout\ : std_logic;
SIGNAL \inst6|Add1~45\ : std_logic;
SIGNAL \inst6|Add1~46_combout\ : std_logic;
SIGNAL \inst6|Add17~45\ : std_logic;
SIGNAL \inst6|Add17~46_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[22]~78\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[23]~79_combout\ : std_logic;
SIGNAL \inst6|process_0~57_combout\ : std_logic;
SIGNAL \inst6|process_0~56_combout\ : std_logic;
SIGNAL \inst6|Add1~47\ : std_logic;
SIGNAL \inst6|Add1~48_combout\ : std_logic;
SIGNAL \inst6|Add17~47\ : std_logic;
SIGNAL \inst6|Add17~48_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[23]~80\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[24]~81_combout\ : std_logic;
SIGNAL \inst6|Add1~49\ : std_logic;
SIGNAL \inst6|Add1~50_combout\ : std_logic;
SIGNAL \inst6|Add17~49\ : std_logic;
SIGNAL \inst6|Add17~50_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[24]~82\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[25]~83_combout\ : std_logic;
SIGNAL \inst6|Add1~51\ : std_logic;
SIGNAL \inst6|Add1~52_combout\ : std_logic;
SIGNAL \inst6|Add17~51\ : std_logic;
SIGNAL \inst6|Add17~52_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[25]~84\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[26]~85_combout\ : std_logic;
SIGNAL \inst6|Add1~53\ : std_logic;
SIGNAL \inst6|Add1~54_combout\ : std_logic;
SIGNAL \inst6|Add17~53\ : std_logic;
SIGNAL \inst6|Add17~54_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[26]~86\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[27]~87_combout\ : std_logic;
SIGNAL \inst6|Add1~55\ : std_logic;
SIGNAL \inst6|Add1~56_combout\ : std_logic;
SIGNAL \inst6|Add17~55\ : std_logic;
SIGNAL \inst6|Add17~56_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[27]~88\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[28]~89_combout\ : std_logic;
SIGNAL \inst6|Add1~57\ : std_logic;
SIGNAL \inst6|Add1~58_combout\ : std_logic;
SIGNAL \inst6|Add17~57\ : std_logic;
SIGNAL \inst6|Add17~58_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[28]~90\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[29]~91_combout\ : std_logic;
SIGNAL \inst6|Add1~59\ : std_logic;
SIGNAL \inst6|Add1~60_combout\ : std_logic;
SIGNAL \inst6|Add17~59\ : std_logic;
SIGNAL \inst6|Add17~60_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[29]~92\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[30]~93_combout\ : std_logic;
SIGNAL \inst6|Add1~61\ : std_logic;
SIGNAL \inst6|Add1~62_combout\ : std_logic;
SIGNAL \inst6|Add17~61\ : std_logic;
SIGNAL \inst6|Add17~62_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[30]~94\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[31]~95_combout\ : std_logic;
SIGNAL \inst6|process_0~59_combout\ : std_logic;
SIGNAL \inst6|process_0~58_combout\ : std_logic;
SIGNAL \inst6|process_0~60_combout\ : std_logic;
SIGNAL \inst6|process_0~61_combout\ : std_logic;
SIGNAL \inst6|gameT~combout\ : std_logic;
SIGNAL \inst6|LessThan33~0_combout\ : std_logic;
SIGNAL \inst6|LessThan75~0_combout\ : std_logic;
SIGNAL \inst6|process_0~31_combout\ : std_logic;
SIGNAL \inst6|process_0~32_combout\ : std_logic;
SIGNAL \inst6|LessThan46~0_combout\ : std_logic;
SIGNAL \inst6|LessThan46~1_combout\ : std_logic;
SIGNAL \inst6|process_0~30_combout\ : std_logic;
SIGNAL \inst6|red[5]~22_combout\ : std_logic;
SIGNAL \inst6|red[5]~23_combout\ : std_logic;
SIGNAL \inst6|process_0~50_combout\ : std_logic;
SIGNAL \inst6|process_0~43_combout\ : std_logic;
SIGNAL \inst6|process_0~39_combout\ : std_logic;
SIGNAL \inst6|red[5]~24_combout\ : std_logic;
SIGNAL \inst6|process_0~47_combout\ : std_logic;
SIGNAL \inst6|red[5]~25_combout\ : std_logic;
SIGNAL \inst6|red[5]~39_combout\ : std_logic;
SIGNAL \inst6|red[7]~50_combout\ : std_logic;
SIGNAL \inst6|blue[7]~3_combout\ : std_logic;
SIGNAL \inst6|LessThan1~2_combout\ : std_logic;
SIGNAL \inst6|red[7]~81_combout\ : std_logic;
SIGNAL \inst6|LessThan1~0_combout\ : std_logic;
SIGNAL \inst6|LessThan1~1_combout\ : std_logic;
SIGNAL \inst6|red[7]~82_combout\ : std_logic;
SIGNAL \inst6|red[7]~83_combout\ : std_logic;
SIGNAL \inst6|red[7]~84_combout\ : std_logic;
SIGNAL \inst6|red[7]~97_combout\ : std_logic;
SIGNAL \inst6|red[7]~85_combout\ : std_logic;
SIGNAL \inst6|red[7]~98_combout\ : std_logic;
SIGNAL \inst6|red[7]~86_combout\ : std_logic;
SIGNAL \inst6|red[7]~102_combout\ : std_logic;
SIGNAL \inst6|red[7]~87_combout\ : std_logic;
SIGNAL \inst6|red[7]~99_combout\ : std_logic;
SIGNAL \inst6|red[7]~88_combout\ : std_logic;
SIGNAL \inst6|red[7]~89_combout\ : std_logic;
SIGNAL \inst6|red[7]~90_combout\ : std_logic;
SIGNAL \inst6|red[7]~90clkctrl_outclk\ : std_logic;
SIGNAL \inst6|red[6]~91_combout\ : std_logic;
SIGNAL \inst6|red[6]~92_combout\ : std_logic;
SIGNAL \inst6|blue[6]~4_combout\ : std_logic;
SIGNAL \inst6|red[5]~100_combout\ : std_logic;
SIGNAL \inst6|green[7]~6_combout\ : std_logic;
SIGNAL \inst6|red[6]~101_combout\ : std_logic;
SIGNAL \inst6|green[6]~4_combout\ : std_logic;
SIGNAL \inst6|green[6]~5_combout\ : std_logic;
SIGNAL \inst6|red[7]~93_combout\ : std_logic;
SIGNAL \inst6|red[7]~94_combout\ : std_logic;
SIGNAL \inst6|red[6]~95_combout\ : std_logic;
SIGNAL \inst6|red[6]~96_combout\ : std_logic;
SIGNAL \inst6|I\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|buttonConfirmCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|E\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst6|p2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|D\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|columnNum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|F\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|p1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|C\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|A\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|B\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|H\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|blue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|ALT_INV_I[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_confirmButton~input_o\ : std_logic;
SIGNAL \ALT_INV_moveFoward~input_o\ : std_logic;

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
ww_moveFoward <= moveFoward;
ww_moveBackward <= moveBackward;
ww_confirmButton <= confirmButton;
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

\inst6|red[7]~90clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|red[7]~90_combout\);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst6|I[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|I[0]~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst6|ALT_INV_I[0]~0clkctrl_outclk\ <= NOT \inst6|I[0]~0clkctrl_outclk\;
\ALT_INV_confirmButton~input_o\ <= NOT \confirmButton~input_o\;
\ALT_INV_moveFoward~input_o\ <= NOT \moveFoward~input_o\;

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
	i => \ALT_INV_moveFoward~input_o\,
	devoe => ww_devoe,
	o => ww_r1);

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
	i => \inst6|blue\(7),
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
	i => \inst6|blue\(6),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|green\(7),
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
	i => \inst6|green\(6),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|red\(7),
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
	i => \inst6|red\(6),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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
	i => \inst6|blue\(5),
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

-- Location: LCCOMB_X75_Y32_N4
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

-- Location: LCCOMB_X75_Y32_N6
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

-- Location: LCCOMB_X75_Y31_N24
\inst1|h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~10_combout\ = (\inst1|Add0~2_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|h_count~10_combout\);

-- Location: FF_X75_Y32_N29
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

-- Location: LCCOMB_X75_Y32_N8
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

-- Location: LCCOMB_X75_Y31_N2
\inst1|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~9_combout\ = (\inst1|Add0~4_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|h_count~9_combout\);

-- Location: FF_X75_Y32_N9
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

-- Location: LCCOMB_X75_Y32_N10
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

-- Location: LCCOMB_X75_Y31_N28
\inst1|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~8_combout\ = (\inst1|Add0~6_combout\ & (((!\inst1|h_count\(10) & !\inst1|process_0~2_combout\)) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|h_count\(11),
	combout => \inst1|h_count~8_combout\);

-- Location: FF_X75_Y32_N11
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

-- Location: LCCOMB_X75_Y32_N12
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

-- Location: LCCOMB_X76_Y31_N8
\inst1|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~7_combout\ = (\inst1|Add0~8_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~7_combout\);

-- Location: FF_X75_Y32_N13
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

-- Location: LCCOMB_X75_Y32_N14
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

-- Location: LCCOMB_X76_Y31_N14
\inst1|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~6_combout\ = (\inst1|Add0~10_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~6_combout\);

-- Location: FF_X75_Y32_N15
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

-- Location: LCCOMB_X75_Y32_N16
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

-- Location: LCCOMB_X75_Y33_N0
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

-- Location: FF_X75_Y32_N3
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

-- Location: LCCOMB_X75_Y32_N18
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X76_Y32_N30
\inst1|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~4_combout\ = (\inst1|Add0~14_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~4_combout\);

-- Location: FF_X75_Y32_N19
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

-- Location: LCCOMB_X75_Y32_N20
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

-- Location: LCCOMB_X76_Y32_N0
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

-- Location: FF_X75_Y32_N21
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

-- Location: LCCOMB_X75_Y32_N22
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

-- Location: LCCOMB_X76_Y31_N0
\inst1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~18_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X75_Y32_N1
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

-- Location: LCCOMB_X75_Y32_N24
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

-- Location: LCCOMB_X76_Y33_N26
\inst1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~20_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~20_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X75_Y32_N25
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

-- Location: LCCOMB_X75_Y32_N30
\inst1|h_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~11_combout\ = (\inst1|Add0~0_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~11_combout\);

-- Location: FF_X75_Y32_N31
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

-- Location: LCCOMB_X75_Y32_N28
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

-- Location: LCCOMB_X75_Y32_N2
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst1|h_count\(5)) # ((\inst1|h_count\(8)) # ((\inst1|h_count\(6)) # (\inst1|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(6),
	datad => \inst1|h_count\(7),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X75_Y32_N0
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

-- Location: LCCOMB_X75_Y33_N4
\inst1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~22_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|Add0~22_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~0_combout\);

-- Location: LCCOMB_X74_Y33_N14
\inst1|h_count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count[11]~feeder_combout\ = \inst1|h_count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count~0_combout\,
	combout => \inst1|h_count[11]~feeder_combout\);

-- Location: FF_X74_Y33_N15
\inst1|h_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(11));

-- Location: LCCOMB_X75_Y32_N26
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

-- Location: LCCOMB_X76_Y31_N28
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|Add0~12_combout\ & ((\inst1|Add0~8_combout\) # (\inst1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X79_Y33_N18
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count\(11) & ((\inst1|process_0~2_combout\) # (\inst1|h_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|h_count\(10),
	datad => \inst1|h_count\(11),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X76_Y31_N18
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|Add0~16_combout\) # ((\inst1|process_0~3_combout\) # ((\inst1|Add0~14_combout\ & \inst1|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|process_0~4_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X76_Y31_N30
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = ((\inst1|Add0~18_combout\) # ((\inst1|Add0~20_combout\) # (\inst1|process_0~5_combout\))) # (!\inst1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~20_combout\,
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X76_Y31_N31
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

-- Location: FF_X80_Y31_N25
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

-- Location: LCCOMB_X80_Y31_N10
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

-- Location: LCCOMB_X74_Y33_N26
\inst1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~7_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~0_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|v_count\(0),
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|Add1~7_combout\);

-- Location: FF_X74_Y33_N9
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X80_Y31_N12
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X76_Y34_N16
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~2_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~2_combout\,
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|v_count\(1),
	combout => \inst1|Add1~8_combout\);

-- Location: FF_X80_Y31_N9
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

-- Location: LCCOMB_X80_Y31_N14
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X76_Y34_N2
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~4_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|v_count\(2),
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|Add1~6_combout\);

-- Location: FF_X76_Y34_N31
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

-- Location: LCCOMB_X80_Y31_N16
\inst1|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~9_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~10\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~9_combout\,
	cout => \inst1|Add1~10\);

-- Location: LCCOMB_X80_Y31_N2
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~9_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|Add1~9_combout\,
	combout => \inst1|Add1~30_combout\);

-- Location: FF_X80_Y31_N3
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

-- Location: LCCOMB_X80_Y31_N18
\inst1|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~11_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~10\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~10\ & VCC))
-- \inst1|Add1~12\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~10\,
	combout => \inst1|Add1~11_combout\,
	cout => \inst1|Add1~12\);

-- Location: LCCOMB_X80_Y34_N2
\inst1|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~31_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~11_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|Add1~11_combout\,
	combout => \inst1|Add1~31_combout\);

-- Location: FF_X80_Y31_N19
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

-- Location: LCCOMB_X80_Y31_N20
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

-- Location: LCCOMB_X80_Y34_N12
\inst1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~32_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~13_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|Add1~13_combout\,
	datad => \inst1|v_count\(5),
	combout => \inst1|Add1~32_combout\);

-- Location: FF_X80_Y31_N5
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

-- Location: LCCOMB_X80_Y31_N22
\inst1|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~15_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~14\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~14\ & VCC))
-- \inst1|Add1~16\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~14\,
	combout => \inst1|Add1~15_combout\,
	cout => \inst1|Add1~16\);

-- Location: LCCOMB_X79_Y34_N18
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~15_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|Add1~15_combout\,
	combout => \inst1|Add1~26_combout\);

-- Location: FF_X80_Y31_N23
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

-- Location: LCCOMB_X80_Y31_N24
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

-- Location: LCCOMB_X80_Y31_N26
\inst1|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~19_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~18\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~18\ & VCC))
-- \inst1|Add1~20\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~18\,
	combout => \inst1|Add1~19_combout\,
	cout => \inst1|Add1~20\);

-- Location: LCCOMB_X80_Y34_N26
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~19_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|Add1~19_combout\,
	combout => \inst1|Add1~28_combout\);

-- Location: FF_X80_Y31_N27
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

-- Location: LCCOMB_X80_Y31_N28
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

-- Location: LCCOMB_X80_Y34_N28
\inst1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~29_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~21_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|Add1~21_combout\,
	datad => \inst1|v_count\(9),
	combout => \inst1|Add1~29_combout\);

-- Location: FF_X80_Y31_N7
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

-- Location: LCCOMB_X80_Y31_N6
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|v_count\(8) & (!\inst1|v_count\(9) & !\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datac => \inst1|v_count\(9),
	datad => \inst1|v_count\(7),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X80_Y31_N30
\inst1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~23_combout\ = \inst1|Add1~22\ $ (!\inst1|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(10),
	cin => \inst1|Add1~22\,
	combout => \inst1|Add1~23_combout\);

-- Location: LCCOMB_X80_Y34_N10
\inst1|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~25_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~23_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|Add1~23_combout\,
	datad => \inst1|v_count\(10),
	combout => \inst1|Add1~25_combout\);

-- Location: FF_X80_Y31_N1
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

-- Location: LCCOMB_X80_Y31_N8
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|v_count\(2) & (!\inst1|v_count\(3) & (!\inst1|v_count\(1) & !\inst1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(1),
	datad => \inst1|v_count\(4),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X80_Y31_N4
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (((\inst1|LessThan1~0_combout\ & !\inst1|v_count\(0))) # (!\inst1|v_count\(5))) # (!\inst1|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|v_count\(0),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X80_Y31_N0
\inst1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = ((\inst1|LessThan1~2_combout\ & \inst1|LessThan1~1_combout\)) # (!\inst1|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~2_combout\,
	datac => \inst1|v_count\(10),
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X79_Y34_N22
\inst1|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~27_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~17_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|v_count\(7),
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add1~17_combout\,
	combout => \inst1|Add1~27_combout\);

-- Location: LCCOMB_X74_Y33_N10
\inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (!\inst1|Add1~27_combout\ & (!\inst1|Add1~28_combout\ & (!\inst1|Add1~29_combout\ & !\inst1|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~27_combout\,
	datab => \inst1|Add1~28_combout\,
	datac => \inst1|Add1~29_combout\,
	datad => \inst1|Add1~26_combout\,
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X74_Y33_N20
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = ((!\inst1|Add1~7_combout\ & !\inst1|Add1~8_combout\)) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~7_combout\,
	datac => \inst1|Add1~25_combout\,
	datad => \inst1|Add1~8_combout\,
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X80_Y34_N16
\inst1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\)) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(4) & \inst1|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|v_count\(5),
	combout => \inst1|LessThan7~1_combout\);

-- Location: LCCOMB_X80_Y34_N24
\inst1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~2_combout\ = (\inst1|LessThan7~1_combout\ & ((\inst1|Add1~11_combout\) # (!\inst1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~1_combout\,
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add1~11_combout\,
	combout => \inst1|LessThan7~2_combout\);

-- Location: LCCOMB_X80_Y34_N6
\inst1|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~3_combout\ = (\inst1|Add1~30_combout\ & (\inst1|LessThan7~2_combout\ & ((\inst1|Add1~13_combout\) # (!\inst1|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~13_combout\,
	datab => \inst1|Add1~30_combout\,
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|LessThan7~2_combout\,
	combout => \inst1|LessThan7~3_combout\);

-- Location: LCCOMB_X74_Y33_N28
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

-- Location: FF_X74_Y33_N29
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
\moveFoward~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_moveFoward,
	o => \moveFoward~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\confirmButton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmButton,
	o => \confirmButton~input_o\);

-- Location: LCCOMB_X76_Y31_N2
\inst1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = ((!\inst1|Add0~16_combout\) # (!\inst1|Add0~18_combout\)) # (!\inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~16_combout\,
	combout => \inst1|LessThan6~0_combout\);

-- Location: LCCOMB_X76_Y31_N20
\inst1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~1_combout\ = (\inst1|process_0~3_combout\) # ((!\inst1|Add0~22_combout\ & ((\inst1|LessThan6~0_combout\) # (!\inst1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|LessThan6~0_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|LessThan6~1_combout\);

-- Location: FF_X76_Y33_N27
\inst1|column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(10));

-- Location: LCCOMB_X77_Y35_N30
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

-- Location: LCCOMB_X80_Y34_N4
\inst1|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~4_combout\ = (!\inst1|Add1~27_combout\ & (!\inst1|Add1~26_combout\ & !\inst1|LessThan7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add1~27_combout\,
	datac => \inst1|Add1~26_combout\,
	datad => \inst1|LessThan7~3_combout\,
	combout => \inst1|LessThan7~4_combout\);

-- Location: LCCOMB_X80_Y34_N22
\inst1|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~5_combout\ = ((!\inst1|Add1~28_combout\ & (\inst1|LessThan7~4_combout\ & !\inst1|Add1~29_combout\))) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~25_combout\,
	datab => \inst1|Add1~28_combout\,
	datac => \inst1|LessThan7~4_combout\,
	datad => \inst1|Add1~29_combout\,
	combout => \inst1|LessThan7~5_combout\);

-- Location: FF_X77_Y35_N31
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

-- Location: FF_X79_Y34_N15
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

-- Location: FF_X76_Y34_N17
\inst1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~8_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(1));

-- Location: FF_X76_Y34_N3
\inst1|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~6_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(2));

-- Location: LCCOMB_X76_Y34_N4
\inst1|row[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[0]~0_combout\ = !\inst1|Add1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add1~7_combout\,
	combout => \inst1|row[0]~0_combout\);

-- Location: FF_X76_Y34_N5
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

-- Location: LCCOMB_X76_Y34_N14
\inst6|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~0_combout\ = (\inst1|row\(3) & ((\inst1|row\(2)) # ((\inst1|row\(1) & !\inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst1|row\(1),
	datac => \inst1|row\(2),
	datad => \inst1|row\(0),
	combout => \inst6|LessThan11~0_combout\);

-- Location: FF_X79_Y34_N3
\inst1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~32_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(5));

-- Location: FF_X79_Y34_N19
\inst1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~26_combout\,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(6));

-- Location: LCCOMB_X77_Y34_N4
\inst6|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~28_combout\ = (!\inst1|row\(5) & !\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(5),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~28_combout\);

-- Location: FF_X79_Y34_N23
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

-- Location: FF_X79_Y34_N17
\inst1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~31_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(4));

-- Location: LCCOMB_X77_Y34_N22
\inst6|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~0_combout\ = (\inst1|row\(7) & (((\inst6|LessThan11~0_combout\ & \inst1|row\(4))) # (!\inst6|process_0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~0_combout\,
	datab => \inst6|process_0~28_combout\,
	datac => \inst1|row\(7),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan17~0_combout\);

-- Location: FF_X79_Y34_N1
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

-- Location: FF_X79_Y34_N13
\inst1|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~29_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(9));

-- Location: FF_X79_Y34_N29
\inst1|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~25_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(10));

-- Location: LCCOMB_X79_Y35_N8
\inst6|LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~1_combout\ = (!\inst1|row\(8) & (!\inst1|row\(9) & !\inst1|row\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(8),
	datac => \inst1|row\(9),
	datad => \inst1|row\(10),
	combout => \inst6|LessThan27~1_combout\);

-- Location: LCCOMB_X77_Y35_N22
\inst6|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~0_combout\ = (!\inst1|row\(4) & (!\inst1|row\(3) & ((!\inst1|row\(1)) # (!\inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(1),
	datac => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan18~0_combout\);

-- Location: LCCOMB_X77_Y35_N28
\inst6|LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~1_combout\ = (!\inst1|row\(7) & (((\inst6|LessThan18~0_combout\) # (!\inst1|row\(6))) # (!\inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan18~0_combout\,
	datac => \inst1|row\(7),
	datad => \inst1|row\(6),
	combout => \inst6|LessThan18~1_combout\);

-- Location: LCCOMB_X80_Y34_N18
\inst6|LessThan18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~2_combout\ = (!\inst1|row\(9) & (!\inst1|row\(10) & ((\inst6|LessThan18~1_combout\) # (!\inst1|row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(9),
	datab => \inst1|row\(10),
	datac => \inst1|row\(8),
	datad => \inst6|LessThan18~1_combout\,
	combout => \inst6|LessThan18~2_combout\);

-- Location: LCCOMB_X80_Y34_N8
\inst6|red[7]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~53_combout\ = (\inst1|row\(31) & (\inst6|LessThan18~2_combout\ & ((\inst6|LessThan17~0_combout\) # (!\inst6|LessThan27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|LessThan17~0_combout\,
	datac => \inst6|LessThan27~1_combout\,
	datad => \inst6|LessThan18~2_combout\,
	combout => \inst6|red[7]~53_combout\);

-- Location: FF_X76_Y31_N1
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

-- Location: FF_X76_Y32_N1
\inst1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~3_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(8));

-- Location: FF_X75_Y33_N1
\inst1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~5_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(6));

-- Location: FF_X76_Y31_N15
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

-- Location: FF_X75_Y31_N3
\inst1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~9_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(2));

-- Location: FF_X75_Y31_N29
\inst1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~8_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(3));

-- Location: FF_X76_Y31_N9
\inst1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~7_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(4));

-- Location: LCCOMB_X75_Y33_N8
\inst6|LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~0_combout\ = (((!\inst1|column\(2) & !\inst1|column\(3))) # (!\inst1|column\(4))) # (!\inst1|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan16~0_combout\);

-- Location: FF_X76_Y32_N31
\inst1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~4_combout\,
	ena => \inst1|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(7));

-- Location: LCCOMB_X75_Y33_N2
\inst6|LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~1_combout\ = (!\inst1|column\(8) & (((!\inst1|column\(6) & \inst6|LessThan16~0_combout\)) # (!\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(8),
	datac => \inst6|LessThan16~0_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|LessThan16~1_combout\);

-- Location: LCCOMB_X77_Y33_N26
\inst6|process_0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~65_combout\ = (\inst1|column\(5) & \inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(5),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~65_combout\);

-- Location: LCCOMB_X75_Y31_N14
\inst1|column[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[0]~0_combout\ = !\inst1|h_count~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|h_count~11_combout\,
	combout => \inst1|column[0]~0_combout\);

-- Location: FF_X75_Y31_N15
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

-- Location: FF_X75_Y31_N25
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

-- Location: LCCOMB_X75_Y31_N10
\inst6|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~0_combout\ = (\inst1|column\(3) & ((\inst1|column\(2)) # ((\inst1|column\(1)) # (!\inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(2),
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst6|LessThan2~0_combout\);

-- Location: LCCOMB_X76_Y32_N26
\inst6|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~1_combout\ = (\inst1|column\(7) & ((\inst1|column\(6)) # ((\inst6|process_0~65_combout\ & \inst6|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst1|column\(6),
	datac => \inst6|process_0~65_combout\,
	datad => \inst6|LessThan2~0_combout\,
	combout => \inst6|LessThan2~1_combout\);

-- Location: LCCOMB_X76_Y33_N4
\inst6|process_0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~108_combout\ = (\inst1|column\(9) & (((!\inst6|LessThan16~1_combout\)))) # (!\inst1|column\(9) & (((!\inst6|LessThan2~1_combout\)) # (!\inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(8),
	datac => \inst6|LessThan16~1_combout\,
	datad => \inst6|LessThan2~1_combout\,
	combout => \inst6|process_0~108_combout\);

-- Location: FF_X75_Y33_N5
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

-- Location: LCCOMB_X76_Y33_N28
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

-- Location: FF_X76_Y33_N29
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

-- Location: LCCOMB_X76_Y33_N22
\inst6|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~35_combout\ = (!\inst1|column\(11) & \inst1|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(11),
	datad => \inst1|column\(31),
	combout => \inst6|process_0~35_combout\);

-- Location: LCCOMB_X76_Y33_N14
\inst6|red[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~54_combout\ = (!\inst1|column\(10) & (\inst6|red[7]~53_combout\ & (!\inst6|process_0~108_combout\ & \inst6|process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|red[7]~53_combout\,
	datac => \inst6|process_0~108_combout\,
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|red[7]~54_combout\);

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

-- Location: LCCOMB_X74_Y33_N22
\inst1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = (\inst1|LessThan6~1_combout\ & (((\inst1|LessThan7~0_combout\ & !\inst1|LessThan7~3_combout\)) # (!\inst1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~0_combout\,
	datab => \inst1|LessThan7~3_combout\,
	datac => \inst1|Add1~25_combout\,
	datad => \inst1|LessThan6~1_combout\,
	combout => \inst1|process_0~9_combout\);

-- Location: FF_X74_Y33_N23
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

-- Location: LCCOMB_X80_Y38_N22
\inst6|buttonState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonState~0_combout\ = !\moveFoward~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \moveFoward~input_o\,
	combout => \inst6|buttonState~0_combout\);

-- Location: FF_X80_Y38_N23
\inst6|buttonState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonState~0_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonState~q\);

-- Location: LCCOMB_X80_Y38_N2
\inst6|buttonStateConfirm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonStateConfirm~0_combout\ = ((!\inst6|buttonState~q\ & \inst6|buttonStateConfirm~q\)) # (!\confirmButton~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonState~q\,
	datac => \inst6|buttonStateConfirm~q\,
	datad => \confirmButton~input_o\,
	combout => \inst6|buttonStateConfirm~0_combout\);

-- Location: FF_X80_Y38_N3
\inst6|buttonStateConfirm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonStateConfirm~0_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonStateConfirm~q\);

-- Location: LCCOMB_X80_Y38_N12
\inst6|buttonConfirmCounter[21]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[21]~34_combout\ = (\inst1|disp_ena~q\ & (!\inst6|buttonStateConfirm~q\ & !\confirmButton~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datab => \inst6|buttonStateConfirm~q\,
	datad => \confirmButton~input_o\,
	combout => \inst6|buttonConfirmCounter[21]~34_combout\);

-- Location: LCCOMB_X80_Y38_N14
\inst6|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_combout\ = \inst6|columnNum\(2) $ (((!\inst6|columnNum\(0) & \inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(0),
	datad => \inst6|columnNum\(1),
	combout => \inst6|Add0~1_combout\);

-- Location: LCCOMB_X80_Y38_N6
\inst6|columnNum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~9_combout\ = (\inst6|Add0~1_combout\ & (\inst6|columnNum[0]~6_combout\ & ((\confirmButton~input_o\) # (\inst6|buttonStateConfirm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmButton~input_o\,
	datab => \inst6|buttonStateConfirm~q\,
	datac => \inst6|Add0~1_combout\,
	datad => \inst6|columnNum[0]~6_combout\,
	combout => \inst6|columnNum~9_combout\);

-- Location: IOIBUF_X115_Y35_N22
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X80_Y38_N24
\inst6|I[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|I[0]~0_combout\ = (!\Reset~input_o\ & \inst1|disp_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \inst1|disp_ena~q\,
	combout => \inst6|I[0]~0_combout\);

-- Location: CLKCTRL_G6
\inst6|I[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|I[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|I[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X80_Y38_N0
\inst6|process_0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~169_combout\ = (\inst6|buttonStateConfirm~q\) # (\confirmButton~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonStateConfirm~q\,
	datad => \confirmButton~input_o\,
	combout => \inst6|process_0~169_combout\);

-- Location: LCCOMB_X80_Y38_N18
\inst6|columnNum[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum[3]~5_combout\ = (\inst1|disp_ena~q\ & (((!\inst6|buttonState~q\ & !\moveFoward~input_o\)) # (!\inst6|process_0~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datab => \inst6|process_0~169_combout\,
	datac => \inst6|buttonState~q\,
	datad => \moveFoward~input_o\,
	combout => \inst6|columnNum[3]~5_combout\);

-- Location: FF_X80_Y38_N7
\inst6|columnNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~9_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|columnNum[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(2));

-- Location: LCCOMB_X80_Y38_N20
\inst6|columnNum[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum[0]~6_combout\ = (\inst6|columnNum\(3)) # ((\inst6|columnNum\(2) & (!\inst6|columnNum\(0) & \inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|columnNum[0]~6_combout\);

-- Location: LCCOMB_X80_Y38_N28
\inst6|columnNum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~7_combout\ = (\inst6|columnNum[0]~6_combout\ & (\inst6|process_0~169_combout\ & (\inst6|columnNum\(1) $ (!\inst6|columnNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum[0]~6_combout\,
	datab => \inst6|process_0~169_combout\,
	datac => \inst6|columnNum\(1),
	datad => \inst6|columnNum\(0),
	combout => \inst6|columnNum~7_combout\);

-- Location: FF_X80_Y38_N29
\inst6|columnNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~7_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|columnNum[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(1));

-- Location: LCCOMB_X77_Y36_N2
\inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|columnNum\(3) $ (((\inst6|columnNum\(0)) # ((!\inst6|columnNum\(2)) # (!\inst6|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|Add0~0_combout\);

-- Location: LCCOMB_X80_Y38_N26
\inst6|columnNum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~8_combout\ = (\confirmButton~input_o\ & (((!\inst6|columnNum[0]~6_combout\) # (!\inst6|Add0~0_combout\)))) # (!\confirmButton~input_o\ & (\inst6|buttonStateConfirm~q\ & ((!\inst6|columnNum[0]~6_combout\) # (!\inst6|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmButton~input_o\,
	datab => \inst6|buttonStateConfirm~q\,
	datac => \inst6|Add0~0_combout\,
	datad => \inst6|columnNum[0]~6_combout\,
	combout => \inst6|columnNum~8_combout\);

-- Location: FF_X80_Y38_N27
\inst6|columnNum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~8_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|columnNum[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(3));

-- Location: LCCOMB_X80_Y38_N16
\inst6|columnNum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~4_combout\ = (\inst6|columnNum\(3) & (!\inst6|columnNum\(0) & ((\inst6|buttonStateConfirm~q\) # (\confirmButton~input_o\)))) # (!\inst6|columnNum\(3) & ((\inst6|buttonStateConfirm~q\) # ((\confirmButton~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(3),
	datab => \inst6|buttonStateConfirm~q\,
	datac => \inst6|columnNum\(0),
	datad => \confirmButton~input_o\,
	combout => \inst6|columnNum~4_combout\);

-- Location: FF_X80_Y38_N17
\inst6|columnNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~4_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|columnNum[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(0));

-- Location: LCCOMB_X77_Y36_N28
\inst6|Equal62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal62~0_combout\ = (\inst6|columnNum\(0) & (!\inst6|columnNum\(1) & (!\inst6|columnNum\(3) & !\inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|Equal62~0_combout\);

-- Location: LCCOMB_X77_Y36_N22
\inst6|process_0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~156_combout\ = (!\inst6|columnNum\(0) & (\inst6|columnNum\(1) & (\inst6|columnNum\(3) & \inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~156_combout\);

-- Location: LCCOMB_X77_Y36_N14
\inst6|process_0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~154_combout\ = (\inst6|columnNum\(0) & (!\inst6|columnNum\(1) & (\inst6|columnNum\(3) & !\inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~154_combout\);

-- Location: LCCOMB_X79_Y38_N8
\inst6|process_0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~159_combout\ = (\inst6|process_0~154_combout\ & (!\inst6|A\(0) & (\inst6|p1\(0) & !\inst6|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~154_combout\,
	datab => \inst6|A\(0),
	datac => \inst6|p1\(0),
	datad => \inst6|A\(1),
	combout => \inst6|process_0~159_combout\);

-- Location: LCCOMB_X79_Y38_N6
\inst6|A[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|A[1]~1_combout\ = (\inst6|A\(1)) # ((\inst6|p2~0_combout\ & (\inst6|process_0~159_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~159_combout\,
	datac => \inst6|A\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|A[1]~1_combout\);

-- Location: FF_X79_Y38_N7
\inst6|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|A[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|A\(1));

-- Location: LCCOMB_X79_Y38_N30
\inst6|process_0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~155_combout\ = (\inst6|process_0~154_combout\ & (!\inst6|A\(0) & (!\inst6|p1\(0) & !\inst6|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~154_combout\,
	datab => \inst6|A\(0),
	datac => \inst6|p1\(0),
	datad => \inst6|A\(1),
	combout => \inst6|process_0~155_combout\);

-- Location: LCCOMB_X77_Y36_N10
\inst6|process_0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~142_combout\ = (\inst6|columnNum\(3) & \inst6|columnNum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(0),
	combout => \inst6|process_0~142_combout\);

-- Location: LCCOMB_X76_Y37_N14
\inst6|G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|G~0_combout\ = (\inst6|G\(0)) # ((!\inst6|p1\(0) & \inst6|process_0~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datac => \inst6|G\(0),
	datad => \inst6|process_0~152_combout\,
	combout => \inst6|G~0_combout\);

-- Location: FF_X76_Y37_N15
\inst6|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|G~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|G\(0));

-- Location: LCCOMB_X76_Y37_N12
\inst6|process_0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~162_combout\ = (\inst6|process_0~152_combout\ & (!\inst6|G\(0) & \inst6|p1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~152_combout\,
	datab => \inst6|G\(0),
	datac => \inst6|p1\(0),
	combout => \inst6|process_0~162_combout\);

-- Location: LCCOMB_X75_Y37_N22
\inst6|H[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|H[1]~1_combout\ = (\inst6|H\(1)) # ((\inst6|process_0~168_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~168_combout\,
	datac => \inst6|H\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|H[1]~1_combout\);

-- Location: FF_X75_Y37_N23
\inst6|H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|H[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|H\(1));

-- Location: FF_X77_Y39_N9
\inst6|H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|H~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|H\(0));

-- Location: LCCOMB_X77_Y39_N16
\inst6|process_0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~157_combout\ = (!\inst6|H\(1) & (\inst6|process_0~156_combout\ & !\inst6|H\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(1),
	datab => \inst6|process_0~156_combout\,
	datad => \inst6|H\(0),
	combout => \inst6|process_0~157_combout\);

-- Location: LCCOMB_X77_Y39_N4
\inst6|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~1_combout\ = (\inst6|p1\(0)) # (((!\inst6|process_0~158_combout\ & !\inst6|process_0~157_combout\)) # (!\inst6|p1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|p1~0_combout\,
	datac => \inst6|process_0~158_combout\,
	datad => \inst6|process_0~157_combout\,
	combout => \inst6|p1~1_combout\);

-- Location: LCCOMB_X77_Y39_N0
\inst6|process_0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~163_combout\ = (\inst6|process_0~162_combout\ & ((\inst6|p2\(0)) # ((!\inst6|p1~0_combout\) # (!\inst6|p1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~162_combout\,
	datab => \inst6|p2\(0),
	datac => \inst6|p1~1_combout\,
	datad => \inst6|p1~0_combout\,
	combout => \inst6|process_0~163_combout\);

-- Location: LCCOMB_X77_Y38_N16
\inst6|G[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|G[1]~1_combout\ = (\inst6|G\(1)) # ((\inst6|process_0~163_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~163_combout\,
	datac => \inst6|G\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|G[1]~1_combout\);

-- Location: FF_X77_Y38_N17
\inst6|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|G[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|G\(1));

-- Location: LCCOMB_X77_Y36_N8
\inst6|process_0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~152_combout\ = (\inst6|process_0~142_combout\ & (\inst6|columnNum\(1) & (!\inst6|G\(1) & \inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~142_combout\,
	datab => \inst6|columnNum\(1),
	datac => \inst6|G\(1),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~152_combout\);

-- Location: LCCOMB_X77_Y36_N30
\inst6|process_0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~145_combout\ = (!\inst6|columnNum\(0) & (!\inst6|columnNum\(1) & (\inst6|columnNum\(3) & \inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~145_combout\);

-- Location: LCCOMB_X76_Y37_N16
\inst6|process_0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~153_combout\ = (!\inst6|p1\(0) & (!\inst6|F\(0) & (!\inst6|F\(1) & \inst6|process_0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|F\(0),
	datac => \inst6|F\(1),
	datad => \inst6|process_0~145_combout\,
	combout => \inst6|process_0~153_combout\);

-- Location: LCCOMB_X76_Y37_N18
\inst6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = (!\inst6|process_0~153_combout\ & (((\inst6|G\(0)) # (\inst6|p1\(0))) # (!\inst6|process_0~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~152_combout\,
	datab => \inst6|G\(0),
	datac => \inst6|p1\(0),
	datad => \inst6|process_0~153_combout\,
	combout => \inst6|Add6~0_combout\);

-- Location: LCCOMB_X75_Y37_N8
\inst6|E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|E~0_combout\ = (\inst6|E\(0)) # ((\inst6|process_0~143_combout\ & !\inst6|p1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~143_combout\,
	datac => \inst6|E\(0),
	datad => \inst6|p1\(0),
	combout => \inst6|E~0_combout\);

-- Location: FF_X75_Y37_N9
\inst6|E[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|E~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|E\(0));

-- Location: LCCOMB_X75_Y37_N4
\inst6|process_0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~144_combout\ = (\inst6|process_0~143_combout\ & (!\inst6|E\(0) & \inst6|p1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~143_combout\,
	datac => \inst6|E\(0),
	datad => \inst6|p1\(0),
	combout => \inst6|process_0~144_combout\);

-- Location: LCCOMB_X75_Y37_N14
\inst6|E[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|E[1]~1_combout\ = (\inst6|E\(1)) # ((\inst6|p2~0_combout\ & (\inst6|process_0~144_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~144_combout\,
	datac => \inst6|E\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|E[1]~1_combout\);

-- Location: FF_X75_Y37_N15
\inst6|E[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|E[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|E\(1));

-- Location: LCCOMB_X77_Y36_N16
\inst6|process_0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~143_combout\ = (\inst6|process_0~142_combout\ & (!\inst6|columnNum\(1) & (!\inst6|E\(1) & \inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~142_combout\,
	datab => \inst6|columnNum\(1),
	datac => \inst6|E\(1),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~143_combout\);

-- Location: LCCOMB_X77_Y36_N0
\inst6|process_0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~150_combout\ = (!\inst6|columnNum\(0) & (\inst6|columnNum\(1) & (\inst6|columnNum\(3) & !\inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~150_combout\);

-- Location: LCCOMB_X75_Y37_N2
\inst6|process_0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~161_combout\ = (!\inst6|D\(0) & (\inst6|process_0~150_combout\ & (!\inst6|D\(1) & \inst6|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(0),
	datab => \inst6|process_0~150_combout\,
	datac => \inst6|D\(1),
	datad => \inst6|p1\(0),
	combout => \inst6|process_0~161_combout\);

-- Location: LCCOMB_X75_Y37_N12
\inst6|D[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|D[1]~1_combout\ = (\inst6|D\(1)) # ((\inst6|p2~0_combout\ & (\inst6|process_0~161_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~161_combout\,
	datac => \inst6|D\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|D[1]~1_combout\);

-- Location: FF_X75_Y37_N13
\inst6|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|D[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|D\(1));

-- Location: LCCOMB_X75_Y37_N18
\inst6|D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|D~0_combout\ = (\inst6|D\(0)) # ((!\inst6|D\(1) & (\inst6|process_0~150_combout\ & !\inst6|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(1),
	datab => \inst6|process_0~150_combout\,
	datac => \inst6|D\(0),
	datad => \inst6|p1\(0),
	combout => \inst6|D~0_combout\);

-- Location: FF_X75_Y37_N19
\inst6|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|D~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|D\(0));

-- Location: LCCOMB_X75_Y37_N30
\inst6|process_0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~151_combout\ = (!\inst6|D\(0) & (\inst6|process_0~150_combout\ & (!\inst6|D\(1) & !\inst6|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(0),
	datab => \inst6|process_0~150_combout\,
	datac => \inst6|D\(1),
	datad => \inst6|p1\(0),
	combout => \inst6|process_0~151_combout\);

-- Location: LCCOMB_X75_Y37_N0
\inst6|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~0_combout\ = (!\inst6|process_0~151_combout\ & (((\inst6|E\(0)) # (\inst6|p1\(0))) # (!\inst6|process_0~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~143_combout\,
	datab => \inst6|E\(0),
	datac => \inst6|process_0~151_combout\,
	datad => \inst6|p1\(0),
	combout => \inst6|Add4~0_combout\);

-- Location: LCCOMB_X79_Y38_N0
\inst6|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|C~0_combout\ = (\inst6|C\(0)) # ((!\inst6|p1\(0) & \inst6|process_0~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|process_0~147_combout\,
	datac => \inst6|C\(0),
	combout => \inst6|C~0_combout\);

-- Location: FF_X79_Y38_N1
\inst6|C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|C~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|C\(0));

-- Location: LCCOMB_X79_Y38_N22
\inst6|process_0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~167_combout\ = (\inst6|p1\(0) & (!\inst6|C\(0) & (\inst6|process_0~147_combout\ & \inst6|p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|C\(0),
	datac => \inst6|process_0~147_combout\,
	datad => \inst6|p2~0_combout\,
	combout => \inst6|process_0~167_combout\);

-- Location: LCCOMB_X79_Y38_N2
\inst6|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|C[1]~1_combout\ = (\inst6|C\(1)) # ((\inst6|process_0~167_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~167_combout\,
	datac => \inst6|C\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|C[1]~1_combout\);

-- Location: FF_X79_Y38_N3
\inst6|C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|C[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|C\(1));

-- Location: LCCOMB_X77_Y36_N18
\inst6|process_0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~147_combout\ = (\inst6|process_0~142_combout\ & (!\inst6|C\(1) & (\inst6|columnNum\(1) & !\inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~142_combout\,
	datab => \inst6|C\(1),
	datac => \inst6|columnNum\(1),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~147_combout\);

-- Location: LCCOMB_X77_Y36_N24
\inst6|process_0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~148_combout\ = (!\inst6|columnNum\(0) & (!\inst6|columnNum\(1) & (\inst6|columnNum\(3) & !\inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~148_combout\);

-- Location: LCCOMB_X79_Y38_N24
\inst6|B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|B~0_combout\ = (\inst6|B\(0)) # ((!\inst6|p1\(0) & (\inst6|process_0~148_combout\ & !\inst6|B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|process_0~148_combout\,
	datac => \inst6|B\(0),
	datad => \inst6|B\(1),
	combout => \inst6|B~0_combout\);

-- Location: FF_X79_Y38_N25
\inst6|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|B~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|B\(0));

-- Location: LCCOMB_X79_Y38_N10
\inst6|process_0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~160_combout\ = (!\inst6|B\(1) & (\inst6|process_0~148_combout\ & (\inst6|p1\(0) & !\inst6|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|B\(1),
	datab => \inst6|process_0~148_combout\,
	datac => \inst6|p1\(0),
	datad => \inst6|B\(0),
	combout => \inst6|process_0~160_combout\);

-- Location: LCCOMB_X79_Y38_N26
\inst6|B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|B[1]~1_combout\ = (\inst6|B\(1)) # ((\inst6|p2~0_combout\ & (\inst6|process_0~160_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~160_combout\,
	datac => \inst6|B\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|B[1]~1_combout\);

-- Location: FF_X79_Y38_N27
\inst6|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|B[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|B\(1));

-- Location: LCCOMB_X79_Y38_N18
\inst6|process_0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~149_combout\ = (!\inst6|B\(1) & (\inst6|process_0~148_combout\ & (!\inst6|p1\(0) & !\inst6|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|B\(1),
	datab => \inst6|process_0~148_combout\,
	datac => \inst6|p1\(0),
	datad => \inst6|B\(0),
	combout => \inst6|process_0~149_combout\);

-- Location: LCCOMB_X79_Y38_N12
\inst6|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = (!\inst6|process_0~149_combout\ & ((\inst6|p1\(0)) # ((\inst6|C\(0)) # (!\inst6|process_0~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|process_0~147_combout\,
	datac => \inst6|process_0~149_combout\,
	datad => \inst6|C\(0),
	combout => \inst6|Add2~0_combout\);

-- Location: LCCOMB_X76_Y38_N24
\inst6|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~0_combout\ = (!\inst6|process_0~155_combout\ & (\inst6|Add6~0_combout\ & (\inst6|Add4~0_combout\ & \inst6|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~155_combout\,
	datab => \inst6|Add6~0_combout\,
	datac => \inst6|Add4~0_combout\,
	datad => \inst6|Add2~0_combout\,
	combout => \inst6|p1~0_combout\);

-- Location: LCCOMB_X77_Y39_N8
\inst6|H~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|H~0_combout\ = (\inst6|H\(0)) # ((!\inst6|p1\(0) & (\inst6|p1~0_combout\ & \inst6|process_0~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|p1~0_combout\,
	datac => \inst6|H\(0),
	datad => \inst6|process_0~157_combout\,
	combout => \inst6|H~0_combout\);

-- Location: LCCOMB_X77_Y39_N6
\inst6|process_0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~165_combout\ = (\inst6|p2~3_combout\ & (((\inst6|H~0_combout\) # (\inst6|H\(1))) # (!\inst6|process_0~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~3_combout\,
	datab => \inst6|process_0~156_combout\,
	datac => \inst6|H~0_combout\,
	datad => \inst6|H\(1),
	combout => \inst6|process_0~165_combout\);

-- Location: LCCOMB_X77_Y39_N2
\inst6|process_0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~166_combout\ = (\inst6|Equal62~0_combout\ & (!\inst6|I~1_combout\ & (!\inst6|I\(1) & \inst6|process_0~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal62~0_combout\,
	datab => \inst6|I~1_combout\,
	datac => \inst6|I\(1),
	datad => \inst6|process_0~165_combout\,
	combout => \inst6|process_0~166_combout\);

-- Location: LCCOMB_X75_Y37_N10
\inst6|I[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|I[1]~2_combout\ = (\inst6|I\(1)) # ((\inst6|process_0~166_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~166_combout\,
	datac => \inst6|I\(1),
	datad => \inst6|buttonConfirmCounter[21]~34_combout\,
	combout => \inst6|I[1]~2_combout\);

-- Location: FF_X75_Y37_N11
\inst6|I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|I[1]~2_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|I\(1));

-- Location: FF_X77_Y39_N19
\inst6|I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|I~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|I\(0));

-- Location: LCCOMB_X77_Y39_N26
\inst6|process_0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~158_combout\ = (\inst6|Equal62~0_combout\ & (!\inst6|I\(1) & !\inst6|I\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal62~0_combout\,
	datac => \inst6|I\(1),
	datad => \inst6|I\(0),
	combout => \inst6|process_0~158_combout\);

-- Location: LCCOMB_X77_Y39_N24
\inst6|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~2_combout\ = (\inst6|p1~0_combout\ & !\inst6|p1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|p1~0_combout\,
	datad => \inst6|p1\(0),
	combout => \inst6|p1~2_combout\);

-- Location: LCCOMB_X77_Y39_N18
\inst6|I~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|I~1_combout\ = (\inst6|I\(0)) # ((\inst6|process_0~158_combout\ & (!\inst6|process_0~157_combout\ & \inst6|p1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~158_combout\,
	datab => \inst6|process_0~157_combout\,
	datac => \inst6|I\(0),
	datad => \inst6|p1~2_combout\,
	combout => \inst6|I~1_combout\);

-- Location: LCCOMB_X77_Y39_N14
\inst6|p2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~5_combout\ = (\inst6|process_0~165_combout\ & (((\inst6|I~1_combout\) # (\inst6|I\(1))) # (!\inst6|Equal62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal62~0_combout\,
	datab => \inst6|I~1_combout\,
	datac => \inst6|I\(1),
	datad => \inst6|process_0~165_combout\,
	combout => \inst6|p2~5_combout\);

-- Location: FF_X77_Y39_N15
\inst6|p2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|p2~5_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|p2\(0));

-- Location: LCCOMB_X77_Y39_N30
\inst6|p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~0_combout\ = (\inst6|p2\(0)) # ((!\inst6|p1~0_combout\) # (!\inst6|p1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|p2\(0),
	datac => \inst6|p1~1_combout\,
	datad => \inst6|p1~0_combout\,
	combout => \inst6|p2~0_combout\);

-- Location: LCCOMB_X76_Y37_N2
\inst6|F[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|F[1]~1_combout\ = (\inst6|F\(1)) # ((\inst6|process_0~146_combout\ & (\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~146_combout\,
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|F\(1),
	datad => \inst6|p2~0_combout\,
	combout => \inst6|F[1]~1_combout\);

-- Location: FF_X76_Y37_N3
\inst6|F[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|F[1]~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|F\(1));

-- Location: LCCOMB_X76_Y37_N0
\inst6|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|F~0_combout\ = (\inst6|F\(0)) # ((!\inst6|p1\(0) & (!\inst6|F\(1) & \inst6|process_0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|F\(1),
	datac => \inst6|F\(0),
	datad => \inst6|process_0~145_combout\,
	combout => \inst6|F~0_combout\);

-- Location: FF_X76_Y37_N1
\inst6|F[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|F~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|F\(0));

-- Location: LCCOMB_X76_Y37_N30
\inst6|process_0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~146_combout\ = (\inst6|p1\(0) & (!\inst6|F\(0) & (!\inst6|F\(1) & \inst6|process_0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|F\(0),
	datac => \inst6|F\(1),
	datad => \inst6|process_0~145_combout\,
	combout => \inst6|process_0~146_combout\);

-- Location: LCCOMB_X76_Y38_N6
\inst6|p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~2_combout\ = ((!\inst6|process_0~146_combout\ & (!\inst6|process_0~162_combout\ & !\inst6|process_0~144_combout\))) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~146_combout\,
	datab => \inst6|process_0~162_combout\,
	datac => \inst6|p2~0_combout\,
	datad => \inst6|process_0~144_combout\,
	combout => \inst6|p2~2_combout\);

-- Location: LCCOMB_X79_Y38_N20
\inst6|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add12~0_combout\ = ((!\inst6|process_0~161_combout\ & ((\inst6|C~0_combout\) # (!\inst6|process_0~147_combout\)))) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~147_combout\,
	datac => \inst6|process_0~161_combout\,
	datad => \inst6|C~0_combout\,
	combout => \inst6|Add12~0_combout\);

-- Location: LCCOMB_X76_Y38_N4
\inst6|p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~1_combout\ = ((!\inst6|process_0~160_combout\ & !\inst6|process_0~159_combout\)) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~160_combout\,
	datac => \inst6|p2~0_combout\,
	datad => \inst6|process_0~159_combout\,
	combout => \inst6|p2~1_combout\);

-- Location: LCCOMB_X76_Y38_N0
\inst6|p2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~3_combout\ = (\inst6|p2~2_combout\ & (\inst6|p2~0_combout\ & (\inst6|Add12~0_combout\ & \inst6|p2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~2_combout\,
	datab => \inst6|p2~0_combout\,
	datac => \inst6|Add12~0_combout\,
	datad => \inst6|p2~1_combout\,
	combout => \inst6|p2~3_combout\);

-- Location: LCCOMB_X77_Y39_N28
\inst6|process_0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~168_combout\ = (\inst6|p2~3_combout\ & (\inst6|process_0~156_combout\ & (!\inst6|H~0_combout\ & !\inst6|H\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~3_combout\,
	datab => \inst6|process_0~156_combout\,
	datac => \inst6|H~0_combout\,
	datad => \inst6|H\(1),
	combout => \inst6|process_0~168_combout\);

-- Location: LCCOMB_X76_Y38_N2
\inst6|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add14~0_combout\ = ((!\inst6|process_0~144_combout\ & !\inst6|process_0~146_combout\)) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~144_combout\,
	datac => \inst6|p2~0_combout\,
	datad => \inst6|process_0~146_combout\,
	combout => \inst6|Add14~0_combout\);

-- Location: LCCOMB_X77_Y38_N2
\inst6|p2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~4_combout\ = (\inst6|Add14~0_combout\ & (\inst6|p2~1_combout\ & (\inst6|Add12~0_combout\ & !\inst6|process_0~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add14~0_combout\,
	datab => \inst6|p2~1_combout\,
	datac => \inst6|Add12~0_combout\,
	datad => \inst6|process_0~163_combout\,
	combout => \inst6|p2~4_combout\);

-- Location: LCCOMB_X77_Y39_N22
\inst6|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~3_combout\ = (!\inst6|p1\(0) & (\inst6|p1~0_combout\ & (!\inst6|process_0~158_combout\ & !\inst6|process_0~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|p1~0_combout\,
	datac => \inst6|process_0~158_combout\,
	datad => \inst6|process_0~157_combout\,
	combout => \inst6|p1~3_combout\);

-- Location: LCCOMB_X77_Y39_N12
\inst6|p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~4_combout\ = (!\inst6|process_0~168_combout\ & (\inst6|p2~4_combout\ & (!\inst6|p1~3_combout\ & !\inst6|process_0~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~168_combout\,
	datab => \inst6|p2~4_combout\,
	datac => \inst6|p1~3_combout\,
	datad => \inst6|process_0~166_combout\,
	combout => \inst6|p1~4_combout\);

-- Location: FF_X77_Y39_N13
\inst6|p1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|p1~4_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|p1\(0));

-- Location: LCCOMB_X79_Y38_N4
\inst6|A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|A~0_combout\ = (\inst6|A\(0)) # ((!\inst6|p1\(0) & (!\inst6|A\(1) & \inst6|process_0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|A\(1),
	datac => \inst6|A\(0),
	datad => \inst6|process_0~154_combout\,
	combout => \inst6|A~0_combout\);

-- Location: FF_X79_Y38_N5
\inst6|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|A~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|A\(0));

-- Location: LCCOMB_X79_Y38_N14
\inst6|p2w~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~5_combout\ = (!\inst6|A\(0) & \inst6|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|A\(0),
	datad => \inst6|A\(1),
	combout => \inst6|p2w~5_combout\);

-- Location: LCCOMB_X76_Y37_N20
\inst6|red[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~38_combout\ = (\inst6|D\(1) & !\inst6|D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(1),
	datad => \inst6|D\(0),
	combout => \inst6|red[7]~38_combout\);

-- Location: LCCOMB_X79_Y35_N30
\inst6|process_0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~109_combout\ = (!\inst1|row\(9) & !\inst1|row\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(9),
	datad => \inst1|row\(10),
	combout => \inst6|process_0~109_combout\);

-- Location: LCCOMB_X76_Y34_N18
\inst6|LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~0_combout\ = (!\inst1|row\(1) & (!\inst1|row\(3) & !\inst1|row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(1),
	datac => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan24~0_combout\);

-- Location: LCCOMB_X77_Y34_N20
\inst6|LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~1_combout\ = ((\inst6|process_0~28_combout\ & (\inst6|LessThan24~0_combout\ & !\inst1|row\(4)))) # (!\inst1|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~28_combout\,
	datab => \inst6|LessThan24~0_combout\,
	datac => \inst1|row\(7),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan24~1_combout\);

-- Location: LCCOMB_X79_Y34_N0
\inst6|LessThan24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~2_combout\ = (!\inst1|row\(10) & (((\inst6|LessThan24~1_combout\ & !\inst1|row\(8))) # (!\inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan24~1_combout\,
	datab => \inst1|row\(9),
	datac => \inst1|row\(8),
	datad => \inst1|row\(10),
	combout => \inst6|LessThan24~2_combout\);

-- Location: LCCOMB_X76_Y34_N24
\inst6|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~1_combout\ = (\inst1|row\(2) & \inst1|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(2),
	datad => \inst1|row\(1),
	combout => \inst6|LessThan13~1_combout\);

-- Location: LCCOMB_X79_Y34_N16
\inst6|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~0_combout\ = (\inst1|row\(4) & ((\inst1|row\(3)) # ((\inst6|LessThan13~1_combout\ & !\inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan13~1_combout\,
	datab => \inst1|row\(0),
	datac => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan5~0_combout\);

-- Location: LCCOMB_X79_Y34_N10
\inst6|LessThan23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~0_combout\ = (\inst1|row\(7) & \inst1|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datac => \inst1|row\(8),
	combout => \inst6|LessThan23~0_combout\);

-- Location: LCCOMB_X79_Y34_N2
\inst6|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~1_combout\ = (\inst6|LessThan23~0_combout\ & ((\inst1|row\(6)) # ((\inst6|LessThan5~0_combout\ & \inst1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan5~0_combout\,
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst6|LessThan23~0_combout\,
	combout => \inst6|LessThan23~1_combout\);

-- Location: LCCOMB_X79_Y34_N30
\inst6|red[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~55_combout\ = (\inst6|LessThan24~2_combout\ & (\inst1|row\(31) & ((\inst6|LessThan23~1_combout\) # (!\inst6|process_0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~109_combout\,
	datab => \inst6|LessThan24~2_combout\,
	datac => \inst1|row\(31),
	datad => \inst6|LessThan23~1_combout\,
	combout => \inst6|red[7]~55_combout\);

-- Location: LCCOMB_X76_Y33_N18
\inst6|red[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~56_combout\ = (!\inst1|column\(10) & (\inst6|red[7]~55_combout\ & (!\inst6|process_0~108_combout\ & \inst6|process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|red[7]~55_combout\,
	datac => \inst6|process_0~108_combout\,
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|red[7]~56_combout\);

-- Location: LCCOMB_X77_Y33_N4
\inst6|red[5]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~73_combout\ = (\inst6|red[7]~54_combout\ & (!\inst6|p2w~5_combout\ & ((!\inst6|red[7]~56_combout\) # (!\inst6|red[7]~38_combout\)))) # (!\inst6|red[7]~54_combout\ & (((!\inst6|red[7]~56_combout\) # (!\inst6|red[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~54_combout\,
	datab => \inst6|p2w~5_combout\,
	datac => \inst6|red[7]~38_combout\,
	datad => \inst6|red[7]~56_combout\,
	combout => \inst6|red[5]~73_combout\);

-- Location: LCCOMB_X75_Y37_N16
\inst6|red[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~36_combout\ = (\inst6|H\(1) & !\inst6|H\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|H\(1),
	datad => \inst6|H\(0),
	combout => \inst6|red[7]~36_combout\);

-- Location: LCCOMB_X75_Y37_N26
\inst6|red[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~37_combout\ = (\inst6|I\(1) & !\inst6|I\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|I\(1),
	datad => \inst6|I\(0),
	combout => \inst6|red[7]~37_combout\);

-- Location: LCCOMB_X76_Y33_N8
\inst6|process_0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~92_combout\ = (\inst1|column\(10) & (!\inst1|column\(11) & (!\inst1|column\(9) & \inst1|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(11),
	datac => \inst1|column\(9),
	datad => \inst1|column\(31),
	combout => \inst6|process_0~92_combout\);

-- Location: LCCOMB_X77_Y33_N30
\inst6|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~41_combout\ = (\inst1|column\(6) & \inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(6),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~41_combout\);

-- Location: LCCOMB_X77_Y33_N22
\inst6|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~0_combout\ = ((!\inst1|column\(5) & (!\inst1|column\(4) & !\inst1|column\(3)))) # (!\inst6|process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~41_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(4),
	datad => \inst1|column\(3),
	combout => \inst6|LessThan7~0_combout\);

-- Location: LCCOMB_X77_Y33_N16
\inst6|process_0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~116_combout\ = (((\inst1|column\(0) & !\inst1|column\(1))) # (!\inst1|column\(3))) # (!\inst1|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~116_combout\);

-- Location: LCCOMB_X77_Y33_N2
\inst6|process_0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~117_combout\ = ((!\inst1|column\(4) & (!\inst1|column\(5) & \inst6|process_0~116_combout\))) # (!\inst6|process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(5),
	datac => \inst6|process_0~41_combout\,
	datad => \inst6|process_0~116_combout\,
	combout => \inst6|process_0~117_combout\);

-- Location: LCCOMB_X77_Y33_N24
\inst6|process_0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~118_combout\ = ((\inst1|column\(8) & (!\inst6|LessThan7~0_combout\)) # (!\inst1|column\(8) & ((\inst6|process_0~117_combout\)))) # (!\inst6|process_0~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~92_combout\,
	datab => \inst1|column\(8),
	datac => \inst6|LessThan7~0_combout\,
	datad => \inst6|process_0~117_combout\,
	combout => \inst6|process_0~118_combout\);

-- Location: LCCOMB_X79_Y33_N0
\inst6|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~1_combout\ = (\inst1|row\(9) & (\inst1|row\(7) & \inst1|row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(9),
	datac => \inst1|row\(7),
	datad => \inst1|row\(8),
	combout => \inst6|LessThan4~1_combout\);

-- Location: LCCOMB_X77_Y34_N8
\inst6|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~0_combout\ = (\inst1|row\(3) & \inst1|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan13~0_combout\);

-- Location: LCCOMB_X77_Y34_N30
\inst6|LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~0_combout\ = ((\inst6|process_0~28_combout\ & ((!\inst6|LessThan13~1_combout\) # (!\inst6|LessThan13~0_combout\)))) # (!\inst6|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~1_combout\,
	datab => \inst6|LessThan13~0_combout\,
	datac => \inst6|process_0~28_combout\,
	datad => \inst6|LessThan13~1_combout\,
	combout => \inst6|LessThan26~0_combout\);

-- Location: LCCOMB_X76_Y34_N26
\inst6|LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~0_combout\ = (\inst1|row\(3)) # ((\inst1|row\(2)) # ((\inst1|row\(1) & !\inst1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst1|row\(1),
	datac => \inst1|row\(2),
	datad => \inst1|row\(0),
	combout => \inst6|LessThan25~0_combout\);

-- Location: LCCOMB_X79_Y34_N4
\inst6|red[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~61_combout\ = (\inst1|row\(6) & ((\inst1|row\(5)) # ((\inst6|LessThan25~0_combout\ & \inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan25~0_combout\,
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst1|row\(4),
	combout => \inst6|red[7]~61_combout\);

-- Location: LCCOMB_X79_Y34_N28
\inst6|red[7]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~62_combout\ = (!\inst1|row\(10) & ((\inst1|row\(8)) # ((\inst6|red[7]~61_combout\ & \inst1|row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst6|red[7]~61_combout\,
	datac => \inst1|row\(10),
	datad => \inst1|row\(7),
	combout => \inst6|red[7]~62_combout\);

-- Location: LCCOMB_X80_Y33_N20
\inst6|red[7]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~63_combout\ = (\inst1|row\(31) & (\inst6|LessThan26~0_combout\ & (\inst6|red[7]~62_combout\ & \inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|LessThan26~0_combout\,
	datac => \inst6|red[7]~62_combout\,
	datad => \inst1|row\(9),
	combout => \inst6|red[7]~63_combout\);

-- Location: LCCOMB_X81_Y33_N4
\inst6|red[7]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~68_combout\ = (!\inst6|process_0~118_combout\ & \inst6|red[7]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~118_combout\,
	datad => \inst6|red[7]~63_combout\,
	combout => \inst6|red[7]~68_combout\);

-- Location: LCCOMB_X75_Y31_N8
\inst6|LessThan59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan59~0_combout\ = (\inst1|column\(3) & \inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	combout => \inst6|LessThan59~0_combout\);

-- Location: LCCOMB_X75_Y31_N12
\inst6|process_0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~114_combout\ = (\inst1|column\(5) & (\inst1|column\(2) & (\inst6|LessThan59~0_combout\ & \inst1|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(2),
	datac => \inst6|LessThan59~0_combout\,
	datad => \inst1|column\(1),
	combout => \inst6|process_0~114_combout\);

-- Location: LCCOMB_X75_Y34_N18
\inst6|process_0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~75_combout\ = (\inst1|column\(8) & (!\inst1|column\(7) & !\inst1|column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(8),
	datac => \inst1|column\(7),
	datad => \inst1|column\(6),
	combout => \inst6|process_0~75_combout\);

-- Location: LCCOMB_X75_Y34_N26
\inst6|process_0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~110_combout\ = ((\inst6|process_0~75_combout\) # ((\inst1|column\(9) & \inst1|column\(10)))) # (!\inst6|process_0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(10),
	datac => \inst6|process_0~35_combout\,
	datad => \inst6|process_0~75_combout\,
	combout => \inst6|process_0~110_combout\);

-- Location: LCCOMB_X75_Y31_N4
\inst6|process_0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~111_combout\ = (!\inst1|column\(7) & (!\inst1|column\(3) & (!\inst1|column\(4) & !\inst1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	datad => \inst1|column\(2),
	combout => \inst6|process_0~111_combout\);

-- Location: LCCOMB_X75_Y34_N14
\inst6|process_0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~112_combout\ = (\inst6|process_0~111_combout\ & (!\inst1|column\(5) & ((\inst1|column\(0)) # (!\inst1|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst6|process_0~111_combout\,
	datac => \inst1|column\(5),
	datad => \inst1|column\(0),
	combout => \inst6|process_0~112_combout\);

-- Location: LCCOMB_X75_Y34_N8
\inst6|process_0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~113_combout\ = (\inst6|process_0~110_combout\) # ((!\inst1|column\(10) & ((\inst6|process_0~112_combout\) # (!\inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~110_combout\,
	datab => \inst1|column\(10),
	datac => \inst6|process_0~112_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|process_0~113_combout\);

-- Location: LCCOMB_X75_Y34_N12
\inst6|process_0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~76_combout\ = (!\inst1|column\(7) & !\inst1|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(7),
	datad => \inst1|column\(6),
	combout => \inst6|process_0~76_combout\);

-- Location: LCCOMB_X75_Y34_N30
\inst6|process_0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~115_combout\ = (\inst6|process_0~113_combout\) # ((!\inst1|column\(9) & ((\inst6|process_0~114_combout\) # (!\inst6|process_0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~114_combout\,
	datac => \inst6|process_0~113_combout\,
	datad => \inst6|process_0~76_combout\,
	combout => \inst6|process_0~115_combout\);

-- Location: LCCOMB_X81_Y33_N0
\inst6|red[7]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~69_combout\ = (!\inst6|process_0~115_combout\ & \inst6|red[7]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~115_combout\,
	datad => \inst6|red[7]~63_combout\,
	combout => \inst6|red[7]~69_combout\);

-- Location: LCCOMB_X81_Y33_N12
\inst6|red[5]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~78_combout\ = (\inst6|red[7]~36_combout\ & (!\inst6|red[7]~69_combout\ & ((!\inst6|red[7]~68_combout\) # (!\inst6|red[7]~37_combout\)))) # (!\inst6|red[7]~36_combout\ & (((!\inst6|red[7]~68_combout\)) # (!\inst6|red[7]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~36_combout\,
	datab => \inst6|red[7]~37_combout\,
	datac => \inst6|red[7]~68_combout\,
	datad => \inst6|red[7]~69_combout\,
	combout => \inst6|red[5]~78_combout\);

-- Location: LCCOMB_X76_Y33_N24
\inst6|process_0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~176_combout\ = (\inst1|column\(10)) # ((\inst1|column\(11)) # ((\inst6|process_0~108_combout\) # (!\inst1|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(11),
	datac => \inst6|process_0~108_combout\,
	datad => \inst1|column\(31),
	combout => \inst6|process_0~176_combout\);

-- Location: LCCOMB_X76_Y37_N6
\inst6|red[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~33_combout\ = (!\inst6|G\(0) & \inst6|G\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|G\(0),
	datad => \inst6|G\(1),
	combout => \inst6|red[7]~33_combout\);

-- Location: LCCOMB_X76_Y37_N8
\inst6|red[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~34_combout\ = (\inst6|C\(1) & !\inst6|C\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|C\(1),
	datad => \inst6|C\(0),
	combout => \inst6|red[7]~34_combout\);

-- Location: LCCOMB_X79_Y38_N16
\inst6|red[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~35_combout\ = (\inst6|B\(1) & !\inst6|B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|B\(1),
	datad => \inst6|B\(0),
	combout => \inst6|red[7]~35_combout\);

-- Location: LCCOMB_X80_Y34_N14
\inst6|red[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~58_combout\ = (!\inst6|process_0~115_combout\ & \inst6|red[7]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~115_combout\,
	datac => \inst6|red[7]~53_combout\,
	combout => \inst6|red[7]~58_combout\);

-- Location: LCCOMB_X80_Y34_N20
\inst6|red[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~59_combout\ = (\inst6|red[7]~53_combout\ & !\inst6|process_0~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|red[7]~53_combout\,
	datad => \inst6|process_0~118_combout\,
	combout => \inst6|red[7]~59_combout\);

-- Location: LCCOMB_X80_Y34_N0
\inst6|red[5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~74_combout\ = (\inst6|red[7]~34_combout\ & (!\inst6|red[7]~59_combout\ & ((!\inst6|red[7]~58_combout\) # (!\inst6|red[7]~35_combout\)))) # (!\inst6|red[7]~34_combout\ & (((!\inst6|red[7]~58_combout\)) # (!\inst6|red[7]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~34_combout\,
	datab => \inst6|red[7]~35_combout\,
	datac => \inst6|red[7]~58_combout\,
	datad => \inst6|red[7]~59_combout\,
	combout => \inst6|red[5]~74_combout\);

-- Location: LCCOMB_X80_Y33_N4
\inst6|red[5]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~75_combout\ = (\inst6|red[5]~74_combout\ & ((\inst6|process_0~176_combout\) # ((!\inst6|red[7]~33_combout\) # (!\inst6|red[7]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~176_combout\,
	datab => \inst6|red[7]~63_combout\,
	datac => \inst6|red[7]~33_combout\,
	datad => \inst6|red[5]~74_combout\,
	combout => \inst6|red[5]~75_combout\);

-- Location: LCCOMB_X79_Y34_N8
\inst6|red[7]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~76_combout\ = (!\inst6|E\(0) & (\inst6|E\(1) & (\inst6|red[7]~55_combout\ & !\inst6|process_0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|E\(0),
	datab => \inst6|E\(1),
	datac => \inst6|red[7]~55_combout\,
	datad => \inst6|process_0~115_combout\,
	combout => \inst6|red[7]~76_combout\);

-- Location: LCCOMB_X79_Y34_N12
\inst6|red[7]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~65_combout\ = (\inst6|red[7]~55_combout\ & !\inst6|process_0~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~55_combout\,
	datad => \inst6|process_0~118_combout\,
	combout => \inst6|red[7]~65_combout\);

-- Location: LCCOMB_X79_Y34_N6
\inst6|red[5]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~77_combout\ = (!\inst6|red[7]~76_combout\ & ((\inst6|F\(0)) # ((!\inst6|red[7]~65_combout\) # (!\inst6|F\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|F\(0),
	datab => \inst6|F\(1),
	datac => \inst6|red[7]~76_combout\,
	datad => \inst6|red[7]~65_combout\,
	combout => \inst6|red[5]~77_combout\);

-- Location: LCCOMB_X80_Y33_N10
\inst6|red[5]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~79_combout\ = (\inst6|red[5]~73_combout\ & (\inst6|red[5]~78_combout\ & (\inst6|red[5]~75_combout\ & \inst6|red[5]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~73_combout\,
	datab => \inst6|red[5]~78_combout\,
	datac => \inst6|red[5]~75_combout\,
	datad => \inst6|red[5]~77_combout\,
	combout => \inst6|red[5]~79_combout\);

-- Location: LCCOMB_X81_Y35_N8
\inst6|red[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~27_combout\ = (!\inst6|C\(1) & \inst6|C\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(1),
	datad => \inst6|C\(0),
	combout => \inst6|red[7]~27_combout\);

-- Location: LCCOMB_X79_Y38_N28
\inst6|red[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~29_combout\ = (!\inst6|B\(1) & \inst6|B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|B\(1),
	datad => \inst6|B\(0),
	combout => \inst6|red[7]~29_combout\);

-- Location: LCCOMB_X80_Y34_N30
\inst6|red[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~60_combout\ = (\inst6|red[7]~27_combout\ & (!\inst6|red[7]~59_combout\ & ((!\inst6|red[7]~58_combout\) # (!\inst6|red[7]~29_combout\)))) # (!\inst6|red[7]~27_combout\ & (((!\inst6|red[7]~58_combout\)) # (!\inst6|red[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~27_combout\,
	datab => \inst6|red[7]~29_combout\,
	datac => \inst6|red[7]~58_combout\,
	datad => \inst6|red[7]~59_combout\,
	combout => \inst6|red[6]~60_combout\);

-- Location: LCCOMB_X79_Y37_N8
\inst6|red[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~26_combout\ = (\inst6|G\(0) & !\inst6|G\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|G\(0),
	datad => \inst6|G\(1),
	combout => \inst6|red[7]~26_combout\);

-- Location: LCCOMB_X80_Y33_N26
\inst6|red[6]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~64_combout\ = (\inst6|red[6]~60_combout\ & (((\inst6|process_0~176_combout\) # (!\inst6|red[7]~63_combout\)) # (!\inst6|red[7]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~60_combout\,
	datab => \inst6|red[7]~26_combout\,
	datac => \inst6|process_0~176_combout\,
	datad => \inst6|red[7]~63_combout\,
	combout => \inst6|red[6]~64_combout\);

-- Location: LCCOMB_X75_Y37_N28
\inst6|red[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~31_combout\ = (!\inst6|I\(1) & \inst6|I\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|I\(1),
	datad => \inst6|I\(0),
	combout => \inst6|red[7]~31_combout\);

-- Location: LCCOMB_X75_Y37_N24
\inst6|red[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~30_combout\ = (!\inst6|H\(1) & \inst6|H\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|H\(1),
	datad => \inst6|H\(0),
	combout => \inst6|red[7]~30_combout\);

-- Location: LCCOMB_X81_Y33_N22
\inst6|red[6]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~70_combout\ = (\inst6|red[7]~31_combout\ & (!\inst6|red[7]~68_combout\ & ((!\inst6|red[7]~69_combout\) # (!\inst6|red[7]~30_combout\)))) # (!\inst6|red[7]~31_combout\ & (((!\inst6|red[7]~69_combout\)) # (!\inst6|red[7]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~31_combout\,
	datab => \inst6|red[7]~30_combout\,
	datac => \inst6|red[7]~68_combout\,
	datad => \inst6|red[7]~69_combout\,
	combout => \inst6|red[6]~70_combout\);

-- Location: LCCOMB_X79_Y34_N26
\inst6|red[7]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~66_combout\ = (\inst6|E\(0) & (!\inst6|E\(1) & (\inst6|red[7]~55_combout\ & !\inst6|process_0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|E\(0),
	datab => \inst6|E\(1),
	datac => \inst6|red[7]~55_combout\,
	datad => \inst6|process_0~115_combout\,
	combout => \inst6|red[7]~66_combout\);

-- Location: LCCOMB_X79_Y34_N20
\inst6|red[6]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~67_combout\ = (!\inst6|red[7]~66_combout\ & (((\inst6|F\(1)) # (!\inst6|red[7]~65_combout\)) # (!\inst6|F\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|F\(0),
	datab => \inst6|F\(1),
	datac => \inst6|red[7]~66_combout\,
	datad => \inst6|red[7]~65_combout\,
	combout => \inst6|red[6]~67_combout\);

-- Location: LCCOMB_X76_Y37_N26
\inst6|red[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~32_combout\ = (!\inst6|D\(1) & \inst6|D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(1),
	datad => \inst6|D\(0),
	combout => \inst6|red[7]~32_combout\);

-- Location: LCCOMB_X80_Y37_N16
\inst6|red[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~28_combout\ = (\inst6|A\(0) & !\inst6|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|A\(0),
	datad => \inst6|A\(1),
	combout => \inst6|red[7]~28_combout\);

-- Location: LCCOMB_X81_Y33_N28
\inst6|red[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~57_combout\ = (\inst6|red[7]~32_combout\ & (!\inst6|red[7]~56_combout\ & ((!\inst6|red[7]~54_combout\) # (!\inst6|red[7]~28_combout\)))) # (!\inst6|red[7]~32_combout\ & (((!\inst6|red[7]~54_combout\)) # (!\inst6|red[7]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~32_combout\,
	datab => \inst6|red[7]~28_combout\,
	datac => \inst6|red[7]~54_combout\,
	datad => \inst6|red[7]~56_combout\,
	combout => \inst6|red[6]~57_combout\);

-- Location: LCCOMB_X80_Y33_N22
\inst6|red[6]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~71_combout\ = (\inst6|red[6]~64_combout\ & (\inst6|red[6]~70_combout\ & (\inst6|red[6]~67_combout\ & \inst6|red[6]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~64_combout\,
	datab => \inst6|red[6]~70_combout\,
	datac => \inst6|red[6]~67_combout\,
	datad => \inst6|red[6]~57_combout\,
	combout => \inst6|red[6]~71_combout\);

-- Location: LCCOMB_X79_Y35_N12
\inst6|process_0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~101_combout\ = (!\inst1|row\(8) & (\inst1|row\(9) & (\inst1|row\(7) & !\inst1|row\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(9),
	datac => \inst1|row\(7),
	datad => \inst1|row\(10),
	combout => \inst6|process_0~101_combout\);

-- Location: LCCOMB_X76_Y34_N20
\inst6|process_0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~99_combout\ = ((!\inst1|row\(1)) # (!\inst1|row\(2))) # (!\inst1|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst1|row\(2),
	datad => \inst1|row\(1),
	combout => \inst6|process_0~99_combout\);

-- Location: LCCOMB_X79_Y35_N4
\inst6|process_0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~100_combout\ = ((\inst6|process_0~99_combout\ & (!\inst1|row\(5) & !\inst1|row\(4)))) # (!\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~99_combout\,
	datab => \inst1|row\(5),
	datac => \inst1|row\(6),
	datad => \inst1|row\(4),
	combout => \inst6|process_0~100_combout\);

-- Location: LCCOMB_X77_Y34_N2
\inst6|LessThan13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~2_combout\ = ((!\inst1|row\(0) & (\inst6|LessThan13~0_combout\ & \inst6|LessThan13~1_combout\))) # (!\inst6|process_0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(0),
	datab => \inst6|process_0~28_combout\,
	datac => \inst6|LessThan13~0_combout\,
	datad => \inst6|LessThan13~1_combout\,
	combout => \inst6|LessThan13~2_combout\);

-- Location: LCCOMB_X79_Y35_N2
\inst6|process_0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~102_combout\ = (\inst6|process_0~101_combout\ & (\inst6|process_0~100_combout\ & \inst6|LessThan13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~101_combout\,
	datac => \inst6|process_0~100_combout\,
	datad => \inst6|LessThan13~2_combout\,
	combout => \inst6|process_0~102_combout\);

-- Location: LCCOMB_X74_Y33_N12
\inst6|process_0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~68_combout\ = (\inst1|column\(8) & \inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(8),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~68_combout\);

-- Location: LCCOMB_X77_Y33_N20
\inst6|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~0_combout\ = (\inst1|column\(2) & ((\inst1|column\(1)) # (!\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(2),
	datad => \inst1|column\(1),
	combout => \inst6|LessThan8~0_combout\);

-- Location: LCCOMB_X77_Y33_N18
\inst6|process_0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~105_combout\ = (!\inst1|column\(6) & (((!\inst6|LessThan8~0_combout\ & !\inst1|column\(3))) # (!\inst6|process_0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|LessThan8~0_combout\,
	datac => \inst1|column\(3),
	datad => \inst6|process_0~65_combout\,
	combout => \inst6|process_0~105_combout\);

-- Location: LCCOMB_X76_Y33_N12
\inst6|process_0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~106_combout\ = (!\inst1|column\(10) & (!\inst1|column\(9) & ((\inst6|process_0~105_combout\) # (!\inst6|process_0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|process_0~68_combout\,
	datac => \inst1|column\(9),
	datad => \inst6|process_0~105_combout\,
	combout => \inst6|process_0~106_combout\);

-- Location: LCCOMB_X76_Y31_N12
\inst6|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~0_combout\ = (!\inst1|column\(4) & (!\inst1|column\(5) & ((!\inst1|column\(3)) # (!\inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst1|column\(3),
	combout => \inst6|LessThan9~0_combout\);

-- Location: LCCOMB_X76_Y31_N4
\inst6|process_0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~104_combout\ = (\inst1|column\(9)) # ((!\inst6|LessThan9~0_combout\ & (\inst6|process_0~41_combout\ & \inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan9~0_combout\,
	datab => \inst1|column\(9),
	datac => \inst6|process_0~41_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|process_0~104_combout\);

-- Location: LCCOMB_X76_Y33_N10
\inst6|process_0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~103_combout\ = (\inst1|row\(31) & (!\inst1|column\(11) & \inst1|column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datac => \inst1|column\(11),
	datad => \inst1|column\(31),
	combout => \inst6|process_0~103_combout\);

-- Location: LCCOMB_X76_Y33_N2
\inst6|process_0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~107_combout\ = (!\inst6|process_0~106_combout\ & (\inst6|process_0~103_combout\ & ((!\inst1|column\(10)) # (!\inst6|process_0~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~106_combout\,
	datab => \inst6|process_0~104_combout\,
	datac => \inst1|column\(10),
	datad => \inst6|process_0~103_combout\,
	combout => \inst6|process_0~107_combout\);

-- Location: LCCOMB_X76_Y32_N12
\inst6|LessThan61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan61~0_combout\ = (!\inst1|column\(6) & !\inst1|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(6),
	datad => \inst1|column\(5),
	combout => \inst6|LessThan61~0_combout\);

-- Location: LCCOMB_X76_Y33_N16
\inst6|process_0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~93_combout\ = (\inst6|process_0~92_combout\ & (((\inst1|column\(4) & \inst6|LessThan2~0_combout\)) # (!\inst6|LessThan61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst6|LessThan2~0_combout\,
	datac => \inst6|process_0~92_combout\,
	datad => \inst6|LessThan61~0_combout\,
	combout => \inst6|process_0~93_combout\);

-- Location: LCCOMB_X77_Y33_N28
\inst6|process_0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~94_combout\ = (\inst6|process_0~93_combout\ & (!\inst1|column\(8) & (\inst6|LessThan7~0_combout\ & \inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~93_combout\,
	datab => \inst1|column\(8),
	datac => \inst6|LessThan7~0_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~94_combout\);

-- Location: LCCOMB_X79_Y33_N2
\inst6|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~1_combout\ = ((\inst1|row\(7) & ((\inst6|LessThan5~0_combout\) # (!\inst6|process_0~28_combout\)))) # (!\inst6|LessThan27~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan27~1_combout\,
	datab => \inst1|row\(7),
	datac => \inst6|LessThan5~0_combout\,
	datad => \inst6|process_0~28_combout\,
	combout => \inst6|LessThan5~1_combout\);

-- Location: LCCOMB_X79_Y33_N12
\inst6|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~0_combout\ = (!\inst1|row\(6) & (((\inst6|LessThan24~0_combout\ & !\inst1|row\(4))) # (!\inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(5),
	datac => \inst6|LessThan24~0_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan4~0_combout\);

-- Location: LCCOMB_X79_Y33_N30
\inst6|process_0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~95_combout\ = (\inst1|row\(31) & (!\inst1|row\(10) & ((\inst6|LessThan4~0_combout\) # (!\inst6|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~0_combout\,
	datab => \inst1|row\(31),
	datac => \inst1|row\(10),
	datad => \inst6|LessThan4~1_combout\,
	combout => \inst6|process_0~95_combout\);

-- Location: LCCOMB_X76_Y32_N28
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst1|column\(3) & !\inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X76_Y32_N2
\inst6|process_0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~90_combout\ = (\inst1|column\(9) & (!\inst1|column\(8) & (!\inst1|column\(10) & \inst6|process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(8),
	datac => \inst1|column\(10),
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|process_0~90_combout\);

-- Location: LCCOMB_X76_Y32_N10
\inst6|LessThan59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan59~1_combout\ = (\inst1|column\(6) & \inst1|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(6),
	datad => \inst1|column\(5),
	combout => \inst6|LessThan59~1_combout\);

-- Location: LCCOMB_X76_Y32_N8
\inst6|process_0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~91_combout\ = (\inst6|LessThan2~1_combout\ & (\inst6|process_0~90_combout\ & ((\inst6|LessThan3~0_combout\) # (!\inst6|LessThan59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~1_combout\,
	datab => \inst6|LessThan3~0_combout\,
	datac => \inst6|process_0~90_combout\,
	datad => \inst6|LessThan59~1_combout\,
	combout => \inst6|process_0~91_combout\);

-- Location: LCCOMB_X79_Y33_N16
\inst6|red[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~51_combout\ = (((!\inst6|process_0~94_combout\ & !\inst6|process_0~91_combout\)) # (!\inst6|process_0~95_combout\)) # (!\inst6|LessThan5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~94_combout\,
	datab => \inst6|LessThan5~1_combout\,
	datac => \inst6|process_0~95_combout\,
	datad => \inst6|process_0~91_combout\,
	combout => \inst6|red[7]~51_combout\);

-- Location: LCCOMB_X79_Y33_N26
\inst6|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~25_combout\ = (\inst1|row\(5) & \inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(5),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~25_combout\);

-- Location: LCCOMB_X77_Y34_N6
\inst6|process_0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~97_combout\ = (!\inst1|row\(7) & (\inst6|process_0~25_combout\ & ((\inst6|LessThan11~0_combout\) # (\inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~0_combout\,
	datab => \inst1|row\(4),
	datac => \inst1|row\(7),
	datad => \inst6|process_0~25_combout\,
	combout => \inst6|process_0~97_combout\);

-- Location: LCCOMB_X77_Y34_N12
\inst6|process_0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~96_combout\ = (!\inst1|row\(9) & (!\inst1|row\(10) & \inst1|row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(9),
	datac => \inst1|row\(10),
	datad => \inst1|row\(8),
	combout => \inst6|process_0~96_combout\);

-- Location: LCCOMB_X77_Y34_N16
\inst6|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~0_combout\ = (\inst6|process_0~28_combout\ & (((!\inst1|row\(2) & !\inst1|row\(1))) # (!\inst6|LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst6|process_0~28_combout\,
	datac => \inst1|row\(1),
	datad => \inst6|LessThan13~0_combout\,
	combout => \inst6|LessThan10~0_combout\);

-- Location: LCCOMB_X77_Y34_N10
\inst6|process_0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~98_combout\ = (\inst6|process_0~96_combout\ & ((\inst6|process_0~97_combout\) # ((\inst1|row\(7) & \inst6|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~97_combout\,
	datab => \inst6|process_0~96_combout\,
	datac => \inst1|row\(7),
	datad => \inst6|LessThan10~0_combout\,
	combout => \inst6|process_0~98_combout\);

-- Location: LCCOMB_X80_Y33_N28
\inst6|red[7]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~52_combout\ = (\inst6|red[7]~51_combout\ & (((!\inst6|process_0~102_combout\ & !\inst6|process_0~98_combout\)) # (!\inst6|process_0~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~102_combout\,
	datab => \inst6|process_0~107_combout\,
	datac => \inst6|red[7]~51_combout\,
	datad => \inst6|process_0~98_combout\,
	combout => \inst6|red[7]~52_combout\);

-- Location: LCCOMB_X80_Y33_N16
\inst6|red[7]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~72_combout\ = (\inst6|red[6]~71_combout\ & \inst6|red[7]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|red[6]~71_combout\,
	datad => \inst6|red[7]~52_combout\,
	combout => \inst6|red[7]~72_combout\);

-- Location: LCCOMB_X75_Y31_N30
\inst6|process_0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~120_combout\ = (\inst1|column\(3) & (\inst1|column\(2) & (!\inst1|column\(0) & \inst1|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(2),
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~120_combout\);

-- Location: LCCOMB_X79_Y33_N8
\inst6|process_0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~121_combout\ = (!\inst1|column\(6) & (\inst1|column\(5) & ((\inst6|process_0~120_combout\) # (\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|process_0~120_combout\,
	datac => \inst1|column\(5),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~121_combout\);

-- Location: LCCOMB_X79_Y33_N22
\inst6|process_0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~122_combout\ = (\inst1|column\(7) & ((\inst6|process_0~121_combout\) # ((\inst1|column\(6) & \inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(8),
	datac => \inst6|process_0~121_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~122_combout\);

-- Location: LCCOMB_X75_Y31_N20
\inst6|LessThan35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan35~0_combout\ = (\inst1|column\(3)) # ((\inst1|column\(4)) # ((\inst1|column\(1) & \inst1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst1|column\(3),
	datac => \inst1|column\(2),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan35~0_combout\);

-- Location: LCCOMB_X79_Y35_N0
\inst6|process_0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~123_combout\ = (!\inst1|column\(8) & (((!\inst6|LessThan35~0_combout\) # (!\inst1|column\(5))) # (!\inst6|process_0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~41_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(5),
	datad => \inst6|LessThan35~0_combout\,
	combout => \inst6|process_0~123_combout\);

-- Location: LCCOMB_X77_Y34_N14
\inst6|LessThan53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan53~0_combout\ = (\inst1|row\(4) & ((\inst1|row\(3)) # (\inst1|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(4),
	datac => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan53~0_combout\);

-- Location: LCCOMB_X79_Y35_N10
\inst6|LessThan27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~2_combout\ = (\inst1|row\(7) & ((\inst1|row\(6)) # ((\inst6|LessThan53~0_combout\ & \inst1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan53~0_combout\,
	datab => \inst1|row\(5),
	datac => \inst1|row\(6),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan27~2_combout\);

-- Location: LCCOMB_X76_Y34_N0
\inst6|LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~0_combout\ = (((!\inst1|row\(1) & \inst1|row\(0))) # (!\inst1|row\(2))) # (!\inst1|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst1|row\(1),
	datac => \inst1|row\(0),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan28~0_combout\);

-- Location: LCCOMB_X79_Y35_N22
\inst6|LessThan28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~1_combout\ = ((\inst6|LessThan28~0_combout\ & (!\inst1|row\(5) & !\inst1|row\(4)))) # (!\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan28~0_combout\,
	datab => \inst1|row\(5),
	datac => \inst1|row\(6),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan28~1_combout\);

-- Location: LCCOMB_X79_Y35_N24
\inst6|LessThan28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~2_combout\ = (\inst6|process_0~109_combout\ & (((\inst6|LessThan28~1_combout\ & !\inst1|row\(7))) # (!\inst1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan28~1_combout\,
	datab => \inst1|row\(8),
	datac => \inst6|process_0~109_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|LessThan28~2_combout\);

-- Location: LCCOMB_X79_Y35_N18
\inst6|process_0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~139_combout\ = (\inst6|LessThan28~2_combout\ & (\inst1|row\(31) & ((\inst6|LessThan27~2_combout\) # (!\inst6|LessThan27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan27~2_combout\,
	datab => \inst6|LessThan28~2_combout\,
	datac => \inst1|row\(31),
	datad => \inst6|LessThan27~1_combout\,
	combout => \inst6|process_0~139_combout\);

-- Location: LCCOMB_X79_Y35_N14
\inst6|process_0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~140_combout\ = (!\inst6|process_0~122_combout\ & (!\inst6|process_0~123_combout\ & (\inst6|process_0~92_combout\ & \inst6|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~122_combout\,
	datab => \inst6|process_0~123_combout\,
	datac => \inst6|process_0~92_combout\,
	datad => \inst6|process_0~139_combout\,
	combout => \inst6|process_0~140_combout\);

-- Location: LCCOMB_X75_Y31_N22
\inst6|process_0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~125_combout\ = (\inst6|LessThan59~0_combout\ & ((\inst1|column\(2)) # ((!\inst1|column\(0) & \inst1|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan59~0_combout\,
	datab => \inst1|column\(2),
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~125_combout\);

-- Location: LCCOMB_X76_Y32_N22
\inst6|process_0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~126_combout\ = (!\inst1|column\(8) & (\inst1|column\(7) & ((\inst6|process_0~125_combout\) # (!\inst6|LessThan61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~125_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(7),
	datad => \inst6|LessThan61~0_combout\,
	combout => \inst6|process_0~126_combout\);

-- Location: LCCOMB_X77_Y32_N30
\inst6|process_0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~127_combout\ = ((\inst1|column\(10)) # ((\inst1|column\(9) & \inst1|column\(8)))) # (!\inst6|process_0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~35_combout\,
	datac => \inst1|column\(10),
	datad => \inst1|column\(8),
	combout => \inst6|process_0~127_combout\);

-- Location: LCCOMB_X75_Y31_N0
\inst6|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~45_combout\ = (!\inst1|column\(3) & (!\inst1|column\(2) & !\inst1|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(3),
	datac => \inst1|column\(2),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~45_combout\);

-- Location: LCCOMB_X76_Y31_N6
\inst6|process_0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~128_combout\ = ((!\inst1|column\(5) & ((\inst6|process_0~45_combout\) # (!\inst1|column\(4))))) # (!\inst6|process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~45_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(4),
	datad => \inst6|process_0~41_combout\,
	combout => \inst6|process_0~128_combout\);

-- Location: LCCOMB_X76_Y32_N16
\inst6|process_0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~129_combout\ = (\inst6|process_0~126_combout\) # ((\inst6|process_0~127_combout\) # ((!\inst1|column\(9) & \inst6|process_0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~126_combout\,
	datab => \inst1|column\(9),
	datac => \inst6|process_0~127_combout\,
	datad => \inst6|process_0~128_combout\,
	combout => \inst6|process_0~129_combout\);

-- Location: LCCOMB_X76_Y33_N0
\inst6|process_0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~133_combout\ = (\inst1|column\(11)) # (((\inst1|column\(10) & \inst1|column\(8))) # (!\inst1|column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(8),
	datac => \inst1|column\(11),
	datad => \inst1|column\(31),
	combout => \inst6|process_0~133_combout\);

-- Location: LCCOMB_X75_Y34_N4
\inst6|process_0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~134_combout\ = (\inst1|column\(5) & ((\inst1|column\(4)) # ((\inst1|column\(3)) # (\inst6|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(3),
	datac => \inst1|column\(5),
	datad => \inst6|LessThan8~0_combout\,
	combout => \inst6|process_0~134_combout\);

-- Location: LCCOMB_X75_Y34_N20
\inst6|process_0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~135_combout\ = (!\inst1|column\(8) & ((\inst1|column\(9)) # ((\inst6|process_0~134_combout\) # (!\inst6|process_0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~134_combout\,
	datac => \inst1|column\(8),
	datad => \inst6|process_0~76_combout\,
	combout => \inst6|process_0~135_combout\);

-- Location: LCCOMB_X76_Y31_N16
\inst6|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~42_combout\ = (!\inst1|column\(5) & (((!\inst1|column\(3)) # (!\inst1|column\(4))) # (!\inst1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst1|column\(3),
	combout => \inst6|process_0~42_combout\);

-- Location: LCCOMB_X75_Y34_N10
\inst6|process_0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~136_combout\ = ((!\inst1|column\(7) & ((\inst6|process_0~42_combout\) # (!\inst1|column\(6))))) # (!\inst1|column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~42_combout\,
	datac => \inst1|column\(7),
	datad => \inst1|column\(6),
	combout => \inst6|process_0~136_combout\);

-- Location: LCCOMB_X75_Y34_N0
\inst6|process_0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~137_combout\ = (\inst6|process_0~133_combout\) # ((\inst6|process_0~135_combout\) # ((!\inst1|column\(10) & \inst6|process_0~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~133_combout\,
	datab => \inst6|process_0~135_combout\,
	datac => \inst1|column\(10),
	datad => \inst6|process_0~136_combout\,
	combout => \inst6|process_0~137_combout\);

-- Location: LCCOMB_X80_Y35_N24
\inst6|blue[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~5_combout\ = (\inst6|process_0~139_combout\ & ((\inst6|columnNum\(0) & ((!\inst6|process_0~129_combout\))) # (!\inst6|columnNum\(0) & (!\inst6|process_0~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~139_combout\,
	datab => \inst6|process_0~137_combout\,
	datac => \inst6|process_0~129_combout\,
	datad => \inst6|columnNum\(0),
	combout => \inst6|blue[7]~5_combout\);

-- Location: LCCOMB_X77_Y36_N4
\inst6|blue[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~6_combout\ = (\inst6|columnNum\(1) & (((!\inst6|columnNum\(0))))) # (!\inst6|columnNum\(1) & (\inst6|blue[7]~5_combout\ & ((!\inst6|columnNum\(0)) # (!\inst6|process_0~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~129_combout\,
	datab => \inst6|columnNum\(0),
	datac => \inst6|blue[7]~5_combout\,
	datad => \inst6|columnNum\(1),
	combout => \inst6|blue[7]~6_combout\);

-- Location: LCCOMB_X76_Y34_N30
\inst6|LessThan38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~0_combout\ = (\inst1|row\(0) & (!\inst1|row\(2) & !\inst1|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(0),
	datab => \inst1|row\(2),
	datad => \inst1|row\(1),
	combout => \inst6|LessThan38~0_combout\);

-- Location: LCCOMB_X76_Y34_N12
\inst6|LessThan30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~0_combout\ = ((!\inst1|row\(4) & ((\inst6|LessThan38~0_combout\) # (!\inst1|row\(3))))) # (!\inst6|process_0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan38~0_combout\,
	datab => \inst1|row\(4),
	datac => \inst1|row\(3),
	datad => \inst6|process_0~25_combout\,
	combout => \inst6|LessThan30~0_combout\);

-- Location: LCCOMB_X80_Y35_N6
\inst6|LessThan30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~1_combout\ = ((\inst6|LessThan30~0_combout\ & (!\inst1|row\(8) & !\inst1|row\(7)))) # (!\inst1|row\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan30~0_combout\,
	datab => \inst1|row\(8),
	datac => \inst1|row\(9),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan30~1_combout\);

-- Location: LCCOMB_X79_Y35_N20
\inst6|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~0_combout\ = (\inst1|row\(8) & (\inst1|row\(7) & ((\inst1|row\(5)) # (\inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(5),
	datac => \inst1|row\(7),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan29~0_combout\);

-- Location: LCCOMB_X79_Y35_N6
\inst6|process_0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~130_combout\ = (\inst1|row\(31) & (((\inst6|LessThan29~0_combout\ & \inst1|row\(6))) # (!\inst6|process_0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|LessThan29~0_combout\,
	datac => \inst6|process_0~109_combout\,
	datad => \inst1|row\(6),
	combout => \inst6|process_0~130_combout\);

-- Location: LCCOMB_X80_Y35_N0
\inst6|process_0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~131_combout\ = (\inst6|process_0~130_combout\ & (((\inst6|LessThan30~1_combout\ & !\inst1|row\(10))) # (!\inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan30~1_combout\,
	datab => \inst1|row\(31),
	datac => \inst6|process_0~130_combout\,
	datad => \inst1|row\(10),
	combout => \inst6|process_0~131_combout\);

-- Location: LCCOMB_X77_Y36_N26
\inst6|process_0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~141_combout\ = (!\inst6|process_0~129_combout\ & \inst6|process_0~131_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~129_combout\,
	datac => \inst6|process_0~131_combout\,
	combout => \inst6|process_0~141_combout\);

-- Location: LCCOMB_X77_Y36_N12
\inst6|blue[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~1_combout\ = (\inst6|blue[7]~6_combout\ & (((\inst6|process_0~141_combout\) # (!\inst6|columnNum\(1))))) # (!\inst6|blue[7]~6_combout\ & (\inst6|process_0~140_combout\ & ((\inst6|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~140_combout\,
	datab => \inst6|blue[7]~6_combout\,
	datac => \inst6|process_0~141_combout\,
	datad => \inst6|columnNum\(1),
	combout => \inst6|blue[7]~1_combout\);

-- Location: LCCOMB_X80_Y35_N22
\inst6|process_0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~138_combout\ = (\inst6|process_0~131_combout\ & !\inst6|process_0~137_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~131_combout\,
	datad => \inst6|process_0~137_combout\,
	combout => \inst6|process_0~138_combout\);

-- Location: LCCOMB_X80_Y35_N12
\inst6|process_0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~132_combout\ = (\inst6|process_0~92_combout\ & (!\inst6|process_0~122_combout\ & (!\inst6|process_0~123_combout\ & \inst6|process_0~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~92_combout\,
	datab => \inst6|process_0~122_combout\,
	datac => \inst6|process_0~123_combout\,
	datad => \inst6|process_0~131_combout\,
	combout => \inst6|process_0~132_combout\);

-- Location: LCCOMB_X80_Y35_N10
\inst6|blue[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~0_combout\ = (\inst6|columnNum\(1) & (((!\inst6|columnNum\(0))))) # (!\inst6|columnNum\(1) & ((\inst6|columnNum\(0) & (\inst6|process_0~138_combout\)) # (!\inst6|columnNum\(0) & ((\inst6|process_0~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~138_combout\,
	datab => \inst6|process_0~132_combout\,
	datac => \inst6|columnNum\(1),
	datad => \inst6|columnNum\(0),
	combout => \inst6|blue[7]~0_combout\);

-- Location: LCCOMB_X79_Y33_N28
\inst6|LessThan37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~0_combout\ = (\inst1|row\(7) & ((\inst1|row\(4)) # ((\inst1|row\(2) & \inst1|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(7),
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan37~0_combout\);

-- Location: LCCOMB_X79_Y33_N14
\inst6|LessThan37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~1_combout\ = (\inst1|row\(9) & ((\inst1|row\(8)) # ((\inst6|process_0~25_combout\ & \inst6|LessThan37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~25_combout\,
	datab => \inst6|LessThan37~0_combout\,
	datac => \inst1|row\(9),
	datad => \inst1|row\(8),
	combout => \inst6|LessThan37~1_combout\);

-- Location: LCCOMB_X76_Y34_N28
\inst6|LessThan38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~1_combout\ = (!\inst1|row\(3) & (((!\inst1|row\(1) & \inst1|row\(0))) # (!\inst1|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst1|row\(1),
	datac => \inst1|row\(2),
	datad => \inst1|row\(0),
	combout => \inst6|LessThan38~1_combout\);

-- Location: LCCOMB_X79_Y33_N24
\inst6|LessThan38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~2_combout\ = ((\inst6|process_0~28_combout\ & (\inst6|LessThan38~1_combout\ & !\inst1|row\(4)))) # (!\inst6|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~28_combout\,
	datab => \inst6|LessThan4~1_combout\,
	datac => \inst6|LessThan38~1_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan38~2_combout\);

-- Location: LCCOMB_X79_Y33_N6
\inst6|process_0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~119_combout\ = (\inst1|row\(31) & (\inst6|LessThan37~1_combout\ & (!\inst1|row\(10) & \inst6|LessThan38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|LessThan37~1_combout\,
	datac => \inst1|row\(10),
	datad => \inst6|LessThan38~2_combout\,
	combout => \inst6|process_0~119_combout\);

-- Location: LCCOMB_X80_Y35_N18
\inst6|blue[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~7_combout\ = (\inst6|columnNum\(1) & (\inst6|process_0~119_combout\ & ((!\inst6|process_0~137_combout\) # (!\inst6|blue[7]~0_combout\)))) # (!\inst6|columnNum\(1) & (((\inst6|blue[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~119_combout\,
	datab => \inst6|blue[7]~0_combout\,
	datac => \inst6|columnNum\(1),
	datad => \inst6|process_0~137_combout\,
	combout => \inst6|blue[7]~7_combout\);

-- Location: LCCOMB_X79_Y35_N28
\inst6|blue[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~8_combout\ = (\inst6|blue[7]~7_combout\ & ((\inst6|blue[7]~0_combout\) # (!\inst6|process_0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~129_combout\,
	datac => \inst6|blue[7]~0_combout\,
	datad => \inst6|blue[7]~7_combout\,
	combout => \inst6|blue[7]~8_combout\);

-- Location: LCCOMB_X77_Y36_N6
\inst6|blue[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~2_combout\ = (\inst6|columnNum\(3) & ((\inst6|columnNum\(2) & ((\inst6|blue[7]~8_combout\))) # (!\inst6|columnNum\(2) & (\inst6|blue[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~1_combout\,
	datab => \inst6|blue[7]~8_combout\,
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(2),
	combout => \inst6|blue[7]~2_combout\);

-- Location: LCCOMB_X79_Y33_N10
\inst6|process_0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~124_combout\ = (\inst6|process_0~119_combout\ & (\inst6|process_0~92_combout\ & (!\inst6|process_0~122_combout\ & !\inst6|process_0~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~119_combout\,
	datab => \inst6|process_0~92_combout\,
	datac => \inst6|process_0~122_combout\,
	datad => \inst6|process_0~123_combout\,
	combout => \inst6|process_0~124_combout\);

-- Location: LCCOMB_X80_Y33_N30
\inst6|red[6]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~80_combout\ = (\inst6|columnNum\(3) & (!\inst6|blue[7]~2_combout\)) # (!\inst6|columnNum\(3) & (((!\inst6|blue[7]~2_combout\ & !\inst6|Equal62~0_combout\)) # (!\inst6|process_0~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~2_combout\,
	datab => \inst6|process_0~124_combout\,
	datac => \inst6|Equal62~0_combout\,
	datad => \inst6|columnNum\(3),
	combout => \inst6|red[6]~80_combout\);

-- Location: LCCOMB_X75_Y31_N26
\inst6|process_0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~63_combout\ = (((\inst1|column\(0)) # (!\inst1|column\(1))) # (!\inst1|column\(2))) # (!\inst6|LessThan59~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan59~0_combout\,
	datab => \inst1|column\(2),
	datac => \inst1|column\(0),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~63_combout\);

-- Location: LCCOMB_X75_Y31_N16
\inst6|process_0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~64_combout\ = (\inst1|column\(6) & (\inst6|process_0~63_combout\ & (!\inst1|column\(5)))) # (!\inst1|column\(6) & (((\inst1|column\(5)) # (\inst6|LessThan35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~63_combout\,
	datab => \inst1|column\(6),
	datac => \inst1|column\(5),
	datad => \inst6|LessThan35~0_combout\,
	combout => \inst6|process_0~64_combout\);

-- Location: LCCOMB_X77_Y35_N18
\inst6|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~24_combout\ = (!\inst1|row\(8) & (!\inst1|row\(10) & (!\inst1|row\(7) & !\inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(10),
	datac => \inst1|row\(7),
	datad => \inst1|row\(9),
	combout => \inst6|process_0~24_combout\);

-- Location: LCCOMB_X75_Y35_N20
\inst6|LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~0_combout\ = (!\inst1|row\(2) & (!\inst1|row\(3) & !\inst1|row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(2),
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan27~0_combout\);

-- Location: LCCOMB_X76_Y35_N14
\inst6|LessThan45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan45~0_combout\ = ((\inst6|process_0~24_combout\ & ((\inst6|LessThan27~0_combout\) # (!\inst6|process_0~25_combout\)))) # (!\inst1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|process_0~24_combout\,
	datac => \inst6|process_0~25_combout\,
	datad => \inst6|LessThan27~0_combout\,
	combout => \inst6|LessThan45~0_combout\);

-- Location: LCCOMB_X76_Y35_N4
\inst6|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~36_combout\ = (!\inst1|column\(10) & (\inst6|process_0~35_combout\ & (\inst6|LessThan45~0_combout\ & !\inst1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|process_0~35_combout\,
	datac => \inst6|LessThan45~0_combout\,
	datad => \inst1|column\(9),
	combout => \inst6|process_0~36_combout\);

-- Location: LCCOMB_X77_Y35_N14
\inst6|LessThan42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan42~0_combout\ = (\inst1|row\(6)) # ((\inst1|row\(7)) # (\inst1|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(7),
	datac => \inst1|row\(5),
	combout => \inst6|LessThan42~0_combout\);

-- Location: LCCOMB_X76_Y35_N2
\inst6|LessThan42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan42~1_combout\ = (\inst1|row\(31) & (((\inst6|LessThan42~0_combout\) # (!\inst6|LessThan27~1_combout\)) # (!\inst6|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|LessThan18~0_combout\,
	datac => \inst6|LessThan42~0_combout\,
	datad => \inst6|LessThan27~1_combout\,
	combout => \inst6|LessThan42~1_combout\);

-- Location: LCCOMB_X76_Y35_N10
\inst6|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~37_combout\ = (!\inst1|column\(8) & (\inst6|process_0~36_combout\ & (!\inst1|column\(7) & \inst6|LessThan42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|process_0~36_combout\,
	datac => \inst1|column\(7),
	datad => \inst6|LessThan42~1_combout\,
	combout => \inst6|process_0~37_combout\);

-- Location: LCCOMB_X75_Y33_N22
\inst6|LessThan40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan40~0_combout\ = (!\inst1|column\(10) & (!\inst1|column\(11) & (!\inst1|column\(9) & !\inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(11),
	datac => \inst1|column\(9),
	datad => \inst1|column\(8),
	combout => \inst6|LessThan40~0_combout\);

-- Location: LCCOMB_X75_Y33_N10
\inst6|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~44_combout\ = (\inst6|LessThan40~0_combout\ & !\inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan40~0_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~44_combout\);

-- Location: LCCOMB_X76_Y31_N10
\inst6|LessThan40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan40~1_combout\ = (\inst6|LessThan40~0_combout\ & (((!\inst1|column\(6) & \inst6|LessThan9~0_combout\)) # (!\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(7),
	datac => \inst6|LessThan40~0_combout\,
	datad => \inst6|LessThan9~0_combout\,
	combout => \inst6|LessThan40~1_combout\);

-- Location: LCCOMB_X75_Y33_N12
\inst6|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~46_combout\ = (\inst1|column\(31) & \inst6|LessThan40~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(31),
	datad => \inst6|LessThan40~1_combout\,
	combout => \inst6|process_0~46_combout\);

-- Location: LCCOMB_X75_Y33_N14
\inst6|process_0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~71_combout\ = (\inst6|process_0~46_combout\ & (((\inst6|LessThan59~0_combout\ & \inst6|LessThan59~1_combout\)) # (!\inst6|process_0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~44_combout\,
	datab => \inst6|LessThan59~0_combout\,
	datac => \inst6|LessThan59~1_combout\,
	datad => \inst6|process_0~46_combout\,
	combout => \inst6|process_0~71_combout\);

-- Location: LCCOMB_X76_Y34_N22
\inst6|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~33_combout\ = (!\inst1|row\(5) & (((\inst1|row\(0) & \inst6|LessThan24~0_combout\)) # (!\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(0),
	datac => \inst1|row\(5),
	datad => \inst6|LessThan24~0_combout\,
	combout => \inst6|process_0~33_combout\);

-- Location: LCCOMB_X75_Y35_N10
\inst6|LessThan56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan56~0_combout\ = (\inst1|row\(31) & (((\inst1|row\(6) & !\inst6|process_0~33_combout\)) # (!\inst6|process_0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~24_combout\,
	datab => \inst1|row\(31),
	datac => \inst1|row\(6),
	datad => \inst6|process_0~33_combout\,
	combout => \inst6|LessThan56~0_combout\);

-- Location: LCCOMB_X76_Y33_N30
\inst6|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~26_combout\ = (!\inst1|column\(10) & (!\inst1|column\(11) & (!\inst1|column\(9) & \inst1|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(11),
	datac => \inst1|column\(9),
	datad => \inst1|column\(31),
	combout => \inst6|process_0~26_combout\);

-- Location: LCCOMB_X76_Y35_N26
\inst6|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~27_combout\ = (\inst6|LessThan16~1_combout\ & (\inst6|process_0~26_combout\ & (\inst6|LessThan45~0_combout\ & \inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan16~1_combout\,
	datab => \inst6|process_0~26_combout\,
	datac => \inst6|LessThan45~0_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~27_combout\);

-- Location: LCCOMB_X75_Y35_N24
\inst6|process_0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~171_combout\ = (\inst6|LessThan56~0_combout\ & (\inst6|process_0~27_combout\ & ((\inst1|column\(5)) # (\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan56~0_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(6),
	datad => \inst6|process_0~27_combout\,
	combout => \inst6|process_0~171_combout\);

-- Location: LCCOMB_X76_Y31_N22
\inst6|LessThan75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan75~1_combout\ = ((!\inst1|column\(2) & (!\inst1|column\(4) & !\inst1|column\(3)))) # (!\inst1|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst1|column\(3),
	combout => \inst6|LessThan75~1_combout\);

-- Location: LCCOMB_X74_Y33_N30
\inst6|process_0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~69_combout\ = (\inst6|process_0~26_combout\ & (((!\inst1|column\(6) & \inst6|LessThan75~1_combout\)) # (!\inst6|process_0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~68_combout\,
	datab => \inst1|column\(6),
	datac => \inst6|LessThan75~1_combout\,
	datad => \inst6|process_0~26_combout\,
	combout => \inst6|process_0~69_combout\);

-- Location: LCCOMB_X76_Y32_N24
\inst6|LessThan49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan49~0_combout\ = (\inst6|LessThan2~0_combout\) # (\inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~0_combout\,
	datad => \inst1|column\(4),
	combout => \inst6|LessThan49~0_combout\);

-- Location: LCCOMB_X76_Y32_N4
\inst6|LessThan74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan74~0_combout\ = (\inst1|column\(8) & ((\inst1|column\(7)) # ((\inst6|LessThan49~0_combout\ & \inst6|LessThan59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan49~0_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(7),
	datad => \inst6|LessThan59~1_combout\,
	combout => \inst6|LessThan74~0_combout\);

-- Location: LCCOMB_X77_Y35_N26
\inst6|process_0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~70_combout\ = (\inst6|process_0~69_combout\ & ((\inst6|LessThan74~0_combout\) # (\inst1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~69_combout\,
	datac => \inst6|LessThan74~0_combout\,
	datad => \inst1|column\(9),
	combout => \inst6|process_0~70_combout\);

-- Location: LCCOMB_X77_Y34_N18
\inst6|LessThan41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan41~0_combout\ = (\inst6|process_0~28_combout\ & (\inst6|process_0~24_combout\ & ((\inst6|LessThan38~0_combout\) # (!\inst6|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan38~0_combout\,
	datab => \inst6|LessThan13~0_combout\,
	datac => \inst6|process_0~28_combout\,
	datad => \inst6|process_0~24_combout\,
	combout => \inst6|LessThan41~0_combout\);

-- Location: LCCOMB_X76_Y35_N18
\inst6|process_0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~48_combout\ = (\inst6|LessThan42~1_combout\ & ((\inst6|LessThan41~0_combout\) # (!\inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan42~1_combout\,
	datac => \inst1|row\(31),
	datad => \inst6|LessThan41~0_combout\,
	combout => \inst6|process_0~48_combout\);

-- Location: LCCOMB_X77_Y33_N8
\inst6|process_0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~66_combout\ = ((!\inst1|column\(5) & ((!\inst6|LessThan59~0_combout\) # (!\inst6|LessThan8~0_combout\)))) # (!\inst6|process_0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|LessThan8~0_combout\,
	datac => \inst6|LessThan59~0_combout\,
	datad => \inst6|process_0~26_combout\,
	combout => \inst6|process_0~66_combout\);

-- Location: LCCOMB_X77_Y33_N10
\inst6|process_0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~67_combout\ = (\inst6|process_0~65_combout\) # ((\inst1|column\(8)) # ((\inst6|process_0~66_combout\) # (!\inst6|process_0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~65_combout\,
	datab => \inst1|column\(8),
	datac => \inst6|process_0~41_combout\,
	datad => \inst6|process_0~66_combout\,
	combout => \inst6|process_0~67_combout\);

-- Location: LCCOMB_X76_Y35_N24
\inst6|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~34_combout\ = (\inst6|LessThan45~0_combout\ & \inst6|LessThan56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan45~0_combout\,
	datad => \inst6|LessThan56~0_combout\,
	combout => \inst6|process_0~34_combout\);

-- Location: LCCOMB_X77_Y35_N10
\inst6|red[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~40_combout\ = (\inst6|process_0~70_combout\ & (!\inst6|process_0~34_combout\ & ((\inst6|process_0~67_combout\) # (!\inst6|process_0~48_combout\)))) # (!\inst6|process_0~70_combout\ & (((\inst6|process_0~67_combout\)) # 
-- (!\inst6|process_0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~70_combout\,
	datab => \inst6|process_0~48_combout\,
	datac => \inst6|process_0~67_combout\,
	datad => \inst6|process_0~34_combout\,
	combout => \inst6|red[6]~40_combout\);

-- Location: LCCOMB_X76_Y35_N6
\inst6|red[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~41_combout\ = (!\inst6|process_0~171_combout\ & (\inst6|red[6]~40_combout\ & ((!\inst6|process_0~34_combout\) # (!\inst6|process_0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~71_combout\,
	datab => \inst6|process_0~171_combout\,
	datac => \inst6|red[6]~40_combout\,
	datad => \inst6|process_0~34_combout\,
	combout => \inst6|red[6]~41_combout\);

-- Location: LCCOMB_X76_Y34_N8
\inst6|process_0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~82_combout\ = (\inst1|row\(3) & (\inst1|row\(4) & ((\inst1|row\(1)) # (\inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst1|row\(1),
	datac => \inst1|row\(4),
	datad => \inst1|row\(2),
	combout => \inst6|process_0~82_combout\);

-- Location: LCCOMB_X76_Y34_N6
\inst6|process_0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~83_combout\ = (\inst1|row\(5) & (((\inst6|LessThan24~0_combout\)) # (!\inst1|row\(4)))) # (!\inst1|row\(5) & (((\inst6|process_0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(5),
	datac => \inst6|process_0~82_combout\,
	datad => \inst6|LessThan24~0_combout\,
	combout => \inst6|process_0~83_combout\);

-- Location: LCCOMB_X75_Y33_N30
\inst6|process_0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~84_combout\ = (\inst6|process_0~83_combout\ & (\inst6|process_0~26_combout\ & ((\inst1|column\(9)) # (\inst6|LessThan74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~83_combout\,
	datac => \inst6|process_0~26_combout\,
	datad => \inst6|LessThan74~0_combout\,
	combout => \inst6|process_0~84_combout\);

-- Location: LCCOMB_X77_Y35_N2
\inst6|process_0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~78_combout\ = (\inst1|row\(31) & \inst6|process_0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(31),
	datad => \inst6|process_0~24_combout\,
	combout => \inst6|process_0~78_combout\);

-- Location: LCCOMB_X75_Y35_N16
\inst6|process_0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~177_combout\ = (\inst1|column\(3) & ((!\inst1|column\(4)))) # (!\inst1|column\(3) & ((\inst6|LessThan8~0_combout\) # (\inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan8~0_combout\,
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~177_combout\);

-- Location: LCCOMB_X75_Y35_N8
\inst6|process_0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~170_combout\ = (\inst1|column\(6) & (\inst1|column\(5) & (\inst6|process_0~37_combout\ & \inst6|process_0~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(5),
	datac => \inst6|process_0~37_combout\,
	datad => \inst6|process_0~177_combout\,
	combout => \inst6|process_0~170_combout\);

-- Location: LCCOMB_X79_Y34_N24
\inst6|process_0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~79_combout\ = (\inst1|row\(5) & (!\inst1|row\(6) & (\inst1|row\(3) & \inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(6),
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst6|process_0~79_combout\);

-- Location: LCCOMB_X76_Y34_N10
\inst6|process_0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~80_combout\ = (\inst1|row\(6) & ((\inst6|process_0~33_combout\) # ((\inst6|process_0~79_combout\ & \inst1|row\(2))))) # (!\inst1|row\(6) & (((\inst6|process_0~79_combout\ & \inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst6|process_0~33_combout\,
	datac => \inst6|process_0~79_combout\,
	datad => \inst1|row\(2),
	combout => \inst6|process_0~80_combout\);

-- Location: LCCOMB_X75_Y33_N20
\inst6|LessThan39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan39~0_combout\ = (\inst1|column\(5)) # ((\inst1|column\(4) & ((!\inst6|process_0~45_combout\) # (!\inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(5),
	datac => \inst6|process_0~45_combout\,
	datad => \inst1|column\(4),
	combout => \inst6|LessThan39~0_combout\);

-- Location: LCCOMB_X74_Y33_N24
\inst6|process_0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~81_combout\ = (\inst6|process_0~69_combout\ & (\inst6|process_0~68_combout\ & ((\inst6|LessThan39~0_combout\) # (\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan39~0_combout\,
	datab => \inst1|column\(6),
	datac => \inst6|process_0~69_combout\,
	datad => \inst6|process_0~68_combout\,
	combout => \inst6|process_0~81_combout\);

-- Location: LCCOMB_X75_Y33_N28
\inst6|red[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~44_combout\ = (!\inst6|process_0~170_combout\ & (((!\inst6|process_0~81_combout\) # (!\inst6|process_0~80_combout\)) # (!\inst6|process_0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~78_combout\,
	datab => \inst6|process_0~170_combout\,
	datac => \inst6|process_0~80_combout\,
	datad => \inst6|process_0~81_combout\,
	combout => \inst6|red[6]~44_combout\);

-- Location: LCCOMB_X74_Y33_N6
\inst6|process_0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~86_combout\ = (!\inst1|column\(7) & (((!\inst1|column\(3) & !\inst1|column\(2))) # (!\inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(2),
	datac => \inst1|column\(4),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~86_combout\);

-- Location: LCCOMB_X76_Y35_N20
\inst6|process_0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~77_combout\ = (\inst6|LessThan42~1_combout\ & (\inst6|process_0~36_combout\ & (\inst1|column\(8) & !\inst1|column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan42~1_combout\,
	datab => \inst6|process_0~36_combout\,
	datac => \inst1|column\(8),
	datad => \inst1|column\(5),
	combout => \inst6|process_0~77_combout\);

-- Location: LCCOMB_X75_Y33_N26
\inst6|process_0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~175_combout\ = (\inst6|process_0~86_combout\ & (\inst6|process_0~77_combout\ & ((\inst1|column\(6)) # (\inst1|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|process_0~86_combout\,
	datac => \inst6|process_0~77_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~175_combout\);

-- Location: LCCOMB_X75_Y33_N16
\inst6|process_0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~174_combout\ = (((!\inst1|column\(4)) # (!\inst6|LessThan59~1_combout\)) # (!\inst1|column\(2))) # (!\inst1|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(2),
	datac => \inst6|LessThan59~1_combout\,
	datad => \inst1|column\(4),
	combout => \inst6|process_0~174_combout\);

-- Location: LCCOMB_X75_Y33_N24
\inst6|process_0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~85_combout\ = (\inst6|process_0~78_combout\ & (\inst6|process_0~174_combout\ & (!\inst1|row\(6) & !\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~78_combout\,
	datab => \inst6|process_0~174_combout\,
	datac => \inst1|row\(6),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~85_combout\);

-- Location: LCCOMB_X75_Y33_N18
\inst6|red[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~45_combout\ = (\inst6|red[6]~44_combout\ & (!\inst6|process_0~175_combout\ & ((!\inst6|process_0~85_combout\) # (!\inst6|process_0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~84_combout\,
	datab => \inst6|red[6]~44_combout\,
	datac => \inst6|process_0~175_combout\,
	datad => \inst6|process_0~85_combout\,
	combout => \inst6|red[6]~45_combout\);

-- Location: LCCOMB_X77_Y33_N12
\inst6|process_0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~88_combout\ = (!\inst1|column\(8) & (\inst6|LessThan7~0_combout\ & \inst1|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(8),
	datac => \inst6|LessThan7~0_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~88_combout\);

-- Location: LCCOMB_X76_Y35_N30
\inst6|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~40_combout\ = (\inst6|process_0~26_combout\ & (\inst6|LessThan45~0_combout\ & \inst6|LessThan42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~26_combout\,
	datac => \inst6|LessThan45~0_combout\,
	datad => \inst6|LessThan42~1_combout\,
	combout => \inst6|process_0~40_combout\);

-- Location: LCCOMB_X77_Y35_N8
\inst6|process_0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~49_combout\ = (\inst6|process_0~24_combout\ & (\inst1|row\(31) & ((\inst6|LessThan42~0_combout\) # (!\inst6|LessThan18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~24_combout\,
	datab => \inst6|LessThan42~0_combout\,
	datac => \inst1|row\(31),
	datad => \inst6|LessThan18~0_combout\,
	combout => \inst6|process_0~49_combout\);

-- Location: LCCOMB_X77_Y35_N0
\inst6|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~38_combout\ = (\inst1|row\(31) & (\inst6|process_0~24_combout\ & (\inst1|row\(5) & !\inst1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|process_0~24_combout\,
	datac => \inst1|row\(5),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~38_combout\);

-- Location: LCCOMB_X77_Y35_N4
\inst6|process_0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~87_combout\ = (\inst6|process_0~38_combout\ & ((\inst1|row\(4) & ((!\inst1|row\(3)) # (!\inst1|row\(2)))) # (!\inst1|row\(4) & ((\inst1|row\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst6|process_0~38_combout\,
	datac => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|process_0~87_combout\);

-- Location: LCCOMB_X77_Y35_N24
\inst6|red[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~46_combout\ = ((!\inst6|process_0~87_combout\ & ((!\inst6|LessThan10~0_combout\) # (!\inst6|process_0~49_combout\)))) # (!\inst6|process_0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~70_combout\,
	datab => \inst6|process_0~49_combout\,
	datac => \inst6|process_0~87_combout\,
	datad => \inst6|LessThan10~0_combout\,
	combout => \inst6|red[6]~46_combout\);

-- Location: LCCOMB_X77_Y33_N6
\inst6|process_0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~89_combout\ = (\inst1|column\(6)) # ((\inst6|process_0~65_combout\ & ((\inst1|column\(2)) # (\inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(3),
	datac => \inst1|column\(6),
	datad => \inst6|process_0~65_combout\,
	combout => \inst6|process_0~89_combout\);

-- Location: LCCOMB_X77_Y33_N14
\inst6|red[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~47_combout\ = (\inst6|red[6]~46_combout\ & (((!\inst6|process_0~89_combout\) # (!\inst6|process_0~40_combout\)) # (!\inst6|process_0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~88_combout\,
	datab => \inst6|process_0~40_combout\,
	datac => \inst6|red[6]~46_combout\,
	datad => \inst6|process_0~89_combout\,
	combout => \inst6|red[6]~47_combout\);

-- Location: LCCOMB_X76_Y35_N22
\inst6|process_0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~173_combout\ = (\inst6|process_0~177_combout\ & (!\inst1|column\(7) & (!\inst1|column\(6) & \inst6|process_0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~177_combout\,
	datab => \inst1|column\(7),
	datac => \inst1|column\(6),
	datad => \inst6|process_0~77_combout\,
	combout => \inst6|process_0~173_combout\);

-- Location: LCCOMB_X77_Y32_N10
\inst6|process_0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~73_combout\ = (\inst6|process_0~36_combout\ & (\inst1|column\(7) & ((\inst6|LessThan13~2_combout\) # (\inst1|row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan13~2_combout\,
	datab => \inst6|process_0~36_combout\,
	datac => \inst1|row\(7),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~73_combout\);

-- Location: LCCOMB_X76_Y31_N24
\inst6|process_0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~72_combout\ = (!\inst1|column\(8) & ((\inst1|column\(4)) # ((\inst1|column\(2) & \inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	datad => \inst1|column\(8),
	combout => \inst6|process_0~72_combout\);

-- Location: LCCOMB_X76_Y32_N14
\inst6|process_0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~74_combout\ = (\inst6|LessThan61~0_combout\ & (\inst1|row\(31) & (\inst6|process_0~73_combout\ & \inst6|process_0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan61~0_combout\,
	datab => \inst1|row\(31),
	datac => \inst6|process_0~73_combout\,
	datad => \inst6|process_0~72_combout\,
	combout => \inst6|process_0~74_combout\);

-- Location: LCCOMB_X77_Y35_N6
\inst6|LessThan48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan48~0_combout\ = (\inst1|row\(5) & ((\inst1|row\(4)) # ((!\inst6|LessThan38~0_combout\ & \inst1|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan38~0_combout\,
	datac => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan48~0_combout\);

-- Location: LCCOMB_X77_Y35_N16
\inst6|LessThan48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan48~1_combout\ = (\inst1|row\(31) & ((\inst6|LessThan48~0_combout\) # ((\inst1|row\(6)) # (!\inst6|process_0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan48~0_combout\,
	datab => \inst6|process_0~24_combout\,
	datac => \inst1|row\(31),
	datad => \inst1|row\(6),
	combout => \inst6|LessThan48~1_combout\);

-- Location: LCCOMB_X77_Y35_N20
\inst6|red[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~42_combout\ = (!\inst6|process_0~74_combout\ & (((\inst6|process_0~67_combout\) # (!\inst6|LessThan45~0_combout\)) # (!\inst6|LessThan48~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~74_combout\,
	datab => \inst6|LessThan48~1_combout\,
	datac => \inst6|process_0~67_combout\,
	datad => \inst6|LessThan45~0_combout\,
	combout => \inst6|red[6]~42_combout\);

-- Location: LCCOMB_X75_Y34_N16
\inst6|process_0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~172_combout\ = (\inst6|process_0~75_combout\ & ((\inst1|column\(5)) # ((\inst1|column\(3) & \inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst6|process_0~75_combout\,
	datac => \inst1|column\(5),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~172_combout\);

-- Location: LCCOMB_X76_Y35_N12
\inst6|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~29_combout\ = (\inst6|process_0~26_combout\ & (\inst6|LessThan42~1_combout\ & ((\inst6|LessThan41~0_combout\) # (!\inst1|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~26_combout\,
	datab => \inst6|LessThan42~1_combout\,
	datac => \inst1|row\(31),
	datad => \inst6|LessThan41~0_combout\,
	combout => \inst6|process_0~29_combout\);

-- Location: LCCOMB_X76_Y35_N0
\inst6|red[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~43_combout\ = (!\inst6|process_0~173_combout\ & (\inst6|red[6]~42_combout\ & ((!\inst6|process_0~29_combout\) # (!\inst6|process_0~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~173_combout\,
	datab => \inst6|red[6]~42_combout\,
	datac => \inst6|process_0~172_combout\,
	datad => \inst6|process_0~29_combout\,
	combout => \inst6|red[6]~43_combout\);

-- Location: LCCOMB_X76_Y35_N16
\inst6|red[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~48_combout\ = (\inst6|red[6]~41_combout\ & (\inst6|red[6]~45_combout\ & (\inst6|red[6]~47_combout\ & \inst6|red[6]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~41_combout\,
	datab => \inst6|red[6]~45_combout\,
	datac => \inst6|red[6]~47_combout\,
	datad => \inst6|red[6]~43_combout\,
	combout => \inst6|red[6]~48_combout\);

-- Location: LCCOMB_X75_Y35_N26
\inst6|red[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~49_combout\ = ((\inst6|process_0~64_combout\ & \inst6|process_0~37_combout\)) # (!\inst6|red[6]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~64_combout\,
	datac => \inst6|process_0~37_combout\,
	datad => \inst6|red[6]~48_combout\,
	combout => \inst6|red[6]~49_combout\);

-- Location: LCCOMB_X76_Y37_N4
\inst6|p1w~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~4_combout\ = (!\inst6|D\(1) & (\inst6|F\(0) & (!\inst6|F\(1) & \inst6|D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(1),
	datab => \inst6|F\(0),
	datac => \inst6|F\(1),
	datad => \inst6|D\(0),
	combout => \inst6|p1w~4_combout\);

-- Location: LCCOMB_X79_Y37_N4
\inst6|p1w~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~11_combout\ = (\inst6|p1w~4_combout\) # ((!\inst6|G\(1) & (\inst6|G\(0) & \inst6|red[7]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|G\(1),
	datab => \inst6|p1w~4_combout\,
	datac => \inst6|G\(0),
	datad => \inst6|red[7]~27_combout\,
	combout => \inst6|p1w~11_combout\);

-- Location: LCCOMB_X79_Y37_N10
\inst6|p1w~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~5_combout\ = (\inst6|red[7]~31_combout\ & ((\inst6|red[7]~28_combout\) # ((\inst6|red[7]~30_combout\ & \inst6|red[7]~29_combout\)))) # (!\inst6|red[7]~31_combout\ & (\inst6|red[7]~30_combout\ & (\inst6|red[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~31_combout\,
	datab => \inst6|red[7]~30_combout\,
	datac => \inst6|red[7]~29_combout\,
	datad => \inst6|red[7]~28_combout\,
	combout => \inst6|p1w~5_combout\);

-- Location: LCCOMB_X79_Y35_N26
\inst6|p1w~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~6_combout\ = (\inst6|E\(0) & (!\inst6|E\(1) & ((\inst6|p1w~11_combout\) # (\inst6|p1w~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|E\(0),
	datab => \inst6|E\(1),
	datac => \inst6|p1w~11_combout\,
	datad => \inst6|p1w~5_combout\,
	combout => \inst6|p1w~6_combout\);

-- Location: LCCOMB_X76_Y37_N24
\inst6|p1w~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~7_combout\ = (!\inst6|C\(1) & (\inst6|F\(0) & (!\inst6|F\(1) & \inst6|C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(1),
	datab => \inst6|F\(0),
	datac => \inst6|F\(1),
	datad => \inst6|C\(0),
	combout => \inst6|p1w~7_combout\);

-- Location: LCCOMB_X79_Y37_N28
\inst6|p1w~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~8_combout\ = (\inst6|red[7]~31_combout\ & ((\inst6|p1w~7_combout\) # ((\inst6|red[7]~26_combout\ & \inst6|red[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~31_combout\,
	datab => \inst6|p1w~7_combout\,
	datac => \inst6|red[7]~26_combout\,
	datad => \inst6|red[7]~30_combout\,
	combout => \inst6|p1w~8_combout\);

-- Location: LCCOMB_X79_Y37_N22
\inst6|p1w~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~9_combout\ = (\inst6|red[7]~29_combout\ & ((\inst6|red[7]~27_combout\) # ((\inst6|red[7]~32_combout\ & \inst6|red[7]~26_combout\)))) # (!\inst6|red[7]~29_combout\ & (\inst6|red[7]~32_combout\ & (\inst6|red[7]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~29_combout\,
	datab => \inst6|red[7]~32_combout\,
	datac => \inst6|red[7]~26_combout\,
	datad => \inst6|red[7]~27_combout\,
	combout => \inst6|p1w~9_combout\);

-- Location: LCCOMB_X79_Y37_N16
\inst6|p1w~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~10_combout\ = (\inst6|p1w~6_combout\) # ((\inst6|p1w~8_combout\) # ((\inst6|p1w~9_combout\ & \inst6|red[7]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1w~6_combout\,
	datab => \inst6|p1w~8_combout\,
	datac => \inst6|p1w~9_combout\,
	datad => \inst6|red[7]~28_combout\,
	combout => \inst6|p1w~10_combout\);

-- Location: LCCOMB_X76_Y37_N10
\inst6|p2w~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~8_combout\ = (\inst6|C\(1) & (!\inst6|F\(0) & (\inst6|F\(1) & !\inst6|C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(1),
	datab => \inst6|F\(0),
	datac => \inst6|F\(1),
	datad => \inst6|C\(0),
	combout => \inst6|p2w~8_combout\);

-- Location: LCCOMB_X79_Y37_N6
\inst6|p2w~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~9_combout\ = (\inst6|red[7]~37_combout\ & ((\inst6|p2w~8_combout\) # ((\inst6|red[7]~36_combout\ & \inst6|red[7]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~36_combout\,
	datab => \inst6|red[7]~33_combout\,
	datac => \inst6|p2w~8_combout\,
	datad => \inst6|red[7]~37_combout\,
	combout => \inst6|p2w~9_combout\);

-- Location: LCCOMB_X79_Y37_N24
\inst6|p2w~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~10_combout\ = (\inst6|red[7]~38_combout\ & ((\inst6|red[7]~33_combout\) # ((\inst6|red[7]~34_combout\ & \inst6|red[7]~35_combout\)))) # (!\inst6|red[7]~38_combout\ & (\inst6|red[7]~34_combout\ & ((\inst6|red[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~38_combout\,
	datab => \inst6|red[7]~34_combout\,
	datac => \inst6|red[7]~33_combout\,
	datad => \inst6|red[7]~35_combout\,
	combout => \inst6|p2w~10_combout\);

-- Location: LCCOMB_X76_Y37_N28
\inst6|p2w~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~4_combout\ = (\inst6|D\(1) & (!\inst6|F\(0) & (\inst6|F\(1) & !\inst6|D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(1),
	datab => \inst6|F\(0),
	datac => \inst6|F\(1),
	datad => \inst6|D\(0),
	combout => \inst6|p2w~4_combout\);

-- Location: LCCOMB_X76_Y37_N22
\inst6|p2w~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~12_combout\ = (\inst6|p2w~4_combout\) # ((\inst6|red[7]~34_combout\ & (!\inst6|G\(0) & \inst6|G\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~34_combout\,
	datab => \inst6|p2w~4_combout\,
	datac => \inst6|G\(0),
	datad => \inst6|G\(1),
	combout => \inst6|p2w~12_combout\);

-- Location: LCCOMB_X79_Y37_N26
\inst6|p2w~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~6_combout\ = (\inst6|red[7]~36_combout\ & ((\inst6|red[7]~35_combout\) # ((\inst6|red[7]~37_combout\ & \inst6|p2w~5_combout\)))) # (!\inst6|red[7]~36_combout\ & (\inst6|red[7]~37_combout\ & (\inst6|p2w~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~36_combout\,
	datab => \inst6|red[7]~37_combout\,
	datac => \inst6|p2w~5_combout\,
	datad => \inst6|red[7]~35_combout\,
	combout => \inst6|p2w~6_combout\);

-- Location: LCCOMB_X79_Y37_N12
\inst6|p2w~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~7_combout\ = (\inst6|E\(1) & (!\inst6|E\(0) & ((\inst6|p2w~12_combout\) # (\inst6|p2w~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|E\(1),
	datab => \inst6|p2w~12_combout\,
	datac => \inst6|p2w~6_combout\,
	datad => \inst6|E\(0),
	combout => \inst6|p2w~7_combout\);

-- Location: LCCOMB_X79_Y37_N2
\inst6|p2w~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~11_combout\ = (\inst6|p2w~9_combout\) # ((\inst6|p2w~7_combout\) # ((\inst6|p2w~10_combout\ & \inst6|p2w~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2w~9_combout\,
	datab => \inst6|p2w~10_combout\,
	datac => \inst6|p2w~5_combout\,
	datad => \inst6|p2w~7_combout\,
	combout => \inst6|p2w~11_combout\);

-- Location: LCCOMB_X74_Y34_N10
\inst6|process_0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~62_combout\ = (!\inst6|p1w~10_combout\ & !\inst6|p2w~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|p1w~10_combout\,
	datad => \inst6|p2w~11_combout\,
	combout => \inst6|process_0~62_combout\);

-- Location: LCCOMB_X77_Y39_N10
\inst6|process_0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~164_combout\ = (!\inst6|H\(1) & \inst6|process_0~156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(1),
	datad => \inst6|process_0~156_combout\,
	combout => \inst6|process_0~164_combout\);

-- Location: LCCOMB_X77_Y39_N20
\inst6|Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add16~0_combout\ = (\inst6|process_0~163_combout\) # ((\inst6|process_0~164_combout\ & (!\inst6|H~0_combout\ & \inst6|p2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~164_combout\,
	datab => \inst6|H~0_combout\,
	datac => \inst6|p2~3_combout\,
	datad => \inst6|process_0~163_combout\,
	combout => \inst6|Add16~0_combout\);

-- Location: LCCOMB_X76_Y38_N30
\inst6|Add13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add13~1_combout\ = (!\inst6|Add12~0_combout\ & (!\inst6|Add14~0_combout\ & (!\inst6|p2~1_combout\ & \inst6|Add16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add12~0_combout\,
	datab => \inst6|Add14~0_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add16~0_combout\,
	combout => \inst6|Add13~1_combout\);

-- Location: LCCOMB_X76_Y38_N26
\inst6|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~1_combout\ = (\inst6|p1~1_combout\ & (!\inst6|Add6~0_combout\ & (\inst6|Add4~0_combout\ $ (\inst6|Add2~0_combout\)))) # (!\inst6|p1~1_combout\ & ((\inst6|Add4~0_combout\ $ (\inst6|Add2~0_combout\)) # (!\inst6|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1~1_combout\,
	datab => \inst6|Add6~0_combout\,
	datac => \inst6|Add4~0_combout\,
	datad => \inst6|Add2~0_combout\,
	combout => \inst6|Add5~1_combout\);

-- Location: LCCOMB_X76_Y38_N8
\inst6|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add13~2_combout\ = (\inst6|Add12~0_combout\ & ((\inst6|Add14~0_combout\ & (!\inst6|p2~1_combout\ & \inst6|Add16~0_combout\)) # (!\inst6|Add14~0_combout\ & ((\inst6|Add16~0_combout\) # (!\inst6|p2~1_combout\))))) # (!\inst6|Add12~0_combout\ & 
-- ((\inst6|Add14~0_combout\ & ((\inst6|Add16~0_combout\) # (!\inst6|p2~1_combout\))) # (!\inst6|Add14~0_combout\ & ((\inst6|p2~1_combout\) # (!\inst6|Add16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add12~0_combout\,
	datab => \inst6|Add14~0_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add16~0_combout\,
	combout => \inst6|Add13~2_combout\);

-- Location: LCCOMB_X76_Y38_N10
\inst6|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add13~0_combout\ = \inst6|Add12~0_combout\ $ (\inst6|Add14~0_combout\ $ (\inst6|p2~1_combout\ $ (!\inst6|Add16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add12~0_combout\,
	datab => \inst6|Add14~0_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add16~0_combout\,
	combout => \inst6|Add13~0_combout\);

-- Location: LCCOMB_X76_Y38_N28
\inst6|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~0_combout\ = \inst6|p1~1_combout\ $ (\inst6|Add6~0_combout\ $ (\inst6|Add4~0_combout\ $ (\inst6|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1~1_combout\,
	datab => \inst6|Add6~0_combout\,
	datac => \inst6|Add4~0_combout\,
	datad => \inst6|Add2~0_combout\,
	combout => \inst6|Add5~0_combout\);

-- Location: LCCOMB_X76_Y38_N12
\inst6|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add9~0_combout\ = (\inst6|Add13~0_combout\ & (\inst6|Add5~0_combout\ $ (VCC))) # (!\inst6|Add13~0_combout\ & (\inst6|Add5~0_combout\ & VCC))
-- \inst6|Add9~1\ = CARRY((\inst6|Add13~0_combout\ & \inst6|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~0_combout\,
	datab => \inst6|Add5~0_combout\,
	datad => VCC,
	combout => \inst6|Add9~0_combout\,
	cout => \inst6|Add9~1\);

-- Location: LCCOMB_X76_Y38_N14
\inst6|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add9~2_combout\ = (\inst6|Add5~1_combout\ & ((\inst6|Add13~2_combout\ & (\inst6|Add9~1\ & VCC)) # (!\inst6|Add13~2_combout\ & (!\inst6|Add9~1\)))) # (!\inst6|Add5~1_combout\ & ((\inst6|Add13~2_combout\ & (!\inst6|Add9~1\)) # 
-- (!\inst6|Add13~2_combout\ & ((\inst6|Add9~1\) # (GND)))))
-- \inst6|Add9~3\ = CARRY((\inst6|Add5~1_combout\ & (!\inst6|Add13~2_combout\ & !\inst6|Add9~1\)) # (!\inst6|Add5~1_combout\ & ((!\inst6|Add9~1\) # (!\inst6|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~1_combout\,
	datab => \inst6|Add13~2_combout\,
	datad => VCC,
	cin => \inst6|Add9~1\,
	combout => \inst6|Add9~2_combout\,
	cout => \inst6|Add9~3\);

-- Location: LCCOMB_X76_Y38_N16
\inst6|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add9~4_combout\ = (\inst6|Add13~1_combout\ & (\inst6|Add9~3\ $ (GND))) # (!\inst6|Add13~1_combout\ & (!\inst6|Add9~3\ & VCC))
-- \inst6|Add9~5\ = CARRY((\inst6|Add13~1_combout\ & !\inst6|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~1_combout\,
	datad => VCC,
	cin => \inst6|Add9~3\,
	combout => \inst6|Add9~4_combout\,
	cout => \inst6|Add9~5\);

-- Location: LCCOMB_X72_Y37_N0
\inst6|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = (\inst6|process_0~155_combout\ & (\inst6|buttonConfirmCounter\(0) $ (VCC))) # (!\inst6|process_0~155_combout\ & (\inst6|buttonConfirmCounter\(0) & VCC))
-- \inst6|Add1~1\ = CARRY((\inst6|process_0~155_combout\ & \inst6|buttonConfirmCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~155_combout\,
	datab => \inst6|buttonConfirmCounter\(0),
	datad => VCC,
	combout => \inst6|Add1~0_combout\,
	cout => \inst6|Add1~1\);

-- Location: LCCOMB_X72_Y39_N0
\inst6|Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~0_combout\ = (\inst6|Add9~0_combout\ & (\inst6|Add1~0_combout\ $ (VCC))) # (!\inst6|Add9~0_combout\ & (\inst6|Add1~0_combout\ & VCC))
-- \inst6|Add17~1\ = CARRY((\inst6|Add9~0_combout\ & \inst6|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~0_combout\,
	datab => \inst6|Add1~0_combout\,
	datad => VCC,
	combout => \inst6|Add17~0_combout\,
	cout => \inst6|Add17~1\);

-- Location: LCCOMB_X73_Y39_N0
\inst6|buttonConfirmCounter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[0]~32_combout\ = (\inst6|Add17~0_combout\ & (\inst6|process_0~166_combout\ $ (VCC))) # (!\inst6|Add17~0_combout\ & (\inst6|process_0~166_combout\ & VCC))
-- \inst6|buttonConfirmCounter[0]~33\ = CARRY((\inst6|Add17~0_combout\ & \inst6|process_0~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~0_combout\,
	datab => \inst6|process_0~166_combout\,
	datad => VCC,
	combout => \inst6|buttonConfirmCounter[0]~32_combout\,
	cout => \inst6|buttonConfirmCounter[0]~33\);

-- Location: FF_X73_Y39_N1
\inst6|buttonConfirmCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[0]~32_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(0));

-- Location: LCCOMB_X72_Y37_N2
\inst6|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~2_combout\ = (\inst6|buttonConfirmCounter\(1) & (!\inst6|Add1~1\)) # (!\inst6|buttonConfirmCounter\(1) & ((\inst6|Add1~1\) # (GND)))
-- \inst6|Add1~3\ = CARRY((!\inst6|Add1~1\) # (!\inst6|buttonConfirmCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(1),
	datad => VCC,
	cin => \inst6|Add1~1\,
	combout => \inst6|Add1~2_combout\,
	cout => \inst6|Add1~3\);

-- Location: LCCOMB_X72_Y39_N2
\inst6|Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~2_combout\ = (\inst6|Add9~2_combout\ & ((\inst6|Add1~2_combout\ & (\inst6|Add17~1\ & VCC)) # (!\inst6|Add1~2_combout\ & (!\inst6|Add17~1\)))) # (!\inst6|Add9~2_combout\ & ((\inst6|Add1~2_combout\ & (!\inst6|Add17~1\)) # 
-- (!\inst6|Add1~2_combout\ & ((\inst6|Add17~1\) # (GND)))))
-- \inst6|Add17~3\ = CARRY((\inst6|Add9~2_combout\ & (!\inst6|Add1~2_combout\ & !\inst6|Add17~1\)) # (!\inst6|Add9~2_combout\ & ((!\inst6|Add17~1\) # (!\inst6|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~2_combout\,
	datab => \inst6|Add1~2_combout\,
	datad => VCC,
	cin => \inst6|Add17~1\,
	combout => \inst6|Add17~2_combout\,
	cout => \inst6|Add17~3\);

-- Location: LCCOMB_X73_Y39_N2
\inst6|buttonConfirmCounter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[1]~35_combout\ = (\inst6|Add17~2_combout\ & (!\inst6|buttonConfirmCounter[0]~33\)) # (!\inst6|Add17~2_combout\ & ((\inst6|buttonConfirmCounter[0]~33\) # (GND)))
-- \inst6|buttonConfirmCounter[1]~36\ = CARRY((!\inst6|buttonConfirmCounter[0]~33\) # (!\inst6|Add17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~2_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[0]~33\,
	combout => \inst6|buttonConfirmCounter[1]~35_combout\,
	cout => \inst6|buttonConfirmCounter[1]~36\);

-- Location: FF_X73_Y39_N3
\inst6|buttonConfirmCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[1]~35_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(1));

-- Location: LCCOMB_X72_Y37_N4
\inst6|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~4_combout\ = (\inst6|buttonConfirmCounter\(2) & (\inst6|Add1~3\ $ (GND))) # (!\inst6|buttonConfirmCounter\(2) & (!\inst6|Add1~3\ & VCC))
-- \inst6|Add1~5\ = CARRY((\inst6|buttonConfirmCounter\(2) & !\inst6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(2),
	datad => VCC,
	cin => \inst6|Add1~3\,
	combout => \inst6|Add1~4_combout\,
	cout => \inst6|Add1~5\);

-- Location: LCCOMB_X72_Y39_N4
\inst6|Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~4_combout\ = ((\inst6|Add9~4_combout\ $ (\inst6|Add1~4_combout\ $ (!\inst6|Add17~3\)))) # (GND)
-- \inst6|Add17~5\ = CARRY((\inst6|Add9~4_combout\ & ((\inst6|Add1~4_combout\) # (!\inst6|Add17~3\))) # (!\inst6|Add9~4_combout\ & (\inst6|Add1~4_combout\ & !\inst6|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~4_combout\,
	datab => \inst6|Add1~4_combout\,
	datad => VCC,
	cin => \inst6|Add17~3\,
	combout => \inst6|Add17~4_combout\,
	cout => \inst6|Add17~5\);

-- Location: LCCOMB_X73_Y39_N4
\inst6|buttonConfirmCounter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[2]~37_combout\ = (\inst6|Add17~4_combout\ & (\inst6|buttonConfirmCounter[1]~36\ $ (GND))) # (!\inst6|Add17~4_combout\ & (!\inst6|buttonConfirmCounter[1]~36\ & VCC))
-- \inst6|buttonConfirmCounter[2]~38\ = CARRY((\inst6|Add17~4_combout\ & !\inst6|buttonConfirmCounter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~4_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[1]~36\,
	combout => \inst6|buttonConfirmCounter[2]~37_combout\,
	cout => \inst6|buttonConfirmCounter[2]~38\);

-- Location: FF_X73_Y39_N5
\inst6|buttonConfirmCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[2]~37_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(2));

-- Location: LCCOMB_X72_Y37_N6
\inst6|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~6_combout\ = (\inst6|buttonConfirmCounter\(3) & (!\inst6|Add1~5\)) # (!\inst6|buttonConfirmCounter\(3) & ((\inst6|Add1~5\) # (GND)))
-- \inst6|Add1~7\ = CARRY((!\inst6|Add1~5\) # (!\inst6|buttonConfirmCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(3),
	datad => VCC,
	cin => \inst6|Add1~5\,
	combout => \inst6|Add1~6_combout\,
	cout => \inst6|Add1~7\);

-- Location: LCCOMB_X76_Y38_N18
\inst6|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add9~6_combout\ = \inst6|Add9~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add9~5\,
	combout => \inst6|Add9~6_combout\);

-- Location: LCCOMB_X72_Y39_N6
\inst6|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~6_combout\ = (\inst6|Add1~6_combout\ & ((\inst6|Add9~6_combout\ & (\inst6|Add17~5\ & VCC)) # (!\inst6|Add9~6_combout\ & (!\inst6|Add17~5\)))) # (!\inst6|Add1~6_combout\ & ((\inst6|Add9~6_combout\ & (!\inst6|Add17~5\)) # 
-- (!\inst6|Add9~6_combout\ & ((\inst6|Add17~5\) # (GND)))))
-- \inst6|Add17~7\ = CARRY((\inst6|Add1~6_combout\ & (!\inst6|Add9~6_combout\ & !\inst6|Add17~5\)) # (!\inst6|Add1~6_combout\ & ((!\inst6|Add17~5\) # (!\inst6|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~6_combout\,
	datab => \inst6|Add9~6_combout\,
	datad => VCC,
	cin => \inst6|Add17~5\,
	combout => \inst6|Add17~6_combout\,
	cout => \inst6|Add17~7\);

-- Location: LCCOMB_X73_Y39_N6
\inst6|buttonConfirmCounter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[3]~39_combout\ = (\inst6|Add17~6_combout\ & (!\inst6|buttonConfirmCounter[2]~38\)) # (!\inst6|Add17~6_combout\ & ((\inst6|buttonConfirmCounter[2]~38\) # (GND)))
-- \inst6|buttonConfirmCounter[3]~40\ = CARRY((!\inst6|buttonConfirmCounter[2]~38\) # (!\inst6|Add17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~6_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[2]~38\,
	combout => \inst6|buttonConfirmCounter[3]~39_combout\,
	cout => \inst6|buttonConfirmCounter[3]~40\);

-- Location: FF_X73_Y39_N7
\inst6|buttonConfirmCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[3]~39_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(3));

-- Location: LCCOMB_X72_Y37_N8
\inst6|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~8_combout\ = (\inst6|buttonConfirmCounter\(4) & (\inst6|Add1~7\ $ (GND))) # (!\inst6|buttonConfirmCounter\(4) & (!\inst6|Add1~7\ & VCC))
-- \inst6|Add1~9\ = CARRY((\inst6|buttonConfirmCounter\(4) & !\inst6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(4),
	datad => VCC,
	cin => \inst6|Add1~7\,
	combout => \inst6|Add1~8_combout\,
	cout => \inst6|Add1~9\);

-- Location: LCCOMB_X72_Y39_N8
\inst6|Add17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~8_combout\ = (\inst6|Add1~8_combout\ & (\inst6|Add17~7\ $ (GND))) # (!\inst6|Add1~8_combout\ & (!\inst6|Add17~7\ & VCC))
-- \inst6|Add17~9\ = CARRY((\inst6|Add1~8_combout\ & !\inst6|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~8_combout\,
	datad => VCC,
	cin => \inst6|Add17~7\,
	combout => \inst6|Add17~8_combout\,
	cout => \inst6|Add17~9\);

-- Location: LCCOMB_X73_Y39_N8
\inst6|buttonConfirmCounter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[4]~41_combout\ = (\inst6|Add17~8_combout\ & (\inst6|buttonConfirmCounter[3]~40\ $ (GND))) # (!\inst6|Add17~8_combout\ & (!\inst6|buttonConfirmCounter[3]~40\ & VCC))
-- \inst6|buttonConfirmCounter[4]~42\ = CARRY((\inst6|Add17~8_combout\ & !\inst6|buttonConfirmCounter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~8_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[3]~40\,
	combout => \inst6|buttonConfirmCounter[4]~41_combout\,
	cout => \inst6|buttonConfirmCounter[4]~42\);

-- Location: FF_X73_Y39_N9
\inst6|buttonConfirmCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[4]~41_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(4));

-- Location: LCCOMB_X72_Y37_N10
\inst6|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~10_combout\ = (\inst6|buttonConfirmCounter\(5) & (!\inst6|Add1~9\)) # (!\inst6|buttonConfirmCounter\(5) & ((\inst6|Add1~9\) # (GND)))
-- \inst6|Add1~11\ = CARRY((!\inst6|Add1~9\) # (!\inst6|buttonConfirmCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(5),
	datad => VCC,
	cin => \inst6|Add1~9\,
	combout => \inst6|Add1~10_combout\,
	cout => \inst6|Add1~11\);

-- Location: LCCOMB_X72_Y39_N10
\inst6|Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~10_combout\ = (\inst6|Add1~10_combout\ & (!\inst6|Add17~9\)) # (!\inst6|Add1~10_combout\ & ((\inst6|Add17~9\) # (GND)))
-- \inst6|Add17~11\ = CARRY((!\inst6|Add17~9\) # (!\inst6|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~10_combout\,
	datad => VCC,
	cin => \inst6|Add17~9\,
	combout => \inst6|Add17~10_combout\,
	cout => \inst6|Add17~11\);

-- Location: LCCOMB_X73_Y39_N10
\inst6|buttonConfirmCounter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[5]~43_combout\ = (\inst6|Add17~10_combout\ & (!\inst6|buttonConfirmCounter[4]~42\)) # (!\inst6|Add17~10_combout\ & ((\inst6|buttonConfirmCounter[4]~42\) # (GND)))
-- \inst6|buttonConfirmCounter[5]~44\ = CARRY((!\inst6|buttonConfirmCounter[4]~42\) # (!\inst6|Add17~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~10_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[4]~42\,
	combout => \inst6|buttonConfirmCounter[5]~43_combout\,
	cout => \inst6|buttonConfirmCounter[5]~44\);

-- Location: FF_X73_Y39_N11
\inst6|buttonConfirmCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[5]~43_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(5));

-- Location: LCCOMB_X72_Y37_N12
\inst6|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~12_combout\ = (\inst6|buttonConfirmCounter\(6) & (\inst6|Add1~11\ $ (GND))) # (!\inst6|buttonConfirmCounter\(6) & (!\inst6|Add1~11\ & VCC))
-- \inst6|Add1~13\ = CARRY((\inst6|buttonConfirmCounter\(6) & !\inst6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(6),
	datad => VCC,
	cin => \inst6|Add1~11\,
	combout => \inst6|Add1~12_combout\,
	cout => \inst6|Add1~13\);

-- Location: LCCOMB_X72_Y39_N12
\inst6|Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~12_combout\ = (\inst6|Add1~12_combout\ & (\inst6|Add17~11\ $ (GND))) # (!\inst6|Add1~12_combout\ & (!\inst6|Add17~11\ & VCC))
-- \inst6|Add17~13\ = CARRY((\inst6|Add1~12_combout\ & !\inst6|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~12_combout\,
	datad => VCC,
	cin => \inst6|Add17~11\,
	combout => \inst6|Add17~12_combout\,
	cout => \inst6|Add17~13\);

-- Location: LCCOMB_X73_Y39_N12
\inst6|buttonConfirmCounter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[6]~45_combout\ = (\inst6|Add17~12_combout\ & (\inst6|buttonConfirmCounter[5]~44\ $ (GND))) # (!\inst6|Add17~12_combout\ & (!\inst6|buttonConfirmCounter[5]~44\ & VCC))
-- \inst6|buttonConfirmCounter[6]~46\ = CARRY((\inst6|Add17~12_combout\ & !\inst6|buttonConfirmCounter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~12_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[5]~44\,
	combout => \inst6|buttonConfirmCounter[6]~45_combout\,
	cout => \inst6|buttonConfirmCounter[6]~46\);

-- Location: FF_X73_Y39_N13
\inst6|buttonConfirmCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[6]~45_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(6));

-- Location: LCCOMB_X72_Y37_N14
\inst6|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~14_combout\ = (\inst6|buttonConfirmCounter\(7) & (!\inst6|Add1~13\)) # (!\inst6|buttonConfirmCounter\(7) & ((\inst6|Add1~13\) # (GND)))
-- \inst6|Add1~15\ = CARRY((!\inst6|Add1~13\) # (!\inst6|buttonConfirmCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(7),
	datad => VCC,
	cin => \inst6|Add1~13\,
	combout => \inst6|Add1~14_combout\,
	cout => \inst6|Add1~15\);

-- Location: LCCOMB_X72_Y39_N14
\inst6|Add17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~14_combout\ = (\inst6|Add1~14_combout\ & (!\inst6|Add17~13\)) # (!\inst6|Add1~14_combout\ & ((\inst6|Add17~13\) # (GND)))
-- \inst6|Add17~15\ = CARRY((!\inst6|Add17~13\) # (!\inst6|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~14_combout\,
	datad => VCC,
	cin => \inst6|Add17~13\,
	combout => \inst6|Add17~14_combout\,
	cout => \inst6|Add17~15\);

-- Location: LCCOMB_X73_Y39_N14
\inst6|buttonConfirmCounter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[7]~47_combout\ = (\inst6|Add17~14_combout\ & (!\inst6|buttonConfirmCounter[6]~46\)) # (!\inst6|Add17~14_combout\ & ((\inst6|buttonConfirmCounter[6]~46\) # (GND)))
-- \inst6|buttonConfirmCounter[7]~48\ = CARRY((!\inst6|buttonConfirmCounter[6]~46\) # (!\inst6|Add17~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~14_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[6]~46\,
	combout => \inst6|buttonConfirmCounter[7]~47_combout\,
	cout => \inst6|buttonConfirmCounter[7]~48\);

-- Location: FF_X73_Y39_N15
\inst6|buttonConfirmCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[7]~47_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(7));

-- Location: LCCOMB_X72_Y37_N16
\inst6|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~16_combout\ = (\inst6|buttonConfirmCounter\(8) & (\inst6|Add1~15\ $ (GND))) # (!\inst6|buttonConfirmCounter\(8) & (!\inst6|Add1~15\ & VCC))
-- \inst6|Add1~17\ = CARRY((\inst6|buttonConfirmCounter\(8) & !\inst6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(8),
	datad => VCC,
	cin => \inst6|Add1~15\,
	combout => \inst6|Add1~16_combout\,
	cout => \inst6|Add1~17\);

-- Location: LCCOMB_X72_Y39_N16
\inst6|Add17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~16_combout\ = (\inst6|Add1~16_combout\ & (\inst6|Add17~15\ $ (GND))) # (!\inst6|Add1~16_combout\ & (!\inst6|Add17~15\ & VCC))
-- \inst6|Add17~17\ = CARRY((\inst6|Add1~16_combout\ & !\inst6|Add17~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~16_combout\,
	datad => VCC,
	cin => \inst6|Add17~15\,
	combout => \inst6|Add17~16_combout\,
	cout => \inst6|Add17~17\);

-- Location: LCCOMB_X73_Y39_N16
\inst6|buttonConfirmCounter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[8]~49_combout\ = (\inst6|Add17~16_combout\ & (\inst6|buttonConfirmCounter[7]~48\ $ (GND))) # (!\inst6|Add17~16_combout\ & (!\inst6|buttonConfirmCounter[7]~48\ & VCC))
-- \inst6|buttonConfirmCounter[8]~50\ = CARRY((\inst6|Add17~16_combout\ & !\inst6|buttonConfirmCounter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~16_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[7]~48\,
	combout => \inst6|buttonConfirmCounter[8]~49_combout\,
	cout => \inst6|buttonConfirmCounter[8]~50\);

-- Location: FF_X73_Y39_N17
\inst6|buttonConfirmCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[8]~49_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(8));

-- Location: LCCOMB_X72_Y37_N18
\inst6|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~18_combout\ = (\inst6|buttonConfirmCounter\(9) & (!\inst6|Add1~17\)) # (!\inst6|buttonConfirmCounter\(9) & ((\inst6|Add1~17\) # (GND)))
-- \inst6|Add1~19\ = CARRY((!\inst6|Add1~17\) # (!\inst6|buttonConfirmCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(9),
	datad => VCC,
	cin => \inst6|Add1~17\,
	combout => \inst6|Add1~18_combout\,
	cout => \inst6|Add1~19\);

-- Location: LCCOMB_X72_Y39_N18
\inst6|Add17~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~18_combout\ = (\inst6|Add1~18_combout\ & (!\inst6|Add17~17\)) # (!\inst6|Add1~18_combout\ & ((\inst6|Add17~17\) # (GND)))
-- \inst6|Add17~19\ = CARRY((!\inst6|Add17~17\) # (!\inst6|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~18_combout\,
	datad => VCC,
	cin => \inst6|Add17~17\,
	combout => \inst6|Add17~18_combout\,
	cout => \inst6|Add17~19\);

-- Location: LCCOMB_X73_Y39_N18
\inst6|buttonConfirmCounter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[9]~51_combout\ = (\inst6|Add17~18_combout\ & (!\inst6|buttonConfirmCounter[8]~50\)) # (!\inst6|Add17~18_combout\ & ((\inst6|buttonConfirmCounter[8]~50\) # (GND)))
-- \inst6|buttonConfirmCounter[9]~52\ = CARRY((!\inst6|buttonConfirmCounter[8]~50\) # (!\inst6|Add17~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~18_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[8]~50\,
	combout => \inst6|buttonConfirmCounter[9]~51_combout\,
	cout => \inst6|buttonConfirmCounter[9]~52\);

-- Location: FF_X73_Y39_N19
\inst6|buttonConfirmCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[9]~51_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(9));

-- Location: LCCOMB_X72_Y37_N20
\inst6|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~20_combout\ = (\inst6|buttonConfirmCounter\(10) & (\inst6|Add1~19\ $ (GND))) # (!\inst6|buttonConfirmCounter\(10) & (!\inst6|Add1~19\ & VCC))
-- \inst6|Add1~21\ = CARRY((\inst6|buttonConfirmCounter\(10) & !\inst6|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(10),
	datad => VCC,
	cin => \inst6|Add1~19\,
	combout => \inst6|Add1~20_combout\,
	cout => \inst6|Add1~21\);

-- Location: LCCOMB_X72_Y39_N20
\inst6|Add17~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~20_combout\ = (\inst6|Add1~20_combout\ & (\inst6|Add17~19\ $ (GND))) # (!\inst6|Add1~20_combout\ & (!\inst6|Add17~19\ & VCC))
-- \inst6|Add17~21\ = CARRY((\inst6|Add1~20_combout\ & !\inst6|Add17~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~20_combout\,
	datad => VCC,
	cin => \inst6|Add17~19\,
	combout => \inst6|Add17~20_combout\,
	cout => \inst6|Add17~21\);

-- Location: LCCOMB_X73_Y39_N20
\inst6|buttonConfirmCounter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[10]~53_combout\ = (\inst6|Add17~20_combout\ & (\inst6|buttonConfirmCounter[9]~52\ $ (GND))) # (!\inst6|Add17~20_combout\ & (!\inst6|buttonConfirmCounter[9]~52\ & VCC))
-- \inst6|buttonConfirmCounter[10]~54\ = CARRY((\inst6|Add17~20_combout\ & !\inst6|buttonConfirmCounter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~20_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[9]~52\,
	combout => \inst6|buttonConfirmCounter[10]~53_combout\,
	cout => \inst6|buttonConfirmCounter[10]~54\);

-- Location: FF_X73_Y39_N21
\inst6|buttonConfirmCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[10]~53_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(10));

-- Location: LCCOMB_X72_Y37_N22
\inst6|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~22_combout\ = (\inst6|buttonConfirmCounter\(11) & (!\inst6|Add1~21\)) # (!\inst6|buttonConfirmCounter\(11) & ((\inst6|Add1~21\) # (GND)))
-- \inst6|Add1~23\ = CARRY((!\inst6|Add1~21\) # (!\inst6|buttonConfirmCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(11),
	datad => VCC,
	cin => \inst6|Add1~21\,
	combout => \inst6|Add1~22_combout\,
	cout => \inst6|Add1~23\);

-- Location: LCCOMB_X72_Y39_N22
\inst6|Add17~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~22_combout\ = (\inst6|Add1~22_combout\ & (!\inst6|Add17~21\)) # (!\inst6|Add1~22_combout\ & ((\inst6|Add17~21\) # (GND)))
-- \inst6|Add17~23\ = CARRY((!\inst6|Add17~21\) # (!\inst6|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~22_combout\,
	datad => VCC,
	cin => \inst6|Add17~21\,
	combout => \inst6|Add17~22_combout\,
	cout => \inst6|Add17~23\);

-- Location: LCCOMB_X73_Y39_N22
\inst6|buttonConfirmCounter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[11]~55_combout\ = (\inst6|Add17~22_combout\ & (!\inst6|buttonConfirmCounter[10]~54\)) # (!\inst6|Add17~22_combout\ & ((\inst6|buttonConfirmCounter[10]~54\) # (GND)))
-- \inst6|buttonConfirmCounter[11]~56\ = CARRY((!\inst6|buttonConfirmCounter[10]~54\) # (!\inst6|Add17~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~22_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[10]~54\,
	combout => \inst6|buttonConfirmCounter[11]~55_combout\,
	cout => \inst6|buttonConfirmCounter[11]~56\);

-- Location: FF_X73_Y39_N23
\inst6|buttonConfirmCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[11]~55_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(11));

-- Location: LCCOMB_X73_Y37_N12
\inst6|process_0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~53_combout\ = (!\inst6|buttonConfirmCounter\(11) & (!\inst6|buttonConfirmCounter\(9) & (!\inst6|buttonConfirmCounter\(8) & !\inst6|buttonConfirmCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(11),
	datab => \inst6|buttonConfirmCounter\(9),
	datac => \inst6|buttonConfirmCounter\(8),
	datad => \inst6|buttonConfirmCounter\(10),
	combout => \inst6|process_0~53_combout\);

-- Location: LCCOMB_X73_Y37_N24
\inst6|process_0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~51_combout\ = (\inst6|buttonConfirmCounter\(3) & (\inst6|buttonConfirmCounter\(0) & (!\inst6|buttonConfirmCounter\(2) & !\inst6|buttonConfirmCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(3),
	datab => \inst6|buttonConfirmCounter\(0),
	datac => \inst6|buttonConfirmCounter\(2),
	datad => \inst6|buttonConfirmCounter\(1),
	combout => \inst6|process_0~51_combout\);

-- Location: LCCOMB_X73_Y37_N10
\inst6|process_0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~52_combout\ = (!\inst6|buttonConfirmCounter\(7) & (!\inst6|buttonConfirmCounter\(6) & (!\inst6|buttonConfirmCounter\(5) & !\inst6|buttonConfirmCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(7),
	datab => \inst6|buttonConfirmCounter\(6),
	datac => \inst6|buttonConfirmCounter\(5),
	datad => \inst6|buttonConfirmCounter\(4),
	combout => \inst6|process_0~52_combout\);

-- Location: LCCOMB_X72_Y37_N24
\inst6|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~24_combout\ = (\inst6|buttonConfirmCounter\(12) & (\inst6|Add1~23\ $ (GND))) # (!\inst6|buttonConfirmCounter\(12) & (!\inst6|Add1~23\ & VCC))
-- \inst6|Add1~25\ = CARRY((\inst6|buttonConfirmCounter\(12) & !\inst6|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(12),
	datad => VCC,
	cin => \inst6|Add1~23\,
	combout => \inst6|Add1~24_combout\,
	cout => \inst6|Add1~25\);

-- Location: LCCOMB_X72_Y39_N24
\inst6|Add17~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~24_combout\ = (\inst6|Add1~24_combout\ & (\inst6|Add17~23\ $ (GND))) # (!\inst6|Add1~24_combout\ & (!\inst6|Add17~23\ & VCC))
-- \inst6|Add17~25\ = CARRY((\inst6|Add1~24_combout\ & !\inst6|Add17~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~24_combout\,
	datad => VCC,
	cin => \inst6|Add17~23\,
	combout => \inst6|Add17~24_combout\,
	cout => \inst6|Add17~25\);

-- Location: LCCOMB_X73_Y39_N24
\inst6|buttonConfirmCounter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[12]~57_combout\ = (\inst6|Add17~24_combout\ & (\inst6|buttonConfirmCounter[11]~56\ $ (GND))) # (!\inst6|Add17~24_combout\ & (!\inst6|buttonConfirmCounter[11]~56\ & VCC))
-- \inst6|buttonConfirmCounter[12]~58\ = CARRY((\inst6|Add17~24_combout\ & !\inst6|buttonConfirmCounter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~24_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[11]~56\,
	combout => \inst6|buttonConfirmCounter[12]~57_combout\,
	cout => \inst6|buttonConfirmCounter[12]~58\);

-- Location: FF_X73_Y39_N25
\inst6|buttonConfirmCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[12]~57_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(12));

-- Location: LCCOMB_X72_Y37_N26
\inst6|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~26_combout\ = (\inst6|buttonConfirmCounter\(13) & (!\inst6|Add1~25\)) # (!\inst6|buttonConfirmCounter\(13) & ((\inst6|Add1~25\) # (GND)))
-- \inst6|Add1~27\ = CARRY((!\inst6|Add1~25\) # (!\inst6|buttonConfirmCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(13),
	datad => VCC,
	cin => \inst6|Add1~25\,
	combout => \inst6|Add1~26_combout\,
	cout => \inst6|Add1~27\);

-- Location: LCCOMB_X72_Y39_N26
\inst6|Add17~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~26_combout\ = (\inst6|Add1~26_combout\ & (!\inst6|Add17~25\)) # (!\inst6|Add1~26_combout\ & ((\inst6|Add17~25\) # (GND)))
-- \inst6|Add17~27\ = CARRY((!\inst6|Add17~25\) # (!\inst6|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~26_combout\,
	datad => VCC,
	cin => \inst6|Add17~25\,
	combout => \inst6|Add17~26_combout\,
	cout => \inst6|Add17~27\);

-- Location: LCCOMB_X73_Y39_N26
\inst6|buttonConfirmCounter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[13]~59_combout\ = (\inst6|Add17~26_combout\ & (!\inst6|buttonConfirmCounter[12]~58\)) # (!\inst6|Add17~26_combout\ & ((\inst6|buttonConfirmCounter[12]~58\) # (GND)))
-- \inst6|buttonConfirmCounter[13]~60\ = CARRY((!\inst6|buttonConfirmCounter[12]~58\) # (!\inst6|Add17~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~26_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[12]~58\,
	combout => \inst6|buttonConfirmCounter[13]~59_combout\,
	cout => \inst6|buttonConfirmCounter[13]~60\);

-- Location: FF_X73_Y39_N27
\inst6|buttonConfirmCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[13]~59_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(13));

-- Location: LCCOMB_X72_Y37_N28
\inst6|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~28_combout\ = (\inst6|buttonConfirmCounter\(14) & (\inst6|Add1~27\ $ (GND))) # (!\inst6|buttonConfirmCounter\(14) & (!\inst6|Add1~27\ & VCC))
-- \inst6|Add1~29\ = CARRY((\inst6|buttonConfirmCounter\(14) & !\inst6|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(14),
	datad => VCC,
	cin => \inst6|Add1~27\,
	combout => \inst6|Add1~28_combout\,
	cout => \inst6|Add1~29\);

-- Location: LCCOMB_X72_Y39_N28
\inst6|Add17~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~28_combout\ = (\inst6|Add1~28_combout\ & (\inst6|Add17~27\ $ (GND))) # (!\inst6|Add1~28_combout\ & (!\inst6|Add17~27\ & VCC))
-- \inst6|Add17~29\ = CARRY((\inst6|Add1~28_combout\ & !\inst6|Add17~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~28_combout\,
	datad => VCC,
	cin => \inst6|Add17~27\,
	combout => \inst6|Add17~28_combout\,
	cout => \inst6|Add17~29\);

-- Location: LCCOMB_X73_Y39_N28
\inst6|buttonConfirmCounter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[14]~61_combout\ = (\inst6|Add17~28_combout\ & (\inst6|buttonConfirmCounter[13]~60\ $ (GND))) # (!\inst6|Add17~28_combout\ & (!\inst6|buttonConfirmCounter[13]~60\ & VCC))
-- \inst6|buttonConfirmCounter[14]~62\ = CARRY((\inst6|Add17~28_combout\ & !\inst6|buttonConfirmCounter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~28_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[13]~60\,
	combout => \inst6|buttonConfirmCounter[14]~61_combout\,
	cout => \inst6|buttonConfirmCounter[14]~62\);

-- Location: FF_X73_Y39_N29
\inst6|buttonConfirmCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[14]~61_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(14));

-- Location: LCCOMB_X72_Y37_N30
\inst6|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~30_combout\ = (\inst6|buttonConfirmCounter\(15) & (!\inst6|Add1~29\)) # (!\inst6|buttonConfirmCounter\(15) & ((\inst6|Add1~29\) # (GND)))
-- \inst6|Add1~31\ = CARRY((!\inst6|Add1~29\) # (!\inst6|buttonConfirmCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(15),
	datad => VCC,
	cin => \inst6|Add1~29\,
	combout => \inst6|Add1~30_combout\,
	cout => \inst6|Add1~31\);

-- Location: LCCOMB_X72_Y39_N30
\inst6|Add17~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~30_combout\ = (\inst6|Add1~30_combout\ & (!\inst6|Add17~29\)) # (!\inst6|Add1~30_combout\ & ((\inst6|Add17~29\) # (GND)))
-- \inst6|Add17~31\ = CARRY((!\inst6|Add17~29\) # (!\inst6|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~30_combout\,
	datad => VCC,
	cin => \inst6|Add17~29\,
	combout => \inst6|Add17~30_combout\,
	cout => \inst6|Add17~31\);

-- Location: LCCOMB_X73_Y39_N30
\inst6|buttonConfirmCounter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[15]~63_combout\ = (\inst6|Add17~30_combout\ & (!\inst6|buttonConfirmCounter[14]~62\)) # (!\inst6|Add17~30_combout\ & ((\inst6|buttonConfirmCounter[14]~62\) # (GND)))
-- \inst6|buttonConfirmCounter[15]~64\ = CARRY((!\inst6|buttonConfirmCounter[14]~62\) # (!\inst6|Add17~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~30_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[14]~62\,
	combout => \inst6|buttonConfirmCounter[15]~63_combout\,
	cout => \inst6|buttonConfirmCounter[15]~64\);

-- Location: FF_X73_Y39_N31
\inst6|buttonConfirmCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[15]~63_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(15));

-- Location: LCCOMB_X73_Y37_N6
\inst6|process_0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~54_combout\ = (!\inst6|buttonConfirmCounter\(15) & (!\inst6|buttonConfirmCounter\(12) & (!\inst6|buttonConfirmCounter\(14) & !\inst6|buttonConfirmCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(15),
	datab => \inst6|buttonConfirmCounter\(12),
	datac => \inst6|buttonConfirmCounter\(14),
	datad => \inst6|buttonConfirmCounter\(13),
	combout => \inst6|process_0~54_combout\);

-- Location: LCCOMB_X73_Y37_N8
\inst6|process_0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~55_combout\ = (\inst6|process_0~53_combout\ & (\inst6|process_0~51_combout\ & (\inst6|process_0~52_combout\ & \inst6|process_0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~53_combout\,
	datab => \inst6|process_0~51_combout\,
	datac => \inst6|process_0~52_combout\,
	datad => \inst6|process_0~54_combout\,
	combout => \inst6|process_0~55_combout\);

-- Location: LCCOMB_X72_Y36_N0
\inst6|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~32_combout\ = (\inst6|buttonConfirmCounter\(16) & (\inst6|Add1~31\ $ (GND))) # (!\inst6|buttonConfirmCounter\(16) & (!\inst6|Add1~31\ & VCC))
-- \inst6|Add1~33\ = CARRY((\inst6|buttonConfirmCounter\(16) & !\inst6|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(16),
	datad => VCC,
	cin => \inst6|Add1~31\,
	combout => \inst6|Add1~32_combout\,
	cout => \inst6|Add1~33\);

-- Location: LCCOMB_X72_Y38_N0
\inst6|Add17~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~32_combout\ = (\inst6|Add1~32_combout\ & (\inst6|Add17~31\ $ (GND))) # (!\inst6|Add1~32_combout\ & (!\inst6|Add17~31\ & VCC))
-- \inst6|Add17~33\ = CARRY((\inst6|Add1~32_combout\ & !\inst6|Add17~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~32_combout\,
	datad => VCC,
	cin => \inst6|Add17~31\,
	combout => \inst6|Add17~32_combout\,
	cout => \inst6|Add17~33\);

-- Location: LCCOMB_X73_Y38_N0
\inst6|buttonConfirmCounter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[16]~65_combout\ = (\inst6|Add17~32_combout\ & (\inst6|buttonConfirmCounter[15]~64\ $ (GND))) # (!\inst6|Add17~32_combout\ & (!\inst6|buttonConfirmCounter[15]~64\ & VCC))
-- \inst6|buttonConfirmCounter[16]~66\ = CARRY((\inst6|Add17~32_combout\ & !\inst6|buttonConfirmCounter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~32_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[15]~64\,
	combout => \inst6|buttonConfirmCounter[16]~65_combout\,
	cout => \inst6|buttonConfirmCounter[16]~66\);

-- Location: FF_X73_Y38_N1
\inst6|buttonConfirmCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[16]~65_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(16));

-- Location: LCCOMB_X72_Y36_N2
\inst6|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~34_combout\ = (\inst6|buttonConfirmCounter\(17) & (!\inst6|Add1~33\)) # (!\inst6|buttonConfirmCounter\(17) & ((\inst6|Add1~33\) # (GND)))
-- \inst6|Add1~35\ = CARRY((!\inst6|Add1~33\) # (!\inst6|buttonConfirmCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(17),
	datad => VCC,
	cin => \inst6|Add1~33\,
	combout => \inst6|Add1~34_combout\,
	cout => \inst6|Add1~35\);

-- Location: LCCOMB_X72_Y38_N2
\inst6|Add17~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~34_combout\ = (\inst6|Add1~34_combout\ & (!\inst6|Add17~33\)) # (!\inst6|Add1~34_combout\ & ((\inst6|Add17~33\) # (GND)))
-- \inst6|Add17~35\ = CARRY((!\inst6|Add17~33\) # (!\inst6|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~34_combout\,
	datad => VCC,
	cin => \inst6|Add17~33\,
	combout => \inst6|Add17~34_combout\,
	cout => \inst6|Add17~35\);

-- Location: LCCOMB_X73_Y38_N2
\inst6|buttonConfirmCounter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[17]~67_combout\ = (\inst6|Add17~34_combout\ & (!\inst6|buttonConfirmCounter[16]~66\)) # (!\inst6|Add17~34_combout\ & ((\inst6|buttonConfirmCounter[16]~66\) # (GND)))
-- \inst6|buttonConfirmCounter[17]~68\ = CARRY((!\inst6|buttonConfirmCounter[16]~66\) # (!\inst6|Add17~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~34_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[16]~66\,
	combout => \inst6|buttonConfirmCounter[17]~67_combout\,
	cout => \inst6|buttonConfirmCounter[17]~68\);

-- Location: FF_X73_Y38_N3
\inst6|buttonConfirmCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[17]~67_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(17));

-- Location: LCCOMB_X72_Y36_N4
\inst6|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~36_combout\ = (\inst6|buttonConfirmCounter\(18) & (\inst6|Add1~35\ $ (GND))) # (!\inst6|buttonConfirmCounter\(18) & (!\inst6|Add1~35\ & VCC))
-- \inst6|Add1~37\ = CARRY((\inst6|buttonConfirmCounter\(18) & !\inst6|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(18),
	datad => VCC,
	cin => \inst6|Add1~35\,
	combout => \inst6|Add1~36_combout\,
	cout => \inst6|Add1~37\);

-- Location: LCCOMB_X72_Y38_N4
\inst6|Add17~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~36_combout\ = (\inst6|Add1~36_combout\ & (\inst6|Add17~35\ $ (GND))) # (!\inst6|Add1~36_combout\ & (!\inst6|Add17~35\ & VCC))
-- \inst6|Add17~37\ = CARRY((\inst6|Add1~36_combout\ & !\inst6|Add17~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~36_combout\,
	datad => VCC,
	cin => \inst6|Add17~35\,
	combout => \inst6|Add17~36_combout\,
	cout => \inst6|Add17~37\);

-- Location: LCCOMB_X73_Y38_N4
\inst6|buttonConfirmCounter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[18]~69_combout\ = (\inst6|Add17~36_combout\ & (\inst6|buttonConfirmCounter[17]~68\ $ (GND))) # (!\inst6|Add17~36_combout\ & (!\inst6|buttonConfirmCounter[17]~68\ & VCC))
-- \inst6|buttonConfirmCounter[18]~70\ = CARRY((\inst6|Add17~36_combout\ & !\inst6|buttonConfirmCounter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~36_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[17]~68\,
	combout => \inst6|buttonConfirmCounter[18]~69_combout\,
	cout => \inst6|buttonConfirmCounter[18]~70\);

-- Location: FF_X73_Y38_N5
\inst6|buttonConfirmCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[18]~69_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(18));

-- Location: LCCOMB_X72_Y36_N6
\inst6|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~38_combout\ = (\inst6|buttonConfirmCounter\(19) & (!\inst6|Add1~37\)) # (!\inst6|buttonConfirmCounter\(19) & ((\inst6|Add1~37\) # (GND)))
-- \inst6|Add1~39\ = CARRY((!\inst6|Add1~37\) # (!\inst6|buttonConfirmCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(19),
	datad => VCC,
	cin => \inst6|Add1~37\,
	combout => \inst6|Add1~38_combout\,
	cout => \inst6|Add1~39\);

-- Location: LCCOMB_X72_Y38_N6
\inst6|Add17~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~38_combout\ = (\inst6|Add1~38_combout\ & (!\inst6|Add17~37\)) # (!\inst6|Add1~38_combout\ & ((\inst6|Add17~37\) # (GND)))
-- \inst6|Add17~39\ = CARRY((!\inst6|Add17~37\) # (!\inst6|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~38_combout\,
	datad => VCC,
	cin => \inst6|Add17~37\,
	combout => \inst6|Add17~38_combout\,
	cout => \inst6|Add17~39\);

-- Location: LCCOMB_X73_Y38_N6
\inst6|buttonConfirmCounter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[19]~71_combout\ = (\inst6|Add17~38_combout\ & (!\inst6|buttonConfirmCounter[18]~70\)) # (!\inst6|Add17~38_combout\ & ((\inst6|buttonConfirmCounter[18]~70\) # (GND)))
-- \inst6|buttonConfirmCounter[19]~72\ = CARRY((!\inst6|buttonConfirmCounter[18]~70\) # (!\inst6|Add17~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~38_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[18]~70\,
	combout => \inst6|buttonConfirmCounter[19]~71_combout\,
	cout => \inst6|buttonConfirmCounter[19]~72\);

-- Location: FF_X73_Y38_N7
\inst6|buttonConfirmCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[19]~71_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(19));

-- Location: LCCOMB_X72_Y36_N8
\inst6|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~40_combout\ = (\inst6|buttonConfirmCounter\(20) & (\inst6|Add1~39\ $ (GND))) # (!\inst6|buttonConfirmCounter\(20) & (!\inst6|Add1~39\ & VCC))
-- \inst6|Add1~41\ = CARRY((\inst6|buttonConfirmCounter\(20) & !\inst6|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(20),
	datad => VCC,
	cin => \inst6|Add1~39\,
	combout => \inst6|Add1~40_combout\,
	cout => \inst6|Add1~41\);

-- Location: LCCOMB_X72_Y38_N8
\inst6|Add17~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~40_combout\ = (\inst6|Add1~40_combout\ & (\inst6|Add17~39\ $ (GND))) # (!\inst6|Add1~40_combout\ & (!\inst6|Add17~39\ & VCC))
-- \inst6|Add17~41\ = CARRY((\inst6|Add1~40_combout\ & !\inst6|Add17~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~40_combout\,
	datad => VCC,
	cin => \inst6|Add17~39\,
	combout => \inst6|Add17~40_combout\,
	cout => \inst6|Add17~41\);

-- Location: LCCOMB_X73_Y38_N8
\inst6|buttonConfirmCounter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[20]~73_combout\ = (\inst6|Add17~40_combout\ & (\inst6|buttonConfirmCounter[19]~72\ $ (GND))) # (!\inst6|Add17~40_combout\ & (!\inst6|buttonConfirmCounter[19]~72\ & VCC))
-- \inst6|buttonConfirmCounter[20]~74\ = CARRY((\inst6|Add17~40_combout\ & !\inst6|buttonConfirmCounter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~40_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[19]~72\,
	combout => \inst6|buttonConfirmCounter[20]~73_combout\,
	cout => \inst6|buttonConfirmCounter[20]~74\);

-- Location: FF_X73_Y38_N9
\inst6|buttonConfirmCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[20]~73_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(20));

-- Location: LCCOMB_X72_Y36_N10
\inst6|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~42_combout\ = (\inst6|buttonConfirmCounter\(21) & (!\inst6|Add1~41\)) # (!\inst6|buttonConfirmCounter\(21) & ((\inst6|Add1~41\) # (GND)))
-- \inst6|Add1~43\ = CARRY((!\inst6|Add1~41\) # (!\inst6|buttonConfirmCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(21),
	datad => VCC,
	cin => \inst6|Add1~41\,
	combout => \inst6|Add1~42_combout\,
	cout => \inst6|Add1~43\);

-- Location: LCCOMB_X72_Y38_N10
\inst6|Add17~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~42_combout\ = (\inst6|Add1~42_combout\ & (!\inst6|Add17~41\)) # (!\inst6|Add1~42_combout\ & ((\inst6|Add17~41\) # (GND)))
-- \inst6|Add17~43\ = CARRY((!\inst6|Add17~41\) # (!\inst6|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~42_combout\,
	datad => VCC,
	cin => \inst6|Add17~41\,
	combout => \inst6|Add17~42_combout\,
	cout => \inst6|Add17~43\);

-- Location: LCCOMB_X73_Y38_N10
\inst6|buttonConfirmCounter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[21]~75_combout\ = (\inst6|Add17~42_combout\ & (!\inst6|buttonConfirmCounter[20]~74\)) # (!\inst6|Add17~42_combout\ & ((\inst6|buttonConfirmCounter[20]~74\) # (GND)))
-- \inst6|buttonConfirmCounter[21]~76\ = CARRY((!\inst6|buttonConfirmCounter[20]~74\) # (!\inst6|Add17~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~42_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[20]~74\,
	combout => \inst6|buttonConfirmCounter[21]~75_combout\,
	cout => \inst6|buttonConfirmCounter[21]~76\);

-- Location: FF_X73_Y38_N11
\inst6|buttonConfirmCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[21]~75_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(21));

-- Location: LCCOMB_X72_Y36_N12
\inst6|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~44_combout\ = (\inst6|buttonConfirmCounter\(22) & (\inst6|Add1~43\ $ (GND))) # (!\inst6|buttonConfirmCounter\(22) & (!\inst6|Add1~43\ & VCC))
-- \inst6|Add1~45\ = CARRY((\inst6|buttonConfirmCounter\(22) & !\inst6|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(22),
	datad => VCC,
	cin => \inst6|Add1~43\,
	combout => \inst6|Add1~44_combout\,
	cout => \inst6|Add1~45\);

-- Location: LCCOMB_X72_Y38_N12
\inst6|Add17~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~44_combout\ = (\inst6|Add1~44_combout\ & (\inst6|Add17~43\ $ (GND))) # (!\inst6|Add1~44_combout\ & (!\inst6|Add17~43\ & VCC))
-- \inst6|Add17~45\ = CARRY((\inst6|Add1~44_combout\ & !\inst6|Add17~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~44_combout\,
	datad => VCC,
	cin => \inst6|Add17~43\,
	combout => \inst6|Add17~44_combout\,
	cout => \inst6|Add17~45\);

-- Location: LCCOMB_X73_Y38_N12
\inst6|buttonConfirmCounter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[22]~77_combout\ = (\inst6|Add17~44_combout\ & (\inst6|buttonConfirmCounter[21]~76\ $ (GND))) # (!\inst6|Add17~44_combout\ & (!\inst6|buttonConfirmCounter[21]~76\ & VCC))
-- \inst6|buttonConfirmCounter[22]~78\ = CARRY((\inst6|Add17~44_combout\ & !\inst6|buttonConfirmCounter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~44_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[21]~76\,
	combout => \inst6|buttonConfirmCounter[22]~77_combout\,
	cout => \inst6|buttonConfirmCounter[22]~78\);

-- Location: FF_X73_Y38_N13
\inst6|buttonConfirmCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[22]~77_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(22));

-- Location: LCCOMB_X72_Y36_N14
\inst6|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~46_combout\ = (\inst6|buttonConfirmCounter\(23) & (!\inst6|Add1~45\)) # (!\inst6|buttonConfirmCounter\(23) & ((\inst6|Add1~45\) # (GND)))
-- \inst6|Add1~47\ = CARRY((!\inst6|Add1~45\) # (!\inst6|buttonConfirmCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(23),
	datad => VCC,
	cin => \inst6|Add1~45\,
	combout => \inst6|Add1~46_combout\,
	cout => \inst6|Add1~47\);

-- Location: LCCOMB_X72_Y38_N14
\inst6|Add17~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~46_combout\ = (\inst6|Add1~46_combout\ & (!\inst6|Add17~45\)) # (!\inst6|Add1~46_combout\ & ((\inst6|Add17~45\) # (GND)))
-- \inst6|Add17~47\ = CARRY((!\inst6|Add17~45\) # (!\inst6|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~46_combout\,
	datad => VCC,
	cin => \inst6|Add17~45\,
	combout => \inst6|Add17~46_combout\,
	cout => \inst6|Add17~47\);

-- Location: LCCOMB_X73_Y38_N14
\inst6|buttonConfirmCounter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[23]~79_combout\ = (\inst6|Add17~46_combout\ & (!\inst6|buttonConfirmCounter[22]~78\)) # (!\inst6|Add17~46_combout\ & ((\inst6|buttonConfirmCounter[22]~78\) # (GND)))
-- \inst6|buttonConfirmCounter[23]~80\ = CARRY((!\inst6|buttonConfirmCounter[22]~78\) # (!\inst6|Add17~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~46_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[22]~78\,
	combout => \inst6|buttonConfirmCounter[23]~79_combout\,
	cout => \inst6|buttonConfirmCounter[23]~80\);

-- Location: FF_X73_Y38_N15
\inst6|buttonConfirmCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[23]~79_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(23));

-- Location: LCCOMB_X74_Y36_N10
\inst6|process_0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~57_combout\ = (!\inst6|buttonConfirmCounter\(21) & (!\inst6|buttonConfirmCounter\(23) & (!\inst6|buttonConfirmCounter\(22) & !\inst6|buttonConfirmCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(21),
	datab => \inst6|buttonConfirmCounter\(23),
	datac => \inst6|buttonConfirmCounter\(22),
	datad => \inst6|buttonConfirmCounter\(20),
	combout => \inst6|process_0~57_combout\);

-- Location: LCCOMB_X74_Y36_N24
\inst6|process_0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~56_combout\ = (!\inst6|buttonConfirmCounter\(16) & (!\inst6|buttonConfirmCounter\(17) & (!\inst6|buttonConfirmCounter\(19) & !\inst6|buttonConfirmCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(16),
	datab => \inst6|buttonConfirmCounter\(17),
	datac => \inst6|buttonConfirmCounter\(19),
	datad => \inst6|buttonConfirmCounter\(18),
	combout => \inst6|process_0~56_combout\);

-- Location: LCCOMB_X72_Y36_N16
\inst6|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~48_combout\ = (\inst6|buttonConfirmCounter\(24) & (\inst6|Add1~47\ $ (GND))) # (!\inst6|buttonConfirmCounter\(24) & (!\inst6|Add1~47\ & VCC))
-- \inst6|Add1~49\ = CARRY((\inst6|buttonConfirmCounter\(24) & !\inst6|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(24),
	datad => VCC,
	cin => \inst6|Add1~47\,
	combout => \inst6|Add1~48_combout\,
	cout => \inst6|Add1~49\);

-- Location: LCCOMB_X72_Y38_N16
\inst6|Add17~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~48_combout\ = (\inst6|Add1~48_combout\ & (\inst6|Add17~47\ $ (GND))) # (!\inst6|Add1~48_combout\ & (!\inst6|Add17~47\ & VCC))
-- \inst6|Add17~49\ = CARRY((\inst6|Add1~48_combout\ & !\inst6|Add17~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~48_combout\,
	datad => VCC,
	cin => \inst6|Add17~47\,
	combout => \inst6|Add17~48_combout\,
	cout => \inst6|Add17~49\);

-- Location: LCCOMB_X73_Y38_N16
\inst6|buttonConfirmCounter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[24]~81_combout\ = (\inst6|Add17~48_combout\ & (\inst6|buttonConfirmCounter[23]~80\ $ (GND))) # (!\inst6|Add17~48_combout\ & (!\inst6|buttonConfirmCounter[23]~80\ & VCC))
-- \inst6|buttonConfirmCounter[24]~82\ = CARRY((\inst6|Add17~48_combout\ & !\inst6|buttonConfirmCounter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~48_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[23]~80\,
	combout => \inst6|buttonConfirmCounter[24]~81_combout\,
	cout => \inst6|buttonConfirmCounter[24]~82\);

-- Location: FF_X73_Y38_N17
\inst6|buttonConfirmCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[24]~81_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(24));

-- Location: LCCOMB_X72_Y36_N18
\inst6|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~50_combout\ = (\inst6|buttonConfirmCounter\(25) & (!\inst6|Add1~49\)) # (!\inst6|buttonConfirmCounter\(25) & ((\inst6|Add1~49\) # (GND)))
-- \inst6|Add1~51\ = CARRY((!\inst6|Add1~49\) # (!\inst6|buttonConfirmCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(25),
	datad => VCC,
	cin => \inst6|Add1~49\,
	combout => \inst6|Add1~50_combout\,
	cout => \inst6|Add1~51\);

-- Location: LCCOMB_X72_Y38_N18
\inst6|Add17~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~50_combout\ = (\inst6|Add1~50_combout\ & (!\inst6|Add17~49\)) # (!\inst6|Add1~50_combout\ & ((\inst6|Add17~49\) # (GND)))
-- \inst6|Add17~51\ = CARRY((!\inst6|Add17~49\) # (!\inst6|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~50_combout\,
	datad => VCC,
	cin => \inst6|Add17~49\,
	combout => \inst6|Add17~50_combout\,
	cout => \inst6|Add17~51\);

-- Location: LCCOMB_X73_Y38_N18
\inst6|buttonConfirmCounter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[25]~83_combout\ = (\inst6|Add17~50_combout\ & (!\inst6|buttonConfirmCounter[24]~82\)) # (!\inst6|Add17~50_combout\ & ((\inst6|buttonConfirmCounter[24]~82\) # (GND)))
-- \inst6|buttonConfirmCounter[25]~84\ = CARRY((!\inst6|buttonConfirmCounter[24]~82\) # (!\inst6|Add17~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~50_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[24]~82\,
	combout => \inst6|buttonConfirmCounter[25]~83_combout\,
	cout => \inst6|buttonConfirmCounter[25]~84\);

-- Location: FF_X73_Y38_N19
\inst6|buttonConfirmCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[25]~83_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(25));

-- Location: LCCOMB_X72_Y36_N20
\inst6|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~52_combout\ = (\inst6|buttonConfirmCounter\(26) & (\inst6|Add1~51\ $ (GND))) # (!\inst6|buttonConfirmCounter\(26) & (!\inst6|Add1~51\ & VCC))
-- \inst6|Add1~53\ = CARRY((\inst6|buttonConfirmCounter\(26) & !\inst6|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(26),
	datad => VCC,
	cin => \inst6|Add1~51\,
	combout => \inst6|Add1~52_combout\,
	cout => \inst6|Add1~53\);

-- Location: LCCOMB_X72_Y38_N20
\inst6|Add17~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~52_combout\ = (\inst6|Add1~52_combout\ & (\inst6|Add17~51\ $ (GND))) # (!\inst6|Add1~52_combout\ & (!\inst6|Add17~51\ & VCC))
-- \inst6|Add17~53\ = CARRY((\inst6|Add1~52_combout\ & !\inst6|Add17~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~52_combout\,
	datad => VCC,
	cin => \inst6|Add17~51\,
	combout => \inst6|Add17~52_combout\,
	cout => \inst6|Add17~53\);

-- Location: LCCOMB_X73_Y38_N20
\inst6|buttonConfirmCounter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[26]~85_combout\ = (\inst6|Add17~52_combout\ & (\inst6|buttonConfirmCounter[25]~84\ $ (GND))) # (!\inst6|Add17~52_combout\ & (!\inst6|buttonConfirmCounter[25]~84\ & VCC))
-- \inst6|buttonConfirmCounter[26]~86\ = CARRY((\inst6|Add17~52_combout\ & !\inst6|buttonConfirmCounter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~52_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[25]~84\,
	combout => \inst6|buttonConfirmCounter[26]~85_combout\,
	cout => \inst6|buttonConfirmCounter[26]~86\);

-- Location: FF_X73_Y38_N21
\inst6|buttonConfirmCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[26]~85_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(26));

-- Location: LCCOMB_X72_Y36_N22
\inst6|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~54_combout\ = (\inst6|buttonConfirmCounter\(27) & (!\inst6|Add1~53\)) # (!\inst6|buttonConfirmCounter\(27) & ((\inst6|Add1~53\) # (GND)))
-- \inst6|Add1~55\ = CARRY((!\inst6|Add1~53\) # (!\inst6|buttonConfirmCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(27),
	datad => VCC,
	cin => \inst6|Add1~53\,
	combout => \inst6|Add1~54_combout\,
	cout => \inst6|Add1~55\);

-- Location: LCCOMB_X72_Y38_N22
\inst6|Add17~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~54_combout\ = (\inst6|Add1~54_combout\ & (!\inst6|Add17~53\)) # (!\inst6|Add1~54_combout\ & ((\inst6|Add17~53\) # (GND)))
-- \inst6|Add17~55\ = CARRY((!\inst6|Add17~53\) # (!\inst6|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~54_combout\,
	datad => VCC,
	cin => \inst6|Add17~53\,
	combout => \inst6|Add17~54_combout\,
	cout => \inst6|Add17~55\);

-- Location: LCCOMB_X73_Y38_N22
\inst6|buttonConfirmCounter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[27]~87_combout\ = (\inst6|Add17~54_combout\ & (!\inst6|buttonConfirmCounter[26]~86\)) # (!\inst6|Add17~54_combout\ & ((\inst6|buttonConfirmCounter[26]~86\) # (GND)))
-- \inst6|buttonConfirmCounter[27]~88\ = CARRY((!\inst6|buttonConfirmCounter[26]~86\) # (!\inst6|Add17~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~54_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[26]~86\,
	combout => \inst6|buttonConfirmCounter[27]~87_combout\,
	cout => \inst6|buttonConfirmCounter[27]~88\);

-- Location: FF_X73_Y38_N23
\inst6|buttonConfirmCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[27]~87_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(27));

-- Location: LCCOMB_X72_Y36_N24
\inst6|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~56_combout\ = (\inst6|buttonConfirmCounter\(28) & (\inst6|Add1~55\ $ (GND))) # (!\inst6|buttonConfirmCounter\(28) & (!\inst6|Add1~55\ & VCC))
-- \inst6|Add1~57\ = CARRY((\inst6|buttonConfirmCounter\(28) & !\inst6|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(28),
	datad => VCC,
	cin => \inst6|Add1~55\,
	combout => \inst6|Add1~56_combout\,
	cout => \inst6|Add1~57\);

-- Location: LCCOMB_X72_Y38_N24
\inst6|Add17~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~56_combout\ = (\inst6|Add1~56_combout\ & (\inst6|Add17~55\ $ (GND))) # (!\inst6|Add1~56_combout\ & (!\inst6|Add17~55\ & VCC))
-- \inst6|Add17~57\ = CARRY((\inst6|Add1~56_combout\ & !\inst6|Add17~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~56_combout\,
	datad => VCC,
	cin => \inst6|Add17~55\,
	combout => \inst6|Add17~56_combout\,
	cout => \inst6|Add17~57\);

-- Location: LCCOMB_X73_Y38_N24
\inst6|buttonConfirmCounter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[28]~89_combout\ = (\inst6|Add17~56_combout\ & (\inst6|buttonConfirmCounter[27]~88\ $ (GND))) # (!\inst6|Add17~56_combout\ & (!\inst6|buttonConfirmCounter[27]~88\ & VCC))
-- \inst6|buttonConfirmCounter[28]~90\ = CARRY((\inst6|Add17~56_combout\ & !\inst6|buttonConfirmCounter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~56_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[27]~88\,
	combout => \inst6|buttonConfirmCounter[28]~89_combout\,
	cout => \inst6|buttonConfirmCounter[28]~90\);

-- Location: FF_X73_Y38_N25
\inst6|buttonConfirmCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[28]~89_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(28));

-- Location: LCCOMB_X72_Y36_N26
\inst6|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~58_combout\ = (\inst6|buttonConfirmCounter\(29) & (!\inst6|Add1~57\)) # (!\inst6|buttonConfirmCounter\(29) & ((\inst6|Add1~57\) # (GND)))
-- \inst6|Add1~59\ = CARRY((!\inst6|Add1~57\) # (!\inst6|buttonConfirmCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(29),
	datad => VCC,
	cin => \inst6|Add1~57\,
	combout => \inst6|Add1~58_combout\,
	cout => \inst6|Add1~59\);

-- Location: LCCOMB_X72_Y38_N26
\inst6|Add17~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~58_combout\ = (\inst6|Add1~58_combout\ & (!\inst6|Add17~57\)) # (!\inst6|Add1~58_combout\ & ((\inst6|Add17~57\) # (GND)))
-- \inst6|Add17~59\ = CARRY((!\inst6|Add17~57\) # (!\inst6|Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~58_combout\,
	datad => VCC,
	cin => \inst6|Add17~57\,
	combout => \inst6|Add17~58_combout\,
	cout => \inst6|Add17~59\);

-- Location: LCCOMB_X73_Y38_N26
\inst6|buttonConfirmCounter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[29]~91_combout\ = (\inst6|Add17~58_combout\ & (!\inst6|buttonConfirmCounter[28]~90\)) # (!\inst6|Add17~58_combout\ & ((\inst6|buttonConfirmCounter[28]~90\) # (GND)))
-- \inst6|buttonConfirmCounter[29]~92\ = CARRY((!\inst6|buttonConfirmCounter[28]~90\) # (!\inst6|Add17~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~58_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[28]~90\,
	combout => \inst6|buttonConfirmCounter[29]~91_combout\,
	cout => \inst6|buttonConfirmCounter[29]~92\);

-- Location: FF_X73_Y38_N27
\inst6|buttonConfirmCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[29]~91_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(29));

-- Location: LCCOMB_X72_Y36_N28
\inst6|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~60_combout\ = (\inst6|buttonConfirmCounter\(30) & (\inst6|Add1~59\ $ (GND))) # (!\inst6|buttonConfirmCounter\(30) & (!\inst6|Add1~59\ & VCC))
-- \inst6|Add1~61\ = CARRY((\inst6|buttonConfirmCounter\(30) & !\inst6|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(30),
	datad => VCC,
	cin => \inst6|Add1~59\,
	combout => \inst6|Add1~60_combout\,
	cout => \inst6|Add1~61\);

-- Location: LCCOMB_X72_Y38_N28
\inst6|Add17~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~60_combout\ = (\inst6|Add1~60_combout\ & (\inst6|Add17~59\ $ (GND))) # (!\inst6|Add1~60_combout\ & (!\inst6|Add17~59\ & VCC))
-- \inst6|Add17~61\ = CARRY((\inst6|Add1~60_combout\ & !\inst6|Add17~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~60_combout\,
	datad => VCC,
	cin => \inst6|Add17~59\,
	combout => \inst6|Add17~60_combout\,
	cout => \inst6|Add17~61\);

-- Location: LCCOMB_X73_Y38_N28
\inst6|buttonConfirmCounter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[30]~93_combout\ = (\inst6|Add17~60_combout\ & (\inst6|buttonConfirmCounter[29]~92\ $ (GND))) # (!\inst6|Add17~60_combout\ & (!\inst6|buttonConfirmCounter[29]~92\ & VCC))
-- \inst6|buttonConfirmCounter[30]~94\ = CARRY((\inst6|Add17~60_combout\ & !\inst6|buttonConfirmCounter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~60_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[29]~92\,
	combout => \inst6|buttonConfirmCounter[30]~93_combout\,
	cout => \inst6|buttonConfirmCounter[30]~94\);

-- Location: FF_X73_Y38_N29
\inst6|buttonConfirmCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[30]~93_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(30));

-- Location: LCCOMB_X72_Y36_N30
\inst6|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~62_combout\ = \inst6|Add1~61\ $ (\inst6|buttonConfirmCounter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|buttonConfirmCounter\(31),
	cin => \inst6|Add1~61\,
	combout => \inst6|Add1~62_combout\);

-- Location: LCCOMB_X72_Y38_N30
\inst6|Add17~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~62_combout\ = \inst6|Add1~62_combout\ $ (\inst6|Add17~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~62_combout\,
	cin => \inst6|Add17~61\,
	combout => \inst6|Add17~62_combout\);

-- Location: LCCOMB_X73_Y38_N30
\inst6|buttonConfirmCounter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[31]~95_combout\ = \inst6|buttonConfirmCounter[30]~94\ $ (\inst6|Add17~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add17~62_combout\,
	cin => \inst6|buttonConfirmCounter[30]~94\,
	combout => \inst6|buttonConfirmCounter[31]~95_combout\);

-- Location: FF_X73_Y38_N31
\inst6|buttonConfirmCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|buttonConfirmCounter[31]~95_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(31));

-- Location: LCCOMB_X73_Y37_N18
\inst6|process_0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~59_combout\ = (!\inst6|buttonConfirmCounter\(30) & (!\inst6|buttonConfirmCounter\(28) & (!\inst6|buttonConfirmCounter\(31) & !\inst6|buttonConfirmCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(30),
	datab => \inst6|buttonConfirmCounter\(28),
	datac => \inst6|buttonConfirmCounter\(31),
	datad => \inst6|buttonConfirmCounter\(29),
	combout => \inst6|process_0~59_combout\);

-- Location: LCCOMB_X74_Y36_N12
\inst6|process_0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~58_combout\ = (!\inst6|buttonConfirmCounter\(27) & (!\inst6|buttonConfirmCounter\(25) & (!\inst6|buttonConfirmCounter\(24) & !\inst6|buttonConfirmCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(27),
	datab => \inst6|buttonConfirmCounter\(25),
	datac => \inst6|buttonConfirmCounter\(24),
	datad => \inst6|buttonConfirmCounter\(26),
	combout => \inst6|process_0~58_combout\);

-- Location: LCCOMB_X74_Y36_N14
\inst6|process_0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~60_combout\ = (\inst6|process_0~57_combout\ & (\inst6|process_0~56_combout\ & (\inst6|process_0~59_combout\ & \inst6|process_0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~57_combout\,
	datab => \inst6|process_0~56_combout\,
	datac => \inst6|process_0~59_combout\,
	datad => \inst6|process_0~58_combout\,
	combout => \inst6|process_0~60_combout\);

-- Location: LCCOMB_X74_Y34_N0
\inst6|process_0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~61_combout\ = (\inst6|process_0~55_combout\ & (\inst6|process_0~60_combout\ & (!\inst6|p1w~10_combout\ & !\inst6|p2w~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~55_combout\,
	datab => \inst6|process_0~60_combout\,
	datac => \inst6|p1w~10_combout\,
	datad => \inst6|p2w~11_combout\,
	combout => \inst6|process_0~61_combout\);

-- Location: LCCOMB_X75_Y35_N6
\inst6|gameT\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|gameT~combout\ = (\inst6|process_0~61_combout\) # ((!\inst6|I[0]~0_combout\ & \inst6|gameT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|I[0]~0_combout\,
	datac => \inst6|process_0~61_combout\,
	datad => \inst6|gameT~combout\,
	combout => \inst6|gameT~combout\);

-- Location: LCCOMB_X75_Y31_N18
\inst6|LessThan33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan33~0_combout\ = (\inst1|column\(6) & ((\inst1|column\(5)) # ((\inst1|column\(2) & \inst6|LessThan59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(2),
	datac => \inst6|LessThan59~0_combout\,
	datad => \inst1|column\(5),
	combout => \inst6|LessThan33~0_combout\);

-- Location: LCCOMB_X76_Y32_N6
\inst6|LessThan75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan75~0_combout\ = (!\inst1|column\(2) & (!\inst1|column\(3) & !\inst1|column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan75~0_combout\);

-- Location: LCCOMB_X76_Y32_N18
\inst6|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~31_combout\ = (\inst1|column\(8) & (((\inst1|column\(7)) # (!\inst6|LessThan61~0_combout\)) # (!\inst6|LessThan75~0_combout\))) # (!\inst1|column\(8) & (((!\inst1|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan75~0_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(7),
	datad => \inst6|LessThan61~0_combout\,
	combout => \inst6|process_0~31_combout\);

-- Location: LCCOMB_X76_Y32_N20
\inst6|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~32_combout\ = ((\inst6|process_0~31_combout\) # ((!\inst1|column\(8) & !\inst6|LessThan33~0_combout\))) # (!\inst6|process_0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~26_combout\,
	datab => \inst1|column\(8),
	datac => \inst6|LessThan33~0_combout\,
	datad => \inst6|process_0~31_combout\,
	combout => \inst6|process_0~32_combout\);

-- Location: LCCOMB_X75_Y31_N6
\inst6|LessThan46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan46~0_combout\ = (\inst1|column\(3)) # ((\inst1|column\(2)) # ((\inst1|column\(4)) # (\inst1|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(2),
	datac => \inst1|column\(4),
	datad => \inst1|column\(1),
	combout => \inst6|LessThan46~0_combout\);

-- Location: LCCOMB_X76_Y31_N26
\inst6|LessThan46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan46~1_combout\ = (\inst1|column\(6)) # ((\inst1|column\(5) & ((\inst6|LessThan46~0_combout\) # (!\inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|LessThan46~0_combout\,
	datac => \inst1|column\(5),
	datad => \inst1|column\(0),
	combout => \inst6|LessThan46~1_combout\);

-- Location: LCCOMB_X76_Y35_N8
\inst6|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~30_combout\ = (\inst6|LessThan16~1_combout\ & (\inst1|column\(7) & (\inst6|LessThan46~1_combout\ & \inst6|process_0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan16~1_combout\,
	datab => \inst1|column\(7),
	datac => \inst6|LessThan46~1_combout\,
	datad => \inst6|process_0~29_combout\,
	combout => \inst6|process_0~30_combout\);

-- Location: LCCOMB_X76_Y35_N28
\inst6|red[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~22_combout\ = (!\inst6|process_0~30_combout\ & (((!\inst6|LessThan48~1_combout\) # (!\inst6|LessThan46~1_combout\)) # (!\inst6|process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~27_combout\,
	datab => \inst6|LessThan46~1_combout\,
	datac => \inst6|process_0~30_combout\,
	datad => \inst6|LessThan48~1_combout\,
	combout => \inst6|red[5]~22_combout\);

-- Location: LCCOMB_X75_Y35_N30
\inst6|red[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~23_combout\ = (!\inst6|process_0~170_combout\ & (\inst6|red[5]~22_combout\ & ((\inst6|process_0~32_combout\) # (!\inst6|process_0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~32_combout\,
	datab => \inst6|process_0~34_combout\,
	datac => \inst6|process_0~170_combout\,
	datad => \inst6|red[5]~22_combout\,
	combout => \inst6|red[5]~23_combout\);

-- Location: LCCOMB_X77_Y34_N28
\inst6|process_0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~50_combout\ = (!\inst6|process_0~32_combout\ & (\inst6|process_0~28_combout\ & (!\inst6|LessThan53~0_combout\ & \inst6|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~32_combout\,
	datab => \inst6|process_0~28_combout\,
	datac => \inst6|LessThan53~0_combout\,
	datad => \inst6|process_0~49_combout\,
	combout => \inst6|process_0~50_combout\);

-- Location: LCCOMB_X77_Y33_N0
\inst6|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~43_combout\ = (\inst6|process_0~41_combout\ & (\inst6|process_0~42_combout\ & (!\inst1|column\(8) & \inst6|LessThan49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~41_combout\,
	datab => \inst6|process_0~42_combout\,
	datac => \inst1|column\(8),
	datad => \inst6|LessThan49~0_combout\,
	combout => \inst6|process_0~43_combout\);

-- Location: LCCOMB_X77_Y35_N12
\inst6|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~39_combout\ = (!\inst6|LessThan18~0_combout\ & (\inst6|process_0~38_combout\ & ((\inst6|LessThan38~0_combout\) # (!\inst6|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan38~0_combout\,
	datab => \inst6|LessThan18~0_combout\,
	datac => \inst6|process_0~38_combout\,
	datad => \inst6|LessThan13~0_combout\,
	combout => \inst6|process_0~39_combout\);

-- Location: LCCOMB_X77_Y34_N26
\inst6|red[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~24_combout\ = (\inst6|process_0~40_combout\ & (!\inst6|process_0~43_combout\ & ((\inst6|process_0~32_combout\) # (!\inst6|process_0~39_combout\)))) # (!\inst6|process_0~40_combout\ & (((\inst6|process_0~32_combout\) # 
-- (!\inst6|process_0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~40_combout\,
	datab => \inst6|process_0~43_combout\,
	datac => \inst6|process_0~32_combout\,
	datad => \inst6|process_0~39_combout\,
	combout => \inst6|red[5]~24_combout\);

-- Location: LCCOMB_X75_Y33_N6
\inst6|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~47_combout\ = ((\inst6|process_0~44_combout\ & ((!\inst1|column\(6)) # (!\inst6|LessThan39~0_combout\)))) # (!\inst6|process_0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~44_combout\,
	datab => \inst6|LessThan39~0_combout\,
	datac => \inst1|column\(6),
	datad => \inst6|process_0~46_combout\,
	combout => \inst6|process_0~47_combout\);

-- Location: LCCOMB_X77_Y34_N0
\inst6|red[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~25_combout\ = (!\inst6|process_0~50_combout\ & (\inst6|red[5]~24_combout\ & ((\inst6|process_0~47_combout\) # (!\inst6|process_0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~48_combout\,
	datab => \inst6|process_0~50_combout\,
	datac => \inst6|red[5]~24_combout\,
	datad => \inst6|process_0~47_combout\,
	combout => \inst6|red[5]~25_combout\);

-- Location: LCCOMB_X75_Y35_N22
\inst6|red[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~39_combout\ = (((\inst6|red[5]~23_combout\ & \inst6|red[5]~25_combout\)) # (!\inst6|process_0~61_combout\)) # (!\inst6|gameT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameT~combout\,
	datab => \inst6|process_0~61_combout\,
	datac => \inst6|red[5]~23_combout\,
	datad => \inst6|red[5]~25_combout\,
	combout => \inst6|red[5]~39_combout\);

-- Location: LCCOMB_X75_Y35_N14
\inst6|red[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~50_combout\ = (\inst6|red[5]~39_combout\ & (\inst1|disp_ena~q\ & ((\inst6|process_0~62_combout\) # (!\inst6|red[6]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~49_combout\,
	datab => \inst6|process_0~62_combout\,
	datac => \inst6|red[5]~39_combout\,
	datad => \inst1|disp_ena~q\,
	combout => \inst6|red[7]~50_combout\);

-- Location: LCCOMB_X80_Y33_N18
\inst6|blue[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~3_combout\ = (\inst6|red[7]~50_combout\ & (((\inst6|red[5]~79_combout\ & \inst6|red[7]~72_combout\)) # (!\inst6|red[6]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~79_combout\,
	datab => \inst6|red[7]~72_combout\,
	datac => \inst6|red[6]~80_combout\,
	datad => \inst6|red[7]~50_combout\,
	combout => \inst6|blue[7]~3_combout\);

-- Location: LCCOMB_X77_Y36_N20
\inst6|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~2_combout\ = (!\inst1|row\(31)) # (!\inst1|row\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(10),
	datad => \inst1|row\(31),
	combout => \inst6|LessThan1~2_combout\);

-- Location: LCCOMB_X76_Y33_N20
\inst6|red[7]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~81_combout\ = (!\inst1|column\(11) & (((!\inst1|column\(10)) # (!\inst1|column\(9))) # (!\inst6|process_0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~68_combout\,
	datab => \inst1|column\(11),
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst6|red[7]~81_combout\);

-- Location: LCCOMB_X79_Y34_N14
\inst6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~0_combout\ = (!\inst1|row\(9) & (((!\inst1|row\(4)) # (!\inst1|row\(3))) # (!\inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(9),
	datac => \inst1|row\(3),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan1~0_combout\);

-- Location: LCCOMB_X77_Y34_N24
\inst6|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~1_combout\ = (!\inst1|row\(6) & (\inst6|LessThan1~0_combout\ & (!\inst1|row\(7) & !\inst1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst6|LessThan1~0_combout\,
	datac => \inst1|row\(7),
	datad => \inst1|row\(8),
	combout => \inst6|LessThan1~1_combout\);

-- Location: LCCOMB_X76_Y33_N6
\inst6|red[7]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~82_combout\ = (\inst6|LessThan1~2_combout\ & ((\inst6|red[7]~81_combout\) # ((!\inst1|column\(31))))) # (!\inst6|LessThan1~2_combout\ & (\inst6|LessThan1~1_combout\ & ((\inst6|red[7]~81_combout\) # (!\inst1|column\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|red[7]~81_combout\,
	datac => \inst6|LessThan1~1_combout\,
	datad => \inst1|column\(31),
	combout => \inst6|red[7]~82_combout\);

-- Location: LCCOMB_X80_Y33_N14
\inst6|red[7]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~83_combout\ = ((\inst6|red[7]~82_combout\) # ((!\inst6|red[7]~52_combout\) # (!\inst6|red[6]~71_combout\))) # (!\inst6|red[5]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~79_combout\,
	datab => \inst6|red[7]~82_combout\,
	datac => \inst6|red[6]~71_combout\,
	datad => \inst6|red[7]~52_combout\,
	combout => \inst6|red[7]~83_combout\);

-- Location: LCCOMB_X80_Y33_N6
\inst6|red[7]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~84_combout\ = (!\inst6|columnNum\(3) & ((\inst6|red[7]~83_combout\) # ((\inst6|Equal62~0_combout\ & \inst6|process_0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal62~0_combout\,
	datab => \inst6|columnNum\(3),
	datac => \inst6|red[7]~83_combout\,
	datad => \inst6|process_0~124_combout\,
	combout => \inst6|red[7]~84_combout\);

-- Location: LCCOMB_X80_Y35_N8
\inst6|red[7]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~97_combout\ = (\inst6|columnNum\(1) & (!\inst6|process_0~129_combout\ & (\inst6|process_0~119_combout\))) # (!\inst6|columnNum\(1) & (((\inst6|process_0~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~129_combout\,
	datab => \inst6|columnNum\(1),
	datac => \inst6|process_0~119_combout\,
	datad => \inst6|process_0~138_combout\,
	combout => \inst6|red[7]~97_combout\);

-- Location: LCCOMB_X80_Y35_N16
\inst6|red[7]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~85_combout\ = (\inst6|columnNum\(0) & (((\inst6|red[7]~83_combout\) # (\inst6|red[7]~97_combout\)))) # (!\inst6|columnNum\(0) & (\inst6|columnNum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datab => \inst6|columnNum\(0),
	datac => \inst6|red[7]~83_combout\,
	datad => \inst6|red[7]~97_combout\,
	combout => \inst6|red[7]~85_combout\);

-- Location: LCCOMB_X80_Y35_N14
\inst6|red[7]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~98_combout\ = (\inst6|red[7]~83_combout\) # ((\inst6|process_0~119_combout\ & (!\inst6|process_0~137_combout\ & \inst6|red[7]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~119_combout\,
	datab => \inst6|process_0~137_combout\,
	datac => \inst6|red[7]~83_combout\,
	datad => \inst6|red[7]~85_combout\,
	combout => \inst6|red[7]~98_combout\);

-- Location: LCCOMB_X80_Y35_N30
\inst6|red[7]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~86_combout\ = (\inst6|columnNum\(0) & (((\inst6|red[7]~85_combout\)))) # (!\inst6|columnNum\(0) & ((\inst6|red[7]~98_combout\) # ((\inst6|process_0~132_combout\ & !\inst6|red[7]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~132_combout\,
	datab => \inst6|columnNum\(0),
	datac => \inst6|red[7]~98_combout\,
	datad => \inst6|red[7]~85_combout\,
	combout => \inst6|red[7]~86_combout\);

-- Location: LCCOMB_X80_Y35_N20
\inst6|red[7]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~102_combout\ = (\inst6|process_0~139_combout\ & ((\inst6|columnNum\(0) & ((!\inst6|process_0~129_combout\))) # (!\inst6|columnNum\(0) & (!\inst6|process_0~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|process_0~137_combout\,
	datac => \inst6|process_0~129_combout\,
	datad => \inst6|process_0~139_combout\,
	combout => \inst6|red[7]~102_combout\);

-- Location: LCCOMB_X80_Y35_N26
\inst6|red[7]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~87_combout\ = (\inst6|columnNum\(1) & (!\inst6|columnNum\(0))) # (!\inst6|columnNum\(1) & (((\inst6|red[7]~83_combout\) # (\inst6|red[7]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datab => \inst6|columnNum\(0),
	datac => \inst6|red[7]~83_combout\,
	datad => \inst6|red[7]~102_combout\,
	combout => \inst6|red[7]~87_combout\);

-- Location: LCCOMB_X80_Y35_N4
\inst6|red[7]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~99_combout\ = (\inst6|red[7]~83_combout\) # ((!\inst6|process_0~129_combout\ & (\inst6|red[7]~87_combout\ & \inst6|process_0~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~129_combout\,
	datab => \inst6|red[7]~83_combout\,
	datac => \inst6|red[7]~87_combout\,
	datad => \inst6|process_0~131_combout\,
	combout => \inst6|red[7]~99_combout\);

-- Location: LCCOMB_X80_Y35_N2
\inst6|red[7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~88_combout\ = (\inst6|columnNum\(1) & ((\inst6|red[7]~99_combout\) # ((!\inst6|red[7]~87_combout\ & \inst6|process_0~140_combout\)))) # (!\inst6|columnNum\(1) & (((\inst6|red[7]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datab => \inst6|red[7]~99_combout\,
	datac => \inst6|red[7]~87_combout\,
	datad => \inst6|process_0~140_combout\,
	combout => \inst6|red[7]~88_combout\);

-- Location: LCCOMB_X80_Y35_N28
\inst6|red[7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~89_combout\ = (\inst6|columnNum\(3) & ((\inst6|columnNum\(2) & (\inst6|red[7]~86_combout\)) # (!\inst6|columnNum\(2) & ((\inst6|red[7]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(3),
	datac => \inst6|red[7]~86_combout\,
	datad => \inst6|red[7]~88_combout\,
	combout => \inst6|red[7]~89_combout\);

-- Location: LCCOMB_X80_Y33_N0
\inst6|red[7]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~90_combout\ = (\inst6|red[7]~84_combout\) # ((\inst6|red[7]~89_combout\) # (!\inst6|red[7]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~84_combout\,
	datac => \inst6|red[7]~89_combout\,
	datad => \inst6|red[7]~50_combout\,
	combout => \inst6|red[7]~90_combout\);

-- Location: CLKCTRL_G5
\inst6|red[7]~90clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|red[7]~90clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|red[7]~90clkctrl_outclk\);

-- Location: LCCOMB_X57_Y65_N8
\inst6|blue[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue\(7) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|blue[7]~3_combout\)) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|blue\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~3_combout\,
	datac => \inst6|blue\(7),
	datad => \inst6|red[7]~90clkctrl_outclk\,
	combout => \inst6|blue\(7));

-- Location: LCCOMB_X81_Y33_N14
\inst6|red[6]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~91_combout\ = (\inst6|red[6]~80_combout\ & \inst6|red[5]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red[6]~80_combout\,
	datad => \inst6|red[5]~79_combout\,
	combout => \inst6|red[6]~91_combout\);

-- Location: LCCOMB_X75_Y35_N12
\inst6|red[6]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~92_combout\ = (\inst6|red[5]~39_combout\ & (((!\inst6|red[6]~71_combout\) # (!\inst1|disp_ena~q\)) # (!\inst6|red[6]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~91_combout\,
	datab => \inst6|red[5]~39_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst6|red[6]~71_combout\,
	combout => \inst6|red[6]~92_combout\);

-- Location: LCCOMB_X74_Y34_N12
\inst6|blue[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[6]~4_combout\ = (\inst6|process_0~62_combout\ & (((!\inst6|red[6]~92_combout\)))) # (!\inst6|process_0~62_combout\ & ((\inst6|red[6]~49_combout\ & (!\inst6|red[6]~48_combout\)) # (!\inst6|red[6]~49_combout\ & ((!\inst6|red[6]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~62_combout\,
	datab => \inst6|red[6]~48_combout\,
	datac => \inst6|red[6]~49_combout\,
	datad => \inst6|red[6]~92_combout\,
	combout => \inst6|blue[6]~4_combout\);

-- Location: LCCOMB_X74_Y34_N24
\inst6|blue[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue\(6) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|blue[6]~4_combout\)) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|blue\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[6]~4_combout\,
	datac => \inst6|red[7]~90clkctrl_outclk\,
	datad => \inst6|blue\(6),
	combout => \inst6|blue\(6));

-- Location: LCCOMB_X80_Y33_N2
\inst6|red[5]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~100_combout\ = (\inst6|red[7]~50_combout\ & (\inst6|red[6]~71_combout\ & (\inst6|red[6]~91_combout\ & \inst6|red[7]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~50_combout\,
	datab => \inst6|red[6]~71_combout\,
	datac => \inst6|red[6]~91_combout\,
	datad => \inst6|red[7]~52_combout\,
	combout => \inst6|red[5]~100_combout\);

-- Location: LCCOMB_X49_Y72_N16
\inst6|blue[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue\(5) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|red[5]~100_combout\))) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|blue\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|blue\(5),
	datac => \inst6|red[5]~100_combout\,
	datad => \inst6|red[7]~90clkctrl_outclk\,
	combout => \inst6|blue\(5));

-- Location: LCCOMB_X80_Y33_N24
\inst6|green[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[7]~6_combout\ = (\inst6|red[7]~50_combout\ & (((\inst6|red[6]~71_combout\ & \inst6|red[7]~52_combout\)) # (!\inst6|red[6]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~50_combout\,
	datab => \inst6|red[6]~71_combout\,
	datac => \inst6|red[6]~91_combout\,
	datad => \inst6|red[7]~52_combout\,
	combout => \inst6|green[7]~6_combout\);

-- Location: LCCOMB_X47_Y65_N8
\inst6|green[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green\(7) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|green[7]~6_combout\)) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|green\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[7]~6_combout\,
	datac => \inst6|green\(7),
	datad => \inst6|red[7]~90clkctrl_outclk\,
	combout => \inst6|green\(7));

-- Location: LCCOMB_X74_Y34_N22
\inst6|red[6]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~101_combout\ = ((!\inst6|red[6]~92_combout\ & ((!\inst6|process_0~37_combout\) # (!\inst6|process_0~64_combout\)))) # (!\inst6|red[6]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~64_combout\,
	datab => \inst6|red[6]~48_combout\,
	datac => \inst6|process_0~37_combout\,
	datad => \inst6|red[6]~92_combout\,
	combout => \inst6|red[6]~101_combout\);

-- Location: LCCOMB_X74_Y34_N6
\inst6|green[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~4_combout\ = (!\inst6|p1w~10_combout\ & (((\inst6|red[6]~49_combout\ & \inst6|p2w~11_combout\)) # (!\inst6|red[6]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~92_combout\,
	datab => \inst6|red[6]~49_combout\,
	datac => \inst6|p1w~10_combout\,
	datad => \inst6|p2w~11_combout\,
	combout => \inst6|green[6]~4_combout\);

-- Location: LCCOMB_X74_Y34_N16
\inst6|green[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~5_combout\ = (\inst6|green[6]~4_combout\) # ((\inst6|red[6]~101_combout\ & \inst6|p1w~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~101_combout\,
	datac => \inst6|p1w~10_combout\,
	datad => \inst6|green[6]~4_combout\,
	combout => \inst6|green[6]~5_combout\);

-- Location: LCCOMB_X62_Y42_N24
\inst6|green[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green\(6) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|green[6]~5_combout\))) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|green\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|green\(6),
	datac => \inst6|green[6]~5_combout\,
	datad => \inst6|red[7]~90clkctrl_outclk\,
	combout => \inst6|green\(6));

-- Location: LCCOMB_X80_Y33_N12
\inst6|red[7]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~93_combout\ = ((\inst6|red[5]~79_combout\ & ((\inst6|red[7]~52_combout\) # (!\inst6|red[6]~71_combout\)))) # (!\inst6|red[6]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~79_combout\,
	datab => \inst6|red[6]~71_combout\,
	datac => \inst6|red[6]~80_combout\,
	datad => \inst6|red[7]~52_combout\,
	combout => \inst6|red[7]~93_combout\);

-- Location: LCCOMB_X80_Y33_N8
\inst6|red[7]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~94_combout\ = (\inst6|red[7]~50_combout\ & \inst6|red[7]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~50_combout\,
	datad => \inst6|red[7]~93_combout\,
	combout => \inst6|red[7]~94_combout\);

-- Location: LCCOMB_X23_Y70_N0
\inst6|red[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red\(7) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|red[7]~94_combout\))) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|red\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red\(7),
	datac => \inst6|red[7]~94_combout\,
	datad => \inst6|red[7]~90clkctrl_outclk\,
	combout => \inst6|red\(7));

-- Location: LCCOMB_X74_Y34_N26
\inst6|red[6]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~95_combout\ = (\inst6|p1w~10_combout\ & (\inst6|red[6]~49_combout\)) # (!\inst6|p1w~10_combout\ & ((\inst6|p2w~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red[6]~49_combout\,
	datac => \inst6|p1w~10_combout\,
	datad => \inst6|p2w~11_combout\,
	combout => \inst6|red[6]~95_combout\);

-- Location: LCCOMB_X74_Y34_N20
\inst6|red[6]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~96_combout\ = (\inst6|red[6]~95_combout\ & ((\inst6|red[6]~101_combout\) # ((\inst6|p1w~10_combout\)))) # (!\inst6|red[6]~95_combout\ & (((!\inst6|red[6]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~101_combout\,
	datab => \inst6|p1w~10_combout\,
	datac => \inst6|red[6]~95_combout\,
	datad => \inst6|red[6]~92_combout\,
	combout => \inst6|red[6]~96_combout\);

-- Location: LCCOMB_X74_Y34_N2
\inst6|red[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red\(6) = (GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & (\inst6|red[6]~96_combout\)) # (!GLOBAL(\inst6|red[7]~90clkctrl_outclk\) & ((\inst6|red\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red[6]~96_combout\,
	datac => \inst6|red[7]~90clkctrl_outclk\,
	datad => \inst6|red\(6),
	combout => \inst6|red\(6));

-- Location: IOIBUF_X115_Y53_N15
\moveBackward~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_moveBackward,
	o => \moveBackward~input_o\);
END structure;


