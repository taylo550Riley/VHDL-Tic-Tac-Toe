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

-- DATE "11/23/2021 14:09:33"

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
-- moveBackward	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \inst6|red[7]~45clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|I[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|h_count~11_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|h_count~6_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
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
SIGNAL \inst1|Add1~12\ : std_logic;
SIGNAL \inst1|Add1~13_combout\ : std_logic;
SIGNAL \inst1|Add1~32_combout\ : std_logic;
SIGNAL \inst1|Add1~14\ : std_logic;
SIGNAL \inst1|Add1~15_combout\ : std_logic;
SIGNAL \inst1|Add1~26_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|Add1~16\ : std_logic;
SIGNAL \inst1|Add1~17_combout\ : std_logic;
SIGNAL \inst1|Add1~27_combout\ : std_logic;
SIGNAL \inst1|Add1~18\ : std_logic;
SIGNAL \inst1|Add1~19_combout\ : std_logic;
SIGNAL \inst1|Add1~28_combout\ : std_logic;
SIGNAL \inst1|Add1~20\ : std_logic;
SIGNAL \inst1|Add1~21_combout\ : std_logic;
SIGNAL \inst1|Add1~29_combout\ : std_logic;
SIGNAL \inst1|Add1~22\ : std_logic;
SIGNAL \inst1|Add1~23_combout\ : std_logic;
SIGNAL \inst1|Add1~25_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|Add1~11_combout\ : std_logic;
SIGNAL \inst1|Add1~31_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|LessThan7~2_combout\ : std_logic;
SIGNAL \inst1|LessThan7~3_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|v_sync~q\ : std_logic;
SIGNAL \moveFoward~input_o\ : std_logic;
SIGNAL \confirmButton~input_o\ : std_logic;
SIGNAL \inst1|LessThan7~4_combout\ : std_logic;
SIGNAL \inst6|LessThan46~0_combout\ : std_logic;
SIGNAL \inst6|process_0~25_combout\ : std_logic;
SIGNAL \inst6|process_0~26_combout\ : std_logic;
SIGNAL \inst1|row[31]~feeder_combout\ : std_logic;
SIGNAL \inst6|LessThan46~1_combout\ : std_logic;
SIGNAL \inst6|LessThan25~0_combout\ : std_logic;
SIGNAL \inst1|row[0]~0_combout\ : std_logic;
SIGNAL \inst6|process_0~31_combout\ : std_logic;
SIGNAL \inst6|LessThan57~0_combout\ : std_logic;
SIGNAL \inst1|column[31]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|LessThan6~1_combout\ : std_logic;
SIGNAL \inst6|process_0~59_combout\ : std_logic;
SIGNAL \inst6|process_0~57_combout\ : std_logic;
SIGNAL \inst6|LessThan76~0_combout\ : std_logic;
SIGNAL \inst6|LessThan76~1_combout\ : std_logic;
SIGNAL \inst6|LessThan76~2_combout\ : std_logic;
SIGNAL \inst6|LessThan60~0_combout\ : std_logic;
SIGNAL \inst1|column[0]~0_combout\ : std_logic;
SIGNAL \inst6|LessThan2~0_combout\ : std_logic;
SIGNAL \inst6|LessThan75~0_combout\ : std_logic;
SIGNAL \inst6|process_0~58_combout\ : std_logic;
SIGNAL \inst6|process_0~60_combout\ : std_logic;
SIGNAL \inst6|LessThan43~0_combout\ : std_logic;
SIGNAL \inst6|LessThan43~1_combout\ : std_logic;
SIGNAL \inst6|LessThan43~2_combout\ : std_logic;
SIGNAL \inst6|LessThan43~3_combout\ : std_logic;
SIGNAL \inst6|process_0~27_combout\ : std_logic;
SIGNAL \inst6|process_0~28_combout\ : std_logic;
SIGNAL \inst6|LessThan36~1_combout\ : std_logic;
SIGNAL \inst6|process_0~20_combout\ : std_logic;
SIGNAL \inst6|process_0~168_combout\ : std_logic;
SIGNAL \inst6|process_0~55_combout\ : std_logic;
SIGNAL \inst6|process_0~56_combout\ : std_logic;
SIGNAL \inst6|LessThan41~0_combout\ : std_logic;
SIGNAL \inst6|LessThan11~0_combout\ : std_logic;
SIGNAL \inst6|LessThan41~1_combout\ : std_logic;
SIGNAL \inst6|LessThan60~1_combout\ : std_logic;
SIGNAL \inst6|process_0~78_combout\ : std_logic;
SIGNAL \inst6|process_0~84_combout\ : std_logic;
SIGNAL \inst6|process_0~85_combout\ : std_logic;
SIGNAL \inst6|process_0~35_combout\ : std_logic;
SIGNAL \inst6|LessThan40~0_combout\ : std_logic;
SIGNAL \inst6|process_0~86_combout\ : std_logic;
SIGNAL \inst6|process_0~63_combout\ : std_logic;
SIGNAL \inst6|process_0~83_combout\ : std_logic;
SIGNAL \inst6|process_0~87_combout\ : std_logic;
SIGNAL \inst6|process_0~29_combout\ : std_logic;
SIGNAL \inst6|process_0~79_combout\ : std_logic;
SIGNAL \inst6|LessThan64~0_combout\ : std_logic;
SIGNAL \inst6|process_0~80_combout\ : std_logic;
SIGNAL \inst6|process_0~81_combout\ : std_logic;
SIGNAL \inst6|process_0~37_combout\ : std_logic;
SIGNAL \inst6|LessThan43~4_combout\ : std_logic;
SIGNAL \inst6|LessThan13~0_combout\ : std_logic;
SIGNAL \inst6|process_0~82_combout\ : std_logic;
SIGNAL \inst6|LessThan49~0_combout\ : std_logic;
SIGNAL \inst6|LessThan49~1_combout\ : std_logic;
SIGNAL \inst6|LessThan49~2_combout\ : std_logic;
SIGNAL \inst6|blue[7]~6_combout\ : std_logic;
SIGNAL \inst6|LessThan42~0_combout\ : std_logic;
SIGNAL \inst6|process_0~38_combout\ : std_logic;
SIGNAL \inst6|LessThan10~0_combout\ : std_logic;
SIGNAL \inst6|blue[7]~7_combout\ : std_logic;
SIGNAL \inst6|process_0~77_combout\ : std_logic;
SIGNAL \inst6|process_0~22_combout\ : std_logic;
SIGNAL \inst6|blue[7]~8_combout\ : std_logic;
SIGNAL \inst6|process_0~66_combout\ : std_logic;
SIGNAL \inst6|process_0~75_combout\ : std_logic;
SIGNAL \inst6|process_0~76_combout\ : std_logic;
SIGNAL \inst6|green[6]~6_combout\ : std_logic;
SIGNAL \inst6|green[6]~7_combout\ : std_logic;
SIGNAL \inst6|process_0~73_combout\ : std_logic;
SIGNAL \inst6|process_0~74_combout\ : std_logic;
SIGNAL \inst6|process_0~64_combout\ : std_logic;
SIGNAL \inst6|process_0~65_combout\ : std_logic;
SIGNAL \inst6|LessThan17~0_combout\ : std_logic;
SIGNAL \inst6|process_0~171_combout\ : std_logic;
SIGNAL \inst6|LessThan75~1_combout\ : std_logic;
SIGNAL \inst6|process_0~71_combout\ : std_logic;
SIGNAL \inst6|process_0~62_combout\ : std_logic;
SIGNAL \inst6|process_0~72_combout\ : std_logic;
SIGNAL \inst6|green[6]~5_combout\ : std_logic;
SIGNAL \inst6|process_0~69_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|process_0~170_combout\ : std_logic;
SIGNAL \inst6|process_0~70_combout\ : std_logic;
SIGNAL \inst6|process_0~21_combout\ : std_logic;
SIGNAL \inst6|green[6]~4_combout\ : std_logic;
SIGNAL \inst6|process_0~41_combout\ : std_logic;
SIGNAL \inst6|process_0~169_combout\ : std_logic;
SIGNAL \inst6|process_0~42_combout\ : std_logic;
SIGNAL \inst6|process_0~61_combout\ : std_logic;
SIGNAL \inst6|green[6]~2_combout\ : std_logic;
SIGNAL \inst6|process_0~67_combout\ : std_logic;
SIGNAL \inst6|LessThan17~1_combout\ : std_logic;
SIGNAL \inst6|LessThan17~2_combout\ : std_logic;
SIGNAL \inst6|process_0~68_combout\ : std_logic;
SIGNAL \inst6|green[6]~3_combout\ : std_logic;
SIGNAL \inst6|green[6]~8_combout\ : std_logic;
SIGNAL \inst6|blue[7]~9_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|disp_ena~q\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst6|I[0]~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|buttonStateConfirm~0_combout\ : std_logic;
SIGNAL \inst6|buttonStateConfirm~q\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~97_combout\ : std_logic;
SIGNAL \inst6|moveForwardButtonState~0_combout\ : std_logic;
SIGNAL \inst6|moveForwardButtonState~q\ : std_logic;
SIGNAL \inst6|process_0~165_combout\ : std_logic;
SIGNAL \inst6|columnNum~4_combout\ : std_logic;
SIGNAL \inst6|columnNum~12_combout\ : std_logic;
SIGNAL \moveBackward~input_o\ : std_logic;
SIGNAL \inst6|moveBackwardButtonState~0_combout\ : std_logic;
SIGNAL \inst6|moveBackwardButtonState~q\ : std_logic;
SIGNAL \inst6|process_0~166_combout\ : std_logic;
SIGNAL \inst6|columnNum~10_combout\ : std_logic;
SIGNAL \inst6|I[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst6|columnNum~6_combout\ : std_logic;
SIGNAL \inst6|columnNum~8_combout\ : std_logic;
SIGNAL \inst6|columnNum~9_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|columnNum~5_combout\ : std_logic;
SIGNAL \inst6|Add1~1_combout\ : std_logic;
SIGNAL \inst6|columnNum~11_combout\ : std_logic;
SIGNAL \inst6|columnNum~2_combout\ : std_logic;
SIGNAL \inst6|columnNum~3_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|columnNum~7_combout\ : std_logic;
SIGNAL \inst6|process_0~146_combout\ : std_logic;
SIGNAL \inst6|process_0~152_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~34_combout\ : std_logic;
SIGNAL \inst6|H[1]~0_combout\ : std_logic;
SIGNAL \inst6|process_0~139_combout\ : std_logic;
SIGNAL \inst6|E~0_combout\ : std_logic;
SIGNAL \inst6|process_0~164_combout\ : std_logic;
SIGNAL \inst6|E[1]~1_combout\ : std_logic;
SIGNAL \inst6|process_0~140_combout\ : std_logic;
SIGNAL \inst6|D[1]~0_combout\ : std_logic;
SIGNAL \inst6|D~1_combout\ : std_logic;
SIGNAL \inst6|process_0~147_combout\ : std_logic;
SIGNAL \inst6|Add5~0_combout\ : std_logic;
SIGNAL \inst6|process_0~150_combout\ : std_logic;
SIGNAL \inst6|process_0~156_combout\ : std_logic;
SIGNAL \inst6|A[1]~0_combout\ : std_logic;
SIGNAL \inst6|A~1_combout\ : std_logic;
SIGNAL \inst6|process_0~151_combout\ : std_logic;
SIGNAL \inst6|process_0~141_combout\ : std_logic;
SIGNAL \inst6|process_0~142_combout\ : std_logic;
SIGNAL \inst6|F[1]~0_combout\ : std_logic;
SIGNAL \inst6|F~1_combout\ : std_logic;
SIGNAL \inst6|process_0~149_combout\ : std_logic;
SIGNAL \inst6|process_0~159_combout\ : std_logic;
SIGNAL \inst6|G[1]~0_combout\ : std_logic;
SIGNAL \inst6|process_0~148_combout\ : std_logic;
SIGNAL \inst6|G~1_combout\ : std_logic;
SIGNAL \inst6|Add7~0_combout\ : std_logic;
SIGNAL \inst6|C~1_combout\ : std_logic;
SIGNAL \inst6|process_0~157_combout\ : std_logic;
SIGNAL \inst6|C[1]~0_combout\ : std_logic;
SIGNAL \inst6|process_0~143_combout\ : std_logic;
SIGNAL \inst6|process_0~144_combout\ : std_logic;
SIGNAL \inst6|process_0~155_combout\ : std_logic;
SIGNAL \inst6|B[1]~1_combout\ : std_logic;
SIGNAL \inst6|B[1]~2_combout\ : std_logic;
SIGNAL \inst6|B~0_combout\ : std_logic;
SIGNAL \inst6|process_0~145_combout\ : std_logic;
SIGNAL \inst6|Add3~0_combout\ : std_logic;
SIGNAL \inst6|p1~0_combout\ : std_logic;
SIGNAL \inst6|H~1_combout\ : std_logic;
SIGNAL \inst6|process_0~153_combout\ : std_logic;
SIGNAL \inst6|p1~2_combout\ : std_logic;
SIGNAL \inst6|I~1_combout\ : std_logic;
SIGNAL \inst6|p2~1_combout\ : std_logic;
SIGNAL \inst6|Add15~0_combout\ : std_logic;
SIGNAL \inst6|p2~2_combout\ : std_logic;
SIGNAL \inst6|process_0~160_combout\ : std_logic;
SIGNAL \inst6|process_0~161_combout\ : std_logic;
SIGNAL \inst6|blue[7]~13_combout\ : std_logic;
SIGNAL \inst6|process_0~162_combout\ : std_logic;
SIGNAL \inst6|I[1]~2_combout\ : std_logic;
SIGNAL \inst6|process_0~154_combout\ : std_logic;
SIGNAL \inst6|p1~1_combout\ : std_logic;
SIGNAL \inst6|p2~3_combout\ : std_logic;
SIGNAL \inst6|p2~0_combout\ : std_logic;
SIGNAL \inst6|process_0~163_combout\ : std_logic;
SIGNAL \inst6|p1~3_combout\ : std_logic;
SIGNAL \inst6|p1~4_combout\ : std_logic;
SIGNAL \inst6|process_0~158_combout\ : std_logic;
SIGNAL \inst6|Add13~0_combout\ : std_logic;
SIGNAL \inst6|Add17~0_combout\ : std_logic;
SIGNAL \inst6|Add14~2_combout\ : std_logic;
SIGNAL \inst6|Add6~1_combout\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|Add14~0_combout\ : std_logic;
SIGNAL \inst6|Add10~1\ : std_logic;
SIGNAL \inst6|Add10~2_combout\ : std_logic;
SIGNAL \inst6|Add10~0_combout\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|Add18~0_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[0]~32_combout\ : std_logic;
SIGNAL \inst6|Add2~1\ : std_logic;
SIGNAL \inst6|Add2~2_combout\ : std_logic;
SIGNAL \inst6|Add18~1\ : std_logic;
SIGNAL \inst6|Add18~2_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[0]~33\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[1]~35_combout\ : std_logic;
SIGNAL \inst6|Add2~3\ : std_logic;
SIGNAL \inst6|Add2~4_combout\ : std_logic;
SIGNAL \inst6|Add14~1_combout\ : std_logic;
SIGNAL \inst6|Add10~3\ : std_logic;
SIGNAL \inst6|Add10~4_combout\ : std_logic;
SIGNAL \inst6|Add18~3\ : std_logic;
SIGNAL \inst6|Add18~4_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[1]~36\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[2]~37_combout\ : std_logic;
SIGNAL \inst6|Add2~5\ : std_logic;
SIGNAL \inst6|Add2~6_combout\ : std_logic;
SIGNAL \inst6|Add10~5\ : std_logic;
SIGNAL \inst6|Add10~6_combout\ : std_logic;
SIGNAL \inst6|Add18~5\ : std_logic;
SIGNAL \inst6|Add18~6_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[2]~38\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[3]~39_combout\ : std_logic;
SIGNAL \inst6|Add2~7\ : std_logic;
SIGNAL \inst6|Add2~8_combout\ : std_logic;
SIGNAL \inst6|Add18~7\ : std_logic;
SIGNAL \inst6|Add18~8_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[3]~40\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[4]~41_combout\ : std_logic;
SIGNAL \inst6|Add2~9\ : std_logic;
SIGNAL \inst6|Add2~10_combout\ : std_logic;
SIGNAL \inst6|Add18~9\ : std_logic;
SIGNAL \inst6|Add18~10_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[4]~42\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[5]~43_combout\ : std_logic;
SIGNAL \inst6|Add2~11\ : std_logic;
SIGNAL \inst6|Add2~12_combout\ : std_logic;
SIGNAL \inst6|Add18~11\ : std_logic;
SIGNAL \inst6|Add18~12_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[5]~44\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[6]~45_combout\ : std_logic;
SIGNAL \inst6|Add2~13\ : std_logic;
SIGNAL \inst6|Add2~14_combout\ : std_logic;
SIGNAL \inst6|Add18~13\ : std_logic;
SIGNAL \inst6|Add18~14_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[6]~46\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[7]~47_combout\ : std_logic;
SIGNAL \inst6|process_0~45_combout\ : std_logic;
SIGNAL \inst6|process_0~44_combout\ : std_logic;
SIGNAL \inst6|Add2~15\ : std_logic;
SIGNAL \inst6|Add2~16_combout\ : std_logic;
SIGNAL \inst6|Add18~15\ : std_logic;
SIGNAL \inst6|Add18~16_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[7]~48\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[8]~49_combout\ : std_logic;
SIGNAL \inst6|Add2~17\ : std_logic;
SIGNAL \inst6|Add2~18_combout\ : std_logic;
SIGNAL \inst6|Add18~17\ : std_logic;
SIGNAL \inst6|Add18~18_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[8]~50\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[9]~51_combout\ : std_logic;
SIGNAL \inst6|Add2~19\ : std_logic;
SIGNAL \inst6|Add2~20_combout\ : std_logic;
SIGNAL \inst6|Add18~19\ : std_logic;
SIGNAL \inst6|Add18~20_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[9]~52\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[10]~53_combout\ : std_logic;
SIGNAL \inst6|Add2~21\ : std_logic;
SIGNAL \inst6|Add2~22_combout\ : std_logic;
SIGNAL \inst6|Add18~21\ : std_logic;
SIGNAL \inst6|Add18~22_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[10]~54\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[11]~55_combout\ : std_logic;
SIGNAL \inst6|process_0~46_combout\ : std_logic;
SIGNAL \inst6|Add2~23\ : std_logic;
SIGNAL \inst6|Add2~24_combout\ : std_logic;
SIGNAL \inst6|Add18~23\ : std_logic;
SIGNAL \inst6|Add18~24_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[11]~56\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[12]~57_combout\ : std_logic;
SIGNAL \inst6|Add2~25\ : std_logic;
SIGNAL \inst6|Add2~26_combout\ : std_logic;
SIGNAL \inst6|Add18~25\ : std_logic;
SIGNAL \inst6|Add18~26_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[12]~58\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[13]~59_combout\ : std_logic;
SIGNAL \inst6|Add2~27\ : std_logic;
SIGNAL \inst6|Add2~28_combout\ : std_logic;
SIGNAL \inst6|Add18~27\ : std_logic;
SIGNAL \inst6|Add18~28_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[13]~60\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[14]~61_combout\ : std_logic;
SIGNAL \inst6|Add2~29\ : std_logic;
SIGNAL \inst6|Add2~30_combout\ : std_logic;
SIGNAL \inst6|Add18~29\ : std_logic;
SIGNAL \inst6|Add18~30_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[14]~62\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[15]~63_combout\ : std_logic;
SIGNAL \inst6|process_0~47_combout\ : std_logic;
SIGNAL \inst6|process_0~48_combout\ : std_logic;
SIGNAL \inst6|p2w~11_combout\ : std_logic;
SIGNAL \inst6|p2w~9_combout\ : std_logic;
SIGNAL \inst6|p2w~8_combout\ : std_logic;
SIGNAL \inst6|p2w~10_combout\ : std_logic;
SIGNAL \inst6|p2w~12_combout\ : std_logic;
SIGNAL \inst6|p2w~3_combout\ : std_logic;
SIGNAL \inst6|red[7]~11_combout\ : std_logic;
SIGNAL \inst6|p2w~2_combout\ : std_logic;
SIGNAL \inst6|red[7]~10_combout\ : std_logic;
SIGNAL \inst6|p2w~4_combout\ : std_logic;
SIGNAL \inst6|p2w~5_combout\ : std_logic;
SIGNAL \inst6|red[7]~12_combout\ : std_logic;
SIGNAL \inst6|p2w~6_combout\ : std_logic;
SIGNAL \inst6|p2w~7_combout\ : std_logic;
SIGNAL \inst6|p2w~13_combout\ : std_logic;
SIGNAL \inst6|red[7]~16_combout\ : std_logic;
SIGNAL \inst6|red[7]~15_combout\ : std_logic;
SIGNAL \inst6|p1w~6_combout\ : std_logic;
SIGNAL \inst6|p1w~7_combout\ : std_logic;
SIGNAL \inst6|red[6]~17_combout\ : std_logic;
SIGNAL \inst6|red[7]~18_combout\ : std_logic;
SIGNAL \inst6|red[7]~19_combout\ : std_logic;
SIGNAL \inst6|p1w~4_combout\ : std_logic;
SIGNAL \inst6|p1w~5_combout\ : std_logic;
SIGNAL \inst6|p1w~2_combout\ : std_logic;
SIGNAL \inst6|red[7]~14_combout\ : std_logic;
SIGNAL \inst6|p1w~1_combout\ : std_logic;
SIGNAL \inst6|p1w~0_combout\ : std_logic;
SIGNAL \inst6|p1w~3_combout\ : std_logic;
SIGNAL \inst6|p1w~8_combout\ : std_logic;
SIGNAL \inst6|Add2~31\ : std_logic;
SIGNAL \inst6|Add2~32_combout\ : std_logic;
SIGNAL \inst6|Add18~31\ : std_logic;
SIGNAL \inst6|Add18~32_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[15]~64\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[16]~65_combout\ : std_logic;
SIGNAL \inst6|Add2~33\ : std_logic;
SIGNAL \inst6|Add2~34_combout\ : std_logic;
SIGNAL \inst6|Add18~33\ : std_logic;
SIGNAL \inst6|Add18~34_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[16]~66\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[17]~67_combout\ : std_logic;
SIGNAL \inst6|Add2~35\ : std_logic;
SIGNAL \inst6|Add2~36_combout\ : std_logic;
SIGNAL \inst6|Add18~35\ : std_logic;
SIGNAL \inst6|Add18~36_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[17]~68\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[18]~69_combout\ : std_logic;
SIGNAL \inst6|Add2~37\ : std_logic;
SIGNAL \inst6|Add2~38_combout\ : std_logic;
SIGNAL \inst6|Add18~37\ : std_logic;
SIGNAL \inst6|Add18~38_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[18]~70\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[19]~71_combout\ : std_logic;
SIGNAL \inst6|Add2~39\ : std_logic;
SIGNAL \inst6|Add2~40_combout\ : std_logic;
SIGNAL \inst6|Add18~39\ : std_logic;
SIGNAL \inst6|Add18~40_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[19]~72\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[20]~73_combout\ : std_logic;
SIGNAL \inst6|Add2~41\ : std_logic;
SIGNAL \inst6|Add2~42_combout\ : std_logic;
SIGNAL \inst6|Add18~41\ : std_logic;
SIGNAL \inst6|Add18~42_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[20]~74\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~75_combout\ : std_logic;
SIGNAL \inst6|Add2~43\ : std_logic;
SIGNAL \inst6|Add2~44_combout\ : std_logic;
SIGNAL \inst6|Add18~43\ : std_logic;
SIGNAL \inst6|Add18~44_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[21]~76\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[22]~77_combout\ : std_logic;
SIGNAL \inst6|Add2~45\ : std_logic;
SIGNAL \inst6|Add2~46_combout\ : std_logic;
SIGNAL \inst6|Add18~45\ : std_logic;
SIGNAL \inst6|Add18~46_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[22]~78\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[23]~79_combout\ : std_logic;
SIGNAL \inst6|Add2~47\ : std_logic;
SIGNAL \inst6|Add2~48_combout\ : std_logic;
SIGNAL \inst6|Add18~47\ : std_logic;
SIGNAL \inst6|Add18~48_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[23]~80\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[24]~81_combout\ : std_logic;
SIGNAL \inst6|Add2~49\ : std_logic;
SIGNAL \inst6|Add2~50_combout\ : std_logic;
SIGNAL \inst6|Add18~49\ : std_logic;
SIGNAL \inst6|Add18~50_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[24]~82\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[25]~83_combout\ : std_logic;
SIGNAL \inst6|Add2~51\ : std_logic;
SIGNAL \inst6|Add2~52_combout\ : std_logic;
SIGNAL \inst6|Add18~51\ : std_logic;
SIGNAL \inst6|Add18~52_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[25]~84\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[26]~85_combout\ : std_logic;
SIGNAL \inst6|Add2~53\ : std_logic;
SIGNAL \inst6|Add2~54_combout\ : std_logic;
SIGNAL \inst6|Add18~53\ : std_logic;
SIGNAL \inst6|Add18~54_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[26]~86\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[27]~87_combout\ : std_logic;
SIGNAL \inst6|process_0~51_combout\ : std_logic;
SIGNAL \inst6|process_0~49_combout\ : std_logic;
SIGNAL \inst6|process_0~50_combout\ : std_logic;
SIGNAL \inst6|Add2~55\ : std_logic;
SIGNAL \inst6|Add2~56_combout\ : std_logic;
SIGNAL \inst6|Add18~55\ : std_logic;
SIGNAL \inst6|Add18~56_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[27]~88\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[28]~89_combout\ : std_logic;
SIGNAL \inst6|Add2~57\ : std_logic;
SIGNAL \inst6|Add2~58_combout\ : std_logic;
SIGNAL \inst6|Add18~57\ : std_logic;
SIGNAL \inst6|Add18~58_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[28]~90\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[29]~91_combout\ : std_logic;
SIGNAL \inst6|Add2~59\ : std_logic;
SIGNAL \inst6|Add2~60_combout\ : std_logic;
SIGNAL \inst6|Add18~59\ : std_logic;
SIGNAL \inst6|Add18~60_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[29]~92\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[30]~93_combout\ : std_logic;
SIGNAL \inst6|Add2~61\ : std_logic;
SIGNAL \inst6|Add2~62_combout\ : std_logic;
SIGNAL \inst6|Add18~61\ : std_logic;
SIGNAL \inst6|Add18~62_combout\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[30]~94\ : std_logic;
SIGNAL \inst6|buttonConfirmCounter[31]~95_combout\ : std_logic;
SIGNAL \inst6|process_0~52_combout\ : std_logic;
SIGNAL \inst6|process_0~53_combout\ : std_logic;
SIGNAL \inst6|process_0~54_combout\ : std_logic;
SIGNAL \inst6|gameT~combout\ : std_logic;
SIGNAL \inst6|LessThan47~0_combout\ : std_logic;
SIGNAL \inst6|process_0~30_combout\ : std_logic;
SIGNAL \inst6|LessThan34~0_combout\ : std_logic;
SIGNAL \inst6|process_0~32_combout\ : std_logic;
SIGNAL \inst6|process_0~33_combout\ : std_logic;
SIGNAL \inst6|process_0~34_combout\ : std_logic;
SIGNAL \inst6|blue[7]~1_combout\ : std_logic;
SIGNAL \inst6|LessThan54~0_combout\ : std_logic;
SIGNAL \inst6|process_0~167_combout\ : std_logic;
SIGNAL \inst6|process_0~43_combout\ : std_logic;
SIGNAL \inst6|blue[7]~3_combout\ : std_logic;
SIGNAL \inst6|process_0~23_combout\ : std_logic;
SIGNAL \inst6|process_0~24_combout\ : std_logic;
SIGNAL \inst6|blue[7]~0_combout\ : std_logic;
SIGNAL \inst6|process_0~40_combout\ : std_logic;
SIGNAL \inst6|process_0~36_combout\ : std_logic;
SIGNAL \inst6|process_0~39_combout\ : std_logic;
SIGNAL \inst6|blue[7]~2_combout\ : std_logic;
SIGNAL \inst6|blue[7]~4_combout\ : std_logic;
SIGNAL \inst6|blue[7]~5_combout\ : std_logic;
SIGNAL \inst6|blue[7]~10_combout\ : std_logic;
SIGNAL \inst6|process_0~96_combout\ : std_logic;
SIGNAL \inst6|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|process_0~97_combout\ : std_logic;
SIGNAL \inst6|LessThan29~0_combout\ : std_logic;
SIGNAL \inst6|process_0~98_combout\ : std_logic;
SIGNAL \inst6|process_0~101_combout\ : std_logic;
SIGNAL \inst6|process_0~102_combout\ : std_logic;
SIGNAL \inst6|process_0~99_combout\ : std_logic;
SIGNAL \inst6|process_0~100_combout\ : std_logic;
SIGNAL \inst6|process_0~103_combout\ : std_logic;
SIGNAL \inst6|LessThan6~1_combout\ : std_logic;
SIGNAL \inst6|LessThan6~0_combout\ : std_logic;
SIGNAL \inst6|LessThan6~2_combout\ : std_logic;
SIGNAL \inst6|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|LessThan7~1_combout\ : std_logic;
SIGNAL \inst6|process_0~92_combout\ : std_logic;
SIGNAL \inst6|process_0~88_combout\ : std_logic;
SIGNAL \inst6|process_0~89_combout\ : std_logic;
SIGNAL \inst6|LessThan2~1_combout\ : std_logic;
SIGNAL \inst6|process_0~90_combout\ : std_logic;
SIGNAL \inst6|process_0~91_combout\ : std_logic;
SIGNAL \inst6|red[7]~22_combout\ : std_logic;
SIGNAL \inst6|process_0~93_combout\ : std_logic;
SIGNAL \inst6|process_0~94_combout\ : std_logic;
SIGNAL \inst6|process_0~95_combout\ : std_logic;
SIGNAL \inst6|red[7]~23_combout\ : std_logic;
SIGNAL \inst6|LessThan25~1_combout\ : std_logic;
SIGNAL \inst6|LessThan25~2_combout\ : std_logic;
SIGNAL \inst6|LessThan24~0_combout\ : std_logic;
SIGNAL \inst6|LessThan24~1_combout\ : std_logic;
SIGNAL \inst6|red[7]~24_combout\ : std_logic;
SIGNAL \inst6|process_0~113_combout\ : std_logic;
SIGNAL \inst6|process_0~114_combout\ : std_logic;
SIGNAL \inst6|process_0~115_combout\ : std_logic;
SIGNAL \inst6|process_0~116_combout\ : std_logic;
SIGNAL \inst6|red[7]~32_combout\ : std_logic;
SIGNAL \inst6|process_0~107_combout\ : std_logic;
SIGNAL \inst6|process_0~108_combout\ : std_logic;
SIGNAL \inst6|process_0~105_combout\ : std_logic;
SIGNAL \inst6|process_0~106_combout\ : std_logic;
SIGNAL \inst6|process_0~109_combout\ : std_logic;
SIGNAL \inst6|LessThan36~0_combout\ : std_logic;
SIGNAL \inst6|process_0~110_combout\ : std_logic;
SIGNAL \inst6|red[7]~55_combout\ : std_logic;
SIGNAL \inst6|green[6]~12_combout\ : std_logic;
SIGNAL \inst6|LessThan26~0_combout\ : std_logic;
SIGNAL \inst6|red[7]~28_combout\ : std_logic;
SIGNAL \inst6|LessThan27~0_combout\ : std_logic;
SIGNAL \inst6|red[7]~29_combout\ : std_logic;
SIGNAL \inst6|red[7]~30_combout\ : std_logic;
SIGNAL \inst6|red[7]~56_combout\ : std_logic;
SIGNAL \inst6|red[7]~33_combout\ : std_logic;
SIGNAL \inst6|green[6]~13_combout\ : std_logic;
SIGNAL \inst6|process_0~104_combout\ : std_logic;
SIGNAL \inst6|red[7]~25_combout\ : std_logic;
SIGNAL \inst6|LessThan18~0_combout\ : std_logic;
SIGNAL \inst6|LessThan18~1_combout\ : std_logic;
SIGNAL \inst6|LessThan19~0_combout\ : std_logic;
SIGNAL \inst6|red[6]~26_combout\ : std_logic;
SIGNAL \inst6|red[6]~27_combout\ : std_logic;
SIGNAL \inst6|green[6]~9_combout\ : std_logic;
SIGNAL \inst6|process_0~111_combout\ : std_logic;
SIGNAL \inst6|red[7]~31_combout\ : std_logic;
SIGNAL \inst6|green[6]~10_combout\ : std_logic;
SIGNAL \inst6|process_0~112_combout\ : std_logic;
SIGNAL \inst6|green[6]~28_combout\ : std_logic;
SIGNAL \inst6|green[6]~11_combout\ : std_logic;
SIGNAL \inst6|green[6]~14_combout\ : std_logic;
SIGNAL \inst6|process_0~117_combout\ : std_logic;
SIGNAL \inst6|process_0~118_combout\ : std_logic;
SIGNAL \inst6|process_0~119_combout\ : std_logic;
SIGNAL \inst6|process_0~120_combout\ : std_logic;
SIGNAL \inst6|LessThan28~0_combout\ : std_logic;
SIGNAL \inst6|LessThan29~1_combout\ : std_logic;
SIGNAL \inst6|LessThan29~2_combout\ : std_logic;
SIGNAL \inst6|LessThan29~3_combout\ : std_logic;
SIGNAL \inst6|process_0~135_combout\ : std_logic;
SIGNAL \inst6|process_0~136_combout\ : std_logic;
SIGNAL \inst6|process_0~122_combout\ : std_logic;
SIGNAL \inst6|process_0~123_combout\ : std_logic;
SIGNAL \inst6|process_0~124_combout\ : std_logic;
SIGNAL \inst6|process_0~125_combout\ : std_logic;
SIGNAL \inst6|process_0~126_combout\ : std_logic;
SIGNAL \inst6|LessThan30~0_combout\ : std_logic;
SIGNAL \inst6|process_0~128_combout\ : std_logic;
SIGNAL \inst6|LessThan31~3_combout\ : std_logic;
SIGNAL \inst6|LessThan31~2_combout\ : std_logic;
SIGNAL \inst6|process_0~129_combout\ : std_logic;
SIGNAL \inst6|process_0~138_combout\ : std_logic;
SIGNAL \inst6|process_0~137_combout\ : std_logic;
SIGNAL \inst6|process_0~172_combout\ : std_logic;
SIGNAL \inst6|process_0~132_combout\ : std_logic;
SIGNAL \inst6|process_0~131_combout\ : std_logic;
SIGNAL \inst6|process_0~133_combout\ : std_logic;
SIGNAL \inst6|process_0~174_combout\ : std_logic;
SIGNAL \inst6|blue[7]~16_combout\ : std_logic;
SIGNAL \inst6|blue[7]~17_combout\ : std_logic;
SIGNAL \inst6|process_0~173_combout\ : std_logic;
SIGNAL \inst6|process_0~130_combout\ : std_logic;
SIGNAL \inst6|blue[7]~14_combout\ : std_logic;
SIGNAL \inst6|LessThan38~0_combout\ : std_logic;
SIGNAL \inst6|LessThan38~1_combout\ : std_logic;
SIGNAL \inst6|LessThan39~1_combout\ : std_logic;
SIGNAL \inst6|LessThan39~0_combout\ : std_logic;
SIGNAL \inst6|LessThan39~2_combout\ : std_logic;
SIGNAL \inst6|process_0~121_combout\ : std_logic;
SIGNAL \inst6|process_0~134_combout\ : std_logic;
SIGNAL \inst6|process_0~127_combout\ : std_logic;
SIGNAL \inst6|blue[7]~15_combout\ : std_logic;
SIGNAL \inst6|blue[7]~18_combout\ : std_logic;
SIGNAL \inst6|red[7]~37_combout\ : std_logic;
SIGNAL \inst6|green[6]~18_combout\ : std_logic;
SIGNAL \inst6|red[7]~36_combout\ : std_logic;
SIGNAL \inst6|red[7]~34_combout\ : std_logic;
SIGNAL \inst6|red[7]~35_combout\ : std_logic;
SIGNAL \inst6|green[6]~16_combout\ : std_logic;
SIGNAL \inst6|red[7]~13_combout\ : std_logic;
SIGNAL \inst6|green[6]~17_combout\ : std_logic;
SIGNAL \inst6|green[6]~15_combout\ : std_logic;
SIGNAL \inst6|green[6]~19_combout\ : std_logic;
SIGNAL \inst6|green[6]~20_combout\ : std_logic;
SIGNAL \inst6|red[5]~38_combout\ : std_logic;
SIGNAL \inst6|blue[7]~19_combout\ : std_logic;
SIGNAL \inst6|blue[7]~12_combout\ : std_logic;
SIGNAL \inst6|blue[7]~11_combout\ : std_logic;
SIGNAL \inst6|red[5]~20_combout\ : std_logic;
SIGNAL \inst6|red[5]~21_combout\ : std_logic;
SIGNAL \inst6|blue[7]~20_combout\ : std_logic;
SIGNAL \inst6|red[7]~39_combout\ : std_logic;
SIGNAL \inst6|LessThan1~0_combout\ : std_logic;
SIGNAL \inst6|LessThan1~1_combout\ : std_logic;
SIGNAL \inst6|red[7]~40_combout\ : std_logic;
SIGNAL \inst6|red[7]~41_combout\ : std_logic;
SIGNAL \inst6|red[7]~42_combout\ : std_logic;
SIGNAL \inst6|red[7]~43_combout\ : std_logic;
SIGNAL \inst6|red[7]~59_combout\ : std_logic;
SIGNAL \inst6|red[7]~58_combout\ : std_logic;
SIGNAL \inst6|red[7]~60_combout\ : std_logic;
SIGNAL \inst6|red[7]~57_combout\ : std_logic;
SIGNAL \inst6|red[7]~61_combout\ : std_logic;
SIGNAL \inst6|red[7]~62_combout\ : std_logic;
SIGNAL \inst6|red[7]~44_combout\ : std_logic;
SIGNAL \inst6|red[7]~45_combout\ : std_logic;
SIGNAL \inst6|red[7]~45clkctrl_outclk\ : std_logic;
SIGNAL \inst6|red[6]~46_combout\ : std_logic;
SIGNAL \inst6|blue[6]~21_combout\ : std_logic;
SIGNAL \inst6|blue[6]~22_combout\ : std_logic;
SIGNAL \inst6|blue[6]~23_combout\ : std_logic;
SIGNAL \inst6|red[6]~47_combout\ : std_logic;
SIGNAL \inst6|green[5]~21_combout\ : std_logic;
SIGNAL \inst6|green[7]~22_combout\ : std_logic;
SIGNAL \inst6|green[6]~24_combout\ : std_logic;
SIGNAL \inst6|green[6]~25_combout\ : std_logic;
SIGNAL \inst6|red[7]~48_combout\ : std_logic;
SIGNAL \inst6|green[6]~23_combout\ : std_logic;
SIGNAL \inst6|green[6]~26_combout\ : std_logic;
SIGNAL \inst6|red[7]~50_combout\ : std_logic;
SIGNAL \inst6|red[7]~49_combout\ : std_logic;
SIGNAL \inst6|red[7]~51_combout\ : std_logic;
SIGNAL \inst6|green[6]~27_combout\ : std_logic;
SIGNAL \inst6|red[6]~52_combout\ : std_logic;
SIGNAL \inst6|red[5]~53_combout\ : std_logic;
SIGNAL \inst6|blue[7]~24_combout\ : std_logic;
SIGNAL \inst6|red[5]~54_combout\ : std_logic;
SIGNAL \inst6|H\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|C\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|buttonConfirmCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|columnNum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst6|p1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|A\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|B\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|D\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|I\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|F\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|E\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|p2\ : std_logic_vector(31 DOWNTO 0);
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

\inst6|red[7]~45clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|red[7]~45_combout\);

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst6|red\(5),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X72_Y34_N4
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

-- Location: LCCOMB_X72_Y34_N6
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

-- Location: LCCOMB_X70_Y38_N4
\inst1|h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~10_combout\ = (\inst1|Add0~2_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~10_combout\);

-- Location: FF_X72_Y34_N29
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

-- Location: LCCOMB_X72_Y34_N8
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

-- Location: LCCOMB_X70_Y38_N20
\inst1|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~9_combout\ = (\inst1|Add0~4_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~9_combout\);

-- Location: FF_X72_Y34_N9
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

-- Location: LCCOMB_X72_Y34_N10
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

-- Location: LCCOMB_X70_Y38_N2
\inst1|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~8_combout\ = (\inst1|Add0~6_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|h_count\(11),
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~8_combout\);

-- Location: FF_X72_Y34_N11
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

-- Location: LCCOMB_X72_Y34_N12
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

-- Location: LCCOMB_X69_Y35_N24
\inst1|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~7_combout\ = (\inst1|Add0~8_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~7_combout\);

-- Location: FF_X72_Y34_N13
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

-- Location: LCCOMB_X72_Y34_N14
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

-- Location: LCCOMB_X72_Y34_N16
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

-- Location: LCCOMB_X68_Y37_N8
\inst1|h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~5_combout\ = (\inst1|Add0~12_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~5_combout\);

-- Location: FF_X72_Y34_N17
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

-- Location: LCCOMB_X72_Y34_N18
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

-- Location: LCCOMB_X68_Y37_N0
\inst1|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~4_combout\ = (\inst1|Add0~14_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~4_combout\);

-- Location: FF_X72_Y34_N19
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

-- Location: LCCOMB_X72_Y34_N20
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

-- Location: LCCOMB_X68_Y37_N26
\inst1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~3_combout\ = (\inst1|Add0~16_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|h_count\(11),
	datad => \inst1|h_count\(10),
	combout => \inst1|h_count~3_combout\);

-- Location: FF_X72_Y34_N21
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

-- Location: LCCOMB_X72_Y34_N22
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

-- Location: LCCOMB_X67_Y37_N26
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

-- Location: FF_X72_Y34_N1
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

-- Location: LCCOMB_X72_Y34_N24
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

-- Location: LCCOMB_X67_Y37_N4
\inst1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~20_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|h_count\(10),
	datad => \inst1|h_count\(11),
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X72_Y34_N25
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

-- Location: LCCOMB_X72_Y34_N30
\inst1|h_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~11_combout\ = (\inst1|Add0~0_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|h_count\(10),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|h_count\(11),
	combout => \inst1|h_count~11_combout\);

-- Location: FF_X72_Y34_N31
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

-- Location: LCCOMB_X72_Y34_N28
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

-- Location: LCCOMB_X72_Y34_N2
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst1|h_count\(7)) # ((\inst1|h_count\(8)) # ((\inst1|h_count\(5)) # (\inst1|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(6),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X72_Y34_N0
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

-- Location: LCCOMB_X72_Y34_N26
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

-- Location: LCCOMB_X67_Y37_N18
\inst1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~22_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|h_count\(10),
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|h_count\(11),
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X67_Y37_N7
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

-- Location: LCCOMB_X69_Y38_N2
\inst1|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~6_combout\ = (\inst1|Add0~10_combout\ & (((!\inst1|process_0~2_combout\ & !\inst1|h_count\(10))) # (!\inst1|h_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|h_count\(10),
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|h_count~6_combout\);

-- Location: FF_X72_Y34_N3
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

-- Location: LCCOMB_X68_Y37_N12
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|Add0~12_combout\ & ((\inst1|Add0~10_combout\) # (\inst1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|Add0~12_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X68_Y37_N20
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

-- Location: LCCOMB_X68_Y37_N10
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|process_0~3_combout\) # ((\inst1|Add0~16_combout\) # ((\inst1|process_0~4_combout\ & \inst1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X68_Y37_N2
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|process_0~5_combout\) # (((\inst1|Add0~18_combout\) # (\inst1|Add0~20_combout\)) # (!\inst1|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~5_combout\,
	datab => \inst1|Add0~22_combout\,
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X68_Y37_N3
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

-- Location: LCCOMB_X65_Y36_N10
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

-- Location: LCCOMB_X66_Y36_N6
\inst1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~7_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~0_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(0),
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|Add1~7_combout\);

-- Location: FF_X66_Y36_N7
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

-- Location: LCCOMB_X65_Y36_N12
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

-- Location: LCCOMB_X63_Y35_N0
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|Add1~2_combout\ & \inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datab => \inst1|Add1~2_combout\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~8_combout\);

-- Location: FF_X66_Y36_N29
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

-- Location: LCCOMB_X65_Y36_N14
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

-- Location: LCCOMB_X66_Y35_N14
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\ & \inst1|Add1~4_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|process_0~3_combout\,
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|Add1~6_combout\);

-- Location: FF_X65_Y36_N15
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

-- Location: LCCOMB_X65_Y36_N16
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

-- Location: LCCOMB_X65_Y35_N0
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = (\inst1|process_0~3_combout\ & (\inst1|Add1~9_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~9_combout\,
	datab => \inst1|v_count\(3),
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~30_combout\);

-- Location: FF_X65_Y35_N27
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X65_Y36_N18
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

-- Location: LCCOMB_X65_Y36_N20
\inst1|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~13_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~12\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~12\) # (GND)))
-- \inst1|Add1~14\ = CARRY((!\inst1|Add1~12\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~12\,
	combout => \inst1|Add1~13_combout\,
	cout => \inst1|Add1~14\);

-- Location: LCCOMB_X66_Y35_N8
\inst1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~32_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\ & \inst1|Add1~13_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add1~13_combout\,
	combout => \inst1|Add1~32_combout\);

-- Location: FF_X66_Y36_N5
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

-- Location: LCCOMB_X65_Y36_N22
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

-- Location: LCCOMB_X65_Y36_N0
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\ & \inst1|Add1~15_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|v_count\(6),
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add1~15_combout\,
	combout => \inst1|Add1~26_combout\);

-- Location: FF_X65_Y36_N23
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

-- Location: LCCOMB_X66_Y36_N28
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

-- Location: LCCOMB_X66_Y36_N4
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (((!\inst1|v_count\(0) & \inst1|LessThan1~0_combout\)) # (!\inst1|v_count\(5))) # (!\inst1|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(0),
	datab => \inst1|v_count\(6),
	datac => \inst1|v_count\(5),
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X65_Y36_N24
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

-- Location: LCCOMB_X66_Y36_N30
\inst1|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~27_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|Add1~17_combout\ & \inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|v_count\(7),
	datac => \inst1|Add1~17_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~27_combout\);

-- Location: FF_X65_Y36_N25
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

-- Location: LCCOMB_X65_Y36_N26
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

-- Location: LCCOMB_X66_Y36_N8
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~19_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~19_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~28_combout\);

-- Location: FF_X66_Y36_N25
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

-- Location: LCCOMB_X65_Y36_N28
\inst1|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~21_combout\ = (\inst1|v_count\(9) & (!\inst1|Add1~20\)) # (!\inst1|v_count\(9) & ((\inst1|Add1~20\) # (GND)))
-- \inst1|Add1~22\ = CARRY((!\inst1|Add1~20\) # (!\inst1|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	datad => VCC,
	cin => \inst1|Add1~20\,
	combout => \inst1|Add1~21_combout\,
	cout => \inst1|Add1~22\);

-- Location: LCCOMB_X66_Y36_N10
\inst1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~29_combout\ = (\inst1|process_0~3_combout\ & (\inst1|Add1~21_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|Add1~21_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~29_combout\);

-- Location: FF_X66_Y36_N17
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

-- Location: LCCOMB_X65_Y36_N30
\inst1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~23_combout\ = \inst1|v_count\(10) $ (!\inst1|Add1~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(10),
	cin => \inst1|Add1~22\,
	combout => \inst1|Add1~23_combout\);

-- Location: LCCOMB_X66_Y36_N14
\inst1|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~25_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~23_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|Add1~23_combout\,
	datad => \inst1|v_count\(10),
	combout => \inst1|Add1~25_combout\);

-- Location: FF_X66_Y36_N21
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

-- Location: LCCOMB_X66_Y36_N16
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|v_count\(7) & (!\inst1|v_count\(9) & !\inst1|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datac => \inst1|v_count\(9),
	datad => \inst1|v_count\(8),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X66_Y36_N20
\inst1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = ((\inst1|LessThan1~1_combout\ & \inst1|LessThan1~2_combout\)) # (!\inst1|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~1_combout\,
	datac => \inst1|v_count\(10),
	datad => \inst1|LessThan1~2_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X65_Y36_N6
\inst1|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~31_combout\ = (\inst1|process_0~3_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~11_combout\))) # (!\inst1|process_0~3_combout\ & (((\inst1|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~11_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|Add1~31_combout\);

-- Location: FF_X65_Y36_N19
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

-- Location: LCCOMB_X66_Y36_N18
\inst1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (\inst1|process_0~3_combout\ & (((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~3_combout\ & (\inst1|v_count\(4) & (\inst1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|v_count\(4),
	datac => \inst1|v_count\(5),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: LCCOMB_X65_Y36_N8
\inst1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~2_combout\ = (\inst1|LessThan7~1_combout\ & ((\inst1|Add1~11_combout\) # (!\inst1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|LessThan7~1_combout\,
	datad => \inst1|Add1~11_combout\,
	combout => \inst1|LessThan7~2_combout\);

-- Location: LCCOMB_X66_Y36_N26
\inst1|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~3_combout\ = (\inst1|LessThan7~2_combout\ & (\inst1|Add1~30_combout\ & ((\inst1|Add1~13_combout\) # (!\inst1|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~2_combout\,
	datab => \inst1|Add1~13_combout\,
	datac => \inst1|Add1~30_combout\,
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|LessThan7~3_combout\);

-- Location: LCCOMB_X66_Y36_N24
\inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (!\inst1|Add1~27_combout\ & (!\inst1|Add1~26_combout\ & (!\inst1|Add1~28_combout\ & !\inst1|Add1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~27_combout\,
	datab => \inst1|Add1~26_combout\,
	datac => \inst1|Add1~28_combout\,
	datad => \inst1|Add1~29_combout\,
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X66_Y36_N0
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

-- Location: LCCOMB_X65_Y36_N2
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|LessThan7~3_combout\ & (\inst1|LessThan7~0_combout\ & (!\inst1|process_0~7_combout\ & !\inst1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~3_combout\,
	datab => \inst1|LessThan7~0_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|Add1~6_combout\,
	combout => \inst1|process_0~8_combout\);

-- Location: FF_X65_Y36_N3
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

-- Location: LCCOMB_X66_Y36_N12
\inst1|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~4_combout\ = ((!\inst1|LessThan7~3_combout\ & \inst1|LessThan7~0_combout\)) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~3_combout\,
	datac => \inst1|Add1~25_combout\,
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|LessThan7~4_combout\);

-- Location: FF_X65_Y36_N7
\inst1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~31_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(4));

-- Location: FF_X65_Y35_N1
\inst1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~30_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(3));

-- Location: FF_X65_Y35_N13
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
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(2));

-- Location: LCCOMB_X66_Y37_N0
\inst6|LessThan46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan46~0_combout\ = (!\inst1|row\(4) & (!\inst1|row\(3) & !\inst1|row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datac => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan46~0_combout\);

-- Location: FF_X66_Y36_N15
\inst1|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~25_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(10));

-- Location: FF_X66_Y36_N31
\inst1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~27_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(7));

-- Location: FF_X66_Y36_N9
\inst1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~28_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(8));

-- Location: FF_X66_Y36_N11
\inst1|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~29_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(9));

-- Location: LCCOMB_X66_Y35_N24
\inst6|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~25_combout\ = (!\inst1|row\(10) & (!\inst1|row\(7) & (!\inst1|row\(8) & !\inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(7),
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst6|process_0~25_combout\);

-- Location: FF_X66_Y35_N9
\inst1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~32_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(5));

-- Location: FF_X66_Y35_N1
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
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(6));

-- Location: LCCOMB_X65_Y37_N24
\inst6|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~26_combout\ = (\inst1|row\(5) & \inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~26_combout\);

-- Location: LCCOMB_X66_Y35_N6
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

-- Location: FF_X66_Y35_N7
\inst1|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[31]~feeder_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(31));

-- Location: LCCOMB_X66_Y38_N4
\inst6|LessThan46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan46~1_combout\ = ((\inst6|process_0~25_combout\ & ((\inst6|LessThan46~0_combout\) # (!\inst6|process_0~26_combout\)))) # (!\inst1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan46~0_combout\,
	datab => \inst6|process_0~25_combout\,
	datac => \inst6|process_0~26_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|LessThan46~1_combout\);

-- Location: FF_X65_Y35_N7
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
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(1));

-- Location: LCCOMB_X65_Y35_N2
\inst6|LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~0_combout\ = (!\inst1|row\(1) & (!\inst1|row\(3) & !\inst1|row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan25~0_combout\);

-- Location: LCCOMB_X65_Y35_N24
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

-- Location: FF_X65_Y35_N25
\inst1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[0]~0_combout\,
	ena => \inst1|LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(0));

-- Location: LCCOMB_X65_Y35_N14
\inst6|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~31_combout\ = (!\inst1|row\(5) & (((\inst6|LessThan25~0_combout\ & \inst1|row\(0))) # (!\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan25~0_combout\,
	datac => \inst1|row\(0),
	datad => \inst1|row\(4),
	combout => \inst6|process_0~31_combout\);

-- Location: LCCOMB_X66_Y38_N26
\inst6|LessThan57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan57~0_combout\ = (\inst1|row\(31) & (((!\inst6|process_0~31_combout\ & \inst1|row\(6))) # (!\inst6|process_0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~31_combout\,
	datab => \inst1|row\(6),
	datac => \inst6|process_0~25_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|LessThan57~0_combout\);

-- Location: LCCOMB_X67_Y37_N2
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

-- Location: LCCOMB_X68_Y37_N14
\inst1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = ((!\inst1|Add0~14_combout\) # (!\inst1|Add0~16_combout\)) # (!\inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|LessThan6~0_combout\);

-- Location: LCCOMB_X68_Y37_N24
\inst1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~1_combout\ = (\inst1|process_0~3_combout\) # ((!\inst1|Add0~22_combout\ & ((\inst1|LessThan6~0_combout\) # (!\inst1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|Add0~22_combout\,
	datac => \inst1|LessThan6~0_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|LessThan6~1_combout\);

-- Location: FF_X67_Y37_N3
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

-- Location: LCCOMB_X67_Y38_N20
\inst6|process_0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~59_combout\ = (\inst6|LessThan46~1_combout\ & (\inst6|LessThan57~0_combout\ & \inst1|column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan46~1_combout\,
	datac => \inst6|LessThan57~0_combout\,
	datad => \inst1|column\(31),
	combout => \inst6|process_0~59_combout\);

-- Location: FF_X68_Y37_N27
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

-- Location: FF_X68_Y37_N1
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

-- Location: LCCOMB_X68_Y38_N30
\inst6|process_0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~57_combout\ = (\inst1|column\(8) & \inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~57_combout\);

-- Location: FF_X69_Y38_N3
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

-- Location: FF_X70_Y38_N3
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

-- Location: FF_X69_Y38_N21
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

-- Location: FF_X70_Y38_N21
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

-- Location: LCCOMB_X70_Y38_N26
\inst6|LessThan76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan76~0_combout\ = (!\inst1|column\(3) & (!\inst1|column\(4) & !\inst1|column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	datad => \inst1|column\(2),
	combout => \inst6|LessThan76~0_combout\);

-- Location: FF_X68_Y37_N9
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

-- Location: LCCOMB_X68_Y38_N20
\inst6|LessThan76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan76~1_combout\ = ((!\inst1|column\(6) & ((\inst6|LessThan76~0_combout\) # (!\inst1|column\(5))))) # (!\inst6|process_0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~57_combout\,
	datab => \inst1|column\(5),
	datac => \inst6|LessThan76~0_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|LessThan76~1_combout\);

-- Location: FF_X67_Y37_N27
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

-- Location: FF_X67_Y37_N5
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

-- Location: LCCOMB_X68_Y38_N8
\inst6|LessThan76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan76~2_combout\ = (\inst6|LessThan76~1_combout\ & (!\inst1|column\(9) & !\inst1|column\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan76~1_combout\,
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst6|LessThan76~2_combout\);

-- Location: LCCOMB_X67_Y38_N10
\inst6|LessThan60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan60~0_combout\ = (\inst1|column\(5) & \inst1|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(5),
	datad => \inst1|column\(6),
	combout => \inst6|LessThan60~0_combout\);

-- Location: LCCOMB_X70_Y38_N8
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

-- Location: FF_X70_Y38_N9
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

-- Location: FF_X70_Y38_N5
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

-- Location: LCCOMB_X70_Y38_N14
\inst6|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~0_combout\ = (\inst1|column\(3) & (((\inst1|column\(2)) # (\inst1|column\(1))) # (!\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(2),
	datac => \inst1|column\(1),
	datad => \inst1|column\(3),
	combout => \inst6|LessThan2~0_combout\);

-- Location: LCCOMB_X68_Y38_N14
\inst6|LessThan75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan75~0_combout\ = (\inst1|column\(7)) # ((\inst6|LessThan60~0_combout\ & ((\inst6|LessThan2~0_combout\) # (\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan60~0_combout\,
	datab => \inst1|column\(7),
	datac => \inst6|LessThan2~0_combout\,
	datad => \inst1|column\(4),
	combout => \inst6|LessThan75~0_combout\);

-- Location: LCCOMB_X68_Y38_N4
\inst6|process_0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~58_combout\ = (\inst6|LessThan76~2_combout\ & ((\inst1|column\(9)) # ((\inst6|LessThan75~0_combout\ & \inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan76~2_combout\,
	datab => \inst1|column\(9),
	datac => \inst6|LessThan75~0_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|process_0~58_combout\);

-- Location: FF_X67_Y37_N19
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

-- Location: LCCOMB_X68_Y38_N10
\inst6|process_0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~60_combout\ = (\inst6|process_0~59_combout\ & (\inst6|process_0~58_combout\ & !\inst1|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~59_combout\,
	datac => \inst6|process_0~58_combout\,
	datad => \inst1|column\(11),
	combout => \inst6|process_0~60_combout\);

-- Location: LCCOMB_X66_Y35_N26
\inst6|LessThan43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan43~0_combout\ = (\inst1|row\(4)) # ((\inst1|row\(3)) # ((\inst1|row\(1) & \inst1|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(1),
	datac => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan43~0_combout\);

-- Location: LCCOMB_X66_Y35_N12
\inst6|LessThan43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan43~1_combout\ = (\inst1|row\(7)) # ((\inst1|row\(5)) # (\inst1|row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datac => \inst1|row\(5),
	datad => \inst1|row\(6),
	combout => \inst6|LessThan43~1_combout\);

-- Location: LCCOMB_X65_Y37_N8
\inst6|LessThan43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan43~2_combout\ = (!\inst1|row\(10) & (!\inst1|row\(8) & !\inst1|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(10),
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst6|LessThan43~2_combout\);

-- Location: LCCOMB_X66_Y35_N16
\inst6|LessThan43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan43~3_combout\ = (\inst1|row\(31) & ((\inst6|LessThan43~0_combout\) # ((\inst6|LessThan43~1_combout\) # (!\inst6|LessThan43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan43~0_combout\,
	datab => \inst6|LessThan43~1_combout\,
	datac => \inst6|LessThan43~2_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|LessThan43~3_combout\);

-- Location: LCCOMB_X66_Y38_N8
\inst6|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~27_combout\ = (\inst1|column\(31) & (!\inst1|column\(11) & (!\inst1|column\(9) & !\inst1|column\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(31),
	datab => \inst1|column\(11),
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst6|process_0~27_combout\);

-- Location: LCCOMB_X66_Y38_N2
\inst6|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~28_combout\ = (\inst6|LessThan43~3_combout\ & (\inst6|LessThan46~1_combout\ & (\inst6|process_0~27_combout\ & !\inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan43~3_combout\,
	datab => \inst6|LessThan46~1_combout\,
	datac => \inst6|process_0~27_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|process_0~28_combout\);

-- Location: LCCOMB_X70_Y38_N0
\inst6|LessThan36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan36~1_combout\ = (\inst1|column\(4)) # ((\inst1|column\(3)) # ((\inst1|column\(2) & \inst1|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(1),
	combout => \inst6|LessThan36~1_combout\);

-- Location: LCCOMB_X67_Y38_N22
\inst6|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~20_combout\ = (\inst1|column\(4) & \inst1|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(4),
	datad => \inst1|column\(3),
	combout => \inst6|process_0~20_combout\);

-- Location: LCCOMB_X70_Y38_N22
\inst6|process_0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~168_combout\ = (\inst1|column\(0)) # (((!\inst1|column\(2)) # (!\inst6|process_0~20_combout\)) # (!\inst1|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(1),
	datac => \inst6|process_0~20_combout\,
	datad => \inst1|column\(2),
	combout => \inst6|process_0~168_combout\);

-- Location: LCCOMB_X69_Y38_N6
\inst6|process_0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~55_combout\ = (\inst1|column\(5) & (((!\inst1|column\(6))))) # (!\inst1|column\(5) & ((\inst1|column\(6) & ((\inst6|process_0~168_combout\))) # (!\inst1|column\(6) & (\inst6|LessThan36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|LessThan36~1_combout\,
	datac => \inst1|column\(6),
	datad => \inst6|process_0~168_combout\,
	combout => \inst6|process_0~55_combout\);

-- Location: LCCOMB_X67_Y37_N12
\inst6|process_0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~56_combout\ = (\inst6|process_0~28_combout\ & (!\inst1|column\(7) & \inst6|process_0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~28_combout\,
	datac => \inst1|column\(7),
	datad => \inst6|process_0~55_combout\,
	combout => \inst6|process_0~56_combout\);

-- Location: LCCOMB_X67_Y37_N0
\inst6|LessThan41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan41~0_combout\ = (!\inst1|column\(11) & (!\inst1|column\(8) & (!\inst1|column\(9) & !\inst1|column\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst1|column\(8),
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst6|LessThan41~0_combout\);

-- Location: LCCOMB_X68_Y38_N22
\inst6|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~0_combout\ = (!\inst1|column\(5) & (!\inst1|column\(4) & ((!\inst1|column\(2)) # (!\inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(5),
	datac => \inst1|column\(2),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan11~0_combout\);

-- Location: LCCOMB_X68_Y38_N6
\inst6|LessThan41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan41~1_combout\ = (\inst6|LessThan41~0_combout\ & (((\inst6|LessThan11~0_combout\ & !\inst1|column\(6))) # (!\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan41~0_combout\,
	datab => \inst1|column\(7),
	datac => \inst6|LessThan11~0_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|LessThan41~1_combout\);

-- Location: LCCOMB_X67_Y38_N16
\inst6|LessThan60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan60~1_combout\ = ((\inst1|column\(7)) # ((\inst6|LessThan60~0_combout\ & \inst6|process_0~20_combout\))) # (!\inst6|LessThan41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan60~0_combout\,
	datab => \inst6|LessThan41~0_combout\,
	datac => \inst1|column\(7),
	datad => \inst6|process_0~20_combout\,
	combout => \inst6|LessThan60~1_combout\);

-- Location: LCCOMB_X68_Y38_N12
\inst6|process_0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~78_combout\ = (\inst6|process_0~59_combout\ & (\inst6|LessThan60~1_combout\ & ((\inst6|LessThan41~1_combout\) # (!\inst1|column\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan41~1_combout\,
	datab => \inst6|process_0~59_combout\,
	datac => \inst6|LessThan60~1_combout\,
	datad => \inst1|column\(31),
	combout => \inst6|process_0~78_combout\);

-- Location: LCCOMB_X66_Y37_N4
\inst6|process_0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~84_combout\ = (\inst1|row\(4) & (!\inst1|row\(6) & (\inst1|row\(5) & \inst1|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst1|row\(3),
	combout => \inst6|process_0~84_combout\);

-- Location: LCCOMB_X65_Y37_N0
\inst6|process_0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~85_combout\ = (\inst6|process_0~31_combout\ & ((\inst1|row\(6)) # ((\inst1|row\(2) & \inst6|process_0~84_combout\)))) # (!\inst6|process_0~31_combout\ & (((\inst1|row\(2) & \inst6|process_0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~31_combout\,
	datab => \inst1|row\(6),
	datac => \inst1|row\(2),
	datad => \inst6|process_0~84_combout\,
	combout => \inst6|process_0~85_combout\);

-- Location: LCCOMB_X70_Y38_N16
\inst6|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~35_combout\ = (!\inst1|column\(2) & (!\inst1|column\(3) & !\inst1|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~35_combout\);

-- Location: LCCOMB_X69_Y38_N14
\inst6|LessThan40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan40~0_combout\ = (\inst1|column\(5)) # ((\inst1|column\(4) & ((!\inst6|process_0~35_combout\) # (!\inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(4),
	datac => \inst1|column\(0),
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|LessThan40~0_combout\);

-- Location: LCCOMB_X68_Y38_N18
\inst6|process_0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~86_combout\ = (\inst6|process_0~85_combout\ & (\inst6|LessThan76~2_combout\ & ((\inst6|LessThan40~0_combout\) # (\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~85_combout\,
	datab => \inst6|LessThan40~0_combout\,
	datac => \inst6|LessThan76~2_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|process_0~86_combout\);

-- Location: LCCOMB_X67_Y37_N8
\inst6|process_0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~63_combout\ = (\inst1|column\(31) & !\inst1|column\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(31),
	datad => \inst1|column\(11),
	combout => \inst6|process_0~63_combout\);

-- Location: LCCOMB_X67_Y35_N16
\inst6|process_0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~83_combout\ = (\inst1|row\(31) & \inst6|process_0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(31),
	datad => \inst6|process_0~25_combout\,
	combout => \inst6|process_0~83_combout\);

-- Location: LCCOMB_X68_Y38_N24
\inst6|process_0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~87_combout\ = (\inst6|process_0~57_combout\ & (\inst6|process_0~86_combout\ & (\inst6|process_0~63_combout\ & \inst6|process_0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~57_combout\,
	datab => \inst6|process_0~86_combout\,
	datac => \inst6|process_0~63_combout\,
	datad => \inst6|process_0~83_combout\,
	combout => \inst6|process_0~87_combout\);

-- Location: LCCOMB_X66_Y38_N0
\inst6|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~29_combout\ = (\inst6|LessThan46~1_combout\ & (\inst6|process_0~27_combout\ & \inst1|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan46~1_combout\,
	datac => \inst6|process_0~27_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~29_combout\);

-- Location: LCCOMB_X67_Y38_N8
\inst6|process_0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~79_combout\ = (!\inst1|column\(4) & ((!\inst1|column\(3)) # (!\inst1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(4),
	datac => \inst1|column\(2),
	datad => \inst1|column\(3),
	combout => \inst6|process_0~79_combout\);

-- Location: LCCOMB_X67_Y38_N28
\inst6|LessThan64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan64~0_combout\ = (!\inst1|column\(5) & !\inst1|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(5),
	datad => \inst1|column\(6),
	combout => \inst6|LessThan64~0_combout\);

-- Location: LCCOMB_X67_Y38_N24
\inst6|process_0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~80_combout\ = (\inst1|row\(31) & (!\inst6|process_0~79_combout\ & (!\inst1|column\(8) & \inst6|LessThan64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|process_0~79_combout\,
	datac => \inst1|column\(8),
	datad => \inst6|LessThan64~0_combout\,
	combout => \inst6|process_0~80_combout\);

-- Location: LCCOMB_X66_Y37_N28
\inst6|process_0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~81_combout\ = (\inst1|row\(4) & \inst1|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|process_0~81_combout\);

-- Location: LCCOMB_X66_Y37_N26
\inst6|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~37_combout\ = (!\inst1|row\(5) & !\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(5),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~37_combout\);

-- Location: LCCOMB_X66_Y37_N24
\inst6|LessThan43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan43~4_combout\ = (\inst1|row\(1) & \inst1|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(1),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan43~4_combout\);

-- Location: LCCOMB_X66_Y37_N22
\inst6|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~0_combout\ = ((!\inst1|row\(0) & (\inst6|process_0~81_combout\ & \inst6|LessThan43~4_combout\))) # (!\inst6|process_0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(0),
	datab => \inst6|process_0~81_combout\,
	datac => \inst6|process_0~37_combout\,
	datad => \inst6|LessThan43~4_combout\,
	combout => \inst6|LessThan13~0_combout\);

-- Location: LCCOMB_X67_Y38_N0
\inst6|process_0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~82_combout\ = (\inst6|process_0~29_combout\ & (\inst6|process_0~80_combout\ & ((\inst6|LessThan13~0_combout\) # (\inst1|row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~29_combout\,
	datab => \inst6|process_0~80_combout\,
	datac => \inst6|LessThan13~0_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|process_0~82_combout\);

-- Location: LCCOMB_X65_Y35_N12
\inst6|LessThan49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan49~0_combout\ = (\inst1|row\(3) & ((\inst1|row\(1)) # ((\inst1|row\(2)) # (!\inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(0),
	datac => \inst1|row\(2),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan49~0_combout\);

-- Location: LCCOMB_X65_Y35_N6
\inst6|LessThan49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan49~1_combout\ = (\inst1|row\(5) & ((\inst6|LessThan49~0_combout\) # (\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan49~0_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan49~1_combout\);

-- Location: LCCOMB_X66_Y38_N28
\inst6|LessThan49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan49~2_combout\ = (\inst1|row\(31) & ((\inst1|row\(6)) # ((\inst6|LessThan49~1_combout\) # (!\inst6|process_0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst6|process_0~25_combout\,
	datac => \inst6|LessThan49~1_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|LessThan49~2_combout\);

-- Location: LCCOMB_X66_Y38_N16
\inst6|blue[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~6_combout\ = (\inst6|LessThan46~1_combout\ & \inst6|LessThan49~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan46~1_combout\,
	datad => \inst6|LessThan49~2_combout\,
	combout => \inst6|blue[7]~6_combout\);

-- Location: LCCOMB_X65_Y35_N20
\inst6|LessThan42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan42~0_combout\ = (\inst6|process_0~25_combout\ & (\inst6|process_0~37_combout\ & ((!\inst1|row\(4)) # (!\inst6|LessThan49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan49~0_combout\,
	datab => \inst6|process_0~25_combout\,
	datac => \inst6|process_0~37_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan42~0_combout\);

-- Location: LCCOMB_X66_Y38_N20
\inst6|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~38_combout\ = (\inst6|LessThan43~3_combout\ & ((\inst6|LessThan42~0_combout\) # (!\inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan43~3_combout\,
	datab => \inst1|row\(31),
	datac => \inst6|LessThan42~0_combout\,
	combout => \inst6|process_0~38_combout\);

-- Location: LCCOMB_X69_Y38_N0
\inst6|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~0_combout\ = (\inst1|column\(2) & ((\inst1|column\(1)) # (!\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(0),
	datac => \inst1|column\(2),
	datad => \inst1|column\(1),
	combout => \inst6|LessThan10~0_combout\);

-- Location: LCCOMB_X69_Y38_N12
\inst6|blue[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~7_combout\ = (\inst6|process_0~27_combout\ & ((\inst1|column\(5)) # ((\inst6|process_0~20_combout\ & \inst6|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~20_combout\,
	datab => \inst1|column\(5),
	datac => \inst6|process_0~27_combout\,
	datad => \inst6|LessThan10~0_combout\,
	combout => \inst6|blue[7]~7_combout\);

-- Location: LCCOMB_X69_Y38_N22
\inst6|process_0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~77_combout\ = (\inst1|column\(5) & \inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(5),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~77_combout\);

-- Location: LCCOMB_X69_Y38_N24
\inst6|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~22_combout\ = (\inst1|column\(6) & \inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(6),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~22_combout\);

-- Location: LCCOMB_X69_Y38_N4
\inst6|blue[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~8_combout\ = (\inst6|blue[7]~7_combout\ & (!\inst6|process_0~77_combout\ & (\inst6|process_0~22_combout\ & !\inst1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~7_combout\,
	datab => \inst6|process_0~77_combout\,
	datac => \inst6|process_0~22_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|blue[7]~8_combout\);

-- Location: LCCOMB_X67_Y38_N30
\inst6|process_0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~66_combout\ = (!\inst1|column\(7) & !\inst1|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(7),
	datad => \inst1|column\(6),
	combout => \inst6|process_0~66_combout\);

-- Location: LCCOMB_X67_Y38_N14
\inst6|process_0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~75_combout\ = (\inst1|column\(5)) # ((\inst1|column\(4) & \inst1|column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst1|column\(3),
	combout => \inst6|process_0~75_combout\);

-- Location: LCCOMB_X67_Y38_N2
\inst6|process_0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~76_combout\ = (\inst6|process_0~66_combout\ & (\inst6|process_0~75_combout\ & (\inst1|column\(8) & \inst6|process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~66_combout\,
	datab => \inst6|process_0~75_combout\,
	datac => \inst1|column\(8),
	datad => \inst6|process_0~27_combout\,
	combout => \inst6|process_0~76_combout\);

-- Location: LCCOMB_X67_Y38_N12
\inst6|green[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~6_combout\ = (\inst6|process_0~38_combout\ & (((!\inst6|blue[7]~8_combout\ & !\inst6|process_0~76_combout\)))) # (!\inst6|process_0~38_combout\ & (((!\inst6|blue[7]~8_combout\)) # (!\inst6|blue[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~6_combout\,
	datab => \inst6|process_0~38_combout\,
	datac => \inst6|blue[7]~8_combout\,
	datad => \inst6|process_0~76_combout\,
	combout => \inst6|green[6]~6_combout\);

-- Location: LCCOMB_X68_Y38_N28
\inst6|green[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~7_combout\ = (!\inst6|process_0~78_combout\ & (!\inst6|process_0~87_combout\ & (!\inst6|process_0~82_combout\ & \inst6|green[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~78_combout\,
	datab => \inst6|process_0~87_combout\,
	datac => \inst6|process_0~82_combout\,
	datad => \inst6|green[6]~6_combout\,
	combout => \inst6|green[6]~7_combout\);

-- Location: LCCOMB_X67_Y38_N26
\inst6|process_0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~73_combout\ = (\inst6|process_0~25_combout\ & (((!\inst1|column\(2)) # (!\inst6|process_0~20_combout\)) # (!\inst6|LessThan60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan60~0_combout\,
	datab => \inst6|process_0~25_combout\,
	datac => \inst6|process_0~20_combout\,
	datad => \inst1|column\(2),
	combout => \inst6|process_0~73_combout\);

-- Location: LCCOMB_X65_Y38_N10
\inst6|process_0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~74_combout\ = (\inst1|row\(31) & (\inst6|process_0~73_combout\ & (!\inst1|column\(7) & !\inst1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|process_0~73_combout\,
	datac => \inst1|column\(7),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~74_combout\);

-- Location: LCCOMB_X69_Y38_N16
\inst6|process_0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~64_combout\ = (\inst1|column\(8) & !\inst1|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(8),
	datad => \inst1|column\(5),
	combout => \inst6|process_0~64_combout\);

-- Location: LCCOMB_X65_Y38_N28
\inst6|process_0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~65_combout\ = (\inst6|LessThan46~1_combout\ & (\inst6|LessThan43~3_combout\ & (\inst6|process_0~27_combout\ & \inst6|process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan46~1_combout\,
	datab => \inst6|LessThan43~3_combout\,
	datac => \inst6|process_0~27_combout\,
	datad => \inst6|process_0~64_combout\,
	combout => \inst6|process_0~65_combout\);

-- Location: LCCOMB_X65_Y38_N22
\inst6|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~0_combout\ = ((!\inst1|column\(2) & !\inst1|column\(3))) # (!\inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(4),
	datac => \inst1|column\(2),
	datad => \inst1|column\(3),
	combout => \inst6|LessThan17~0_combout\);

-- Location: LCCOMB_X65_Y38_N24
\inst6|process_0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~171_combout\ = (!\inst1|column\(7) & (\inst6|process_0~65_combout\ & (\inst6|LessThan17~0_combout\ & \inst1|column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst6|process_0~65_combout\,
	datac => \inst6|LessThan17~0_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|process_0~171_combout\);

-- Location: LCCOMB_X68_Y38_N2
\inst6|LessThan75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan75~1_combout\ = (\inst1|column\(9)) # ((\inst6|LessThan75~0_combout\ & \inst1|column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(9),
	datac => \inst6|LessThan75~0_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|LessThan75~1_combout\);

-- Location: LCCOMB_X63_Y35_N30
\inst6|process_0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~71_combout\ = ((!\inst1|row\(2) & (!\inst1|row\(3) & !\inst1|row\(1)))) # (!\inst1|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(1),
	combout => \inst6|process_0~71_combout\);

-- Location: LCCOMB_X65_Y35_N4
\inst6|process_0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~62_combout\ = (\inst1|row\(3) & (\inst1|row\(4) & ((\inst1|row\(1)) # (\inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(2),
	datad => \inst1|row\(4),
	combout => \inst6|process_0~62_combout\);

-- Location: LCCOMB_X66_Y35_N20
\inst6|process_0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~72_combout\ = (\inst6|process_0~27_combout\ & ((\inst1|row\(5) & (\inst6|process_0~71_combout\)) # (!\inst1|row\(5) & ((\inst6|process_0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~71_combout\,
	datab => \inst1|row\(5),
	datac => \inst6|process_0~62_combout\,
	datad => \inst6|process_0~27_combout\,
	combout => \inst6|process_0~72_combout\);

-- Location: LCCOMB_X65_Y38_N2
\inst6|green[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~5_combout\ = (!\inst6|process_0~171_combout\ & (((!\inst6|process_0~72_combout\) # (!\inst6|LessThan75~1_combout\)) # (!\inst6|process_0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~74_combout\,
	datab => \inst6|process_0~171_combout\,
	datac => \inst6|LessThan75~1_combout\,
	datad => \inst6|process_0~72_combout\,
	combout => \inst6|green[6]~5_combout\);

-- Location: LCCOMB_X65_Y38_N6
\inst6|process_0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~69_combout\ = (\inst1|column\(5) & (\inst1|column\(4) & ((\inst1|column\(3)) # (\inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(5),
	datac => \inst1|column\(2),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~69_combout\);

-- Location: LCCOMB_X65_Y38_N14
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst1|column\(4) & !\inst1|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(4),
	datac => \inst1|column\(3),
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X65_Y38_N30
\inst6|process_0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~170_combout\ = (\inst1|column\(7) & (((\inst6|LessThan3~0_combout\ & !\inst1|column\(5))) # (!\inst1|column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~0_combout\,
	datab => \inst1|column\(7),
	datac => \inst1|column\(5),
	datad => \inst1|column\(6),
	combout => \inst6|process_0~170_combout\);

-- Location: LCCOMB_X65_Y38_N4
\inst6|process_0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~70_combout\ = (\inst6|process_0~170_combout\ & ((\inst6|process_0~69_combout\) # (\inst1|column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~69_combout\,
	datac => \inst6|process_0~170_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|process_0~70_combout\);

-- Location: LCCOMB_X65_Y38_N20
\inst6|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~21_combout\ = (!\inst6|process_0~20_combout\ & (\inst6|LessThan60~0_combout\ & ((\inst6|LessThan10~0_combout\) # (!\inst6|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~20_combout\,
	datab => \inst6|LessThan10~0_combout\,
	datac => \inst6|LessThan60~0_combout\,
	datad => \inst6|LessThan3~0_combout\,
	combout => \inst6|process_0~21_combout\);

-- Location: LCCOMB_X65_Y38_N26
\inst6|green[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~4_combout\ = ((!\inst6|process_0~70_combout\ & ((\inst1|column\(7)) # (!\inst6|process_0~21_combout\)))) # (!\inst6|process_0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst6|process_0~28_combout\,
	datac => \inst6|process_0~70_combout\,
	datad => \inst6|process_0~21_combout\,
	combout => \inst6|green[6]~4_combout\);

-- Location: LCCOMB_X66_Y35_N28
\inst6|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~41_combout\ = (\inst6|process_0~25_combout\ & (\inst1|row\(31) & ((\inst6|LessThan43~1_combout\) # (\inst6|LessThan43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan43~1_combout\,
	datab => \inst6|process_0~25_combout\,
	datac => \inst6|LessThan43~0_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|process_0~41_combout\);

-- Location: LCCOMB_X66_Y35_N22
\inst6|process_0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~169_combout\ = (!\inst6|process_0~62_combout\ & (!\inst1|row\(6) & (!\inst1|row\(5) & \inst6|process_0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~62_combout\,
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst6|process_0~41_combout\,
	combout => \inst6|process_0~169_combout\);

-- Location: LCCOMB_X67_Y35_N28
\inst6|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~42_combout\ = (!\inst1|row\(6) & (\inst6|process_0~25_combout\ & (\inst1|row\(31) & \inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst6|process_0~25_combout\,
	datac => \inst1|row\(31),
	datad => \inst1|row\(5),
	combout => \inst6|process_0~42_combout\);

-- Location: LCCOMB_X63_Y35_N18
\inst6|process_0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~61_combout\ = (\inst6|process_0~42_combout\ & ((\inst1|row\(3) & ((!\inst1|row\(2)) # (!\inst1|row\(4)))) # (!\inst1|row\(3) & (\inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~42_combout\,
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(2),
	combout => \inst6|process_0~61_combout\);

-- Location: LCCOMB_X63_Y35_N2
\inst6|green[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~2_combout\ = (((!\inst6|process_0~169_combout\ & !\inst6|process_0~61_combout\)) # (!\inst6|process_0~58_combout\)) # (!\inst6|process_0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~63_combout\,
	datab => \inst6|process_0~169_combout\,
	datac => \inst6|process_0~58_combout\,
	datad => \inst6|process_0~61_combout\,
	combout => \inst6|green[6]~2_combout\);

-- Location: LCCOMB_X65_Y38_N16
\inst6|process_0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~67_combout\ = (!\inst6|process_0~20_combout\ & (\inst6|process_0~66_combout\ & ((\inst6|LessThan10~0_combout\) # (!\inst6|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~0_combout\,
	datab => \inst6|process_0~20_combout\,
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst6|process_0~66_combout\,
	combout => \inst6|process_0~67_combout\);

-- Location: LCCOMB_X65_Y38_N18
\inst6|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~1_combout\ = ((!\inst1|column\(6) & ((\inst6|LessThan17~0_combout\) # (!\inst1|column\(5))))) # (!\inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst1|column\(5),
	datac => \inst6|LessThan17~0_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|LessThan17~1_combout\);

-- Location: LCCOMB_X66_Y39_N30
\inst6|LessThan17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~2_combout\ = (!\inst1|column\(8) & \inst6|LessThan17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(8),
	datad => \inst6|LessThan17~1_combout\,
	combout => \inst6|LessThan17~2_combout\);

-- Location: LCCOMB_X66_Y38_N14
\inst6|process_0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~68_combout\ = (\inst6|LessThan17~2_combout\ & (\inst6|process_0~29_combout\ & (\inst6|LessThan57~0_combout\ & !\inst6|LessThan64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan17~2_combout\,
	datab => \inst6|process_0~29_combout\,
	datac => \inst6|LessThan57~0_combout\,
	datad => \inst6|LessThan64~0_combout\,
	combout => \inst6|process_0~68_combout\);

-- Location: LCCOMB_X65_Y38_N12
\inst6|green[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~3_combout\ = (\inst6|green[6]~2_combout\ & (!\inst6|process_0~68_combout\ & ((!\inst6|process_0~65_combout\) # (!\inst6|process_0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[6]~2_combout\,
	datab => \inst6|process_0~67_combout\,
	datac => \inst6|process_0~68_combout\,
	datad => \inst6|process_0~65_combout\,
	combout => \inst6|green[6]~3_combout\);

-- Location: LCCOMB_X65_Y38_N8
\inst6|green[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~8_combout\ = (\inst6|green[6]~7_combout\ & (\inst6|green[6]~5_combout\ & (\inst6|green[6]~4_combout\ & \inst6|green[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[6]~7_combout\,
	datab => \inst6|green[6]~5_combout\,
	datac => \inst6|green[6]~4_combout\,
	datad => \inst6|green[6]~3_combout\,
	combout => \inst6|green[6]~8_combout\);

-- Location: LCCOMB_X66_Y40_N12
\inst6|blue[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~9_combout\ = (\inst6|process_0~60_combout\) # ((\inst6|process_0~56_combout\) # (!\inst6|green[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~60_combout\,
	datac => \inst6|process_0~56_combout\,
	datad => \inst6|green[6]~8_combout\,
	combout => \inst6|blue[7]~9_combout\);

-- Location: LCCOMB_X66_Y36_N2
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

-- Location: FF_X66_Y36_N3
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

-- Location: LCCOMB_X66_Y40_N14
\inst6|I[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|I[0]~0_combout\ = (\inst1|disp_ena~q\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|disp_ena~q\,
	datac => \Reset~input_o\,
	combout => \inst6|I[0]~0_combout\);

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

-- Location: LCCOMB_X72_Y40_N16
\inst6|buttonStateConfirm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonStateConfirm~0_combout\ = !\confirmButton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \confirmButton~input_o\,
	combout => \inst6|buttonStateConfirm~0_combout\);

-- Location: FF_X72_Y40_N17
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

-- Location: LCCOMB_X72_Y40_N12
\inst6|buttonConfirmCounter[21]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[21]~97_combout\ = (!\confirmButton~input_o\ & !\inst6|buttonStateConfirm~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \confirmButton~input_o\,
	datad => \inst6|buttonStateConfirm~q\,
	combout => \inst6|buttonConfirmCounter[21]~97_combout\);

-- Location: LCCOMB_X72_Y40_N30
\inst6|moveForwardButtonState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|moveForwardButtonState~0_combout\ = !\moveFoward~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \moveFoward~input_o\,
	combout => \inst6|moveForwardButtonState~0_combout\);

-- Location: FF_X72_Y40_N31
\inst6|moveForwardButtonState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|moveForwardButtonState~0_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|moveForwardButtonState~q\);

-- Location: LCCOMB_X72_Y40_N8
\inst6|process_0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~165_combout\ = (\inst6|moveForwardButtonState~q\) # (\moveFoward~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|moveForwardButtonState~q\,
	datad => \moveFoward~input_o\,
	combout => \inst6|process_0~165_combout\);

-- Location: LCCOMB_X72_Y40_N18
\inst6|columnNum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~4_combout\ = (!\inst6|process_0~165_combout\ & (\inst6|columnNum\(3) $ (((\inst6|Add0~0_combout\ & \inst6|columnNum\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~0_combout\,
	datab => \inst6|columnNum\(3),
	datac => \inst6|columnNum\(2),
	datad => \inst6|process_0~165_combout\,
	combout => \inst6|columnNum~4_combout\);

-- Location: LCCOMB_X72_Y40_N14
\inst6|columnNum~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~12_combout\ = (\inst6|columnNum\(0) & (((\inst6|columnNum~4_combout\)))) # (!\inst6|columnNum\(0) & ((\inst6|moveForwardButtonState~q\) # ((\moveFoward~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|moveForwardButtonState~q\,
	datab => \inst6|columnNum~4_combout\,
	datac => \inst6|columnNum\(0),
	datad => \moveFoward~input_o\,
	combout => \inst6|columnNum~12_combout\);

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

-- Location: LCCOMB_X66_Y39_N2
\inst6|moveBackwardButtonState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|moveBackwardButtonState~0_combout\ = !\moveBackward~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \moveBackward~input_o\,
	combout => \inst6|moveBackwardButtonState~0_combout\);

-- Location: FF_X66_Y39_N3
\inst6|moveBackwardButtonState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|moveBackwardButtonState~0_combout\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|moveBackwardButtonState~q\);

-- Location: LCCOMB_X67_Y39_N16
\inst6|process_0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~166_combout\ = (\moveBackward~input_o\) # (\inst6|moveBackwardButtonState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moveBackward~input_o\,
	datad => \inst6|moveBackwardButtonState~q\,
	combout => \inst6|process_0~166_combout\);

-- Location: LCCOMB_X72_Y40_N4
\inst6|columnNum~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~10_combout\ = (!\inst6|buttonConfirmCounter[21]~97_combout\ & (\inst6|columnNum~6_combout\ $ (((\inst6|columnNum~8_combout\ & !\inst6|process_0~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum~6_combout\,
	datab => \inst6|columnNum~8_combout\,
	datac => \inst6|process_0~166_combout\,
	datad => \inst6|buttonConfirmCounter[21]~97_combout\,
	combout => \inst6|columnNum~10_combout\);

-- Location: CLKCTRL_G14
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

-- Location: FF_X72_Y40_N5
\inst6|columnNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~10_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(1));

-- Location: LCCOMB_X72_Y40_N6
\inst6|columnNum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~6_combout\ = (\inst6|columnNum\(1) & ((\inst6|process_0~165_combout\) # ((\inst6|columnNum\(0) & \inst6|columnNum~4_combout\)))) # (!\inst6|columnNum\(1) & (((!\inst6|columnNum\(0) & \inst6|columnNum~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~165_combout\,
	datab => \inst6|columnNum\(1),
	datac => \inst6|columnNum\(0),
	datad => \inst6|columnNum~4_combout\,
	combout => \inst6|columnNum~6_combout\);

-- Location: LCCOMB_X72_Y40_N10
\inst6|columnNum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~8_combout\ = (!\inst6|columnNum~12_combout\ & ((\inst6|columnNum~3_combout\) # ((\inst6|columnNum~5_combout\) # (\inst6|columnNum~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum~3_combout\,
	datab => \inst6|columnNum~5_combout\,
	datac => \inst6|columnNum~12_combout\,
	datad => \inst6|columnNum~6_combout\,
	combout => \inst6|columnNum~8_combout\);

-- Location: LCCOMB_X72_Y40_N26
\inst6|columnNum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~9_combout\ = (!\inst6|buttonConfirmCounter[21]~97_combout\ & ((\inst6|process_0~166_combout\ & ((!\inst6|columnNum~12_combout\))) # (!\inst6|process_0~166_combout\ & (!\inst6|columnNum~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum~8_combout\,
	datab => \inst6|columnNum~12_combout\,
	datac => \inst6|process_0~166_combout\,
	datad => \inst6|buttonConfirmCounter[21]~97_combout\,
	combout => \inst6|columnNum~9_combout\);

-- Location: FF_X72_Y40_N27
\inst6|columnNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~9_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(0));

-- Location: LCCOMB_X68_Y39_N2
\inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = (!\inst6|columnNum\(0) & \inst6|columnNum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|columnNum\(0),
	datad => \inst6|columnNum\(1),
	combout => \inst6|Add0~0_combout\);

-- Location: LCCOMB_X72_Y40_N28
\inst6|columnNum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~5_combout\ = (\inst6|process_0~165_combout\ & (((\inst6|columnNum\(2))))) # (!\inst6|process_0~165_combout\ & (\inst6|columnNum\(3) & (\inst6|Add0~0_combout\ $ (\inst6|columnNum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~0_combout\,
	datab => \inst6|columnNum\(3),
	datac => \inst6|columnNum\(2),
	datad => \inst6|process_0~165_combout\,
	combout => \inst6|columnNum~5_combout\);

-- Location: LCCOMB_X72_Y40_N20
\inst6|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~1_combout\ = (\inst6|columnNum~5_combout\ & (((!\inst6|columnNum~12_combout\ & !\inst6|columnNum~6_combout\)))) # (!\inst6|columnNum~5_combout\ & (((\inst6|columnNum~12_combout\) # (\inst6|columnNum~6_combout\)) # 
-- (!\inst6|columnNum~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum~3_combout\,
	datab => \inst6|columnNum~5_combout\,
	datac => \inst6|columnNum~12_combout\,
	datad => \inst6|columnNum~6_combout\,
	combout => \inst6|Add1~1_combout\);

-- Location: LCCOMB_X72_Y40_N22
\inst6|columnNum~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~11_combout\ = (!\inst6|buttonConfirmCounter[21]~97_combout\ & ((\inst6|process_0~166_combout\ & ((\inst6|columnNum~5_combout\))) # (!\inst6|process_0~166_combout\ & (!\inst6|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter[21]~97_combout\,
	datab => \inst6|Add1~1_combout\,
	datac => \inst6|process_0~166_combout\,
	datad => \inst6|columnNum~5_combout\,
	combout => \inst6|columnNum~11_combout\);

-- Location: FF_X72_Y40_N23
\inst6|columnNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~11_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(2));

-- Location: LCCOMB_X66_Y41_N18
\inst6|columnNum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~2_combout\ = (\inst6|columnNum\(2) & (!\inst6|columnNum\(0) & (\inst6|columnNum\(3) & \inst6|columnNum\(1)))) # (!\inst6|columnNum\(2) & (\inst6|columnNum\(0) & (!\inst6|columnNum\(3) & !\inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|columnNum~2_combout\);

-- Location: LCCOMB_X67_Y40_N12
\inst6|columnNum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~3_combout\ = (\inst6|process_0~165_combout\ & (!\inst6|columnNum\(3))) # (!\inst6|process_0~165_combout\ & (((\inst6|columnNum~2_combout\ & !\inst6|columnNum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(3),
	datab => \inst6|columnNum~2_combout\,
	datac => \inst6|columnNum\(0),
	datad => \inst6|process_0~165_combout\,
	combout => \inst6|columnNum~3_combout\);

-- Location: LCCOMB_X72_Y40_N24
\inst6|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = \inst6|columnNum~3_combout\ $ (((\inst6|columnNum~5_combout\) # ((\inst6|columnNum~12_combout\) # (\inst6|columnNum~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum~3_combout\,
	datab => \inst6|columnNum~5_combout\,
	datac => \inst6|columnNum~12_combout\,
	datad => \inst6|columnNum~6_combout\,
	combout => \inst6|Add1~0_combout\);

-- Location: LCCOMB_X72_Y40_N0
\inst6|columnNum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|columnNum~7_combout\ = (!\inst6|buttonConfirmCounter[21]~97_combout\ & ((\inst6|process_0~166_combout\ & (!\inst6|columnNum~3_combout\)) # (!\inst6|process_0~166_combout\ & ((\inst6|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum~3_combout\,
	datab => \inst6|Add1~0_combout\,
	datac => \inst6|process_0~166_combout\,
	datad => \inst6|buttonConfirmCounter[21]~97_combout\,
	combout => \inst6|columnNum~7_combout\);

-- Location: FF_X72_Y40_N1
\inst6|columnNum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|columnNum~7_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst1|disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|columnNum\(3));

-- Location: LCCOMB_X67_Y40_N2
\inst6|process_0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~146_combout\ = (\inst6|columnNum\(3) & (!\inst6|columnNum\(0) & (\inst6|columnNum\(1) & !\inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(3),
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(1),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~146_combout\);

-- Location: LCCOMB_X66_Y41_N16
\inst6|process_0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~152_combout\ = (\inst6|columnNum\(2) & (!\inst6|columnNum\(0) & (\inst6|columnNum\(3) & \inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|process_0~152_combout\);

-- Location: LCCOMB_X72_Y40_N2
\inst6|buttonConfirmCounter[21]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[21]~34_combout\ = (!\inst6|buttonStateConfirm~q\ & (\inst1|disp_ena~q\ & !\confirmButton~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonStateConfirm~q\,
	datac => \inst1|disp_ena~q\,
	datad => \confirmButton~input_o\,
	combout => \inst6|buttonConfirmCounter[21]~34_combout\);

-- Location: LCCOMB_X69_Y41_N0
\inst6|H[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|H[1]~0_combout\ = (\inst6|H\(1)) # ((\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|process_0~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|H\(1),
	datad => \inst6|process_0~163_combout\,
	combout => \inst6|H[1]~0_combout\);

-- Location: FF_X69_Y41_N1
\inst6|H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|H[1]~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|H\(1));

-- Location: LCCOMB_X66_Y41_N4
\inst6|process_0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~139_combout\ = (\inst6|columnNum\(0) & \inst6|columnNum\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(3),
	combout => \inst6|process_0~139_combout\);

-- Location: LCCOMB_X69_Y39_N10
\inst6|E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|E~0_combout\ = (\inst6|E\(0)) # ((!\inst6|p1\(0) & \inst6|process_0~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datac => \inst6|E\(0),
	datad => \inst6|process_0~140_combout\,
	combout => \inst6|E~0_combout\);

-- Location: FF_X69_Y39_N11
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

-- Location: LCCOMB_X69_Y39_N22
\inst6|process_0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~164_combout\ = (\inst6|process_0~140_combout\ & (\inst6|p1\(0) & (\inst6|p2~0_combout\ & !\inst6|E\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~140_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|p2~0_combout\,
	datad => \inst6|E\(0),
	combout => \inst6|process_0~164_combout\);

-- Location: LCCOMB_X69_Y39_N0
\inst6|E[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|E[1]~1_combout\ = (\inst6|E\(1)) # ((\inst6|process_0~164_combout\ & \inst6|buttonConfirmCounter[21]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~164_combout\,
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|E\(1),
	combout => \inst6|E[1]~1_combout\);

-- Location: FF_X69_Y39_N1
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

-- Location: LCCOMB_X69_Y39_N6
\inst6|process_0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~140_combout\ = (!\inst6|columnNum\(1) & (\inst6|process_0~139_combout\ & (\inst6|columnNum\(2) & !\inst6|E\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datab => \inst6|process_0~139_combout\,
	datac => \inst6|columnNum\(2),
	datad => \inst6|E\(1),
	combout => \inst6|process_0~140_combout\);

-- Location: LCCOMB_X68_Y40_N6
\inst6|D[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|D[1]~0_combout\ = (\inst6|D\(1)) # ((\inst6|p2~0_combout\ & (\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|process_0~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|D\(1),
	datad => \inst6|process_0~158_combout\,
	combout => \inst6|D[1]~0_combout\);

-- Location: FF_X68_Y40_N7
\inst6|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|D[1]~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|D\(1));

-- Location: LCCOMB_X68_Y40_N8
\inst6|D~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|D~1_combout\ = (\inst6|D\(0)) # ((\inst6|process_0~146_combout\ & (!\inst6|p1\(0) & !\inst6|D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~146_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|D\(0),
	datad => \inst6|D\(1),
	combout => \inst6|D~1_combout\);

-- Location: FF_X68_Y40_N9
\inst6|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|D~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|D\(0));

-- Location: LCCOMB_X68_Y40_N28
\inst6|process_0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~147_combout\ = (\inst6|process_0~146_combout\ & (!\inst6|p1\(0) & (!\inst6|D\(0) & !\inst6|D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~146_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|D\(0),
	datad => \inst6|D\(1),
	combout => \inst6|process_0~147_combout\);

-- Location: LCCOMB_X69_Y39_N18
\inst6|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~0_combout\ = (!\inst6|process_0~147_combout\ & (((\inst6|p1\(0)) # (\inst6|E\(0))) # (!\inst6|process_0~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~140_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|process_0~147_combout\,
	datad => \inst6|E\(0),
	combout => \inst6|Add5~0_combout\);

-- Location: LCCOMB_X66_Y41_N30
\inst6|process_0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~150_combout\ = (!\inst6|columnNum\(2) & (\inst6|columnNum\(0) & (\inst6|columnNum\(3) & !\inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|process_0~150_combout\);

-- Location: LCCOMB_X68_Y40_N0
\inst6|process_0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~156_combout\ = (!\inst6|A\(0) & (\inst6|p1\(0) & (\inst6|process_0~150_combout\ & !\inst6|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|A\(0),
	datab => \inst6|p1\(0),
	datac => \inst6|process_0~150_combout\,
	datad => \inst6|A\(1),
	combout => \inst6|process_0~156_combout\);

-- Location: LCCOMB_X68_Y40_N24
\inst6|A[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|A[1]~0_combout\ = (\inst6|A\(1)) # ((\inst6|process_0~156_combout\ & (\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~156_combout\,
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|A\(1),
	datad => \inst6|p2~0_combout\,
	combout => \inst6|A[1]~0_combout\);

-- Location: FF_X68_Y40_N25
\inst6|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|A[1]~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|A\(1));

-- Location: LCCOMB_X68_Y40_N10
\inst6|A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|A~1_combout\ = (\inst6|A\(0)) # ((!\inst6|A\(1) & (\inst6|process_0~150_combout\ & !\inst6|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|A\(1),
	datab => \inst6|process_0~150_combout\,
	datac => \inst6|A\(0),
	datad => \inst6|p1\(0),
	combout => \inst6|A~1_combout\);

-- Location: FF_X68_Y40_N11
\inst6|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|A~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|A\(0));

-- Location: LCCOMB_X68_Y40_N30
\inst6|process_0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~151_combout\ = (!\inst6|A\(0) & (!\inst6|p1\(0) & (\inst6|process_0~150_combout\ & !\inst6|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|A\(0),
	datab => \inst6|p1\(0),
	datac => \inst6|process_0~150_combout\,
	datad => \inst6|A\(1),
	combout => \inst6|process_0~151_combout\);

-- Location: LCCOMB_X68_Y39_N22
\inst6|process_0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~141_combout\ = (!\inst6|columnNum\(0) & (\inst6|columnNum\(2) & (\inst6|columnNum\(3) & !\inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(2),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|process_0~141_combout\);

-- Location: LCCOMB_X69_Y39_N24
\inst6|process_0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~142_combout\ = (\inst6|p1\(0) & (\inst6|process_0~141_combout\ & (!\inst6|F\(0) & !\inst6|F\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|process_0~141_combout\,
	datac => \inst6|F\(0),
	datad => \inst6|F\(1),
	combout => \inst6|process_0~142_combout\);

-- Location: LCCOMB_X69_Y39_N2
\inst6|F[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|F[1]~0_combout\ = (\inst6|F\(1)) # ((\inst6|p2~0_combout\ & (\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|process_0~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|F\(1),
	datad => \inst6|process_0~142_combout\,
	combout => \inst6|F[1]~0_combout\);

-- Location: FF_X69_Y39_N3
\inst6|F[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|F[1]~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|F\(1));

-- Location: LCCOMB_X69_Y39_N12
\inst6|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|F~1_combout\ = (\inst6|F\(0)) # ((!\inst6|p1\(0) & (\inst6|process_0~141_combout\ & !\inst6|F\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|process_0~141_combout\,
	datac => \inst6|F\(0),
	datad => \inst6|F\(1),
	combout => \inst6|F~1_combout\);

-- Location: FF_X69_Y39_N13
\inst6|F[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|F~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|F\(0));

-- Location: LCCOMB_X69_Y39_N30
\inst6|process_0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~149_combout\ = (!\inst6|p1\(0) & (\inst6|process_0~141_combout\ & (!\inst6|F\(0) & !\inst6|F\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|process_0~141_combout\,
	datac => \inst6|F\(0),
	datad => \inst6|F\(1),
	combout => \inst6|process_0~149_combout\);

-- Location: LCCOMB_X69_Y39_N4
\inst6|process_0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~159_combout\ = (\inst6|p2~0_combout\ & (\inst6|process_0~148_combout\ & (!\inst6|G\(0) & \inst6|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~148_combout\,
	datac => \inst6|G\(0),
	datad => \inst6|p1\(0),
	combout => \inst6|process_0~159_combout\);

-- Location: LCCOMB_X72_Y39_N30
\inst6|G[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|G[1]~0_combout\ = (\inst6|G\(1)) # ((\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|process_0~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter[21]~34_combout\,
	datab => \inst6|process_0~159_combout\,
	datac => \inst6|G\(1),
	combout => \inst6|G[1]~0_combout\);

-- Location: FF_X72_Y39_N31
\inst6|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|G[1]~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|G\(1));

-- Location: LCCOMB_X69_Y39_N20
\inst6|process_0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~148_combout\ = (!\inst6|G\(1) & (\inst6|process_0~139_combout\ & (\inst6|columnNum\(1) & \inst6|columnNum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|G\(1),
	datab => \inst6|process_0~139_combout\,
	datac => \inst6|columnNum\(1),
	datad => \inst6|columnNum\(2),
	combout => \inst6|process_0~148_combout\);

-- Location: LCCOMB_X69_Y39_N8
\inst6|G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|G~1_combout\ = (\inst6|G\(0)) # ((!\inst6|p1\(0) & \inst6|process_0~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datac => \inst6|G\(0),
	datad => \inst6|process_0~148_combout\,
	combout => \inst6|G~1_combout\);

-- Location: FF_X69_Y39_N9
\inst6|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|G~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|G\(0));

-- Location: LCCOMB_X69_Y39_N16
\inst6|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~0_combout\ = (!\inst6|process_0~149_combout\ & ((\inst6|p1\(0)) # ((\inst6|G\(0)) # (!\inst6|process_0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~149_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|G\(0),
	datad => \inst6|process_0~148_combout\,
	combout => \inst6|Add7~0_combout\);

-- Location: LCCOMB_X70_Y40_N0
\inst6|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|C~1_combout\ = (\inst6|C\(0)) # ((\inst6|process_0~143_combout\ & !\inst6|p1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~143_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|C\(0),
	combout => \inst6|C~1_combout\);

-- Location: FF_X70_Y40_N1
\inst6|C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|C~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|C\(0));

-- Location: LCCOMB_X72_Y39_N24
\inst6|process_0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~157_combout\ = (\inst6|p1\(0) & (\inst6|process_0~143_combout\ & !\inst6|C\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datac => \inst6|process_0~143_combout\,
	datad => \inst6|C\(0),
	combout => \inst6|process_0~157_combout\);

-- Location: LCCOMB_X72_Y39_N16
\inst6|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|C[1]~0_combout\ = (\inst6|C\(1)) # ((\inst6|buttonConfirmCounter[21]~34_combout\ & (\inst6|p2~0_combout\ & \inst6|process_0~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter[21]~34_combout\,
	datab => \inst6|p2~0_combout\,
	datac => \inst6|C\(1),
	datad => \inst6|process_0~157_combout\,
	combout => \inst6|C[1]~0_combout\);

-- Location: FF_X72_Y39_N17
\inst6|C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|C[1]~0_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|C\(1));

-- Location: LCCOMB_X70_Y40_N26
\inst6|process_0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~143_combout\ = (\inst6|process_0~139_combout\ & (!\inst6|columnNum\(2) & (\inst6|columnNum\(1) & !\inst6|C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~139_combout\,
	datab => \inst6|columnNum\(2),
	datac => \inst6|columnNum\(1),
	datad => \inst6|C\(1),
	combout => \inst6|process_0~143_combout\);

-- Location: LCCOMB_X68_Y39_N24
\inst6|process_0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~144_combout\ = (!\inst6|columnNum\(0) & (!\inst6|columnNum\(2) & (\inst6|columnNum\(3) & !\inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|columnNum\(2),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|process_0~144_combout\);

-- Location: LCCOMB_X72_Y39_N28
\inst6|process_0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~155_combout\ = (!\inst6|B\(1) & \inst6|process_0~144_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|B\(1),
	datad => \inst6|process_0~144_combout\,
	combout => \inst6|process_0~155_combout\);

-- Location: LCCOMB_X72_Y39_N14
\inst6|B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|B[1]~1_combout\ = (\inst6|buttonConfirmCounter[21]~34_combout\ & (!\inst6|B~0_combout\ & (\inst6|p2~0_combout\ & \inst6|process_0~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter[21]~34_combout\,
	datab => \inst6|B~0_combout\,
	datac => \inst6|p2~0_combout\,
	datad => \inst6|process_0~155_combout\,
	combout => \inst6|B[1]~1_combout\);

-- Location: LCCOMB_X72_Y39_N26
\inst6|B[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|B[1]~2_combout\ = (\inst6|B[1]~1_combout\) # (\inst6|B\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|B[1]~1_combout\,
	datac => \inst6|B\(1),
	combout => \inst6|B[1]~2_combout\);

-- Location: FF_X72_Y39_N27
\inst6|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|B[1]~2_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|B\(1));

-- Location: LCCOMB_X72_Y39_N20
\inst6|B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|B~0_combout\ = (\inst6|B\(0)) # ((!\inst6|B\(1) & (\inst6|process_0~144_combout\ & !\inst6|p1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|B\(1),
	datab => \inst6|process_0~144_combout\,
	datac => \inst6|B\(0),
	datad => \inst6|p1\(0),
	combout => \inst6|B~0_combout\);

-- Location: FF_X72_Y39_N21
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

-- Location: LCCOMB_X72_Y39_N8
\inst6|process_0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~145_combout\ = (!\inst6|p1\(0) & (!\inst6|B\(0) & (!\inst6|B\(1) & \inst6|process_0~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|B\(0),
	datac => \inst6|B\(1),
	datad => \inst6|process_0~144_combout\,
	combout => \inst6|process_0~145_combout\);

-- Location: LCCOMB_X72_Y39_N18
\inst6|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~0_combout\ = (!\inst6|process_0~145_combout\ & (((\inst6|C\(0)) # (\inst6|p1\(0))) # (!\inst6|process_0~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~143_combout\,
	datab => \inst6|C\(0),
	datac => \inst6|process_0~145_combout\,
	datad => \inst6|p1\(0),
	combout => \inst6|Add3~0_combout\);

-- Location: LCCOMB_X69_Y40_N28
\inst6|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~0_combout\ = (\inst6|Add5~0_combout\ & (!\inst6|process_0~151_combout\ & (\inst6|Add7~0_combout\ & \inst6|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~0_combout\,
	datab => \inst6|process_0~151_combout\,
	datac => \inst6|Add7~0_combout\,
	datad => \inst6|Add3~0_combout\,
	combout => \inst6|p1~0_combout\);

-- Location: LCCOMB_X69_Y41_N18
\inst6|H~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|H~1_combout\ = (\inst6|H\(0)) # ((!\inst6|p1\(0) & (\inst6|p1~0_combout\ & \inst6|process_0~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1\(0),
	datab => \inst6|p1~0_combout\,
	datac => \inst6|H\(0),
	datad => \inst6|process_0~153_combout\,
	combout => \inst6|H~1_combout\);

-- Location: FF_X69_Y41_N19
\inst6|H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|H~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|H\(0));

-- Location: LCCOMB_X69_Y41_N10
\inst6|process_0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~153_combout\ = (\inst6|process_0~152_combout\ & (!\inst6|H\(1) & !\inst6|H\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~152_combout\,
	datab => \inst6|H\(1),
	datac => \inst6|H\(0),
	combout => \inst6|process_0~153_combout\);

-- Location: LCCOMB_X69_Y41_N26
\inst6|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~2_combout\ = (!\inst6|p1\(0) & \inst6|p1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|p1\(0),
	datad => \inst6|p1~0_combout\,
	combout => \inst6|p1~2_combout\);

-- Location: FF_X69_Y41_N5
\inst6|I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|I~1_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|I\(0));

-- Location: LCCOMB_X69_Y41_N8
\inst6|I~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|I~1_combout\ = (\inst6|I\(0)) # ((\inst6|p1~2_combout\ & (\inst6|process_0~154_combout\ & !\inst6|process_0~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1~2_combout\,
	datab => \inst6|process_0~154_combout\,
	datac => \inst6|I\(0),
	datad => \inst6|process_0~153_combout\,
	combout => \inst6|I~1_combout\);

-- Location: LCCOMB_X72_Y39_N22
\inst6|p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~1_combout\ = ((!\inst6|process_0~156_combout\ & ((\inst6|B~0_combout\) # (!\inst6|process_0~155_combout\)))) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~156_combout\,
	datab => \inst6|B~0_combout\,
	datac => \inst6|p2~0_combout\,
	datad => \inst6|process_0~155_combout\,
	combout => \inst6|p2~1_combout\);

-- Location: LCCOMB_X69_Y39_N26
\inst6|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add15~0_combout\ = ((!\inst6|process_0~142_combout\ & ((\inst6|E~0_combout\) # (!\inst6|process_0~140_combout\)))) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2~0_combout\,
	datab => \inst6|process_0~142_combout\,
	datac => \inst6|E~0_combout\,
	datad => \inst6|process_0~140_combout\,
	combout => \inst6|Add15~0_combout\);

-- Location: LCCOMB_X72_Y39_N4
\inst6|p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~2_combout\ = (\inst6|Add13~0_combout\ & (!\inst6|process_0~159_combout\ & (\inst6|p2~1_combout\ & \inst6|Add15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~0_combout\,
	datab => \inst6|process_0~159_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add15~0_combout\,
	combout => \inst6|p2~2_combout\);

-- Location: LCCOMB_X69_Y41_N28
\inst6|process_0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~160_combout\ = (!\inst6|p1~2_combout\ & (!\inst6|H\(1) & (!\inst6|H\(0) & \inst6|process_0~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1~2_combout\,
	datab => \inst6|H\(1),
	datac => \inst6|H\(0),
	datad => \inst6|process_0~152_combout\,
	combout => \inst6|process_0~160_combout\);

-- Location: LCCOMB_X69_Y41_N30
\inst6|process_0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~161_combout\ = (\inst6|p2~0_combout\ & (\inst6|p2~2_combout\ & !\inst6|process_0~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|p2~0_combout\,
	datac => \inst6|p2~2_combout\,
	datad => \inst6|process_0~160_combout\,
	combout => \inst6|process_0~161_combout\);

-- Location: LCCOMB_X66_Y41_N24
\inst6|blue[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~13_combout\ = (!\inst6|columnNum\(2) & (\inst6|columnNum\(0) & (!\inst6|columnNum\(3) & !\inst6|columnNum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|columnNum\(0),
	datac => \inst6|columnNum\(3),
	datad => \inst6|columnNum\(1),
	combout => \inst6|blue[7]~13_combout\);

-- Location: LCCOMB_X69_Y41_N2
\inst6|process_0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~162_combout\ = (!\inst6|I\(1) & (!\inst6|I~1_combout\ & (\inst6|process_0~161_combout\ & \inst6|blue[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|I\(1),
	datab => \inst6|I~1_combout\,
	datac => \inst6|process_0~161_combout\,
	datad => \inst6|blue[7]~13_combout\,
	combout => \inst6|process_0~162_combout\);

-- Location: LCCOMB_X68_Y40_N20
\inst6|I[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|I[1]~2_combout\ = (\inst6|I\(1)) # ((\inst6|buttonConfirmCounter[21]~34_combout\ & \inst6|process_0~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter[21]~34_combout\,
	datac => \inst6|I\(1),
	datad => \inst6|process_0~162_combout\,
	combout => \inst6|I[1]~2_combout\);

-- Location: FF_X68_Y40_N21
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

-- Location: LCCOMB_X69_Y41_N20
\inst6|process_0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~154_combout\ = (!\inst6|I\(1) & (\inst6|blue[7]~13_combout\ & !\inst6|I\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|I\(1),
	datab => \inst6|blue[7]~13_combout\,
	datac => \inst6|I\(0),
	combout => \inst6|process_0~154_combout\);

-- Location: LCCOMB_X69_Y41_N6
\inst6|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~1_combout\ = ((\inst6|p1\(0)) # ((!\inst6|process_0~153_combout\ & !\inst6|process_0~154_combout\))) # (!\inst6|p1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~153_combout\,
	datab => \inst6|p1~0_combout\,
	datac => \inst6|p1\(0),
	datad => \inst6|process_0~154_combout\,
	combout => \inst6|p1~1_combout\);

-- Location: LCCOMB_X69_Y41_N24
\inst6|p2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~3_combout\ = (\inst6|process_0~161_combout\ & ((\inst6|I\(1)) # ((\inst6|I~1_combout\) # (!\inst6|blue[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|I\(1),
	datab => \inst6|I~1_combout\,
	datac => \inst6|process_0~161_combout\,
	datad => \inst6|blue[7]~13_combout\,
	combout => \inst6|p2~3_combout\);

-- Location: FF_X69_Y41_N25
\inst6|p2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|p2~3_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|p2\(0));

-- Location: LCCOMB_X69_Y41_N16
\inst6|p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2~0_combout\ = ((\inst6|p2\(0)) # (!\inst6|p1~0_combout\)) # (!\inst6|p1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1~1_combout\,
	datab => \inst6|p1~0_combout\,
	datad => \inst6|p2\(0),
	combout => \inst6|p2~0_combout\);

-- Location: LCCOMB_X69_Y41_N12
\inst6|process_0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~163_combout\ = (\inst6|p2~0_combout\ & (\inst6|p2~2_combout\ & \inst6|process_0~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|p2~0_combout\,
	datac => \inst6|p2~2_combout\,
	datad => \inst6|process_0~160_combout\,
	combout => \inst6|process_0~163_combout\);

-- Location: LCCOMB_X69_Y41_N14
\inst6|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~3_combout\ = (!\inst6|process_0~153_combout\ & (\inst6|p1~0_combout\ & (!\inst6|p1\(0) & !\inst6|process_0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~153_combout\,
	datab => \inst6|p1~0_combout\,
	datac => \inst6|p1\(0),
	datad => \inst6|process_0~154_combout\,
	combout => \inst6|p1~3_combout\);

-- Location: LCCOMB_X69_Y41_N22
\inst6|p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1~4_combout\ = (!\inst6|process_0~163_combout\ & (!\inst6|p1~3_combout\ & (\inst6|p2~2_combout\ & !\inst6|process_0~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~163_combout\,
	datab => \inst6|p1~3_combout\,
	datac => \inst6|p2~2_combout\,
	datad => \inst6|process_0~162_combout\,
	combout => \inst6|p1~4_combout\);

-- Location: FF_X69_Y41_N23
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

-- Location: LCCOMB_X68_Y40_N18
\inst6|process_0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~158_combout\ = (\inst6|process_0~146_combout\ & (\inst6|p1\(0) & (!\inst6|D\(0) & !\inst6|D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~146_combout\,
	datab => \inst6|p1\(0),
	datac => \inst6|D\(0),
	datad => \inst6|D\(1),
	combout => \inst6|process_0~158_combout\);

-- Location: LCCOMB_X72_Y39_N10
\inst6|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add13~0_combout\ = ((!\inst6|process_0~158_combout\ & !\inst6|process_0~157_combout\)) # (!\inst6|p2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~158_combout\,
	datab => \inst6|p2~0_combout\,
	datad => \inst6|process_0~157_combout\,
	combout => \inst6|Add13~0_combout\);

-- Location: LCCOMB_X72_Y39_N6
\inst6|Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add17~0_combout\ = (\inst6|process_0~159_combout\) # ((\inst6|process_0~160_combout\ & (\inst6|p2~0_combout\ & \inst6|p2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~160_combout\,
	datab => \inst6|process_0~159_combout\,
	datac => \inst6|p2~0_combout\,
	datad => \inst6|p2~2_combout\,
	combout => \inst6|Add17~0_combout\);

-- Location: LCCOMB_X72_Y39_N12
\inst6|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add14~2_combout\ = (\inst6|Add13~0_combout\ & ((\inst6|Add15~0_combout\ & (!\inst6|p2~1_combout\ & \inst6|Add17~0_combout\)) # (!\inst6|Add15~0_combout\ & ((\inst6|Add17~0_combout\) # (!\inst6|p2~1_combout\))))) # (!\inst6|Add13~0_combout\ & 
-- ((\inst6|Add15~0_combout\ & ((\inst6|Add17~0_combout\) # (!\inst6|p2~1_combout\))) # (!\inst6|Add15~0_combout\ & ((\inst6|p2~1_combout\) # (!\inst6|Add17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~0_combout\,
	datab => \inst6|Add15~0_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add17~0_combout\,
	combout => \inst6|Add14~2_combout\);

-- Location: LCCOMB_X69_Y40_N8
\inst6|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~1_combout\ = (\inst6|Add7~0_combout\ & (!\inst6|p1~1_combout\ & (\inst6|Add5~0_combout\ $ (\inst6|Add3~0_combout\)))) # (!\inst6|Add7~0_combout\ & ((\inst6|Add5~0_combout\ $ (\inst6|Add3~0_combout\)) # (!\inst6|p1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~0_combout\,
	datab => \inst6|Add7~0_combout\,
	datac => \inst6|p1~1_combout\,
	datad => \inst6|Add3~0_combout\,
	combout => \inst6|Add6~1_combout\);

-- Location: LCCOMB_X69_Y40_N30
\inst6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = \inst6|Add5~0_combout\ $ (\inst6|Add7~0_combout\ $ (\inst6|p1~1_combout\ $ (\inst6|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~0_combout\,
	datab => \inst6|Add7~0_combout\,
	datac => \inst6|p1~1_combout\,
	datad => \inst6|Add3~0_combout\,
	combout => \inst6|Add6~0_combout\);

-- Location: LCCOMB_X72_Y39_N0
\inst6|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add14~0_combout\ = \inst6|Add13~0_combout\ $ (\inst6|Add15~0_combout\ $ (\inst6|p2~1_combout\ $ (!\inst6|Add17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~0_combout\,
	datab => \inst6|Add15~0_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add17~0_combout\,
	combout => \inst6|Add14~0_combout\);

-- Location: LCCOMB_X69_Y40_N12
\inst6|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add10~0_combout\ = (\inst6|Add6~0_combout\ & (\inst6|Add14~0_combout\ $ (VCC))) # (!\inst6|Add6~0_combout\ & (\inst6|Add14~0_combout\ & VCC))
-- \inst6|Add10~1\ = CARRY((\inst6|Add6~0_combout\ & \inst6|Add14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|Add14~0_combout\,
	datad => VCC,
	combout => \inst6|Add10~0_combout\,
	cout => \inst6|Add10~1\);

-- Location: LCCOMB_X69_Y40_N14
\inst6|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add10~2_combout\ = (\inst6|Add14~2_combout\ & ((\inst6|Add6~1_combout\ & (\inst6|Add10~1\ & VCC)) # (!\inst6|Add6~1_combout\ & (!\inst6|Add10~1\)))) # (!\inst6|Add14~2_combout\ & ((\inst6|Add6~1_combout\ & (!\inst6|Add10~1\)) # 
-- (!\inst6|Add6~1_combout\ & ((\inst6|Add10~1\) # (GND)))))
-- \inst6|Add10~3\ = CARRY((\inst6|Add14~2_combout\ & (!\inst6|Add6~1_combout\ & !\inst6|Add10~1\)) # (!\inst6|Add14~2_combout\ & ((!\inst6|Add10~1\) # (!\inst6|Add6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add14~2_combout\,
	datab => \inst6|Add6~1_combout\,
	datad => VCC,
	cin => \inst6|Add10~1\,
	combout => \inst6|Add10~2_combout\,
	cout => \inst6|Add10~3\);

-- Location: LCCOMB_X68_Y44_N0
\inst6|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = (\inst6|process_0~151_combout\ & (\inst6|buttonConfirmCounter\(0) $ (VCC))) # (!\inst6|process_0~151_combout\ & (\inst6|buttonConfirmCounter\(0) & VCC))
-- \inst6|Add2~1\ = CARRY((\inst6|process_0~151_combout\ & \inst6|buttonConfirmCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~151_combout\,
	datab => \inst6|buttonConfirmCounter\(0),
	datad => VCC,
	combout => \inst6|Add2~0_combout\,
	cout => \inst6|Add2~1\);

-- Location: LCCOMB_X67_Y44_N0
\inst6|Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~0_combout\ = (\inst6|Add10~0_combout\ & (\inst6|Add2~0_combout\ $ (VCC))) # (!\inst6|Add10~0_combout\ & (\inst6|Add2~0_combout\ & VCC))
-- \inst6|Add18~1\ = CARRY((\inst6|Add10~0_combout\ & \inst6|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~0_combout\,
	datab => \inst6|Add2~0_combout\,
	datad => VCC,
	combout => \inst6|Add18~0_combout\,
	cout => \inst6|Add18~1\);

-- Location: LCCOMB_X66_Y44_N0
\inst6|buttonConfirmCounter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[0]~32_combout\ = (\inst6|process_0~162_combout\ & (\inst6|Add18~0_combout\ $ (VCC))) # (!\inst6|process_0~162_combout\ & (\inst6|Add18~0_combout\ & VCC))
-- \inst6|buttonConfirmCounter[0]~33\ = CARRY((\inst6|process_0~162_combout\ & \inst6|Add18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~162_combout\,
	datab => \inst6|Add18~0_combout\,
	datad => VCC,
	combout => \inst6|buttonConfirmCounter[0]~32_combout\,
	cout => \inst6|buttonConfirmCounter[0]~33\);

-- Location: FF_X68_Y44_N1
\inst6|buttonConfirmCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[0]~32_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(0));

-- Location: LCCOMB_X68_Y44_N2
\inst6|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~2_combout\ = (\inst6|buttonConfirmCounter\(1) & (!\inst6|Add2~1\)) # (!\inst6|buttonConfirmCounter\(1) & ((\inst6|Add2~1\) # (GND)))
-- \inst6|Add2~3\ = CARRY((!\inst6|Add2~1\) # (!\inst6|buttonConfirmCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(1),
	datad => VCC,
	cin => \inst6|Add2~1\,
	combout => \inst6|Add2~2_combout\,
	cout => \inst6|Add2~3\);

-- Location: LCCOMB_X67_Y44_N2
\inst6|Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~2_combout\ = (\inst6|Add10~2_combout\ & ((\inst6|Add2~2_combout\ & (\inst6|Add18~1\ & VCC)) # (!\inst6|Add2~2_combout\ & (!\inst6|Add18~1\)))) # (!\inst6|Add10~2_combout\ & ((\inst6|Add2~2_combout\ & (!\inst6|Add18~1\)) # 
-- (!\inst6|Add2~2_combout\ & ((\inst6|Add18~1\) # (GND)))))
-- \inst6|Add18~3\ = CARRY((\inst6|Add10~2_combout\ & (!\inst6|Add2~2_combout\ & !\inst6|Add18~1\)) # (!\inst6|Add10~2_combout\ & ((!\inst6|Add18~1\) # (!\inst6|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~2_combout\,
	datab => \inst6|Add2~2_combout\,
	datad => VCC,
	cin => \inst6|Add18~1\,
	combout => \inst6|Add18~2_combout\,
	cout => \inst6|Add18~3\);

-- Location: LCCOMB_X66_Y44_N2
\inst6|buttonConfirmCounter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[1]~35_combout\ = (\inst6|Add18~2_combout\ & (!\inst6|buttonConfirmCounter[0]~33\)) # (!\inst6|Add18~2_combout\ & ((\inst6|buttonConfirmCounter[0]~33\) # (GND)))
-- \inst6|buttonConfirmCounter[1]~36\ = CARRY((!\inst6|buttonConfirmCounter[0]~33\) # (!\inst6|Add18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~2_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[0]~33\,
	combout => \inst6|buttonConfirmCounter[1]~35_combout\,
	cout => \inst6|buttonConfirmCounter[1]~36\);

-- Location: FF_X68_Y44_N3
\inst6|buttonConfirmCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[1]~35_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(1));

-- Location: LCCOMB_X68_Y44_N4
\inst6|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~4_combout\ = (\inst6|buttonConfirmCounter\(2) & (\inst6|Add2~3\ $ (GND))) # (!\inst6|buttonConfirmCounter\(2) & (!\inst6|Add2~3\ & VCC))
-- \inst6|Add2~5\ = CARRY((\inst6|buttonConfirmCounter\(2) & !\inst6|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(2),
	datad => VCC,
	cin => \inst6|Add2~3\,
	combout => \inst6|Add2~4_combout\,
	cout => \inst6|Add2~5\);

-- Location: LCCOMB_X72_Y39_N2
\inst6|Add14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add14~1_combout\ = (!\inst6|Add13~0_combout\ & (!\inst6|Add15~0_combout\ & (!\inst6|p2~1_combout\ & \inst6|Add17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~0_combout\,
	datab => \inst6|Add15~0_combout\,
	datac => \inst6|p2~1_combout\,
	datad => \inst6|Add17~0_combout\,
	combout => \inst6|Add14~1_combout\);

-- Location: LCCOMB_X69_Y40_N16
\inst6|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add10~4_combout\ = (\inst6|Add14~1_combout\ & (\inst6|Add10~3\ $ (GND))) # (!\inst6|Add14~1_combout\ & (!\inst6|Add10~3\ & VCC))
-- \inst6|Add10~5\ = CARRY((\inst6|Add14~1_combout\ & !\inst6|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add14~1_combout\,
	datad => VCC,
	cin => \inst6|Add10~3\,
	combout => \inst6|Add10~4_combout\,
	cout => \inst6|Add10~5\);

-- Location: LCCOMB_X67_Y44_N4
\inst6|Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~4_combout\ = ((\inst6|Add2~4_combout\ $ (\inst6|Add10~4_combout\ $ (!\inst6|Add18~3\)))) # (GND)
-- \inst6|Add18~5\ = CARRY((\inst6|Add2~4_combout\ & ((\inst6|Add10~4_combout\) # (!\inst6|Add18~3\))) # (!\inst6|Add2~4_combout\ & (\inst6|Add10~4_combout\ & !\inst6|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~4_combout\,
	datab => \inst6|Add10~4_combout\,
	datad => VCC,
	cin => \inst6|Add18~3\,
	combout => \inst6|Add18~4_combout\,
	cout => \inst6|Add18~5\);

-- Location: LCCOMB_X66_Y44_N4
\inst6|buttonConfirmCounter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[2]~37_combout\ = (\inst6|Add18~4_combout\ & (\inst6|buttonConfirmCounter[1]~36\ $ (GND))) # (!\inst6|Add18~4_combout\ & (!\inst6|buttonConfirmCounter[1]~36\ & VCC))
-- \inst6|buttonConfirmCounter[2]~38\ = CARRY((\inst6|Add18~4_combout\ & !\inst6|buttonConfirmCounter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~4_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[1]~36\,
	combout => \inst6|buttonConfirmCounter[2]~37_combout\,
	cout => \inst6|buttonConfirmCounter[2]~38\);

-- Location: FF_X68_Y44_N5
\inst6|buttonConfirmCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[2]~37_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(2));

-- Location: LCCOMB_X68_Y44_N6
\inst6|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~6_combout\ = (\inst6|buttonConfirmCounter\(3) & (!\inst6|Add2~5\)) # (!\inst6|buttonConfirmCounter\(3) & ((\inst6|Add2~5\) # (GND)))
-- \inst6|Add2~7\ = CARRY((!\inst6|Add2~5\) # (!\inst6|buttonConfirmCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(3),
	datad => VCC,
	cin => \inst6|Add2~5\,
	combout => \inst6|Add2~6_combout\,
	cout => \inst6|Add2~7\);

-- Location: LCCOMB_X69_Y40_N18
\inst6|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add10~6_combout\ = \inst6|Add10~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add10~5\,
	combout => \inst6|Add10~6_combout\);

-- Location: LCCOMB_X67_Y44_N6
\inst6|Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~6_combout\ = (\inst6|Add2~6_combout\ & ((\inst6|Add10~6_combout\ & (\inst6|Add18~5\ & VCC)) # (!\inst6|Add10~6_combout\ & (!\inst6|Add18~5\)))) # (!\inst6|Add2~6_combout\ & ((\inst6|Add10~6_combout\ & (!\inst6|Add18~5\)) # 
-- (!\inst6|Add10~6_combout\ & ((\inst6|Add18~5\) # (GND)))))
-- \inst6|Add18~7\ = CARRY((\inst6|Add2~6_combout\ & (!\inst6|Add10~6_combout\ & !\inst6|Add18~5\)) # (!\inst6|Add2~6_combout\ & ((!\inst6|Add18~5\) # (!\inst6|Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~6_combout\,
	datab => \inst6|Add10~6_combout\,
	datad => VCC,
	cin => \inst6|Add18~5\,
	combout => \inst6|Add18~6_combout\,
	cout => \inst6|Add18~7\);

-- Location: LCCOMB_X66_Y44_N6
\inst6|buttonConfirmCounter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[3]~39_combout\ = (\inst6|Add18~6_combout\ & (!\inst6|buttonConfirmCounter[2]~38\)) # (!\inst6|Add18~6_combout\ & ((\inst6|buttonConfirmCounter[2]~38\) # (GND)))
-- \inst6|buttonConfirmCounter[3]~40\ = CARRY((!\inst6|buttonConfirmCounter[2]~38\) # (!\inst6|Add18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~6_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[2]~38\,
	combout => \inst6|buttonConfirmCounter[3]~39_combout\,
	cout => \inst6|buttonConfirmCounter[3]~40\);

-- Location: FF_X68_Y44_N7
\inst6|buttonConfirmCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[3]~39_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(3));

-- Location: LCCOMB_X68_Y44_N8
\inst6|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~8_combout\ = (\inst6|buttonConfirmCounter\(4) & (\inst6|Add2~7\ $ (GND))) # (!\inst6|buttonConfirmCounter\(4) & (!\inst6|Add2~7\ & VCC))
-- \inst6|Add2~9\ = CARRY((\inst6|buttonConfirmCounter\(4) & !\inst6|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(4),
	datad => VCC,
	cin => \inst6|Add2~7\,
	combout => \inst6|Add2~8_combout\,
	cout => \inst6|Add2~9\);

-- Location: LCCOMB_X67_Y44_N8
\inst6|Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~8_combout\ = (\inst6|Add2~8_combout\ & (\inst6|Add18~7\ $ (GND))) # (!\inst6|Add2~8_combout\ & (!\inst6|Add18~7\ & VCC))
-- \inst6|Add18~9\ = CARRY((\inst6|Add2~8_combout\ & !\inst6|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~8_combout\,
	datad => VCC,
	cin => \inst6|Add18~7\,
	combout => \inst6|Add18~8_combout\,
	cout => \inst6|Add18~9\);

-- Location: LCCOMB_X66_Y44_N8
\inst6|buttonConfirmCounter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[4]~41_combout\ = (\inst6|Add18~8_combout\ & (\inst6|buttonConfirmCounter[3]~40\ $ (GND))) # (!\inst6|Add18~8_combout\ & (!\inst6|buttonConfirmCounter[3]~40\ & VCC))
-- \inst6|buttonConfirmCounter[4]~42\ = CARRY((\inst6|Add18~8_combout\ & !\inst6|buttonConfirmCounter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~8_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[3]~40\,
	combout => \inst6|buttonConfirmCounter[4]~41_combout\,
	cout => \inst6|buttonConfirmCounter[4]~42\);

-- Location: FF_X68_Y44_N9
\inst6|buttonConfirmCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[4]~41_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(4));

-- Location: LCCOMB_X68_Y44_N10
\inst6|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~10_combout\ = (\inst6|buttonConfirmCounter\(5) & (!\inst6|Add2~9\)) # (!\inst6|buttonConfirmCounter\(5) & ((\inst6|Add2~9\) # (GND)))
-- \inst6|Add2~11\ = CARRY((!\inst6|Add2~9\) # (!\inst6|buttonConfirmCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(5),
	datad => VCC,
	cin => \inst6|Add2~9\,
	combout => \inst6|Add2~10_combout\,
	cout => \inst6|Add2~11\);

-- Location: LCCOMB_X67_Y44_N10
\inst6|Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~10_combout\ = (\inst6|Add2~10_combout\ & (!\inst6|Add18~9\)) # (!\inst6|Add2~10_combout\ & ((\inst6|Add18~9\) # (GND)))
-- \inst6|Add18~11\ = CARRY((!\inst6|Add18~9\) # (!\inst6|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~10_combout\,
	datad => VCC,
	cin => \inst6|Add18~9\,
	combout => \inst6|Add18~10_combout\,
	cout => \inst6|Add18~11\);

-- Location: LCCOMB_X66_Y44_N10
\inst6|buttonConfirmCounter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[5]~43_combout\ = (\inst6|Add18~10_combout\ & (!\inst6|buttonConfirmCounter[4]~42\)) # (!\inst6|Add18~10_combout\ & ((\inst6|buttonConfirmCounter[4]~42\) # (GND)))
-- \inst6|buttonConfirmCounter[5]~44\ = CARRY((!\inst6|buttonConfirmCounter[4]~42\) # (!\inst6|Add18~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~10_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[4]~42\,
	combout => \inst6|buttonConfirmCounter[5]~43_combout\,
	cout => \inst6|buttonConfirmCounter[5]~44\);

-- Location: FF_X68_Y44_N11
\inst6|buttonConfirmCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[5]~43_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(5));

-- Location: LCCOMB_X68_Y44_N12
\inst6|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~12_combout\ = (\inst6|buttonConfirmCounter\(6) & (\inst6|Add2~11\ $ (GND))) # (!\inst6|buttonConfirmCounter\(6) & (!\inst6|Add2~11\ & VCC))
-- \inst6|Add2~13\ = CARRY((\inst6|buttonConfirmCounter\(6) & !\inst6|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(6),
	datad => VCC,
	cin => \inst6|Add2~11\,
	combout => \inst6|Add2~12_combout\,
	cout => \inst6|Add2~13\);

-- Location: LCCOMB_X67_Y44_N12
\inst6|Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~12_combout\ = (\inst6|Add2~12_combout\ & (\inst6|Add18~11\ $ (GND))) # (!\inst6|Add2~12_combout\ & (!\inst6|Add18~11\ & VCC))
-- \inst6|Add18~13\ = CARRY((\inst6|Add2~12_combout\ & !\inst6|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~12_combout\,
	datad => VCC,
	cin => \inst6|Add18~11\,
	combout => \inst6|Add18~12_combout\,
	cout => \inst6|Add18~13\);

-- Location: LCCOMB_X66_Y44_N12
\inst6|buttonConfirmCounter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[6]~45_combout\ = (\inst6|Add18~12_combout\ & (\inst6|buttonConfirmCounter[5]~44\ $ (GND))) # (!\inst6|Add18~12_combout\ & (!\inst6|buttonConfirmCounter[5]~44\ & VCC))
-- \inst6|buttonConfirmCounter[6]~46\ = CARRY((\inst6|Add18~12_combout\ & !\inst6|buttonConfirmCounter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~12_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[5]~44\,
	combout => \inst6|buttonConfirmCounter[6]~45_combout\,
	cout => \inst6|buttonConfirmCounter[6]~46\);

-- Location: FF_X68_Y44_N13
\inst6|buttonConfirmCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[6]~45_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(6));

-- Location: LCCOMB_X68_Y44_N14
\inst6|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~14_combout\ = (\inst6|buttonConfirmCounter\(7) & (!\inst6|Add2~13\)) # (!\inst6|buttonConfirmCounter\(7) & ((\inst6|Add2~13\) # (GND)))
-- \inst6|Add2~15\ = CARRY((!\inst6|Add2~13\) # (!\inst6|buttonConfirmCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(7),
	datad => VCC,
	cin => \inst6|Add2~13\,
	combout => \inst6|Add2~14_combout\,
	cout => \inst6|Add2~15\);

-- Location: LCCOMB_X67_Y44_N14
\inst6|Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~14_combout\ = (\inst6|Add2~14_combout\ & (!\inst6|Add18~13\)) # (!\inst6|Add2~14_combout\ & ((\inst6|Add18~13\) # (GND)))
-- \inst6|Add18~15\ = CARRY((!\inst6|Add18~13\) # (!\inst6|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~14_combout\,
	datad => VCC,
	cin => \inst6|Add18~13\,
	combout => \inst6|Add18~14_combout\,
	cout => \inst6|Add18~15\);

-- Location: LCCOMB_X66_Y44_N14
\inst6|buttonConfirmCounter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[7]~47_combout\ = (\inst6|Add18~14_combout\ & (!\inst6|buttonConfirmCounter[6]~46\)) # (!\inst6|Add18~14_combout\ & ((\inst6|buttonConfirmCounter[6]~46\) # (GND)))
-- \inst6|buttonConfirmCounter[7]~48\ = CARRY((!\inst6|buttonConfirmCounter[6]~46\) # (!\inst6|Add18~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~14_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[6]~46\,
	combout => \inst6|buttonConfirmCounter[7]~47_combout\,
	cout => \inst6|buttonConfirmCounter[7]~48\);

-- Location: FF_X68_Y44_N15
\inst6|buttonConfirmCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[7]~47_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(7));

-- Location: LCCOMB_X66_Y40_N22
\inst6|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~45_combout\ = (!\inst6|buttonConfirmCounter\(5) & (!\inst6|buttonConfirmCounter\(6) & (!\inst6|buttonConfirmCounter\(7) & !\inst6|buttonConfirmCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(5),
	datab => \inst6|buttonConfirmCounter\(6),
	datac => \inst6|buttonConfirmCounter\(7),
	datad => \inst6|buttonConfirmCounter\(4),
	combout => \inst6|process_0~45_combout\);

-- Location: LCCOMB_X68_Y42_N0
\inst6|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~44_combout\ = (\inst6|buttonConfirmCounter\(3) & (\inst6|buttonConfirmCounter\(0) & (!\inst6|buttonConfirmCounter\(2) & !\inst6|buttonConfirmCounter\(1))))

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
	combout => \inst6|process_0~44_combout\);

-- Location: LCCOMB_X68_Y44_N16
\inst6|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~16_combout\ = (\inst6|buttonConfirmCounter\(8) & (\inst6|Add2~15\ $ (GND))) # (!\inst6|buttonConfirmCounter\(8) & (!\inst6|Add2~15\ & VCC))
-- \inst6|Add2~17\ = CARRY((\inst6|buttonConfirmCounter\(8) & !\inst6|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(8),
	datad => VCC,
	cin => \inst6|Add2~15\,
	combout => \inst6|Add2~16_combout\,
	cout => \inst6|Add2~17\);

-- Location: LCCOMB_X67_Y44_N16
\inst6|Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~16_combout\ = (\inst6|Add2~16_combout\ & (\inst6|Add18~15\ $ (GND))) # (!\inst6|Add2~16_combout\ & (!\inst6|Add18~15\ & VCC))
-- \inst6|Add18~17\ = CARRY((\inst6|Add2~16_combout\ & !\inst6|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~16_combout\,
	datad => VCC,
	cin => \inst6|Add18~15\,
	combout => \inst6|Add18~16_combout\,
	cout => \inst6|Add18~17\);

-- Location: LCCOMB_X66_Y44_N16
\inst6|buttonConfirmCounter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[8]~49_combout\ = (\inst6|Add18~16_combout\ & (\inst6|buttonConfirmCounter[7]~48\ $ (GND))) # (!\inst6|Add18~16_combout\ & (!\inst6|buttonConfirmCounter[7]~48\ & VCC))
-- \inst6|buttonConfirmCounter[8]~50\ = CARRY((\inst6|Add18~16_combout\ & !\inst6|buttonConfirmCounter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~16_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[7]~48\,
	combout => \inst6|buttonConfirmCounter[8]~49_combout\,
	cout => \inst6|buttonConfirmCounter[8]~50\);

-- Location: FF_X68_Y44_N17
\inst6|buttonConfirmCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[8]~49_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(8));

-- Location: LCCOMB_X68_Y44_N18
\inst6|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~18_combout\ = (\inst6|buttonConfirmCounter\(9) & (!\inst6|Add2~17\)) # (!\inst6|buttonConfirmCounter\(9) & ((\inst6|Add2~17\) # (GND)))
-- \inst6|Add2~19\ = CARRY((!\inst6|Add2~17\) # (!\inst6|buttonConfirmCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(9),
	datad => VCC,
	cin => \inst6|Add2~17\,
	combout => \inst6|Add2~18_combout\,
	cout => \inst6|Add2~19\);

-- Location: LCCOMB_X67_Y44_N18
\inst6|Add18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~18_combout\ = (\inst6|Add2~18_combout\ & (!\inst6|Add18~17\)) # (!\inst6|Add2~18_combout\ & ((\inst6|Add18~17\) # (GND)))
-- \inst6|Add18~19\ = CARRY((!\inst6|Add18~17\) # (!\inst6|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~18_combout\,
	datad => VCC,
	cin => \inst6|Add18~17\,
	combout => \inst6|Add18~18_combout\,
	cout => \inst6|Add18~19\);

-- Location: LCCOMB_X66_Y44_N18
\inst6|buttonConfirmCounter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[9]~51_combout\ = (\inst6|Add18~18_combout\ & (!\inst6|buttonConfirmCounter[8]~50\)) # (!\inst6|Add18~18_combout\ & ((\inst6|buttonConfirmCounter[8]~50\) # (GND)))
-- \inst6|buttonConfirmCounter[9]~52\ = CARRY((!\inst6|buttonConfirmCounter[8]~50\) # (!\inst6|Add18~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~18_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[8]~50\,
	combout => \inst6|buttonConfirmCounter[9]~51_combout\,
	cout => \inst6|buttonConfirmCounter[9]~52\);

-- Location: FF_X68_Y44_N19
\inst6|buttonConfirmCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[9]~51_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(9));

-- Location: LCCOMB_X68_Y44_N20
\inst6|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~20_combout\ = (\inst6|buttonConfirmCounter\(10) & (\inst6|Add2~19\ $ (GND))) # (!\inst6|buttonConfirmCounter\(10) & (!\inst6|Add2~19\ & VCC))
-- \inst6|Add2~21\ = CARRY((\inst6|buttonConfirmCounter\(10) & !\inst6|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(10),
	datad => VCC,
	cin => \inst6|Add2~19\,
	combout => \inst6|Add2~20_combout\,
	cout => \inst6|Add2~21\);

-- Location: LCCOMB_X67_Y44_N20
\inst6|Add18~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~20_combout\ = (\inst6|Add2~20_combout\ & (\inst6|Add18~19\ $ (GND))) # (!\inst6|Add2~20_combout\ & (!\inst6|Add18~19\ & VCC))
-- \inst6|Add18~21\ = CARRY((\inst6|Add2~20_combout\ & !\inst6|Add18~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~20_combout\,
	datad => VCC,
	cin => \inst6|Add18~19\,
	combout => \inst6|Add18~20_combout\,
	cout => \inst6|Add18~21\);

-- Location: LCCOMB_X66_Y44_N20
\inst6|buttonConfirmCounter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[10]~53_combout\ = (\inst6|Add18~20_combout\ & (\inst6|buttonConfirmCounter[9]~52\ $ (GND))) # (!\inst6|Add18~20_combout\ & (!\inst6|buttonConfirmCounter[9]~52\ & VCC))
-- \inst6|buttonConfirmCounter[10]~54\ = CARRY((\inst6|Add18~20_combout\ & !\inst6|buttonConfirmCounter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~20_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[9]~52\,
	combout => \inst6|buttonConfirmCounter[10]~53_combout\,
	cout => \inst6|buttonConfirmCounter[10]~54\);

-- Location: FF_X68_Y44_N21
\inst6|buttonConfirmCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[10]~53_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(10));

-- Location: LCCOMB_X68_Y44_N22
\inst6|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~22_combout\ = (\inst6|buttonConfirmCounter\(11) & (!\inst6|Add2~21\)) # (!\inst6|buttonConfirmCounter\(11) & ((\inst6|Add2~21\) # (GND)))
-- \inst6|Add2~23\ = CARRY((!\inst6|Add2~21\) # (!\inst6|buttonConfirmCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(11),
	datad => VCC,
	cin => \inst6|Add2~21\,
	combout => \inst6|Add2~22_combout\,
	cout => \inst6|Add2~23\);

-- Location: LCCOMB_X67_Y44_N22
\inst6|Add18~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~22_combout\ = (\inst6|Add2~22_combout\ & (!\inst6|Add18~21\)) # (!\inst6|Add2~22_combout\ & ((\inst6|Add18~21\) # (GND)))
-- \inst6|Add18~23\ = CARRY((!\inst6|Add18~21\) # (!\inst6|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~22_combout\,
	datad => VCC,
	cin => \inst6|Add18~21\,
	combout => \inst6|Add18~22_combout\,
	cout => \inst6|Add18~23\);

-- Location: LCCOMB_X66_Y44_N22
\inst6|buttonConfirmCounter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[11]~55_combout\ = (\inst6|Add18~22_combout\ & (!\inst6|buttonConfirmCounter[10]~54\)) # (!\inst6|Add18~22_combout\ & ((\inst6|buttonConfirmCounter[10]~54\) # (GND)))
-- \inst6|buttonConfirmCounter[11]~56\ = CARRY((!\inst6|buttonConfirmCounter[10]~54\) # (!\inst6|Add18~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~22_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[10]~54\,
	combout => \inst6|buttonConfirmCounter[11]~55_combout\,
	cout => \inst6|buttonConfirmCounter[11]~56\);

-- Location: FF_X68_Y44_N23
\inst6|buttonConfirmCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[11]~55_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(11));

-- Location: LCCOMB_X68_Y41_N8
\inst6|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~46_combout\ = (!\inst6|buttonConfirmCounter\(9) & (!\inst6|buttonConfirmCounter\(11) & (!\inst6|buttonConfirmCounter\(10) & !\inst6|buttonConfirmCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(9),
	datab => \inst6|buttonConfirmCounter\(11),
	datac => \inst6|buttonConfirmCounter\(10),
	datad => \inst6|buttonConfirmCounter\(8),
	combout => \inst6|process_0~46_combout\);

-- Location: LCCOMB_X68_Y44_N24
\inst6|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~24_combout\ = (\inst6|buttonConfirmCounter\(12) & (\inst6|Add2~23\ $ (GND))) # (!\inst6|buttonConfirmCounter\(12) & (!\inst6|Add2~23\ & VCC))
-- \inst6|Add2~25\ = CARRY((\inst6|buttonConfirmCounter\(12) & !\inst6|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(12),
	datad => VCC,
	cin => \inst6|Add2~23\,
	combout => \inst6|Add2~24_combout\,
	cout => \inst6|Add2~25\);

-- Location: LCCOMB_X67_Y44_N24
\inst6|Add18~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~24_combout\ = (\inst6|Add2~24_combout\ & (\inst6|Add18~23\ $ (GND))) # (!\inst6|Add2~24_combout\ & (!\inst6|Add18~23\ & VCC))
-- \inst6|Add18~25\ = CARRY((\inst6|Add2~24_combout\ & !\inst6|Add18~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~24_combout\,
	datad => VCC,
	cin => \inst6|Add18~23\,
	combout => \inst6|Add18~24_combout\,
	cout => \inst6|Add18~25\);

-- Location: LCCOMB_X66_Y44_N24
\inst6|buttonConfirmCounter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[12]~57_combout\ = (\inst6|Add18~24_combout\ & (\inst6|buttonConfirmCounter[11]~56\ $ (GND))) # (!\inst6|Add18~24_combout\ & (!\inst6|buttonConfirmCounter[11]~56\ & VCC))
-- \inst6|buttonConfirmCounter[12]~58\ = CARRY((\inst6|Add18~24_combout\ & !\inst6|buttonConfirmCounter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~24_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[11]~56\,
	combout => \inst6|buttonConfirmCounter[12]~57_combout\,
	cout => \inst6|buttonConfirmCounter[12]~58\);

-- Location: FF_X68_Y44_N25
\inst6|buttonConfirmCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[12]~57_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(12));

-- Location: LCCOMB_X68_Y44_N26
\inst6|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~26_combout\ = (\inst6|buttonConfirmCounter\(13) & (!\inst6|Add2~25\)) # (!\inst6|buttonConfirmCounter\(13) & ((\inst6|Add2~25\) # (GND)))
-- \inst6|Add2~27\ = CARRY((!\inst6|Add2~25\) # (!\inst6|buttonConfirmCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(13),
	datad => VCC,
	cin => \inst6|Add2~25\,
	combout => \inst6|Add2~26_combout\,
	cout => \inst6|Add2~27\);

-- Location: LCCOMB_X67_Y44_N26
\inst6|Add18~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~26_combout\ = (\inst6|Add2~26_combout\ & (!\inst6|Add18~25\)) # (!\inst6|Add2~26_combout\ & ((\inst6|Add18~25\) # (GND)))
-- \inst6|Add18~27\ = CARRY((!\inst6|Add18~25\) # (!\inst6|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~26_combout\,
	datad => VCC,
	cin => \inst6|Add18~25\,
	combout => \inst6|Add18~26_combout\,
	cout => \inst6|Add18~27\);

-- Location: LCCOMB_X66_Y44_N26
\inst6|buttonConfirmCounter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[13]~59_combout\ = (\inst6|Add18~26_combout\ & (!\inst6|buttonConfirmCounter[12]~58\)) # (!\inst6|Add18~26_combout\ & ((\inst6|buttonConfirmCounter[12]~58\) # (GND)))
-- \inst6|buttonConfirmCounter[13]~60\ = CARRY((!\inst6|buttonConfirmCounter[12]~58\) # (!\inst6|Add18~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~26_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[12]~58\,
	combout => \inst6|buttonConfirmCounter[13]~59_combout\,
	cout => \inst6|buttonConfirmCounter[13]~60\);

-- Location: FF_X68_Y44_N27
\inst6|buttonConfirmCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[13]~59_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(13));

-- Location: LCCOMB_X68_Y44_N28
\inst6|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~28_combout\ = (\inst6|buttonConfirmCounter\(14) & (\inst6|Add2~27\ $ (GND))) # (!\inst6|buttonConfirmCounter\(14) & (!\inst6|Add2~27\ & VCC))
-- \inst6|Add2~29\ = CARRY((\inst6|buttonConfirmCounter\(14) & !\inst6|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(14),
	datad => VCC,
	cin => \inst6|Add2~27\,
	combout => \inst6|Add2~28_combout\,
	cout => \inst6|Add2~29\);

-- Location: LCCOMB_X67_Y44_N28
\inst6|Add18~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~28_combout\ = (\inst6|Add2~28_combout\ & (\inst6|Add18~27\ $ (GND))) # (!\inst6|Add2~28_combout\ & (!\inst6|Add18~27\ & VCC))
-- \inst6|Add18~29\ = CARRY((\inst6|Add2~28_combout\ & !\inst6|Add18~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~28_combout\,
	datad => VCC,
	cin => \inst6|Add18~27\,
	combout => \inst6|Add18~28_combout\,
	cout => \inst6|Add18~29\);

-- Location: LCCOMB_X66_Y44_N28
\inst6|buttonConfirmCounter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[14]~61_combout\ = (\inst6|Add18~28_combout\ & (\inst6|buttonConfirmCounter[13]~60\ $ (GND))) # (!\inst6|Add18~28_combout\ & (!\inst6|buttonConfirmCounter[13]~60\ & VCC))
-- \inst6|buttonConfirmCounter[14]~62\ = CARRY((\inst6|Add18~28_combout\ & !\inst6|buttonConfirmCounter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~28_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[13]~60\,
	combout => \inst6|buttonConfirmCounter[14]~61_combout\,
	cout => \inst6|buttonConfirmCounter[14]~62\);

-- Location: FF_X68_Y44_N29
\inst6|buttonConfirmCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[14]~61_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(14));

-- Location: LCCOMB_X68_Y44_N30
\inst6|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~30_combout\ = (\inst6|buttonConfirmCounter\(15) & (!\inst6|Add2~29\)) # (!\inst6|buttonConfirmCounter\(15) & ((\inst6|Add2~29\) # (GND)))
-- \inst6|Add2~31\ = CARRY((!\inst6|Add2~29\) # (!\inst6|buttonConfirmCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(15),
	datad => VCC,
	cin => \inst6|Add2~29\,
	combout => \inst6|Add2~30_combout\,
	cout => \inst6|Add2~31\);

-- Location: LCCOMB_X67_Y44_N30
\inst6|Add18~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~30_combout\ = (\inst6|Add2~30_combout\ & (!\inst6|Add18~29\)) # (!\inst6|Add2~30_combout\ & ((\inst6|Add18~29\) # (GND)))
-- \inst6|Add18~31\ = CARRY((!\inst6|Add18~29\) # (!\inst6|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~30_combout\,
	datad => VCC,
	cin => \inst6|Add18~29\,
	combout => \inst6|Add18~30_combout\,
	cout => \inst6|Add18~31\);

-- Location: LCCOMB_X66_Y44_N30
\inst6|buttonConfirmCounter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[15]~63_combout\ = (\inst6|Add18~30_combout\ & (!\inst6|buttonConfirmCounter[14]~62\)) # (!\inst6|Add18~30_combout\ & ((\inst6|buttonConfirmCounter[14]~62\) # (GND)))
-- \inst6|buttonConfirmCounter[15]~64\ = CARRY((!\inst6|buttonConfirmCounter[14]~62\) # (!\inst6|Add18~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~30_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[14]~62\,
	combout => \inst6|buttonConfirmCounter[15]~63_combout\,
	cout => \inst6|buttonConfirmCounter[15]~64\);

-- Location: FF_X68_Y44_N31
\inst6|buttonConfirmCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[15]~63_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(15));

-- Location: LCCOMB_X67_Y42_N16
\inst6|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~47_combout\ = (!\inst6|buttonConfirmCounter\(14) & (!\inst6|buttonConfirmCounter\(13) & (!\inst6|buttonConfirmCounter\(15) & !\inst6|buttonConfirmCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(14),
	datab => \inst6|buttonConfirmCounter\(13),
	datac => \inst6|buttonConfirmCounter\(15),
	datad => \inst6|buttonConfirmCounter\(12),
	combout => \inst6|process_0~47_combout\);

-- Location: LCCOMB_X66_Y40_N6
\inst6|process_0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~48_combout\ = (\inst6|process_0~45_combout\ & (\inst6|process_0~44_combout\ & (\inst6|process_0~46_combout\ & \inst6|process_0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~45_combout\,
	datab => \inst6|process_0~44_combout\,
	datac => \inst6|process_0~46_combout\,
	datad => \inst6|process_0~47_combout\,
	combout => \inst6|process_0~48_combout\);

-- Location: LCCOMB_X68_Y40_N22
\inst6|p2w~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~11_combout\ = (!\inst6|A\(0) & (!\inst6|I\(0) & (\inst6|I\(1) & \inst6|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|A\(0),
	datab => \inst6|I\(0),
	datac => \inst6|I\(1),
	datad => \inst6|A\(1),
	combout => \inst6|p2w~11_combout\);

-- Location: LCCOMB_X72_Y37_N22
\inst6|p2w~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~9_combout\ = (\inst6|H\(1) & (!\inst6|H\(0) & (\inst6|B\(1) & !\inst6|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(1),
	datab => \inst6|H\(0),
	datac => \inst6|B\(1),
	datad => \inst6|B\(0),
	combout => \inst6|p2w~9_combout\);

-- Location: LCCOMB_X72_Y37_N20
\inst6|p2w~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~8_combout\ = (\inst6|G\(1) & (!\inst6|G\(0) & (\inst6|C\(1) & !\inst6|C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|G\(1),
	datab => \inst6|G\(0),
	datac => \inst6|C\(1),
	datad => \inst6|C\(0),
	combout => \inst6|p2w~8_combout\);

-- Location: LCCOMB_X69_Y40_N24
\inst6|p2w~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~10_combout\ = (!\inst6|D\(0) & (!\inst6|F\(0) & (\inst6|D\(1) & \inst6|F\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|D\(0),
	datab => \inst6|F\(0),
	datac => \inst6|D\(1),
	datad => \inst6|F\(1),
	combout => \inst6|p2w~10_combout\);

-- Location: LCCOMB_X69_Y40_N26
\inst6|p2w~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~12_combout\ = (\inst6|p2w~11_combout\) # ((\inst6|p2w~9_combout\) # ((\inst6|p2w~8_combout\) # (\inst6|p2w~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2w~11_combout\,
	datab => \inst6|p2w~9_combout\,
	datac => \inst6|p2w~8_combout\,
	datad => \inst6|p2w~10_combout\,
	combout => \inst6|p2w~12_combout\);

-- Location: LCCOMB_X68_Y36_N20
\inst6|p2w~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~3_combout\ = (!\inst6|C\(0) & (\inst6|B\(1) & (\inst6|C\(1) & !\inst6|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(0),
	datab => \inst6|B\(1),
	datac => \inst6|C\(1),
	datad => \inst6|B\(0),
	combout => \inst6|p2w~3_combout\);

-- Location: LCCOMB_X68_Y40_N2
\inst6|red[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~11_combout\ = (!\inst6|D\(0) & \inst6|D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|D\(0),
	datad => \inst6|D\(1),
	combout => \inst6|red[7]~11_combout\);

-- Location: LCCOMB_X68_Y40_N4
\inst6|p2w~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~2_combout\ = (!\inst6|A\(0) & \inst6|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|A\(0),
	datad => \inst6|A\(1),
	combout => \inst6|p2w~2_combout\);

-- Location: LCCOMB_X68_Y36_N18
\inst6|red[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~10_combout\ = (!\inst6|G\(0) & \inst6|G\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|G\(0),
	datad => \inst6|G\(1),
	combout => \inst6|red[7]~10_combout\);

-- Location: LCCOMB_X68_Y36_N12
\inst6|p2w~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~4_combout\ = (\inst6|p2w~2_combout\ & ((\inst6|p2w~3_combout\) # ((\inst6|red[7]~11_combout\ & \inst6|red[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2w~3_combout\,
	datab => \inst6|red[7]~11_combout\,
	datac => \inst6|p2w~2_combout\,
	datad => \inst6|red[7]~10_combout\,
	combout => \inst6|p2w~4_combout\);

-- Location: LCCOMB_X72_Y37_N8
\inst6|p2w~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~5_combout\ = (\inst6|H\(1) & (!\inst6|G\(0) & (\inst6|G\(1) & !\inst6|H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(1),
	datab => \inst6|G\(0),
	datac => \inst6|G\(1),
	datad => \inst6|H\(0),
	combout => \inst6|p2w~5_combout\);

-- Location: LCCOMB_X69_Y39_N14
\inst6|red[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~12_combout\ = (!\inst6|F\(0) & \inst6|F\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|F\(0),
	datad => \inst6|F\(1),
	combout => \inst6|red[7]~12_combout\);

-- Location: LCCOMB_X72_Y37_N18
\inst6|p2w~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~6_combout\ = (\inst6|p2w~5_combout\) # ((!\inst6|C\(0) & (\inst6|C\(1) & \inst6|red[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(0),
	datab => \inst6|p2w~5_combout\,
	datac => \inst6|C\(1),
	datad => \inst6|red[7]~12_combout\,
	combout => \inst6|p2w~6_combout\);

-- Location: LCCOMB_X67_Y40_N24
\inst6|p2w~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~7_combout\ = (\inst6|p2w~4_combout\) # ((\inst6|I\(1) & (!\inst6|I\(0) & \inst6|p2w~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|I\(1),
	datab => \inst6|p2w~4_combout\,
	datac => \inst6|I\(0),
	datad => \inst6|p2w~6_combout\,
	combout => \inst6|p2w~7_combout\);

-- Location: LCCOMB_X66_Y40_N24
\inst6|p2w~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p2w~13_combout\ = (\inst6|p2w~7_combout\) # ((\inst6|p2w~12_combout\ & (!\inst6|E\(0) & \inst6|E\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2w~12_combout\,
	datab => \inst6|p2w~7_combout\,
	datac => \inst6|E\(0),
	datad => \inst6|E\(1),
	combout => \inst6|p2w~13_combout\);

-- Location: LCCOMB_X72_Y37_N12
\inst6|red[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~16_combout\ = (\inst6|I\(0) & !\inst6|I\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|I\(0),
	datad => \inst6|I\(1),
	combout => \inst6|red[7]~16_combout\);

-- Location: LCCOMB_X69_Y39_N28
\inst6|red[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~15_combout\ = (\inst6|F\(0) & !\inst6|F\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|F\(0),
	datad => \inst6|F\(1),
	combout => \inst6|red[7]~15_combout\);

-- Location: LCCOMB_X72_Y37_N16
\inst6|p1w~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~6_combout\ = (!\inst6|H\(1) & (\inst6|G\(0) & (!\inst6|G\(1) & \inst6|H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(1),
	datab => \inst6|G\(0),
	datac => \inst6|G\(1),
	datad => \inst6|H\(0),
	combout => \inst6|p1w~6_combout\);

-- Location: LCCOMB_X72_Y37_N2
\inst6|p1w~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~7_combout\ = (\inst6|p1w~6_combout\) # ((\inst6|C\(0) & (\inst6|red[7]~15_combout\ & !\inst6|C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(0),
	datab => \inst6|red[7]~15_combout\,
	datac => \inst6|C\(1),
	datad => \inst6|p1w~6_combout\,
	combout => \inst6|p1w~7_combout\);

-- Location: LCCOMB_X68_Y40_N16
\inst6|red[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~17_combout\ = (\inst6|A\(0) & !\inst6|A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|A\(0),
	datad => \inst6|A\(1),
	combout => \inst6|red[6]~17_combout\);

-- Location: LCCOMB_X68_Y40_N26
\inst6|red[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~18_combout\ = (\inst6|D\(0) & !\inst6|D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|D\(0),
	datad => \inst6|D\(1),
	combout => \inst6|red[7]~18_combout\);

-- Location: LCCOMB_X72_Y37_N4
\inst6|red[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~19_combout\ = (!\inst6|G\(1) & \inst6|G\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|G\(1),
	datac => \inst6|G\(0),
	combout => \inst6|red[7]~19_combout\);

-- Location: LCCOMB_X72_Y37_N10
\inst6|p1w~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~4_combout\ = (!\inst6|B\(1) & (\inst6|B\(0) & (!\inst6|C\(1) & \inst6|C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|B\(1),
	datab => \inst6|B\(0),
	datac => \inst6|C\(1),
	datad => \inst6|C\(0),
	combout => \inst6|p1w~4_combout\);

-- Location: LCCOMB_X72_Y37_N14
\inst6|p1w~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~5_combout\ = (\inst6|red[6]~17_combout\ & ((\inst6|p1w~4_combout\) # ((\inst6|red[7]~18_combout\ & \inst6|red[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~17_combout\,
	datab => \inst6|red[7]~18_combout\,
	datac => \inst6|red[7]~19_combout\,
	datad => \inst6|p1w~4_combout\,
	combout => \inst6|p1w~5_combout\);

-- Location: LCCOMB_X72_Y37_N30
\inst6|p1w~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~2_combout\ = (\inst6|red[6]~17_combout\ & ((\inst6|red[7]~16_combout\) # ((\inst6|red[7]~15_combout\ & \inst6|red[7]~18_combout\)))) # (!\inst6|red[6]~17_combout\ & (\inst6|red[7]~15_combout\ & (\inst6|red[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~17_combout\,
	datab => \inst6|red[7]~15_combout\,
	datac => \inst6|red[7]~18_combout\,
	datad => \inst6|red[7]~16_combout\,
	combout => \inst6|p1w~2_combout\);

-- Location: LCCOMB_X66_Y40_N28
\inst6|red[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~14_combout\ = (\inst6|E\(0) & !\inst6|E\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|E\(0),
	datad => \inst6|E\(1),
	combout => \inst6|red[7]~14_combout\);

-- Location: LCCOMB_X72_Y37_N26
\inst6|p1w~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~1_combout\ = (!\inst6|H\(1) & (\inst6|H\(0) & (!\inst6|B\(1) & \inst6|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(1),
	datab => \inst6|H\(0),
	datac => \inst6|B\(1),
	datad => \inst6|B\(0),
	combout => \inst6|p1w~1_combout\);

-- Location: LCCOMB_X72_Y37_N0
\inst6|p1w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~0_combout\ = (!\inst6|G\(1) & (\inst6|G\(0) & (!\inst6|C\(1) & \inst6|C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|G\(1),
	datab => \inst6|G\(0),
	datac => \inst6|C\(1),
	datad => \inst6|C\(0),
	combout => \inst6|p1w~0_combout\);

-- Location: LCCOMB_X72_Y37_N24
\inst6|p1w~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~3_combout\ = (\inst6|red[7]~14_combout\ & ((\inst6|p1w~2_combout\) # ((\inst6|p1w~1_combout\) # (\inst6|p1w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1w~2_combout\,
	datab => \inst6|red[7]~14_combout\,
	datac => \inst6|p1w~1_combout\,
	datad => \inst6|p1w~0_combout\,
	combout => \inst6|p1w~3_combout\);

-- Location: LCCOMB_X72_Y37_N28
\inst6|p1w~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|p1w~8_combout\ = (\inst6|p1w~5_combout\) # ((\inst6|p1w~3_combout\) # ((\inst6|red[7]~16_combout\ & \inst6|p1w~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~16_combout\,
	datab => \inst6|p1w~7_combout\,
	datac => \inst6|p1w~5_combout\,
	datad => \inst6|p1w~3_combout\,
	combout => \inst6|p1w~8_combout\);

-- Location: LCCOMB_X68_Y43_N0
\inst6|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~32_combout\ = (\inst6|buttonConfirmCounter\(16) & (\inst6|Add2~31\ $ (GND))) # (!\inst6|buttonConfirmCounter\(16) & (!\inst6|Add2~31\ & VCC))
-- \inst6|Add2~33\ = CARRY((\inst6|buttonConfirmCounter\(16) & !\inst6|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(16),
	datad => VCC,
	cin => \inst6|Add2~31\,
	combout => \inst6|Add2~32_combout\,
	cout => \inst6|Add2~33\);

-- Location: LCCOMB_X67_Y43_N0
\inst6|Add18~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~32_combout\ = (\inst6|Add2~32_combout\ & (\inst6|Add18~31\ $ (GND))) # (!\inst6|Add2~32_combout\ & (!\inst6|Add18~31\ & VCC))
-- \inst6|Add18~33\ = CARRY((\inst6|Add2~32_combout\ & !\inst6|Add18~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~32_combout\,
	datad => VCC,
	cin => \inst6|Add18~31\,
	combout => \inst6|Add18~32_combout\,
	cout => \inst6|Add18~33\);

-- Location: LCCOMB_X66_Y43_N0
\inst6|buttonConfirmCounter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[16]~65_combout\ = (\inst6|Add18~32_combout\ & (\inst6|buttonConfirmCounter[15]~64\ $ (GND))) # (!\inst6|Add18~32_combout\ & (!\inst6|buttonConfirmCounter[15]~64\ & VCC))
-- \inst6|buttonConfirmCounter[16]~66\ = CARRY((\inst6|Add18~32_combout\ & !\inst6|buttonConfirmCounter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~32_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[15]~64\,
	combout => \inst6|buttonConfirmCounter[16]~65_combout\,
	cout => \inst6|buttonConfirmCounter[16]~66\);

-- Location: FF_X68_Y43_N1
\inst6|buttonConfirmCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[16]~65_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(16));

-- Location: LCCOMB_X68_Y43_N2
\inst6|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~34_combout\ = (\inst6|buttonConfirmCounter\(17) & (!\inst6|Add2~33\)) # (!\inst6|buttonConfirmCounter\(17) & ((\inst6|Add2~33\) # (GND)))
-- \inst6|Add2~35\ = CARRY((!\inst6|Add2~33\) # (!\inst6|buttonConfirmCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(17),
	datad => VCC,
	cin => \inst6|Add2~33\,
	combout => \inst6|Add2~34_combout\,
	cout => \inst6|Add2~35\);

-- Location: LCCOMB_X67_Y43_N2
\inst6|Add18~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~34_combout\ = (\inst6|Add2~34_combout\ & (!\inst6|Add18~33\)) # (!\inst6|Add2~34_combout\ & ((\inst6|Add18~33\) # (GND)))
-- \inst6|Add18~35\ = CARRY((!\inst6|Add18~33\) # (!\inst6|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~34_combout\,
	datad => VCC,
	cin => \inst6|Add18~33\,
	combout => \inst6|Add18~34_combout\,
	cout => \inst6|Add18~35\);

-- Location: LCCOMB_X66_Y43_N2
\inst6|buttonConfirmCounter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[17]~67_combout\ = (\inst6|Add18~34_combout\ & (!\inst6|buttonConfirmCounter[16]~66\)) # (!\inst6|Add18~34_combout\ & ((\inst6|buttonConfirmCounter[16]~66\) # (GND)))
-- \inst6|buttonConfirmCounter[17]~68\ = CARRY((!\inst6|buttonConfirmCounter[16]~66\) # (!\inst6|Add18~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~34_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[16]~66\,
	combout => \inst6|buttonConfirmCounter[17]~67_combout\,
	cout => \inst6|buttonConfirmCounter[17]~68\);

-- Location: FF_X68_Y43_N3
\inst6|buttonConfirmCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[17]~67_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(17));

-- Location: LCCOMB_X68_Y43_N4
\inst6|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~36_combout\ = (\inst6|buttonConfirmCounter\(18) & (\inst6|Add2~35\ $ (GND))) # (!\inst6|buttonConfirmCounter\(18) & (!\inst6|Add2~35\ & VCC))
-- \inst6|Add2~37\ = CARRY((\inst6|buttonConfirmCounter\(18) & !\inst6|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(18),
	datad => VCC,
	cin => \inst6|Add2~35\,
	combout => \inst6|Add2~36_combout\,
	cout => \inst6|Add2~37\);

-- Location: LCCOMB_X67_Y43_N4
\inst6|Add18~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~36_combout\ = (\inst6|Add2~36_combout\ & (\inst6|Add18~35\ $ (GND))) # (!\inst6|Add2~36_combout\ & (!\inst6|Add18~35\ & VCC))
-- \inst6|Add18~37\ = CARRY((\inst6|Add2~36_combout\ & !\inst6|Add18~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~36_combout\,
	datad => VCC,
	cin => \inst6|Add18~35\,
	combout => \inst6|Add18~36_combout\,
	cout => \inst6|Add18~37\);

-- Location: LCCOMB_X66_Y43_N4
\inst6|buttonConfirmCounter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[18]~69_combout\ = (\inst6|Add18~36_combout\ & (\inst6|buttonConfirmCounter[17]~68\ $ (GND))) # (!\inst6|Add18~36_combout\ & (!\inst6|buttonConfirmCounter[17]~68\ & VCC))
-- \inst6|buttonConfirmCounter[18]~70\ = CARRY((\inst6|Add18~36_combout\ & !\inst6|buttonConfirmCounter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~36_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[17]~68\,
	combout => \inst6|buttonConfirmCounter[18]~69_combout\,
	cout => \inst6|buttonConfirmCounter[18]~70\);

-- Location: FF_X68_Y43_N5
\inst6|buttonConfirmCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[18]~69_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(18));

-- Location: LCCOMB_X68_Y43_N6
\inst6|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~38_combout\ = (\inst6|buttonConfirmCounter\(19) & (!\inst6|Add2~37\)) # (!\inst6|buttonConfirmCounter\(19) & ((\inst6|Add2~37\) # (GND)))
-- \inst6|Add2~39\ = CARRY((!\inst6|Add2~37\) # (!\inst6|buttonConfirmCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(19),
	datad => VCC,
	cin => \inst6|Add2~37\,
	combout => \inst6|Add2~38_combout\,
	cout => \inst6|Add2~39\);

-- Location: LCCOMB_X67_Y43_N6
\inst6|Add18~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~38_combout\ = (\inst6|Add2~38_combout\ & (!\inst6|Add18~37\)) # (!\inst6|Add2~38_combout\ & ((\inst6|Add18~37\) # (GND)))
-- \inst6|Add18~39\ = CARRY((!\inst6|Add18~37\) # (!\inst6|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~38_combout\,
	datad => VCC,
	cin => \inst6|Add18~37\,
	combout => \inst6|Add18~38_combout\,
	cout => \inst6|Add18~39\);

-- Location: LCCOMB_X66_Y43_N6
\inst6|buttonConfirmCounter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[19]~71_combout\ = (\inst6|Add18~38_combout\ & (!\inst6|buttonConfirmCounter[18]~70\)) # (!\inst6|Add18~38_combout\ & ((\inst6|buttonConfirmCounter[18]~70\) # (GND)))
-- \inst6|buttonConfirmCounter[19]~72\ = CARRY((!\inst6|buttonConfirmCounter[18]~70\) # (!\inst6|Add18~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~38_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[18]~70\,
	combout => \inst6|buttonConfirmCounter[19]~71_combout\,
	cout => \inst6|buttonConfirmCounter[19]~72\);

-- Location: FF_X68_Y43_N7
\inst6|buttonConfirmCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[19]~71_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(19));

-- Location: LCCOMB_X68_Y43_N8
\inst6|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~40_combout\ = (\inst6|buttonConfirmCounter\(20) & (\inst6|Add2~39\ $ (GND))) # (!\inst6|buttonConfirmCounter\(20) & (!\inst6|Add2~39\ & VCC))
-- \inst6|Add2~41\ = CARRY((\inst6|buttonConfirmCounter\(20) & !\inst6|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(20),
	datad => VCC,
	cin => \inst6|Add2~39\,
	combout => \inst6|Add2~40_combout\,
	cout => \inst6|Add2~41\);

-- Location: LCCOMB_X67_Y43_N8
\inst6|Add18~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~40_combout\ = (\inst6|Add2~40_combout\ & (\inst6|Add18~39\ $ (GND))) # (!\inst6|Add2~40_combout\ & (!\inst6|Add18~39\ & VCC))
-- \inst6|Add18~41\ = CARRY((\inst6|Add2~40_combout\ & !\inst6|Add18~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~40_combout\,
	datad => VCC,
	cin => \inst6|Add18~39\,
	combout => \inst6|Add18~40_combout\,
	cout => \inst6|Add18~41\);

-- Location: LCCOMB_X66_Y43_N8
\inst6|buttonConfirmCounter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[20]~73_combout\ = (\inst6|Add18~40_combout\ & (\inst6|buttonConfirmCounter[19]~72\ $ (GND))) # (!\inst6|Add18~40_combout\ & (!\inst6|buttonConfirmCounter[19]~72\ & VCC))
-- \inst6|buttonConfirmCounter[20]~74\ = CARRY((\inst6|Add18~40_combout\ & !\inst6|buttonConfirmCounter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~40_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[19]~72\,
	combout => \inst6|buttonConfirmCounter[20]~73_combout\,
	cout => \inst6|buttonConfirmCounter[20]~74\);

-- Location: FF_X68_Y43_N9
\inst6|buttonConfirmCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[20]~73_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(20));

-- Location: LCCOMB_X68_Y43_N10
\inst6|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~42_combout\ = (\inst6|buttonConfirmCounter\(21) & (!\inst6|Add2~41\)) # (!\inst6|buttonConfirmCounter\(21) & ((\inst6|Add2~41\) # (GND)))
-- \inst6|Add2~43\ = CARRY((!\inst6|Add2~41\) # (!\inst6|buttonConfirmCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(21),
	datad => VCC,
	cin => \inst6|Add2~41\,
	combout => \inst6|Add2~42_combout\,
	cout => \inst6|Add2~43\);

-- Location: LCCOMB_X67_Y43_N10
\inst6|Add18~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~42_combout\ = (\inst6|Add2~42_combout\ & (!\inst6|Add18~41\)) # (!\inst6|Add2~42_combout\ & ((\inst6|Add18~41\) # (GND)))
-- \inst6|Add18~43\ = CARRY((!\inst6|Add18~41\) # (!\inst6|Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~42_combout\,
	datad => VCC,
	cin => \inst6|Add18~41\,
	combout => \inst6|Add18~42_combout\,
	cout => \inst6|Add18~43\);

-- Location: LCCOMB_X66_Y43_N10
\inst6|buttonConfirmCounter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[21]~75_combout\ = (\inst6|Add18~42_combout\ & (!\inst6|buttonConfirmCounter[20]~74\)) # (!\inst6|Add18~42_combout\ & ((\inst6|buttonConfirmCounter[20]~74\) # (GND)))
-- \inst6|buttonConfirmCounter[21]~76\ = CARRY((!\inst6|buttonConfirmCounter[20]~74\) # (!\inst6|Add18~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~42_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[20]~74\,
	combout => \inst6|buttonConfirmCounter[21]~75_combout\,
	cout => \inst6|buttonConfirmCounter[21]~76\);

-- Location: FF_X68_Y43_N11
\inst6|buttonConfirmCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[21]~75_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(21));

-- Location: LCCOMB_X68_Y43_N12
\inst6|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~44_combout\ = (\inst6|buttonConfirmCounter\(22) & (\inst6|Add2~43\ $ (GND))) # (!\inst6|buttonConfirmCounter\(22) & (!\inst6|Add2~43\ & VCC))
-- \inst6|Add2~45\ = CARRY((\inst6|buttonConfirmCounter\(22) & !\inst6|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(22),
	datad => VCC,
	cin => \inst6|Add2~43\,
	combout => \inst6|Add2~44_combout\,
	cout => \inst6|Add2~45\);

-- Location: LCCOMB_X67_Y43_N12
\inst6|Add18~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~44_combout\ = (\inst6|Add2~44_combout\ & (\inst6|Add18~43\ $ (GND))) # (!\inst6|Add2~44_combout\ & (!\inst6|Add18~43\ & VCC))
-- \inst6|Add18~45\ = CARRY((\inst6|Add2~44_combout\ & !\inst6|Add18~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~44_combout\,
	datad => VCC,
	cin => \inst6|Add18~43\,
	combout => \inst6|Add18~44_combout\,
	cout => \inst6|Add18~45\);

-- Location: LCCOMB_X66_Y43_N12
\inst6|buttonConfirmCounter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[22]~77_combout\ = (\inst6|Add18~44_combout\ & (\inst6|buttonConfirmCounter[21]~76\ $ (GND))) # (!\inst6|Add18~44_combout\ & (!\inst6|buttonConfirmCounter[21]~76\ & VCC))
-- \inst6|buttonConfirmCounter[22]~78\ = CARRY((\inst6|Add18~44_combout\ & !\inst6|buttonConfirmCounter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~44_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[21]~76\,
	combout => \inst6|buttonConfirmCounter[22]~77_combout\,
	cout => \inst6|buttonConfirmCounter[22]~78\);

-- Location: FF_X68_Y43_N13
\inst6|buttonConfirmCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[22]~77_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(22));

-- Location: LCCOMB_X68_Y43_N14
\inst6|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~46_combout\ = (\inst6|buttonConfirmCounter\(23) & (!\inst6|Add2~45\)) # (!\inst6|buttonConfirmCounter\(23) & ((\inst6|Add2~45\) # (GND)))
-- \inst6|Add2~47\ = CARRY((!\inst6|Add2~45\) # (!\inst6|buttonConfirmCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(23),
	datad => VCC,
	cin => \inst6|Add2~45\,
	combout => \inst6|Add2~46_combout\,
	cout => \inst6|Add2~47\);

-- Location: LCCOMB_X67_Y43_N14
\inst6|Add18~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~46_combout\ = (\inst6|Add2~46_combout\ & (!\inst6|Add18~45\)) # (!\inst6|Add2~46_combout\ & ((\inst6|Add18~45\) # (GND)))
-- \inst6|Add18~47\ = CARRY((!\inst6|Add18~45\) # (!\inst6|Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~46_combout\,
	datad => VCC,
	cin => \inst6|Add18~45\,
	combout => \inst6|Add18~46_combout\,
	cout => \inst6|Add18~47\);

-- Location: LCCOMB_X66_Y43_N14
\inst6|buttonConfirmCounter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[23]~79_combout\ = (\inst6|Add18~46_combout\ & (!\inst6|buttonConfirmCounter[22]~78\)) # (!\inst6|Add18~46_combout\ & ((\inst6|buttonConfirmCounter[22]~78\) # (GND)))
-- \inst6|buttonConfirmCounter[23]~80\ = CARRY((!\inst6|buttonConfirmCounter[22]~78\) # (!\inst6|Add18~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~46_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[22]~78\,
	combout => \inst6|buttonConfirmCounter[23]~79_combout\,
	cout => \inst6|buttonConfirmCounter[23]~80\);

-- Location: FF_X68_Y43_N15
\inst6|buttonConfirmCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[23]~79_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(23));

-- Location: LCCOMB_X68_Y43_N16
\inst6|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~48_combout\ = (\inst6|buttonConfirmCounter\(24) & (\inst6|Add2~47\ $ (GND))) # (!\inst6|buttonConfirmCounter\(24) & (!\inst6|Add2~47\ & VCC))
-- \inst6|Add2~49\ = CARRY((\inst6|buttonConfirmCounter\(24) & !\inst6|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(24),
	datad => VCC,
	cin => \inst6|Add2~47\,
	combout => \inst6|Add2~48_combout\,
	cout => \inst6|Add2~49\);

-- Location: LCCOMB_X67_Y43_N16
\inst6|Add18~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~48_combout\ = (\inst6|Add2~48_combout\ & (\inst6|Add18~47\ $ (GND))) # (!\inst6|Add2~48_combout\ & (!\inst6|Add18~47\ & VCC))
-- \inst6|Add18~49\ = CARRY((\inst6|Add2~48_combout\ & !\inst6|Add18~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~48_combout\,
	datad => VCC,
	cin => \inst6|Add18~47\,
	combout => \inst6|Add18~48_combout\,
	cout => \inst6|Add18~49\);

-- Location: LCCOMB_X66_Y43_N16
\inst6|buttonConfirmCounter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[24]~81_combout\ = (\inst6|Add18~48_combout\ & (\inst6|buttonConfirmCounter[23]~80\ $ (GND))) # (!\inst6|Add18~48_combout\ & (!\inst6|buttonConfirmCounter[23]~80\ & VCC))
-- \inst6|buttonConfirmCounter[24]~82\ = CARRY((\inst6|Add18~48_combout\ & !\inst6|buttonConfirmCounter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~48_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[23]~80\,
	combout => \inst6|buttonConfirmCounter[24]~81_combout\,
	cout => \inst6|buttonConfirmCounter[24]~82\);

-- Location: FF_X68_Y43_N17
\inst6|buttonConfirmCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[24]~81_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(24));

-- Location: LCCOMB_X68_Y43_N18
\inst6|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~50_combout\ = (\inst6|buttonConfirmCounter\(25) & (!\inst6|Add2~49\)) # (!\inst6|buttonConfirmCounter\(25) & ((\inst6|Add2~49\) # (GND)))
-- \inst6|Add2~51\ = CARRY((!\inst6|Add2~49\) # (!\inst6|buttonConfirmCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(25),
	datad => VCC,
	cin => \inst6|Add2~49\,
	combout => \inst6|Add2~50_combout\,
	cout => \inst6|Add2~51\);

-- Location: LCCOMB_X67_Y43_N18
\inst6|Add18~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~50_combout\ = (\inst6|Add2~50_combout\ & (!\inst6|Add18~49\)) # (!\inst6|Add2~50_combout\ & ((\inst6|Add18~49\) # (GND)))
-- \inst6|Add18~51\ = CARRY((!\inst6|Add18~49\) # (!\inst6|Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~50_combout\,
	datad => VCC,
	cin => \inst6|Add18~49\,
	combout => \inst6|Add18~50_combout\,
	cout => \inst6|Add18~51\);

-- Location: LCCOMB_X66_Y43_N18
\inst6|buttonConfirmCounter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[25]~83_combout\ = (\inst6|Add18~50_combout\ & (!\inst6|buttonConfirmCounter[24]~82\)) # (!\inst6|Add18~50_combout\ & ((\inst6|buttonConfirmCounter[24]~82\) # (GND)))
-- \inst6|buttonConfirmCounter[25]~84\ = CARRY((!\inst6|buttonConfirmCounter[24]~82\) # (!\inst6|Add18~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~50_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[24]~82\,
	combout => \inst6|buttonConfirmCounter[25]~83_combout\,
	cout => \inst6|buttonConfirmCounter[25]~84\);

-- Location: FF_X68_Y43_N19
\inst6|buttonConfirmCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[25]~83_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(25));

-- Location: LCCOMB_X68_Y43_N20
\inst6|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~52_combout\ = (\inst6|buttonConfirmCounter\(26) & (\inst6|Add2~51\ $ (GND))) # (!\inst6|buttonConfirmCounter\(26) & (!\inst6|Add2~51\ & VCC))
-- \inst6|Add2~53\ = CARRY((\inst6|buttonConfirmCounter\(26) & !\inst6|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(26),
	datad => VCC,
	cin => \inst6|Add2~51\,
	combout => \inst6|Add2~52_combout\,
	cout => \inst6|Add2~53\);

-- Location: LCCOMB_X67_Y43_N20
\inst6|Add18~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~52_combout\ = (\inst6|Add2~52_combout\ & (\inst6|Add18~51\ $ (GND))) # (!\inst6|Add2~52_combout\ & (!\inst6|Add18~51\ & VCC))
-- \inst6|Add18~53\ = CARRY((\inst6|Add2~52_combout\ & !\inst6|Add18~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~52_combout\,
	datad => VCC,
	cin => \inst6|Add18~51\,
	combout => \inst6|Add18~52_combout\,
	cout => \inst6|Add18~53\);

-- Location: LCCOMB_X66_Y43_N20
\inst6|buttonConfirmCounter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[26]~85_combout\ = (\inst6|Add18~52_combout\ & (\inst6|buttonConfirmCounter[25]~84\ $ (GND))) # (!\inst6|Add18~52_combout\ & (!\inst6|buttonConfirmCounter[25]~84\ & VCC))
-- \inst6|buttonConfirmCounter[26]~86\ = CARRY((\inst6|Add18~52_combout\ & !\inst6|buttonConfirmCounter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~52_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[25]~84\,
	combout => \inst6|buttonConfirmCounter[26]~85_combout\,
	cout => \inst6|buttonConfirmCounter[26]~86\);

-- Location: FF_X68_Y43_N21
\inst6|buttonConfirmCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[26]~85_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(26));

-- Location: LCCOMB_X68_Y43_N22
\inst6|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~54_combout\ = (\inst6|buttonConfirmCounter\(27) & (!\inst6|Add2~53\)) # (!\inst6|buttonConfirmCounter\(27) & ((\inst6|Add2~53\) # (GND)))
-- \inst6|Add2~55\ = CARRY((!\inst6|Add2~53\) # (!\inst6|buttonConfirmCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(27),
	datad => VCC,
	cin => \inst6|Add2~53\,
	combout => \inst6|Add2~54_combout\,
	cout => \inst6|Add2~55\);

-- Location: LCCOMB_X67_Y43_N22
\inst6|Add18~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~54_combout\ = (\inst6|Add2~54_combout\ & (!\inst6|Add18~53\)) # (!\inst6|Add2~54_combout\ & ((\inst6|Add18~53\) # (GND)))
-- \inst6|Add18~55\ = CARRY((!\inst6|Add18~53\) # (!\inst6|Add2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~54_combout\,
	datad => VCC,
	cin => \inst6|Add18~53\,
	combout => \inst6|Add18~54_combout\,
	cout => \inst6|Add18~55\);

-- Location: LCCOMB_X66_Y43_N22
\inst6|buttonConfirmCounter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[27]~87_combout\ = (\inst6|Add18~54_combout\ & (!\inst6|buttonConfirmCounter[26]~86\)) # (!\inst6|Add18~54_combout\ & ((\inst6|buttonConfirmCounter[26]~86\) # (GND)))
-- \inst6|buttonConfirmCounter[27]~88\ = CARRY((!\inst6|buttonConfirmCounter[26]~86\) # (!\inst6|Add18~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~54_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[26]~86\,
	combout => \inst6|buttonConfirmCounter[27]~87_combout\,
	cout => \inst6|buttonConfirmCounter[27]~88\);

-- Location: FF_X68_Y43_N23
\inst6|buttonConfirmCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[27]~87_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(27));

-- Location: LCCOMB_X69_Y43_N12
\inst6|process_0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~51_combout\ = (!\inst6|buttonConfirmCounter\(27) & (!\inst6|buttonConfirmCounter\(26) & (!\inst6|buttonConfirmCounter\(24) & !\inst6|buttonConfirmCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(27),
	datab => \inst6|buttonConfirmCounter\(26),
	datac => \inst6|buttonConfirmCounter\(24),
	datad => \inst6|buttonConfirmCounter\(25),
	combout => \inst6|process_0~51_combout\);

-- Location: LCCOMB_X69_Y43_N24
\inst6|process_0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~49_combout\ = (!\inst6|buttonConfirmCounter\(16) & (!\inst6|buttonConfirmCounter\(19) & (!\inst6|buttonConfirmCounter\(18) & !\inst6|buttonConfirmCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(16),
	datab => \inst6|buttonConfirmCounter\(19),
	datac => \inst6|buttonConfirmCounter\(18),
	datad => \inst6|buttonConfirmCounter\(17),
	combout => \inst6|process_0~49_combout\);

-- Location: LCCOMB_X69_Y43_N26
\inst6|process_0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~50_combout\ = (!\inst6|buttonConfirmCounter\(22) & (!\inst6|buttonConfirmCounter\(20) & (!\inst6|buttonConfirmCounter\(23) & !\inst6|buttonConfirmCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(22),
	datab => \inst6|buttonConfirmCounter\(20),
	datac => \inst6|buttonConfirmCounter\(23),
	datad => \inst6|buttonConfirmCounter\(21),
	combout => \inst6|process_0~50_combout\);

-- Location: LCCOMB_X68_Y43_N24
\inst6|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~56_combout\ = (\inst6|buttonConfirmCounter\(28) & (\inst6|Add2~55\ $ (GND))) # (!\inst6|buttonConfirmCounter\(28) & (!\inst6|Add2~55\ & VCC))
-- \inst6|Add2~57\ = CARRY((\inst6|buttonConfirmCounter\(28) & !\inst6|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(28),
	datad => VCC,
	cin => \inst6|Add2~55\,
	combout => \inst6|Add2~56_combout\,
	cout => \inst6|Add2~57\);

-- Location: LCCOMB_X67_Y43_N24
\inst6|Add18~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~56_combout\ = (\inst6|Add2~56_combout\ & (\inst6|Add18~55\ $ (GND))) # (!\inst6|Add2~56_combout\ & (!\inst6|Add18~55\ & VCC))
-- \inst6|Add18~57\ = CARRY((\inst6|Add2~56_combout\ & !\inst6|Add18~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~56_combout\,
	datad => VCC,
	cin => \inst6|Add18~55\,
	combout => \inst6|Add18~56_combout\,
	cout => \inst6|Add18~57\);

-- Location: LCCOMB_X66_Y43_N24
\inst6|buttonConfirmCounter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[28]~89_combout\ = (\inst6|Add18~56_combout\ & (\inst6|buttonConfirmCounter[27]~88\ $ (GND))) # (!\inst6|Add18~56_combout\ & (!\inst6|buttonConfirmCounter[27]~88\ & VCC))
-- \inst6|buttonConfirmCounter[28]~90\ = CARRY((\inst6|Add18~56_combout\ & !\inst6|buttonConfirmCounter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~56_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[27]~88\,
	combout => \inst6|buttonConfirmCounter[28]~89_combout\,
	cout => \inst6|buttonConfirmCounter[28]~90\);

-- Location: FF_X68_Y43_N25
\inst6|buttonConfirmCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[28]~89_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(28));

-- Location: LCCOMB_X68_Y43_N26
\inst6|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~58_combout\ = (\inst6|buttonConfirmCounter\(29) & (!\inst6|Add2~57\)) # (!\inst6|buttonConfirmCounter\(29) & ((\inst6|Add2~57\) # (GND)))
-- \inst6|Add2~59\ = CARRY((!\inst6|Add2~57\) # (!\inst6|buttonConfirmCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(29),
	datad => VCC,
	cin => \inst6|Add2~57\,
	combout => \inst6|Add2~58_combout\,
	cout => \inst6|Add2~59\);

-- Location: LCCOMB_X67_Y43_N26
\inst6|Add18~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~58_combout\ = (\inst6|Add2~58_combout\ & (!\inst6|Add18~57\)) # (!\inst6|Add2~58_combout\ & ((\inst6|Add18~57\) # (GND)))
-- \inst6|Add18~59\ = CARRY((!\inst6|Add18~57\) # (!\inst6|Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~58_combout\,
	datad => VCC,
	cin => \inst6|Add18~57\,
	combout => \inst6|Add18~58_combout\,
	cout => \inst6|Add18~59\);

-- Location: LCCOMB_X66_Y43_N26
\inst6|buttonConfirmCounter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[29]~91_combout\ = (\inst6|Add18~58_combout\ & (!\inst6|buttonConfirmCounter[28]~90\)) # (!\inst6|Add18~58_combout\ & ((\inst6|buttonConfirmCounter[28]~90\) # (GND)))
-- \inst6|buttonConfirmCounter[29]~92\ = CARRY((!\inst6|buttonConfirmCounter[28]~90\) # (!\inst6|Add18~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~58_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[28]~90\,
	combout => \inst6|buttonConfirmCounter[29]~91_combout\,
	cout => \inst6|buttonConfirmCounter[29]~92\);

-- Location: FF_X68_Y43_N27
\inst6|buttonConfirmCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[29]~91_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(29));

-- Location: LCCOMB_X68_Y43_N28
\inst6|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~60_combout\ = (\inst6|buttonConfirmCounter\(30) & (\inst6|Add2~59\ $ (GND))) # (!\inst6|buttonConfirmCounter\(30) & (!\inst6|Add2~59\ & VCC))
-- \inst6|Add2~61\ = CARRY((\inst6|buttonConfirmCounter\(30) & !\inst6|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|buttonConfirmCounter\(30),
	datad => VCC,
	cin => \inst6|Add2~59\,
	combout => \inst6|Add2~60_combout\,
	cout => \inst6|Add2~61\);

-- Location: LCCOMB_X67_Y43_N28
\inst6|Add18~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~60_combout\ = (\inst6|Add2~60_combout\ & (\inst6|Add18~59\ $ (GND))) # (!\inst6|Add2~60_combout\ & (!\inst6|Add18~59\ & VCC))
-- \inst6|Add18~61\ = CARRY((\inst6|Add2~60_combout\ & !\inst6|Add18~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~60_combout\,
	datad => VCC,
	cin => \inst6|Add18~59\,
	combout => \inst6|Add18~60_combout\,
	cout => \inst6|Add18~61\);

-- Location: LCCOMB_X66_Y43_N28
\inst6|buttonConfirmCounter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[30]~93_combout\ = (\inst6|Add18~60_combout\ & (\inst6|buttonConfirmCounter[29]~92\ $ (GND))) # (!\inst6|Add18~60_combout\ & (!\inst6|buttonConfirmCounter[29]~92\ & VCC))
-- \inst6|buttonConfirmCounter[30]~94\ = CARRY((\inst6|Add18~60_combout\ & !\inst6|buttonConfirmCounter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add18~60_combout\,
	datad => VCC,
	cin => \inst6|buttonConfirmCounter[29]~92\,
	combout => \inst6|buttonConfirmCounter[30]~93_combout\,
	cout => \inst6|buttonConfirmCounter[30]~94\);

-- Location: FF_X68_Y43_N29
\inst6|buttonConfirmCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[30]~93_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(30));

-- Location: LCCOMB_X68_Y43_N30
\inst6|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~62_combout\ = \inst6|buttonConfirmCounter\(31) $ (\inst6|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(31),
	cin => \inst6|Add2~61\,
	combout => \inst6|Add2~62_combout\);

-- Location: LCCOMB_X67_Y43_N30
\inst6|Add18~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add18~62_combout\ = \inst6|Add2~62_combout\ $ (\inst6|Add18~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~62_combout\,
	cin => \inst6|Add18~61\,
	combout => \inst6|Add18~62_combout\);

-- Location: LCCOMB_X66_Y43_N30
\inst6|buttonConfirmCounter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|buttonConfirmCounter[31]~95_combout\ = \inst6|Add18~62_combout\ $ (\inst6|buttonConfirmCounter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add18~62_combout\,
	cin => \inst6|buttonConfirmCounter[30]~94\,
	combout => \inst6|buttonConfirmCounter[31]~95_combout\);

-- Location: FF_X68_Y43_N31
\inst6|buttonConfirmCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst6|buttonConfirmCounter[31]~95_combout\,
	clrn => \inst6|ALT_INV_I[0]~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst6|buttonConfirmCounter[21]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|buttonConfirmCounter\(31));

-- Location: LCCOMB_X69_Y43_N6
\inst6|process_0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~52_combout\ = (!\inst6|buttonConfirmCounter\(31) & (!\inst6|buttonConfirmCounter\(30) & (!\inst6|buttonConfirmCounter\(29) & !\inst6|buttonConfirmCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|buttonConfirmCounter\(31),
	datab => \inst6|buttonConfirmCounter\(30),
	datac => \inst6|buttonConfirmCounter\(29),
	datad => \inst6|buttonConfirmCounter\(28),
	combout => \inst6|process_0~52_combout\);

-- Location: LCCOMB_X69_Y43_N16
\inst6|process_0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~53_combout\ = (\inst6|process_0~51_combout\ & (\inst6|process_0~49_combout\ & (\inst6|process_0~50_combout\ & \inst6|process_0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~51_combout\,
	datab => \inst6|process_0~49_combout\,
	datac => \inst6|process_0~50_combout\,
	datad => \inst6|process_0~52_combout\,
	combout => \inst6|process_0~53_combout\);

-- Location: LCCOMB_X66_Y40_N18
\inst6|process_0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~54_combout\ = (\inst6|process_0~48_combout\ & (!\inst6|p2w~13_combout\ & (!\inst6|p1w~8_combout\ & \inst6|process_0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~48_combout\,
	datab => \inst6|p2w~13_combout\,
	datac => \inst6|p1w~8_combout\,
	datad => \inst6|process_0~53_combout\,
	combout => \inst6|process_0~54_combout\);

-- Location: LCCOMB_X66_Y40_N10
\inst6|gameT\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|gameT~combout\ = (\inst6|process_0~54_combout\) # ((!\inst6|I[0]~0_combout\ & \inst6|gameT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|I[0]~0_combout\,
	datac => \inst6|process_0~54_combout\,
	datad => \inst6|gameT~combout\,
	combout => \inst6|gameT~combout\);

-- Location: LCCOMB_X70_Y38_N12
\inst6|LessThan47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan47~0_combout\ = (\inst1|column\(5) & (((\inst1|column\(1)) # (!\inst6|LessThan76~0_combout\)) # (!\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(0),
	datac => \inst6|LessThan76~0_combout\,
	datad => \inst1|column\(1),
	combout => \inst6|LessThan47~0_combout\);

-- Location: LCCOMB_X66_Y38_N10
\inst6|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~30_combout\ = (\inst6|LessThan17~1_combout\ & (!\inst1|column\(8) & ((\inst6|LessThan47~0_combout\) # (\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan47~0_combout\,
	datab => \inst6|LessThan17~1_combout\,
	datac => \inst1|column\(8),
	datad => \inst1|column\(6),
	combout => \inst6|process_0~30_combout\);

-- Location: LCCOMB_X67_Y38_N6
\inst6|LessThan34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan34~0_combout\ = (\inst1|column\(6) & ((\inst1|column\(5)) # ((\inst6|process_0~20_combout\ & \inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~20_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(2),
	datad => \inst1|column\(6),
	combout => \inst6|LessThan34~0_combout\);

-- Location: LCCOMB_X67_Y38_N4
\inst6|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~32_combout\ = (\inst1|column\(7) & (((\inst1|column\(8))))) # (!\inst1|column\(7) & (((!\inst1|column\(8)) # (!\inst6|LessThan64~0_combout\)) # (!\inst6|LessThan76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan76~0_combout\,
	datab => \inst6|LessThan64~0_combout\,
	datac => \inst1|column\(7),
	datad => \inst1|column\(8),
	combout => \inst6|process_0~32_combout\);

-- Location: LCCOMB_X67_Y38_N18
\inst6|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~33_combout\ = (\inst6|process_0~32_combout\) # (((!\inst6|LessThan34~0_combout\ & !\inst1|column\(8))) # (!\inst6|process_0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan34~0_combout\,
	datab => \inst6|process_0~32_combout\,
	datac => \inst1|column\(8),
	datad => \inst6|process_0~27_combout\,
	combout => \inst6|process_0~33_combout\);

-- Location: LCCOMB_X66_Y38_N12
\inst6|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~34_combout\ = (\inst6|LessThan46~1_combout\ & (\inst6|LessThan57~0_combout\ & !\inst6|process_0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan46~1_combout\,
	datac => \inst6|LessThan57~0_combout\,
	datad => \inst6|process_0~33_combout\,
	combout => \inst6|process_0~34_combout\);

-- Location: LCCOMB_X66_Y38_N22
\inst6|blue[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~1_combout\ = (!\inst6|process_0~34_combout\ & (((!\inst6|LessThan49~2_combout\) # (!\inst6|process_0~29_combout\)) # (!\inst6|process_0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~30_combout\,
	datab => \inst6|process_0~29_combout\,
	datac => \inst6|process_0~34_combout\,
	datad => \inst6|LessThan49~2_combout\,
	combout => \inst6|blue[7]~1_combout\);

-- Location: LCCOMB_X66_Y35_N2
\inst6|LessThan54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan54~0_combout\ = (\inst1|row\(4) & ((\inst1|row\(3)) # (\inst1|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(4),
	datac => \inst1|row\(3),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan54~0_combout\);

-- Location: LCCOMB_X66_Y35_N10
\inst6|process_0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~167_combout\ = (!\inst1|row\(6) & (!\inst1|row\(5) & !\inst6|LessThan54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst6|LessThan54~0_combout\,
	combout => \inst6|process_0~167_combout\);

-- Location: LCCOMB_X66_Y35_N30
\inst6|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~43_combout\ = (\inst6|process_0~42_combout\ & (\inst6|LessThan43~0_combout\ & ((!\inst6|LessThan49~0_combout\) # (!\inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst6|process_0~42_combout\,
	datac => \inst6|LessThan43~0_combout\,
	datad => \inst6|LessThan49~0_combout\,
	combout => \inst6|process_0~43_combout\);

-- Location: LCCOMB_X66_Y35_N18
\inst6|blue[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~3_combout\ = (\inst6|process_0~33_combout\) # ((!\inst6|process_0~43_combout\ & ((!\inst6|process_0~41_combout\) # (!\inst6|process_0~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~167_combout\,
	datab => \inst6|process_0~41_combout\,
	datac => \inst6|process_0~43_combout\,
	datad => \inst6|process_0~33_combout\,
	combout => \inst6|blue[7]~3_combout\);

-- Location: LCCOMB_X69_Y38_N26
\inst6|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~23_combout\ = (!\inst1|column\(5) & (((!\inst1|column\(4)) # (!\inst1|column\(3))) # (!\inst1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst1|column\(5),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|process_0~23_combout\);

-- Location: LCCOMB_X69_Y38_N20
\inst6|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~24_combout\ = (\inst6|process_0~23_combout\ & (\inst6|process_0~22_combout\ & ((\inst6|LessThan2~0_combout\) # (\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~23_combout\,
	datab => \inst6|LessThan2~0_combout\,
	datac => \inst1|column\(4),
	datad => \inst6|process_0~22_combout\,
	combout => \inst6|process_0~24_combout\);

-- Location: LCCOMB_X65_Y38_N0
\inst6|blue[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~0_combout\ = ((!\inst6|process_0~24_combout\ & ((\inst1|column\(7)) # (!\inst6|process_0~21_combout\)))) # (!\inst6|process_0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst6|process_0~28_combout\,
	datac => \inst6|process_0~21_combout\,
	datad => \inst6|process_0~24_combout\,
	combout => \inst6|blue[7]~0_combout\);

-- Location: LCCOMB_X66_Y38_N30
\inst6|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~40_combout\ = (\inst6|process_0~27_combout\ & \inst1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~27_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~40_combout\);

-- Location: LCCOMB_X68_Y38_N26
\inst6|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~36_combout\ = (\inst6|LessThan41~0_combout\ & (!\inst1|column\(7) & ((!\inst1|column\(6)) # (!\inst6|LessThan40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan41~0_combout\,
	datab => \inst1|column\(7),
	datac => \inst6|LessThan40~0_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|process_0~36_combout\);

-- Location: LCCOMB_X66_Y38_N6
\inst6|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~39_combout\ = (((\inst6|process_0~36_combout\) # (!\inst6|LessThan41~1_combout\)) # (!\inst6|process_0~38_combout\)) # (!\inst1|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(31),
	datab => \inst6|process_0~38_combout\,
	datac => \inst6|LessThan41~1_combout\,
	datad => \inst6|process_0~36_combout\,
	combout => \inst6|process_0~39_combout\);

-- Location: LCCOMB_X66_Y38_N24
\inst6|blue[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~2_combout\ = (\inst6|process_0~39_combout\ & (((!\inst6|process_0~40_combout\) # (!\inst6|process_0~38_combout\)) # (!\inst6|process_0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~30_combout\,
	datab => \inst6|process_0~38_combout\,
	datac => \inst6|process_0~40_combout\,
	datad => \inst6|process_0~39_combout\,
	combout => \inst6|blue[7]~2_combout\);

-- Location: LCCOMB_X66_Y38_N18
\inst6|blue[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~4_combout\ = (\inst6|blue[7]~1_combout\ & (\inst6|blue[7]~3_combout\ & (\inst6|blue[7]~0_combout\ & \inst6|blue[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~1_combout\,
	datab => \inst6|blue[7]~3_combout\,
	datac => \inst6|blue[7]~0_combout\,
	datad => \inst6|blue[7]~2_combout\,
	combout => \inst6|blue[7]~4_combout\);

-- Location: LCCOMB_X66_Y40_N16
\inst6|blue[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~5_combout\ = ((\inst6|blue[7]~4_combout\) # (!\inst6|process_0~54_combout\)) # (!\inst6|gameT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameT~combout\,
	datac => \inst6|process_0~54_combout\,
	datad => \inst6|blue[7]~4_combout\,
	combout => \inst6|blue[7]~5_combout\);

-- Location: LCCOMB_X65_Y40_N16
\inst6|blue[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~10_combout\ = (\inst6|blue[7]~5_combout\ & (((!\inst6|p1w~8_combout\ & !\inst6|p2w~13_combout\)) # (!\inst6|blue[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~9_combout\,
	datab => \inst6|blue[7]~5_combout\,
	datac => \inst6|p1w~8_combout\,
	datad => \inst6|p2w~13_combout\,
	combout => \inst6|blue[7]~10_combout\);

-- Location: LCCOMB_X65_Y35_N16
\inst6|process_0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~96_combout\ = (!\inst1|row\(5) & (!\inst6|process_0~62_combout\ & (!\inst1|row\(6) & \inst1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|process_0~62_combout\,
	datac => \inst1|row\(6),
	datad => \inst1|row\(7),
	combout => \inst6|process_0~96_combout\);

-- Location: LCCOMB_X65_Y35_N18
\inst6|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~0_combout\ = (\inst1|row\(3) & ((\inst1|row\(2)) # ((\inst1|row\(1) & !\inst1|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(0),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan9~0_combout\);

-- Location: LCCOMB_X65_Y37_N20
\inst6|process_0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~97_combout\ = (\inst6|process_0~26_combout\ & (!\inst1|row\(7) & ((\inst1|row\(4)) # (\inst6|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst6|process_0~26_combout\,
	datac => \inst6|LessThan9~0_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|process_0~97_combout\);

-- Location: LCCOMB_X67_Y35_N26
\inst6|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~0_combout\ = (!\inst1|row\(10) & !\inst1|row\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(10),
	datad => \inst1|row\(9),
	combout => \inst6|LessThan29~0_combout\);

-- Location: LCCOMB_X65_Y37_N12
\inst6|process_0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~98_combout\ = (\inst1|row\(8) & (\inst6|LessThan29~0_combout\ & ((\inst6|process_0~96_combout\) # (\inst6|process_0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~96_combout\,
	datab => \inst6|process_0~97_combout\,
	datac => \inst1|row\(8),
	datad => \inst6|LessThan29~0_combout\,
	combout => \inst6|process_0~98_combout\);

-- Location: LCCOMB_X68_Y37_N30
\inst6|process_0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~101_combout\ = (!\inst1|column\(6) & (((!\inst6|LessThan10~0_combout\ & !\inst1|column\(3))) # (!\inst6|process_0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~77_combout\,
	datab => \inst1|column\(6),
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst1|column\(3),
	combout => \inst6|process_0~101_combout\);

-- Location: LCCOMB_X67_Y37_N10
\inst6|process_0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~102_combout\ = (!\inst1|column\(9) & (!\inst1|column\(10) & ((\inst6|process_0~101_combout\) # (!\inst6|process_0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~57_combout\,
	datac => \inst6|process_0~101_combout\,
	datad => \inst1|column\(10),
	combout => \inst6|process_0~102_combout\);

-- Location: LCCOMB_X67_Y37_N30
\inst6|process_0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~99_combout\ = (\inst1|column\(31) & (\inst1|row\(31) & !\inst1|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(31),
	datac => \inst1|row\(31),
	datad => \inst1|column\(11),
	combout => \inst6|process_0~99_combout\);

-- Location: LCCOMB_X68_Y38_N16
\inst6|process_0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~100_combout\ = (\inst1|column\(9)) # ((!\inst6|LessThan11~0_combout\ & (\inst6|process_0~57_combout\ & \inst1|column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~0_combout\,
	datab => \inst1|column\(9),
	datac => \inst6|process_0~57_combout\,
	datad => \inst1|column\(6),
	combout => \inst6|process_0~100_combout\);

-- Location: LCCOMB_X67_Y37_N20
\inst6|process_0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~103_combout\ = (!\inst6|process_0~102_combout\ & (\inst6|process_0~99_combout\ & ((!\inst6|process_0~100_combout\) # (!\inst1|column\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~102_combout\,
	datab => \inst1|column\(10),
	datac => \inst6|process_0~99_combout\,
	datad => \inst6|process_0~100_combout\,
	combout => \inst6|process_0~103_combout\);

-- Location: LCCOMB_X65_Y37_N6
\inst6|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~1_combout\ = (\inst1|row\(9) & (\inst1|row\(8) & \inst1|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(9),
	datac => \inst1|row\(8),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan6~1_combout\);

-- Location: LCCOMB_X65_Y35_N22
\inst6|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~0_combout\ = (!\inst1|row\(6) & (((\inst6|LessThan25~0_combout\ & !\inst1|row\(4))) # (!\inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(6),
	datac => \inst6|LessThan25~0_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan6~0_combout\);

-- Location: LCCOMB_X65_Y37_N28
\inst6|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~2_combout\ = ((!\inst1|row\(10) & ((\inst6|LessThan6~0_combout\) # (!\inst6|LessThan6~1_combout\)))) # (!\inst1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan6~1_combout\,
	datab => \inst6|LessThan6~0_combout\,
	datac => \inst1|row\(10),
	datad => \inst1|row\(31),
	combout => \inst6|LessThan6~2_combout\);

-- Location: LCCOMB_X65_Y35_N30
\inst6|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~0_combout\ = (\inst1|row\(4) & ((\inst1|row\(3)) # ((!\inst1|row\(0) & \inst6|LessThan43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(0),
	datab => \inst1|row\(3),
	datac => \inst6|LessThan43~4_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan7~0_combout\);

-- Location: LCCOMB_X65_Y37_N30
\inst6|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~1_combout\ = ((\inst1|row\(7) & ((\inst6|LessThan7~0_combout\) # (!\inst6|process_0~37_combout\)))) # (!\inst6|LessThan43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~0_combout\,
	datab => \inst6|process_0~37_combout\,
	datac => \inst6|LessThan43~2_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|LessThan7~1_combout\);

-- Location: LCCOMB_X65_Y37_N2
\inst6|process_0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~92_combout\ = (!\inst1|column\(8) & (\inst6|LessThan6~2_combout\ & (\inst6|LessThan7~1_combout\ & \inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|LessThan6~2_combout\,
	datac => \inst6|LessThan7~1_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|process_0~92_combout\);

-- Location: LCCOMB_X67_Y37_N24
\inst6|process_0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~88_combout\ = (!\inst1|column\(11) & (\inst1|column\(31) & (!\inst1|column\(9) & \inst1|column\(10))))

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
	combout => \inst6|process_0~88_combout\);

-- Location: LCCOMB_X66_Y37_N20
\inst6|process_0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~89_combout\ = (\inst6|process_0~88_combout\ & (((\inst6|LessThan2~0_combout\ & \inst1|column\(4))) # (!\inst6|LessThan64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan64~0_combout\,
	datab => \inst6|process_0~88_combout\,
	datac => \inst6|LessThan2~0_combout\,
	datad => \inst1|column\(4),
	combout => \inst6|process_0~89_combout\);

-- Location: LCCOMB_X68_Y37_N28
\inst6|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~1_combout\ = (\inst1|column\(7) & ((\inst1|column\(6)) # ((\inst6|process_0~77_combout\ & \inst6|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~77_combout\,
	datab => \inst1|column\(7),
	datac => \inst1|column\(6),
	datad => \inst6|LessThan2~0_combout\,
	combout => \inst6|LessThan2~1_combout\);

-- Location: LCCOMB_X67_Y37_N28
\inst6|process_0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~90_combout\ = (!\inst1|column\(11) & (\inst1|column\(31) & (\inst1|column\(9) & !\inst1|column\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst1|column\(31),
	datac => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst6|process_0~90_combout\);

-- Location: LCCOMB_X66_Y37_N30
\inst6|process_0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~91_combout\ = (\inst6|LessThan2~1_combout\ & (\inst6|process_0~90_combout\ & ((\inst6|LessThan3~0_combout\) # (!\inst6|LessThan60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~0_combout\,
	datab => \inst6|LessThan2~1_combout\,
	datac => \inst6|LessThan60~0_combout\,
	datad => \inst6|process_0~90_combout\,
	combout => \inst6|process_0~91_combout\);

-- Location: LCCOMB_X65_Y37_N26
\inst6|red[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~22_combout\ = ((!\inst6|process_0~91_combout\ & ((!\inst6|process_0~89_combout\) # (!\inst6|process_0~170_combout\)))) # (!\inst6|process_0~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~170_combout\,
	datab => \inst6|process_0~92_combout\,
	datac => \inst6|process_0~89_combout\,
	datad => \inst6|process_0~91_combout\,
	combout => \inst6|red[7]~22_combout\);

-- Location: LCCOMB_X66_Y37_N12
\inst6|process_0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~93_combout\ = (!\inst1|row\(10) & (\inst1|row\(9) & (\inst1|row\(7) & !\inst1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(9),
	datac => \inst1|row\(7),
	datad => \inst1|row\(8),
	combout => \inst6|process_0~93_combout\);

-- Location: LCCOMB_X66_Y37_N2
\inst6|process_0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~94_combout\ = (!\inst1|row\(4) & (!\inst1|row\(5) & ((!\inst1|row\(3)) # (!\inst6|LessThan43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst6|LessThan43~4_combout\,
	datac => \inst1|row\(5),
	datad => \inst1|row\(3),
	combout => \inst6|process_0~94_combout\);

-- Location: LCCOMB_X66_Y37_N6
\inst6|process_0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~95_combout\ = (\inst6|process_0~93_combout\ & (\inst6|LessThan13~0_combout\ & ((\inst6|process_0~94_combout\) # (!\inst1|row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~93_combout\,
	datab => \inst1|row\(6),
	datac => \inst6|LessThan13~0_combout\,
	datad => \inst6|process_0~94_combout\,
	combout => \inst6|process_0~95_combout\);

-- Location: LCCOMB_X65_Y37_N4
\inst6|red[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~23_combout\ = (\inst6|red[7]~22_combout\ & (((!\inst6|process_0~98_combout\ & !\inst6|process_0~95_combout\)) # (!\inst6|process_0~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~98_combout\,
	datab => \inst6|process_0~103_combout\,
	datac => \inst6|red[7]~22_combout\,
	datad => \inst6|process_0~95_combout\,
	combout => \inst6|red[7]~23_combout\);

-- Location: LCCOMB_X65_Y35_N8
\inst6|LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~1_combout\ = ((\inst6|LessThan25~0_combout\ & (\inst6|process_0~37_combout\ & !\inst1|row\(4)))) # (!\inst1|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst6|LessThan25~0_combout\,
	datac => \inst6|process_0~37_combout\,
	datad => \inst1|row\(4),
	combout => \inst6|LessThan25~1_combout\);

-- Location: LCCOMB_X67_Y35_N12
\inst6|LessThan25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~2_combout\ = (!\inst1|row\(10) & (((\inst6|LessThan25~1_combout\ & !\inst1|row\(8))) # (!\inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst6|LessThan25~1_combout\,
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst6|LessThan25~2_combout\);

-- Location: LCCOMB_X67_Y35_N18
\inst6|LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~0_combout\ = (\inst1|row\(8) & \inst1|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(8),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan24~0_combout\);

-- Location: LCCOMB_X67_Y35_N6
\inst6|LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~1_combout\ = (\inst6|LessThan24~0_combout\ & ((\inst1|row\(6)) # ((\inst6|LessThan7~0_combout\ & \inst1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~0_combout\,
	datab => \inst6|LessThan24~0_combout\,
	datac => \inst1|row\(6),
	datad => \inst1|row\(5),
	combout => \inst6|LessThan24~1_combout\);

-- Location: LCCOMB_X67_Y35_N0
\inst6|red[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~24_combout\ = (\inst6|LessThan25~2_combout\ & (\inst1|row\(31) & ((\inst6|LessThan24~1_combout\) # (!\inst6|LessThan29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan25~2_combout\,
	datab => \inst1|row\(31),
	datac => \inst6|LessThan29~0_combout\,
	datad => \inst6|LessThan24~1_combout\,
	combout => \inst6|red[7]~24_combout\);

-- Location: LCCOMB_X69_Y38_N10
\inst6|process_0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~113_combout\ = (\inst6|process_0~22_combout\ & (\inst1|column\(8) & ((\inst1|column\(5)) # (!\inst6|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~0_combout\,
	datab => \inst6|process_0~22_combout\,
	datac => \inst1|column\(5),
	datad => \inst1|column\(8),
	combout => \inst6|process_0~113_combout\);

-- Location: LCCOMB_X70_Y38_N6
\inst6|process_0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~114_combout\ = (((\inst1|column\(0) & !\inst1|column\(1))) # (!\inst1|column\(2))) # (!\inst1|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(3),
	datac => \inst1|column\(2),
	datad => \inst1|column\(1),
	combout => \inst6|process_0~114_combout\);

-- Location: LCCOMB_X69_Y38_N8
\inst6|process_0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~115_combout\ = ((!\inst1|column\(5) & (!\inst1|column\(4) & \inst6|process_0~114_combout\))) # (!\inst6|process_0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(4),
	datac => \inst6|process_0~22_combout\,
	datad => \inst6|process_0~114_combout\,
	combout => \inst6|process_0~115_combout\);

-- Location: LCCOMB_X68_Y38_N0
\inst6|process_0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~116_combout\ = ((\inst6|process_0~113_combout\) # ((\inst6|process_0~115_combout\ & !\inst1|column\(8)))) # (!\inst6|process_0~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~88_combout\,
	datab => \inst6|process_0~113_combout\,
	datac => \inst6|process_0~115_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|process_0~116_combout\);

-- Location: LCCOMB_X67_Y36_N4
\inst6|red[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~32_combout\ = (\inst6|red[7]~24_combout\ & !\inst6|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|red[7]~24_combout\,
	datad => \inst6|process_0~116_combout\,
	combout => \inst6|red[7]~32_combout\);

-- Location: LCCOMB_X70_Y38_N18
\inst6|process_0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~107_combout\ = (!\inst1|column\(4) & (!\inst1|column\(2) & (!\inst1|column\(7) & !\inst1|column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(2),
	datac => \inst1|column\(7),
	datad => \inst1|column\(3),
	combout => \inst6|process_0~107_combout\);

-- Location: LCCOMB_X70_Y38_N30
\inst6|process_0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~108_combout\ = (!\inst1|column\(5) & (\inst6|process_0~107_combout\ & ((\inst1|column\(0)) # (!\inst1|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(1),
	datac => \inst1|column\(0),
	datad => \inst6|process_0~107_combout\,
	combout => \inst6|process_0~108_combout\);

-- Location: LCCOMB_X67_Y37_N6
\inst6|process_0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~105_combout\ = (\inst1|column\(9) & \inst1|column\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datad => \inst1|column\(10),
	combout => \inst6|process_0~105_combout\);

-- Location: LCCOMB_X68_Y37_N22
\inst6|process_0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~106_combout\ = (\inst6|process_0~105_combout\) # (((\inst1|column\(8) & \inst6|process_0~66_combout\)) # (!\inst6|process_0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|process_0~105_combout\,
	datac => \inst6|process_0~66_combout\,
	datad => \inst6|process_0~63_combout\,
	combout => \inst6|process_0~106_combout\);

-- Location: LCCOMB_X68_Y37_N4
\inst6|process_0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~109_combout\ = (\inst6|process_0~106_combout\) # ((!\inst1|column\(10) & ((\inst6|process_0~108_combout\) # (!\inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|process_0~108_combout\,
	datac => \inst6|process_0~106_combout\,
	datad => \inst1|column\(10),
	combout => \inst6|process_0~109_combout\);

-- Location: LCCOMB_X70_Y38_N10
\inst6|LessThan36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan36~0_combout\ = (\inst1|column\(1) & \inst1|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(1),
	datad => \inst1|column\(2),
	combout => \inst6|LessThan36~0_combout\);

-- Location: LCCOMB_X67_Y36_N8
\inst6|process_0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~110_combout\ = ((\inst6|LessThan36~0_combout\ & (\inst6|process_0~20_combout\ & \inst1|column\(5)))) # (!\inst6|process_0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan36~0_combout\,
	datab => \inst6|process_0~20_combout\,
	datac => \inst1|column\(5),
	datad => \inst6|process_0~66_combout\,
	combout => \inst6|process_0~110_combout\);

-- Location: LCCOMB_X67_Y36_N28
\inst6|red[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~55_combout\ = (!\inst6|process_0~109_combout\ & (\inst6|red[7]~24_combout\ & ((\inst1|column\(9)) # (!\inst6|process_0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~109_combout\,
	datab => \inst6|red[7]~24_combout\,
	datac => \inst6|process_0~110_combout\,
	datad => \inst1|column\(9),
	combout => \inst6|red[7]~55_combout\);

-- Location: LCCOMB_X67_Y36_N16
\inst6|green[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~12_combout\ = (\inst6|red[7]~15_combout\ & (!\inst6|red[7]~32_combout\ & ((!\inst6|red[7]~55_combout\) # (!\inst6|red[7]~14_combout\)))) # (!\inst6|red[7]~15_combout\ & (((!\inst6|red[7]~55_combout\)) # (!\inst6|red[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~15_combout\,
	datab => \inst6|red[7]~14_combout\,
	datac => \inst6|red[7]~32_combout\,
	datad => \inst6|red[7]~55_combout\,
	combout => \inst6|green[6]~12_combout\);

-- Location: LCCOMB_X65_Y35_N28
\inst6|LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~0_combout\ = (\inst1|row\(3)) # ((\inst1|row\(2)) # ((\inst1|row\(1) & !\inst1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(0),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan26~0_combout\);

-- Location: LCCOMB_X66_Y36_N22
\inst6|red[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~28_combout\ = (\inst1|row\(6) & ((\inst1|row\(5)) # ((\inst6|LessThan26~0_combout\ & \inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan26~0_combout\,
	datab => \inst1|row\(5),
	datac => \inst1|row\(4),
	datad => \inst1|row\(6),
	combout => \inst6|red[7]~28_combout\);

-- Location: LCCOMB_X66_Y37_N14
\inst6|LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~0_combout\ = ((\inst6|process_0~37_combout\ & ((!\inst6|process_0~81_combout\) # (!\inst6|LessThan43~4_combout\)))) # (!\inst6|LessThan6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~37_combout\,
	datab => \inst6|LessThan43~4_combout\,
	datac => \inst6|LessThan6~1_combout\,
	datad => \inst6|process_0~81_combout\,
	combout => \inst6|LessThan27~0_combout\);

-- Location: LCCOMB_X66_Y37_N16
\inst6|red[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~29_combout\ = (!\inst1|row\(10) & (\inst1|row\(9) & (\inst6|LessThan27~0_combout\ & \inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(9),
	datac => \inst6|LessThan27~0_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|red[7]~29_combout\);

-- Location: LCCOMB_X67_Y36_N22
\inst6|red[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~30_combout\ = (\inst6|red[7]~29_combout\ & ((\inst1|row\(8)) # ((\inst6|red[7]~28_combout\ & \inst1|row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst6|red[7]~28_combout\,
	datac => \inst6|red[7]~29_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|red[7]~30_combout\);

-- Location: LCCOMB_X67_Y36_N26
\inst6|red[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~56_combout\ = (\inst6|red[7]~30_combout\ & (!\inst6|process_0~109_combout\ & ((\inst1|column\(9)) # (!\inst6|process_0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~30_combout\,
	datab => \inst6|process_0~110_combout\,
	datac => \inst6|process_0~109_combout\,
	datad => \inst1|column\(9),
	combout => \inst6|red[7]~56_combout\);

-- Location: LCCOMB_X67_Y36_N2
\inst6|red[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~33_combout\ = (\inst6|I\(0) & (!\inst6|I\(1) & (\inst6|red[7]~30_combout\ & !\inst6|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|I\(0),
	datab => \inst6|I\(1),
	datac => \inst6|red[7]~30_combout\,
	datad => \inst6|process_0~116_combout\,
	combout => \inst6|red[7]~33_combout\);

-- Location: LCCOMB_X67_Y36_N20
\inst6|green[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~13_combout\ = (!\inst6|red[7]~33_combout\ & (((\inst6|H\(1)) # (!\inst6|red[7]~56_combout\)) # (!\inst6|H\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(0),
	datab => \inst6|H\(1),
	datac => \inst6|red[7]~56_combout\,
	datad => \inst6|red[7]~33_combout\,
	combout => \inst6|green[6]~13_combout\);

-- Location: LCCOMB_X68_Y36_N16
\inst6|process_0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~104_combout\ = (\inst1|column\(9) & (((\inst1|column\(8))) # (!\inst6|LessThan17~1_combout\))) # (!\inst1|column\(9) & (((!\inst6|LessThan2~1_combout\) # (!\inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan17~1_combout\,
	datab => \inst1|column\(9),
	datac => \inst1|column\(8),
	datad => \inst6|LessThan2~1_combout\,
	combout => \inst6|process_0~104_combout\);

-- Location: LCCOMB_X68_Y36_N26
\inst6|red[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~25_combout\ = (!\inst1|column\(10) & (\inst6|red[7]~24_combout\ & (\inst6|process_0~63_combout\ & !\inst6|process_0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|red[7]~24_combout\,
	datac => \inst6|process_0~63_combout\,
	datad => \inst6|process_0~104_combout\,
	combout => \inst6|red[7]~25_combout\);

-- Location: LCCOMB_X66_Y37_N18
\inst6|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~0_combout\ = (\inst1|row\(7) & (((\inst1|row\(4) & \inst6|LessThan9~0_combout\)) # (!\inst6|process_0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(7),
	datac => \inst6|process_0~37_combout\,
	datad => \inst6|LessThan9~0_combout\,
	combout => \inst6|LessThan18~0_combout\);

-- Location: LCCOMB_X67_Y35_N30
\inst6|LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~1_combout\ = (\inst1|row\(10)) # ((\inst6|LessThan18~0_combout\) # ((\inst1|row\(8)) # (\inst1|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst6|LessThan18~0_combout\,
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst6|LessThan18~1_combout\);

-- Location: LCCOMB_X67_Y35_N8
\inst6|LessThan19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~0_combout\ = ((!\inst1|row\(7) & ((!\inst6|process_0~26_combout\) # (!\inst6|LessThan43~0_combout\)))) # (!\inst1|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan43~0_combout\,
	datab => \inst6|process_0~26_combout\,
	datac => \inst1|row\(8),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan19~0_combout\);

-- Location: LCCOMB_X67_Y35_N22
\inst6|red[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~26_combout\ = (\inst6|LessThan18~1_combout\ & (\inst1|row\(31) & (\inst6|LessThan19~0_combout\ & \inst6|LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan18~1_combout\,
	datab => \inst1|row\(31),
	datac => \inst6|LessThan19~0_combout\,
	datad => \inst6|LessThan29~0_combout\,
	combout => \inst6|red[6]~26_combout\);

-- Location: LCCOMB_X68_Y36_N30
\inst6|red[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~27_combout\ = (!\inst1|column\(10) & (\inst6|red[6]~26_combout\ & (\inst6|process_0~63_combout\ & !\inst6|process_0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|red[6]~26_combout\,
	datac => \inst6|process_0~63_combout\,
	datad => \inst6|process_0~104_combout\,
	combout => \inst6|red[6]~27_combout\);

-- Location: LCCOMB_X68_Y36_N8
\inst6|green[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~9_combout\ = (\inst6|red[7]~18_combout\ & (!\inst6|red[7]~25_combout\ & ((!\inst6|red[6]~27_combout\) # (!\inst6|red[6]~17_combout\)))) # (!\inst6|red[7]~18_combout\ & (((!\inst6|red[6]~27_combout\)) # (!\inst6|red[6]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~18_combout\,
	datab => \inst6|red[6]~17_combout\,
	datac => \inst6|red[7]~25_combout\,
	datad => \inst6|red[6]~27_combout\,
	combout => \inst6|green[6]~9_combout\);

-- Location: LCCOMB_X67_Y36_N12
\inst6|process_0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~111_combout\ = (\inst6|process_0~109_combout\) # ((\inst6|process_0~110_combout\ & !\inst1|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~110_combout\,
	datac => \inst6|process_0~109_combout\,
	datad => \inst1|column\(9),
	combout => \inst6|process_0~111_combout\);

-- Location: LCCOMB_X67_Y36_N14
\inst6|red[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~31_combout\ = (!\inst6|process_0~111_combout\ & (\inst6|B\(0) & (!\inst6|B\(1) & \inst6|red[6]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~111_combout\,
	datab => \inst6|B\(0),
	datac => \inst6|B\(1),
	datad => \inst6|red[6]~26_combout\,
	combout => \inst6|red[7]~31_combout\);

-- Location: LCCOMB_X68_Y36_N28
\inst6|green[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~10_combout\ = (\inst6|C\(0) & (!\inst6|C\(1) & (\inst6|red[6]~26_combout\ & !\inst6|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(0),
	datab => \inst6|C\(1),
	datac => \inst6|red[6]~26_combout\,
	datad => \inst6|process_0~116_combout\,
	combout => \inst6|green[6]~10_combout\);

-- Location: LCCOMB_X67_Y37_N14
\inst6|process_0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~112_combout\ = (!\inst1|column\(11) & (!\inst1|column\(10) & \inst1|column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(11),
	datac => \inst1|column\(10),
	datad => \inst1|column\(31),
	combout => \inst6|process_0~112_combout\);

-- Location: LCCOMB_X68_Y36_N14
\inst6|green[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~28_combout\ = (!\inst6|G\(1) & (\inst6|G\(0) & (\inst6|process_0~112_combout\ & !\inst6|process_0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|G\(1),
	datab => \inst6|G\(0),
	datac => \inst6|process_0~112_combout\,
	datad => \inst6|process_0~104_combout\,
	combout => \inst6|green[6]~28_combout\);

-- Location: LCCOMB_X68_Y36_N24
\inst6|green[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~11_combout\ = (!\inst6|red[7]~31_combout\ & (!\inst6|green[6]~10_combout\ & ((!\inst6|red[7]~30_combout\) # (!\inst6|green[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~31_combout\,
	datab => \inst6|green[6]~10_combout\,
	datac => \inst6|green[6]~28_combout\,
	datad => \inst6|red[7]~30_combout\,
	combout => \inst6|green[6]~11_combout\);

-- Location: LCCOMB_X68_Y36_N10
\inst6|green[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~14_combout\ = (\inst6|green[6]~12_combout\ & (\inst6|green[6]~13_combout\ & (\inst6|green[6]~9_combout\ & \inst6|green[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[6]~12_combout\,
	datab => \inst6|green[6]~13_combout\,
	datac => \inst6|green[6]~9_combout\,
	datad => \inst6|green[6]~11_combout\,
	combout => \inst6|green[6]~14_combout\);

-- Location: LCCOMB_X69_Y38_N30
\inst6|process_0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~117_combout\ = (!\inst1|column\(8) & (((!\inst6|process_0~22_combout\) # (!\inst6|LessThan36~1_combout\)) # (!\inst1|column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|LessThan36~1_combout\,
	datac => \inst6|process_0~22_combout\,
	datad => \inst1|column\(8),
	combout => \inst6|process_0~117_combout\);

-- Location: LCCOMB_X70_Y38_N24
\inst6|process_0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~118_combout\ = (\inst1|column\(4)) # ((\inst6|LessThan36~0_combout\ & (\inst1|column\(3) & !\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan36~0_combout\,
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	datad => \inst1|column\(0),
	combout => \inst6|process_0~118_combout\);

-- Location: LCCOMB_X69_Y37_N2
\inst6|process_0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~119_combout\ = (\inst1|column\(6) & (\inst1|column\(8))) # (!\inst1|column\(6) & (((\inst6|process_0~118_combout\ & \inst1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|process_0~118_combout\,
	datac => \inst1|column\(6),
	datad => \inst1|column\(5),
	combout => \inst6|process_0~119_combout\);

-- Location: LCCOMB_X69_Y37_N8
\inst6|process_0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~120_combout\ = (\inst6|process_0~117_combout\) # (((\inst6|process_0~119_combout\ & \inst1|column\(7))) # (!\inst6|process_0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~117_combout\,
	datab => \inst6|process_0~119_combout\,
	datac => \inst6|process_0~88_combout\,
	datad => \inst1|column\(7),
	combout => \inst6|process_0~120_combout\);

-- Location: LCCOMB_X66_Y35_N4
\inst6|LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~0_combout\ = (\inst1|row\(7) & ((\inst1|row\(6)) # ((\inst1|row\(5) & \inst6|LessThan54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst6|LessThan54~0_combout\,
	combout => \inst6|LessThan28~0_combout\);

-- Location: LCCOMB_X65_Y35_N10
\inst6|LessThan29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~1_combout\ = (((!\inst1|row\(1) & \inst1|row\(0))) # (!\inst1|row\(2))) # (!\inst1|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(0),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan29~1_combout\);

-- Location: LCCOMB_X67_Y35_N2
\inst6|LessThan29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~2_combout\ = ((!\inst1|row\(5) & (\inst6|LessThan29~1_combout\ & !\inst1|row\(4)))) # (!\inst1|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan29~1_combout\,
	datac => \inst1|row\(6),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan29~2_combout\);

-- Location: LCCOMB_X67_Y35_N10
\inst6|LessThan29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~3_combout\ = (\inst6|LessThan29~0_combout\ & (((!\inst1|row\(7) & \inst6|LessThan29~2_combout\)) # (!\inst1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst1|row\(8),
	datac => \inst6|LessThan29~0_combout\,
	datad => \inst6|LessThan29~2_combout\,
	combout => \inst6|LessThan29~3_combout\);

-- Location: LCCOMB_X69_Y37_N6
\inst6|process_0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~135_combout\ = (\inst1|row\(31) & (\inst6|LessThan29~3_combout\ & ((\inst6|LessThan28~0_combout\) # (!\inst6|LessThan43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(31),
	datab => \inst6|LessThan28~0_combout\,
	datac => \inst6|LessThan29~3_combout\,
	datad => \inst6|LessThan43~2_combout\,
	combout => \inst6|process_0~135_combout\);

-- Location: LCCOMB_X69_Y37_N20
\inst6|process_0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~136_combout\ = (!\inst6|process_0~120_combout\ & \inst6|process_0~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~120_combout\,
	datad => \inst6|process_0~135_combout\,
	combout => \inst6|process_0~136_combout\);

-- Location: LCCOMB_X70_Y38_N28
\inst6|process_0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~122_combout\ = (\inst6|process_0~20_combout\ & ((\inst1|column\(2)) # ((!\inst1|column\(0) & \inst1|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst1|column\(2),
	datac => \inst6|process_0~20_combout\,
	datad => \inst1|column\(1),
	combout => \inst6|process_0~122_combout\);

-- Location: LCCOMB_X68_Y37_N18
\inst6|process_0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~123_combout\ = (\inst1|column\(7) & (!\inst1|column\(8) & ((\inst6|process_0~122_combout\) # (!\inst6|LessThan64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan64~0_combout\,
	datab => \inst1|column\(7),
	datac => \inst1|column\(8),
	datad => \inst6|process_0~122_combout\,
	combout => \inst6|process_0~123_combout\);

-- Location: LCCOMB_X67_Y37_N16
\inst6|process_0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~124_combout\ = (\inst1|column\(10)) # (((\inst1|column\(9) & \inst1|column\(8))) # (!\inst6|process_0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(8),
	datac => \inst1|column\(10),
	datad => \inst6|process_0~63_combout\,
	combout => \inst6|process_0~124_combout\);

-- Location: LCCOMB_X69_Y38_N28
\inst6|process_0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~125_combout\ = ((!\inst1|column\(5) & ((\inst6|process_0~35_combout\) # (!\inst1|column\(4))))) # (!\inst6|process_0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~22_combout\,
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|process_0~125_combout\);

-- Location: LCCOMB_X68_Y37_N16
\inst6|process_0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~126_combout\ = (\inst6|process_0~123_combout\) # ((\inst6|process_0~124_combout\) # ((!\inst1|column\(9) & \inst6|process_0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|process_0~123_combout\,
	datac => \inst6|process_0~124_combout\,
	datad => \inst6|process_0~125_combout\,
	combout => \inst6|process_0~126_combout\);

-- Location: LCCOMB_X67_Y35_N4
\inst6|LessThan30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~0_combout\ = (\inst1|row\(7) & (\inst1|row\(8) & ((\inst1|row\(5)) # (\inst1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(7),
	datac => \inst1|row\(8),
	datad => \inst1|row\(4),
	combout => \inst6|LessThan30~0_combout\);

-- Location: LCCOMB_X67_Y35_N14
\inst6|process_0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~128_combout\ = (\inst1|row\(31) & (((\inst1|row\(6) & \inst6|LessThan30~0_combout\)) # (!\inst6|LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(31),
	datac => \inst6|LessThan30~0_combout\,
	datad => \inst6|LessThan29~0_combout\,
	combout => \inst6|process_0~128_combout\);

-- Location: LCCOMB_X66_Y35_N0
\inst6|LessThan31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan31~3_combout\ = (((!\inst1|row\(4) & !\inst6|LessThan49~0_combout\)) # (!\inst1|row\(6))) # (!\inst1|row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(5),
	datac => \inst1|row\(6),
	datad => \inst6|LessThan49~0_combout\,
	combout => \inst6|LessThan31~3_combout\);

-- Location: LCCOMB_X67_Y35_N24
\inst6|LessThan31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan31~2_combout\ = ((\inst6|LessThan31~3_combout\ & (!\inst1|row\(8) & !\inst1|row\(7)))) # (!\inst1|row\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan31~3_combout\,
	datab => \inst1|row\(9),
	datac => \inst1|row\(8),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan31~2_combout\);

-- Location: LCCOMB_X67_Y35_N20
\inst6|process_0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~129_combout\ = (\inst6|process_0~128_combout\ & (((!\inst1|row\(10) & \inst6|LessThan31~2_combout\)) # (!\inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst1|row\(31),
	datac => \inst6|process_0~128_combout\,
	datad => \inst6|LessThan31~2_combout\,
	combout => \inst6|process_0~129_combout\);

-- Location: LCCOMB_X68_Y39_N26
\inst6|process_0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~138_combout\ = (!\inst6|process_0~126_combout\ & \inst6|process_0~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~126_combout\,
	datad => \inst6|process_0~129_combout\,
	combout => \inst6|process_0~138_combout\);

-- Location: LCCOMB_X68_Y39_N6
\inst6|process_0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~137_combout\ = (!\inst6|process_0~126_combout\ & \inst6|process_0~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~126_combout\,
	datad => \inst6|process_0~135_combout\,
	combout => \inst6|process_0~137_combout\);

-- Location: LCCOMB_X69_Y38_N18
\inst6|process_0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~172_combout\ = (\inst1|column\(5) & ((\inst1|column\(3)) # ((\inst1|column\(4)) # (\inst6|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst6|LessThan10~0_combout\,
	combout => \inst6|process_0~172_combout\);

-- Location: LCCOMB_X70_Y37_N26
\inst6|process_0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~132_combout\ = (!\inst1|column\(8) & (((\inst1|column\(9)) # (\inst6|process_0~172_combout\)) # (!\inst6|process_0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~66_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(9),
	datad => \inst6|process_0~172_combout\,
	combout => \inst6|process_0~132_combout\);

-- Location: LCCOMB_X70_Y37_N30
\inst6|process_0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~131_combout\ = ((\inst1|column\(11)) # ((\inst1|column\(10) & \inst1|column\(8)))) # (!\inst1|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(31),
	datab => \inst1|column\(11),
	datac => \inst1|column\(10),
	datad => \inst1|column\(8),
	combout => \inst6|process_0~131_combout\);

-- Location: LCCOMB_X70_Y37_N12
\inst6|process_0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~133_combout\ = (!\inst1|column\(10) & (((!\inst1|column\(7) & !\inst6|LessThan34~0_combout\)) # (!\inst1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(10),
	datac => \inst1|column\(7),
	datad => \inst6|LessThan34~0_combout\,
	combout => \inst6|process_0~133_combout\);

-- Location: LCCOMB_X70_Y37_N24
\inst6|process_0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~174_combout\ = (!\inst6|process_0~132_combout\ & (\inst6|process_0~135_combout\ & (!\inst6|process_0~131_combout\ & !\inst6|process_0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~132_combout\,
	datab => \inst6|process_0~135_combout\,
	datac => \inst6|process_0~131_combout\,
	datad => \inst6|process_0~133_combout\,
	combout => \inst6|process_0~174_combout\);

-- Location: LCCOMB_X68_Y39_N16
\inst6|blue[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~16_combout\ = (\inst6|columnNum\(0) & (\inst6|process_0~137_combout\ & ((!\inst6|columnNum\(1))))) # (!\inst6|columnNum\(0) & (((\inst6|process_0~174_combout\) # (\inst6|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~137_combout\,
	datab => \inst6|process_0~174_combout\,
	datac => \inst6|columnNum\(0),
	datad => \inst6|columnNum\(1),
	combout => \inst6|blue[7]~16_combout\);

-- Location: LCCOMB_X68_Y39_N4
\inst6|blue[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~17_combout\ = (\inst6|columnNum\(1) & ((\inst6|blue[7]~16_combout\ & ((\inst6|process_0~138_combout\))) # (!\inst6|blue[7]~16_combout\ & (\inst6|process_0~136_combout\)))) # (!\inst6|columnNum\(1) & (((\inst6|blue[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~136_combout\,
	datab => \inst6|columnNum\(1),
	datac => \inst6|process_0~138_combout\,
	datad => \inst6|blue[7]~16_combout\,
	combout => \inst6|blue[7]~17_combout\);

-- Location: LCCOMB_X70_Y37_N22
\inst6|process_0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~173_combout\ = (!\inst6|process_0~131_combout\ & (\inst6|process_0~129_combout\ & (!\inst6|process_0~132_combout\ & !\inst6|process_0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~131_combout\,
	datab => \inst6|process_0~129_combout\,
	datac => \inst6|process_0~132_combout\,
	datad => \inst6|process_0~133_combout\,
	combout => \inst6|process_0~173_combout\);

-- Location: LCCOMB_X70_Y37_N28
\inst6|process_0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~130_combout\ = (\inst6|process_0~129_combout\ & !\inst6|process_0~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~129_combout\,
	datad => \inst6|process_0~120_combout\,
	combout => \inst6|process_0~130_combout\);

-- Location: LCCOMB_X68_Y39_N10
\inst6|blue[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~14_combout\ = (\inst6|columnNum\(0) & (\inst6|process_0~173_combout\ & ((!\inst6|columnNum\(1))))) # (!\inst6|columnNum\(0) & (((\inst6|process_0~130_combout\) # (\inst6|columnNum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|process_0~173_combout\,
	datac => \inst6|process_0~130_combout\,
	datad => \inst6|columnNum\(1),
	combout => \inst6|blue[7]~14_combout\);

-- Location: LCCOMB_X65_Y37_N18
\inst6|LessThan38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~0_combout\ = (\inst1|row\(7) & ((\inst1|row\(4)) # ((\inst1|row\(2) & \inst1|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(2),
	datac => \inst1|row\(3),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan38~0_combout\);

-- Location: LCCOMB_X65_Y37_N10
\inst6|LessThan38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~1_combout\ = (\inst1|row\(9) & ((\inst1|row\(8)) # ((\inst6|process_0~26_combout\ & \inst6|LessThan38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(9),
	datab => \inst6|process_0~26_combout\,
	datac => \inst1|row\(8),
	datad => \inst6|LessThan38~0_combout\,
	combout => \inst6|LessThan38~1_combout\);

-- Location: LCCOMB_X65_Y37_N22
\inst6|LessThan39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan39~1_combout\ = (!\inst1|row\(5) & (!\inst1|row\(3) & (!\inst1|row\(4) & !\inst1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(6),
	combout => \inst6|LessThan39~1_combout\);

-- Location: LCCOMB_X65_Y35_N26
\inst6|LessThan39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan39~0_combout\ = ((!\inst1|row\(1) & \inst1|row\(0))) # (!\inst1|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(2),
	datad => \inst1|row\(0),
	combout => \inst6|LessThan39~0_combout\);

-- Location: LCCOMB_X65_Y37_N14
\inst6|LessThan39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan39~2_combout\ = (!\inst1|row\(10) & (((\inst6|LessThan39~1_combout\ & \inst6|LessThan39~0_combout\)) # (!\inst6|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan39~1_combout\,
	datab => \inst6|LessThan39~0_combout\,
	datac => \inst1|row\(10),
	datad => \inst6|LessThan6~1_combout\,
	combout => \inst6|LessThan39~2_combout\);

-- Location: LCCOMB_X65_Y37_N16
\inst6|process_0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~121_combout\ = (\inst6|LessThan39~2_combout\ & (\inst1|row\(31) & ((\inst6|LessThan38~1_combout\) # (\inst1|row\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan38~1_combout\,
	datab => \inst6|LessThan39~2_combout\,
	datac => \inst1|row\(10),
	datad => \inst1|row\(31),
	combout => \inst6|process_0~121_combout\);

-- Location: LCCOMB_X70_Y37_N4
\inst6|process_0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~134_combout\ = (!\inst6|process_0~131_combout\ & (\inst6|process_0~121_combout\ & (!\inst6|process_0~132_combout\ & !\inst6|process_0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~131_combout\,
	datab => \inst6|process_0~121_combout\,
	datac => \inst6|process_0~132_combout\,
	datad => \inst6|process_0~133_combout\,
	combout => \inst6|process_0~134_combout\);

-- Location: LCCOMB_X68_Y39_N0
\inst6|process_0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~127_combout\ = (!\inst6|process_0~126_combout\ & \inst6|process_0~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|process_0~126_combout\,
	datad => \inst6|process_0~121_combout\,
	combout => \inst6|process_0~127_combout\);

-- Location: LCCOMB_X68_Y39_N28
\inst6|blue[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~15_combout\ = (\inst6|blue[7]~14_combout\ & (((\inst6|process_0~134_combout\)) # (!\inst6|columnNum\(1)))) # (!\inst6|blue[7]~14_combout\ & (\inst6|columnNum\(1) & ((\inst6|process_0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~14_combout\,
	datab => \inst6|columnNum\(1),
	datac => \inst6|process_0~134_combout\,
	datad => \inst6|process_0~127_combout\,
	combout => \inst6|blue[7]~15_combout\);

-- Location: LCCOMB_X66_Y41_N10
\inst6|blue[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~18_combout\ = (\inst6|columnNum\(3) & ((\inst6|columnNum\(2) & ((\inst6|blue[7]~15_combout\))) # (!\inst6|columnNum\(2) & (\inst6|blue[7]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(2),
	datab => \inst6|blue[7]~17_combout\,
	datac => \inst6|columnNum\(3),
	datad => \inst6|blue[7]~15_combout\,
	combout => \inst6|blue[7]~18_combout\);

-- Location: LCCOMB_X67_Y36_N18
\inst6|red[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~37_combout\ = (!\inst6|I\(0) & (\inst6|I\(1) & (\inst6|red[7]~30_combout\ & !\inst6|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|I\(0),
	datab => \inst6|I\(1),
	datac => \inst6|red[7]~30_combout\,
	datad => \inst6|process_0~116_combout\,
	combout => \inst6|red[7]~37_combout\);

-- Location: LCCOMB_X67_Y36_N10
\inst6|green[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~18_combout\ = (!\inst6|red[7]~37_combout\ & ((\inst6|H\(0)) # ((!\inst6|red[7]~56_combout\) # (!\inst6|H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|H\(0),
	datab => \inst6|H\(1),
	datac => \inst6|red[7]~56_combout\,
	datad => \inst6|red[7]~37_combout\,
	combout => \inst6|green[6]~18_combout\);

-- Location: LCCOMB_X68_Y36_N22
\inst6|red[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~36_combout\ = (!\inst6|C\(0) & (\inst6|C\(1) & (\inst6|red[6]~26_combout\ & !\inst6|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|C\(0),
	datab => \inst6|C\(1),
	datac => \inst6|red[6]~26_combout\,
	datad => \inst6|process_0~116_combout\,
	combout => \inst6|red[7]~36_combout\);

-- Location: LCCOMB_X68_Y36_N4
\inst6|red[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~34_combout\ = (!\inst1|column\(10) & (!\inst6|process_0~104_combout\ & (\inst6|process_0~63_combout\ & \inst6|red[7]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|process_0~104_combout\,
	datac => \inst6|process_0~63_combout\,
	datad => \inst6|red[7]~30_combout\,
	combout => \inst6|red[7]~34_combout\);

-- Location: LCCOMB_X68_Y36_N2
\inst6|red[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~35_combout\ = (\inst6|B\(1) & (!\inst6|B\(0) & (\inst6|red[6]~26_combout\ & !\inst6|process_0~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|B\(1),
	datab => \inst6|B\(0),
	datac => \inst6|red[6]~26_combout\,
	datad => \inst6|process_0~111_combout\,
	combout => \inst6|red[7]~35_combout\);

-- Location: LCCOMB_X68_Y36_N0
\inst6|green[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~16_combout\ = (!\inst6|red[7]~36_combout\ & (!\inst6|red[7]~35_combout\ & ((!\inst6|red[7]~34_combout\) # (!\inst6|red[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~36_combout\,
	datab => \inst6|red[7]~10_combout\,
	datac => \inst6|red[7]~34_combout\,
	datad => \inst6|red[7]~35_combout\,
	combout => \inst6|green[6]~16_combout\);

-- Location: LCCOMB_X66_Y40_N8
\inst6|red[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~13_combout\ = (!\inst6|E\(0) & \inst6|E\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|E\(0),
	datad => \inst6|E\(1),
	combout => \inst6|red[7]~13_combout\);

-- Location: LCCOMB_X67_Y36_N30
\inst6|green[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~17_combout\ = (\inst6|red[7]~13_combout\ & (!\inst6|red[7]~55_combout\ & ((!\inst6|red[7]~32_combout\) # (!\inst6|red[7]~12_combout\)))) # (!\inst6|red[7]~13_combout\ & (((!\inst6|red[7]~32_combout\)) # (!\inst6|red[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~13_combout\,
	datab => \inst6|red[7]~12_combout\,
	datac => \inst6|red[7]~32_combout\,
	datad => \inst6|red[7]~55_combout\,
	combout => \inst6|green[6]~17_combout\);

-- Location: LCCOMB_X68_Y36_N6
\inst6|green[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~15_combout\ = (\inst6|p2w~2_combout\ & (!\inst6|red[6]~27_combout\ & ((!\inst6|red[7]~25_combout\) # (!\inst6|red[7]~11_combout\)))) # (!\inst6|p2w~2_combout\ & (((!\inst6|red[7]~25_combout\)) # (!\inst6|red[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2w~2_combout\,
	datab => \inst6|red[7]~11_combout\,
	datac => \inst6|red[7]~25_combout\,
	datad => \inst6|red[6]~27_combout\,
	combout => \inst6|green[6]~15_combout\);

-- Location: LCCOMB_X67_Y36_N0
\inst6|green[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~19_combout\ = (\inst6|green[6]~18_combout\ & (\inst6|green[6]~16_combout\ & (\inst6|green[6]~17_combout\ & \inst6|green[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[6]~18_combout\,
	datab => \inst6|green[6]~16_combout\,
	datac => \inst6|green[6]~17_combout\,
	datad => \inst6|green[6]~15_combout\,
	combout => \inst6|green[6]~19_combout\);

-- Location: LCCOMB_X68_Y37_N6
\inst6|green[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~20_combout\ = (!\inst6|columnNum\(3) & ((\inst6|process_0~120_combout\) # (!\inst6|process_0~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~120_combout\,
	datac => \inst6|process_0~121_combout\,
	datad => \inst6|columnNum\(3),
	combout => \inst6|green[6]~20_combout\);

-- Location: LCCOMB_X69_Y37_N14
\inst6|red[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~38_combout\ = (\inst6|green[6]~19_combout\ & ((\inst6|green[6]~20_combout\) # ((!\inst6|blue[7]~18_combout\ & !\inst6|blue[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~18_combout\,
	datab => \inst6|green[6]~19_combout\,
	datac => \inst6|green[6]~20_combout\,
	datad => \inst6|blue[7]~13_combout\,
	combout => \inst6|red[5]~38_combout\);

-- Location: LCCOMB_X65_Y40_N0
\inst6|blue[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~19_combout\ = (\inst1|disp_ena~q\ & (((\inst6|red[7]~23_combout\ & \inst6|green[6]~14_combout\)) # (!\inst6|red[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~23_combout\,
	datab => \inst6|green[6]~14_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst6|red[5]~38_combout\,
	combout => \inst6|blue[7]~19_combout\);

-- Location: LCCOMB_X65_Y40_N22
\inst6|blue[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~12_combout\ = (!\inst6|p1w~8_combout\ & (((\inst6|blue[7]~9_combout\ & \inst6|p2w~13_combout\)) # (!\inst6|blue[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~9_combout\,
	datab => \inst6|blue[7]~5_combout\,
	datac => \inst6|p1w~8_combout\,
	datad => \inst6|p2w~13_combout\,
	combout => \inst6|blue[7]~12_combout\);

-- Location: LCCOMB_X66_Y40_N30
\inst6|blue[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~11_combout\ = (!\inst6|p1w~8_combout\ & (!\inst6|p2w~7_combout\ & ((!\inst6|red[7]~13_combout\) # (!\inst6|p2w~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p2w~12_combout\,
	datab => \inst6|red[7]~13_combout\,
	datac => \inst6|p1w~8_combout\,
	datad => \inst6|p2w~7_combout\,
	combout => \inst6|blue[7]~11_combout\);

-- Location: LCCOMB_X65_Y40_N10
\inst6|red[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~20_combout\ = (!\inst6|process_0~60_combout\ & (\inst6|green[6]~8_combout\ & (\inst6|process_0~56_combout\ & !\inst6|blue[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~60_combout\,
	datab => \inst6|green[6]~8_combout\,
	datac => \inst6|process_0~56_combout\,
	datad => \inst6|blue[7]~11_combout\,
	combout => \inst6|red[5]~20_combout\);

-- Location: LCCOMB_X65_Y40_N28
\inst6|red[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~21_combout\ = (\inst6|red[5]~20_combout\ & ((!\inst1|disp_ena~q\) # (!\inst6|blue[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|blue[7]~10_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst6|red[5]~20_combout\,
	combout => \inst6|red[5]~21_combout\);

-- Location: LCCOMB_X65_Y40_N18
\inst6|blue[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~20_combout\ = (\inst6|blue[7]~10_combout\ & ((\inst6|blue[7]~19_combout\) # ((\inst6|blue[7]~12_combout\ & \inst6|red[5]~21_combout\)))) # (!\inst6|blue[7]~10_combout\ & (((\inst6|blue[7]~12_combout\ & \inst6|red[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~10_combout\,
	datab => \inst6|blue[7]~19_combout\,
	datac => \inst6|blue[7]~12_combout\,
	datad => \inst6|red[5]~21_combout\,
	combout => \inst6|blue[7]~20_combout\);

-- Location: LCCOMB_X66_Y40_N20
\inst6|red[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~39_combout\ = (\inst6|blue[7]~5_combout\ & (\inst1|disp_ena~q\ & ((\inst6|blue[7]~11_combout\) # (!\inst6|blue[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~11_combout\,
	datab => \inst6|blue[7]~5_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst6|blue[7]~9_combout\,
	combout => \inst6|red[7]~39_combout\);

-- Location: LCCOMB_X65_Y36_N4
\inst6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~0_combout\ = (!\inst1|row\(9) & (((!\inst1|row\(5)) # (!\inst1|row\(3))) # (!\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(3),
	datac => \inst1|row\(5),
	datad => \inst1|row\(9),
	combout => \inst6|LessThan1~0_combout\);

-- Location: LCCOMB_X66_Y37_N8
\inst6|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~1_combout\ = (!\inst1|row\(8) & (!\inst1|row\(6) & (\inst6|LessThan1~0_combout\ & !\inst1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(6),
	datac => \inst6|LessThan1~0_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|LessThan1~1_combout\);

-- Location: LCCOMB_X67_Y37_N22
\inst6|red[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~40_combout\ = ((!\inst1|column\(11) & ((!\inst6|process_0~57_combout\) # (!\inst6|process_0~105_combout\)))) # (!\inst1|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~105_combout\,
	datab => \inst6|process_0~57_combout\,
	datac => \inst1|column\(11),
	datad => \inst1|column\(31),
	combout => \inst6|red[7]~40_combout\);

-- Location: LCCOMB_X66_Y37_N10
\inst6|red[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~41_combout\ = (\inst6|red[7]~40_combout\ & (((\inst6|LessThan1~1_combout\) # (!\inst1|row\(31))) # (!\inst1|row\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datab => \inst6|LessThan1~1_combout\,
	datac => \inst6|red[7]~40_combout\,
	datad => \inst1|row\(31),
	combout => \inst6|red[7]~41_combout\);

-- Location: LCCOMB_X69_Y37_N16
\inst6|red[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~42_combout\ = (((\inst6|red[7]~41_combout\) # (!\inst6|green[6]~19_combout\)) # (!\inst6|red[7]~23_combout\)) # (!\inst6|green[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[6]~14_combout\,
	datab => \inst6|red[7]~23_combout\,
	datac => \inst6|red[7]~41_combout\,
	datad => \inst6|green[6]~19_combout\,
	combout => \inst6|red[7]~42_combout\);

-- Location: LCCOMB_X69_Y37_N26
\inst6|red[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~43_combout\ = (\inst6|red[7]~42_combout\) # ((\inst6|process_0~121_combout\ & (\inst6|blue[7]~13_combout\ & !\inst6|process_0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~121_combout\,
	datab => \inst6|blue[7]~13_combout\,
	datac => \inst6|process_0~120_combout\,
	datad => \inst6|red[7]~42_combout\,
	combout => \inst6|red[7]~43_combout\);

-- Location: LCCOMB_X69_Y37_N18
\inst6|red[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~59_combout\ = (\inst6|columnNum\(0) & (((\inst6|process_0~136_combout\)))) # (!\inst6|columnNum\(0) & (\inst6|process_0~129_combout\ & (!\inst6|process_0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~129_combout\,
	datab => \inst6|columnNum\(0),
	datac => \inst6|process_0~126_combout\,
	datad => \inst6|process_0~136_combout\,
	combout => \inst6|red[7]~59_combout\);

-- Location: LCCOMB_X69_Y37_N22
\inst6|red[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~58_combout\ = (\inst6|columnNum\(0) & (((!\inst6|process_0~126_combout\ & \inst6|process_0~135_combout\)))) # (!\inst6|columnNum\(0) & (\inst6|process_0~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|process_0~174_combout\,
	datac => \inst6|process_0~126_combout\,
	datad => \inst6|process_0~135_combout\,
	combout => \inst6|red[7]~58_combout\);

-- Location: LCCOMB_X69_Y37_N30
\inst6|red[7]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~60_combout\ = (\inst6|red[7]~42_combout\) # ((\inst6|columnNum\(1) & (\inst6|red[7]~59_combout\)) # (!\inst6|columnNum\(1) & ((\inst6|red[7]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datab => \inst6|red[7]~59_combout\,
	datac => \inst6|red[7]~58_combout\,
	datad => \inst6|red[7]~42_combout\,
	combout => \inst6|red[7]~60_combout\);

-- Location: LCCOMB_X69_Y37_N4
\inst6|red[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~57_combout\ = (\inst6|columnNum\(1) & (\inst6|process_0~121_combout\ & (!\inst6|process_0~126_combout\))) # (!\inst6|columnNum\(1) & (((\inst6|process_0~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datab => \inst6|process_0~121_combout\,
	datac => \inst6|process_0~126_combout\,
	datad => \inst6|process_0~173_combout\,
	combout => \inst6|red[7]~57_combout\);

-- Location: LCCOMB_X70_Y37_N0
\inst6|red[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~61_combout\ = (\inst6|columnNum\(1) & (\inst6|process_0~134_combout\)) # (!\inst6|columnNum\(1) & ((\inst6|process_0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(1),
	datac => \inst6|process_0~134_combout\,
	datad => \inst6|process_0~130_combout\,
	combout => \inst6|red[7]~61_combout\);

-- Location: LCCOMB_X69_Y37_N0
\inst6|red[7]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~62_combout\ = (\inst6|red[7]~42_combout\) # ((\inst6|columnNum\(0) & (\inst6|red[7]~57_combout\)) # (!\inst6|columnNum\(0) & ((\inst6|red[7]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|columnNum\(0),
	datab => \inst6|red[7]~57_combout\,
	datac => \inst6|red[7]~61_combout\,
	datad => \inst6|red[7]~42_combout\,
	combout => \inst6|red[7]~62_combout\);

-- Location: LCCOMB_X69_Y37_N12
\inst6|red[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~44_combout\ = (\inst6|columnNum\(2) & ((\inst6|red[7]~62_combout\))) # (!\inst6|columnNum\(2) & (\inst6|red[7]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|columnNum\(2),
	datac => \inst6|red[7]~60_combout\,
	datad => \inst6|red[7]~62_combout\,
	combout => \inst6|red[7]~44_combout\);

-- Location: LCCOMB_X69_Y37_N28
\inst6|red[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~45_combout\ = ((\inst6|columnNum\(3) & ((\inst6|red[7]~44_combout\))) # (!\inst6|columnNum\(3) & (\inst6|red[7]~43_combout\))) # (!\inst6|red[7]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~39_combout\,
	datab => \inst6|columnNum\(3),
	datac => \inst6|red[7]~43_combout\,
	datad => \inst6|red[7]~44_combout\,
	combout => \inst6|red[7]~45_combout\);

-- Location: CLKCTRL_G9
\inst6|red[7]~45clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|red[7]~45clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|red[7]~45clkctrl_outclk\);

-- Location: LCCOMB_X58_Y56_N24
\inst6|blue[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue\(7) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|blue[7]~20_combout\))) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|blue\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|blue\(7),
	datac => \inst6|blue[7]~20_combout\,
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|blue\(7));

-- Location: LCCOMB_X69_Y37_N10
\inst6|red[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~46_combout\ = (\inst6|green[6]~20_combout\) # ((!\inst6|blue[7]~18_combout\ & ((\inst6|columnNum\(3)) # (!\inst6|blue[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~13_combout\,
	datab => \inst6|green[6]~20_combout\,
	datac => \inst6|blue[7]~18_combout\,
	datad => \inst6|columnNum\(3),
	combout => \inst6|red[6]~46_combout\);

-- Location: LCCOMB_X66_Y39_N18
\inst6|blue[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[6]~21_combout\ = (\inst6|red[6]~46_combout\ & ((\inst6|green[6]~14_combout\) # (!\inst6|green[6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~46_combout\,
	datac => \inst6|green[6]~19_combout\,
	datad => \inst6|green[6]~14_combout\,
	combout => \inst6|blue[6]~21_combout\);

-- Location: LCCOMB_X65_Y40_N20
\inst6|blue[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[6]~22_combout\ = (((\inst6|process_0~60_combout\) # (!\inst6|green[6]~8_combout\)) # (!\inst6|process_0~56_combout\)) # (!\inst6|p1w~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p1w~8_combout\,
	datab => \inst6|process_0~56_combout\,
	datac => \inst6|green[6]~8_combout\,
	datad => \inst6|process_0~60_combout\,
	combout => \inst6|blue[6]~22_combout\);

-- Location: LCCOMB_X65_Y40_N30
\inst6|blue[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[6]~23_combout\ = (\inst6|blue[7]~10_combout\ & (\inst6|blue[6]~21_combout\ & (\inst1|disp_ena~q\))) # (!\inst6|blue[7]~10_combout\ & (((\inst6|blue[6]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[6]~21_combout\,
	datab => \inst6|blue[7]~10_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst6|blue[6]~22_combout\,
	combout => \inst6|blue[6]~23_combout\);

-- Location: LCCOMB_X66_Y39_N6
\inst6|blue[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue\(6) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|blue[6]~23_combout\))) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|blue\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue\(6),
	datac => \inst6|blue[6]~23_combout\,
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|blue\(6));

-- Location: LCCOMB_X66_Y39_N8
\inst6|red[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~47_combout\ = ((!\inst6|green[6]~14_combout\) # (!\inst6|red[7]~23_combout\)) # (!\inst6|green[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|green[6]~19_combout\,
	datac => \inst6|red[7]~23_combout\,
	datad => \inst6|green[6]~14_combout\,
	combout => \inst6|red[6]~47_combout\);

-- Location: LCCOMB_X66_Y39_N10
\inst6|green[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[5]~21_combout\ = (!\inst6|red[6]~47_combout\ & (\inst6|red[7]~39_combout\ & \inst6|red[6]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red[6]~47_combout\,
	datac => \inst6|red[7]~39_combout\,
	datad => \inst6|red[6]~46_combout\,
	combout => \inst6|green[5]~21_combout\);

-- Location: LCCOMB_X66_Y39_N26
\inst6|blue[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue\(5) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|green[5]~21_combout\)) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|blue\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[5]~21_combout\,
	datac => \inst6|blue\(5),
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|blue\(5));

-- Location: LCCOMB_X66_Y39_N4
\inst6|green[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[7]~22_combout\ = (\inst6|red[7]~39_combout\ & ((!\inst6|red[6]~46_combout\) # (!\inst6|red[6]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red[6]~47_combout\,
	datac => \inst6|red[7]~39_combout\,
	datad => \inst6|red[6]~46_combout\,
	combout => \inst6|green[7]~22_combout\);

-- Location: LCCOMB_X66_Y39_N20
\inst6|green[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green\(7) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|green[7]~22_combout\))) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|green\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|green\(7),
	datac => \inst6|green[7]~22_combout\,
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|green\(7));

-- Location: LCCOMB_X65_Y40_N8
\inst6|green[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~24_combout\ = (\inst6|process_0~60_combout\) # (((!\inst6|process_0~56_combout\ & !\inst6|blue[7]~5_combout\)) # (!\inst6|green[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~60_combout\,
	datab => \inst6|green[6]~8_combout\,
	datac => \inst6|process_0~56_combout\,
	datad => \inst6|blue[7]~5_combout\,
	combout => \inst6|green[6]~24_combout\);

-- Location: LCCOMB_X65_Y40_N26
\inst6|green[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~25_combout\ = (\inst6|blue[7]~11_combout\ & (!\inst6|blue[7]~5_combout\)) # (!\inst6|blue[7]~11_combout\ & ((\inst6|green[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|blue[7]~5_combout\,
	datac => \inst6|green[6]~24_combout\,
	datad => \inst6|blue[7]~11_combout\,
	combout => \inst6|green[6]~25_combout\);

-- Location: LCCOMB_X69_Y37_N24
\inst6|red[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~48_combout\ = (\inst6|green[6]~19_combout\ & \inst6|green[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|green[6]~19_combout\,
	datad => \inst6|green[6]~14_combout\,
	combout => \inst6|red[7]~48_combout\);

-- Location: LCCOMB_X70_Y37_N14
\inst6|green[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~23_combout\ = (\inst6|red[7]~48_combout\ & ((\inst6|green[6]~20_combout\) # ((!\inst6|blue[7]~18_combout\ & !\inst6|blue[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~18_combout\,
	datab => \inst6|green[6]~20_combout\,
	datac => \inst6|blue[7]~13_combout\,
	datad => \inst6|red[7]~48_combout\,
	combout => \inst6|green[6]~23_combout\);

-- Location: LCCOMB_X66_Y39_N22
\inst6|green[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~26_combout\ = (\inst6|red[7]~39_combout\ & ((\inst6|green[6]~23_combout\))) # (!\inst6|red[7]~39_combout\ & (\inst6|green[6]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green[6]~25_combout\,
	datac => \inst6|red[7]~39_combout\,
	datad => \inst6|green[6]~23_combout\,
	combout => \inst6|green[6]~26_combout\);

-- Location: LCCOMB_X66_Y39_N12
\inst6|green[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green\(6) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|green[6]~26_combout\))) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|green\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|green\(6),
	datac => \inst6|green[6]~26_combout\,
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|green\(6));

-- Location: LCCOMB_X65_Y40_N4
\inst6|red[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~50_combout\ = (!\inst6|process_0~60_combout\ & (\inst6|green[6]~8_combout\ & \inst6|process_0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~60_combout\,
	datac => \inst6|green[6]~8_combout\,
	datad => \inst6|process_0~56_combout\,
	combout => \inst6|red[7]~50_combout\);

-- Location: LCCOMB_X70_Y37_N20
\inst6|red[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~49_combout\ = ((!\inst6|green[6]~20_combout\ & ((\inst6|blue[7]~18_combout\) # (\inst6|blue[7]~13_combout\)))) # (!\inst6|red[7]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~18_combout\,
	datab => \inst6|green[6]~20_combout\,
	datac => \inst6|blue[7]~13_combout\,
	datad => \inst6|red[7]~48_combout\,
	combout => \inst6|red[7]~49_combout\);

-- Location: LCCOMB_X66_Y39_N14
\inst6|red[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~51_combout\ = (\inst6|red[7]~39_combout\ & (((\inst6|red[7]~49_combout\)))) # (!\inst6|red[7]~39_combout\ & (\inst6|red[7]~50_combout\ & (!\inst6|blue[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~50_combout\,
	datab => \inst6|red[7]~39_combout\,
	datac => \inst6|blue[7]~11_combout\,
	datad => \inst6|red[7]~49_combout\,
	combout => \inst6|red[7]~51_combout\);

-- Location: LCCOMB_X67_Y39_N26
\inst6|red[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red\(7) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|red[7]~51_combout\)) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|red\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[7]~51_combout\,
	datac => \inst6|red\(7),
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|red\(7));

-- Location: LCCOMB_X66_Y40_N26
\inst6|green[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[6]~27_combout\ = (\inst6|blue[7]~5_combout\ & ((\inst6|blue[7]~11_combout\) # (!\inst6|blue[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|blue[7]~9_combout\,
	datab => \inst6|blue[7]~5_combout\,
	datac => \inst6|blue[7]~11_combout\,
	combout => \inst6|green[6]~27_combout\);

-- Location: LCCOMB_X66_Y39_N16
\inst6|red[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[6]~52_combout\ = ((\inst6|red[6]~46_combout\ & (\inst6|red[6]~47_combout\ & \inst1|disp_ena~q\))) # (!\inst6|green[6]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[6]~46_combout\,
	datab => \inst6|red[6]~47_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst6|green[6]~27_combout\,
	combout => \inst6|red[6]~52_combout\);

-- Location: LCCOMB_X66_Y39_N28
\inst6|red[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red\(6) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|red[6]~52_combout\)) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|red\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|red[6]~52_combout\,
	datac => \inst6|red\(6),
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|red\(6));

-- Location: LCCOMB_X65_Y40_N6
\inst6|red[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~53_combout\ = (\inst6|red[5]~38_combout\ & (\inst6|blue[7]~10_combout\ & (!\inst6|green[6]~14_combout\ & \inst1|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~38_combout\,
	datab => \inst6|blue[7]~10_combout\,
	datac => \inst6|green[6]~14_combout\,
	datad => \inst1|disp_ena~q\,
	combout => \inst6|red[5]~53_combout\);

-- Location: LCCOMB_X65_Y40_N24
\inst6|blue[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~24_combout\ = (!\inst6|process_0~56_combout\ & (\inst6|green[6]~8_combout\ & \inst6|blue[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~56_combout\,
	datac => \inst6|green[6]~8_combout\,
	datad => \inst6|blue[7]~5_combout\,
	combout => \inst6|blue[7]~24_combout\);

-- Location: LCCOMB_X65_Y40_N2
\inst6|red[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[5]~54_combout\ = (\inst6|red[5]~53_combout\) # ((\inst6|red[5]~21_combout\ & (\inst6|p1w~8_combout\ & !\inst6|blue[7]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~53_combout\,
	datab => \inst6|red[5]~21_combout\,
	datac => \inst6|p1w~8_combout\,
	datad => \inst6|blue[7]~24_combout\,
	combout => \inst6|red[5]~54_combout\);

-- Location: LCCOMB_X60_Y57_N8
\inst6|red[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red\(5) = (GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & (\inst6|red[5]~54_combout\)) # (!GLOBAL(\inst6|red[7]~45clkctrl_outclk\) & ((\inst6|red\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|red[5]~54_combout\,
	datac => \inst6|red\(5),
	datad => \inst6|red[7]~45clkctrl_outclk\,
	combout => \inst6|red\(5));
END structure;


