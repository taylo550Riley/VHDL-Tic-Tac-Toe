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

-- DATE "10/26/2021 16:08:31"

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
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst1|h_count~10_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~7_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|h_count~6_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|h_count~5_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|h_count~3_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|h_count~4_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~9_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|h_count~8_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|h_count~11_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|h_sync~q\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7_combout\ : std_logic;
SIGNAL \inst1|Add1~9_combout\ : std_logic;
SIGNAL \inst1|Add1~8\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13_combout\ : std_logic;
SIGNAL \inst1|Add1~15_combout\ : std_logic;
SIGNAL \inst1|Add1~14\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|Add1~29_combout\ : std_logic;
SIGNAL \inst1|Add1~19\ : std_logic;
SIGNAL \inst1|Add1~20_combout\ : std_logic;
SIGNAL \inst1|Add1~30_combout\ : std_logic;
SIGNAL \inst1|Add1~21\ : std_logic;
SIGNAL \inst1|Add1~22_combout\ : std_logic;
SIGNAL \inst1|Add1~31_combout\ : std_logic;
SIGNAL \inst1|Add1~23\ : std_logic;
SIGNAL \inst1|Add1~24_combout\ : std_logic;
SIGNAL \inst1|Add1~32_combout\ : std_logic;
SIGNAL \inst1|Add1~25\ : std_logic;
SIGNAL \inst1|Add1~26_combout\ : std_logic;
SIGNAL \inst1|Add1~28_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~17_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|v_sync~q\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|LessThan7~2_combout\ : std_logic;
SIGNAL \inst1|row[9]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|row[10]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_combout\ : std_logic;
SIGNAL \inst1|row[0]~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~2_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~3_combout\ : std_logic;
SIGNAL \inst1|column[31]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan6~1_combout\ : std_logic;
SIGNAL \inst1|LessThan6~2_combout\ : std_logic;
SIGNAL \inst1|row[31]~feeder_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|LessThan4~1_combout\ : std_logic;
SIGNAL \inst|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|process_0~12_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst1|column[0]~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|disp_ena~q\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|red[7]~0_combout\ : std_logic;
SIGNAL \inst|green[7]~1_combout\ : std_logic;
SIGNAL \inst|green[7]~0_combout\ : std_logic;
SIGNAL \inst|green[7]~2_combout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(10 DOWNTO 0);

BEGIN

pixel_clk <= ww_pixel_clk;
ww_clk <= clk;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
n_blank <= ww_n_blank;
n_sync <= ww_n_sync;
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

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

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

-- Location: IOOBUF_X52_Y73_N23
\blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|green[7]~2_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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
	i => \inst|red[7]~0_combout\,
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

-- Location: LCCOMB_X40_Y48_N6
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

-- Location: LCCOMB_X39_Y48_N26
\inst1|h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~10_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|h_count~10_combout\);

-- Location: FF_X39_Y48_N27
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X40_Y48_N8
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X39_Y48_N16
\inst1|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~7_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datac => \inst1|Add0~2_combout\,
	combout => \inst1|h_count~7_combout\);

-- Location: FF_X39_Y48_N17
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: LCCOMB_X40_Y48_N10
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X36_Y48_N20
\inst1|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~6_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|h_count~6_combout\);

-- Location: FF_X36_Y48_N21
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X40_Y48_N12
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

-- Location: LCCOMB_X39_Y49_N24
\inst1|h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~5_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|h_count~5_combout\);

-- Location: FF_X39_Y49_N25
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: LCCOMB_X40_Y48_N14
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X39_Y48_N6
\inst1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datac => \inst1|Add0~8_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X39_Y48_N7
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X40_Y48_N16
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X39_Y48_N20
\inst1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~3_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|h_count~3_combout\);

-- Location: FF_X39_Y48_N21
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: LCCOMB_X40_Y48_N18
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

-- Location: LCCOMB_X39_Y48_N4
\inst1|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~4_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|h_count~4_combout\);

-- Location: FF_X39_Y48_N5
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X40_Y48_N20
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

-- Location: LCCOMB_X39_Y48_N2
\inst1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datac => \inst1|Add0~14_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X39_Y48_N3
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X40_Y48_N22
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

-- Location: LCCOMB_X39_Y48_N8
\inst1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X39_Y48_N9
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X40_Y48_N24
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|h_count\(9) & (!\inst1|Add0~17\)) # (!\inst1|h_count\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X39_Y48_N14
\inst1|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~9_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|h_count~9_combout\);

-- Location: FF_X39_Y48_N15
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X40_Y48_N26
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|h_count\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|h_count\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|h_count\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X39_Y48_N12
\inst1|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~8_combout\ = (\inst1|Add0~20_combout\ & !\inst1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~20_combout\,
	datac => \inst1|process_0~0_combout\,
	combout => \inst1|h_count~8_combout\);

-- Location: FF_X39_Y48_N13
\inst1|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(10));

-- Location: LCCOMB_X40_Y48_N28
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

-- Location: LCCOMB_X39_Y48_N10
\inst1|h_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~11_combout\ = (!\inst1|process_0~0_combout\ & \inst1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|h_count~11_combout\);

-- Location: FF_X39_Y48_N11
\inst1|h_count[11]\ : dffeas
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
	q => \inst1|h_count\(11));

-- Location: LCCOMB_X40_Y48_N0
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|h_count\(7) & (!\inst1|h_count\(8) & (!\inst1|h_count\(6) & !\inst1|h_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(6),
	datad => \inst1|h_count\(10),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y48_N2
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (((!\inst1|h_count\(2)) # (!\inst1|h_count\(3))) # (!\inst1|h_count\(4))) # (!\inst1|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(3),
	datad => \inst1|h_count\(2),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y48_N4
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (!\inst1|h_count\(5) & (\inst1|LessThan0~0_combout\ & ((\inst1|LessThan0~1_combout\) # (!\inst1|h_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|h_count\(0),
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y48_N30
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst1|h_count\(11) & (!\inst1|LessThan0~2_combout\ & ((\inst1|h_count\(9)) # (\inst1|h_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|h_count\(9),
	datac => \inst1|h_count\(10),
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X39_Y48_N18
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|Add0~18_combout\) # ((\inst1|Add0~20_combout\) # (\inst1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~20_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X39_Y48_N24
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst1|Add0~14_combout\ & (\inst1|Add0~12_combout\ & ((\inst1|Add0~8_combout\) # (\inst1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X39_Y48_N0
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|process_0~0_combout\) # ((\inst1|process_0~2_combout\) # ((\inst1|process_0~1_combout\) # (!\inst1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|process_0~1_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|process_0~3_combout\);

-- Location: FF_X39_Y48_N1
\inst1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_sync~q\);

-- Location: FF_X36_Y49_N29
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: LCCOMB_X38_Y49_N6
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

-- Location: LCCOMB_X38_Y49_N8
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

-- Location: LCCOMB_X36_Y49_N26
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|process_0~0_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~4_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|Add1~6_combout\);

-- Location: FF_X36_Y49_N27
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: LCCOMB_X38_Y49_N10
\inst1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~7_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~8\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~7_combout\,
	cout => \inst1|Add1~8\);

-- Location: LCCOMB_X36_Y49_N24
\inst1|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~9_combout\ = (\inst1|process_0~0_combout\ & (\inst1|Add1~7_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|Add1~7_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~9_combout\);

-- Location: FF_X36_Y49_N25
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X38_Y49_N12
\inst1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~8\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~8\ & VCC))
-- \inst1|Add1~11\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~8\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X36_Y49_N14
\inst1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|process_0~0_combout\ & (\inst1|Add1~10_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|Add1~10_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~12_combout\);

-- Location: FF_X36_Y49_N15
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X38_Y49_N14
\inst1|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~13_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~11\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~11\) # (GND)))
-- \inst1|Add1~14\ = CARRY((!\inst1|Add1~11\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~13_combout\,
	cout => \inst1|Add1~14\);

-- Location: LCCOMB_X36_Y49_N16
\inst1|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~15_combout\ = (\inst1|process_0~0_combout\ & (\inst1|Add1~13_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|Add1~13_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~15_combout\);

-- Location: FF_X36_Y49_N17
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X38_Y49_N16
\inst1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~14\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~14\ & VCC))
-- \inst1|Add1~19\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~14\,
	combout => \inst1|Add1~18_combout\,
	cout => \inst1|Add1~19\);

-- Location: LCCOMB_X36_Y49_N12
\inst1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~29_combout\ = (\inst1|process_0~0_combout\ & (\inst1|Add1~18_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|Add1~18_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~29_combout\);

-- Location: FF_X36_Y49_N13
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X38_Y49_N18
\inst1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~20_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~19\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~19\) # (GND)))
-- \inst1|Add1~21\ = CARRY((!\inst1|Add1~19\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~19\,
	combout => \inst1|Add1~20_combout\,
	cout => \inst1|Add1~21\);

-- Location: LCCOMB_X38_Y49_N26
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = (\inst1|process_0~0_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~20_combout\))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~20_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|Add1~30_combout\);

-- Location: FF_X38_Y49_N27
\inst1|v_count[7]\ : dffeas
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
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X38_Y49_N20
\inst1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~22_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~21\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~21\ & VCC))
-- \inst1|Add1~23\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~21\,
	combout => \inst1|Add1~22_combout\,
	cout => \inst1|Add1~23\);

-- Location: LCCOMB_X38_Y49_N2
\inst1|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~31_combout\ = (\inst1|process_0~0_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~22_combout\))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~22_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|Add1~31_combout\);

-- Location: FF_X38_Y49_N3
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X38_Y49_N22
\inst1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~24_combout\ = (\inst1|v_count\(9) & (!\inst1|Add1~23\)) # (!\inst1|v_count\(9) & ((\inst1|Add1~23\) # (GND)))
-- \inst1|Add1~25\ = CARRY((!\inst1|Add1~23\) # (!\inst1|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	datad => VCC,
	cin => \inst1|Add1~23\,
	combout => \inst1|Add1~24_combout\,
	cout => \inst1|Add1~25\);

-- Location: LCCOMB_X38_Y49_N0
\inst1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~32_combout\ = (\inst1|process_0~0_combout\ & (\inst1|LessThan1~3_combout\ & (\inst1|Add1~24_combout\))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Add1~24_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|Add1~32_combout\);

-- Location: FF_X38_Y49_N1
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X38_Y49_N24
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = \inst1|v_count\(10) $ (!\inst1|Add1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(10),
	cin => \inst1|Add1~25\,
	combout => \inst1|Add1~26_combout\);

-- Location: LCCOMB_X36_Y49_N10
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = (\inst1|process_0~0_combout\ & (\inst1|Add1~26_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|Add1~26_combout\,
	datac => \inst1|v_count\(10),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~28_combout\);

-- Location: FF_X36_Y49_N11
\inst1|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(10));

-- Location: LCCOMB_X36_Y49_N18
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (!\inst1|v_count\(2) & (!\inst1|v_count\(3) & (!\inst1|v_count\(0) & !\inst1|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(0),
	datad => \inst1|v_count\(1),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y49_N20
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (\inst1|v_count\(6) & ((\inst1|v_count\(4)) # (!\inst1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(4),
	datac => \inst1|v_count\(6),
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X38_Y49_N28
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (\inst1|v_count\(9)) # ((\inst1|v_count\(7)) # (\inst1|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	datac => \inst1|v_count\(7),
	datad => \inst1|v_count\(8),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y49_N30
\inst1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = ((!\inst1|LessThan1~0_combout\ & ((!\inst1|LessThan1~2_combout\) # (!\inst1|v_count\(5))))) # (!\inst1|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datab => \inst1|v_count\(10),
	datac => \inst1|LessThan1~2_combout\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X38_Y49_N4
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

-- Location: LCCOMB_X36_Y49_N30
\inst1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|process_0~0_combout\ & (\inst1|LessThan1~3_combout\ & ((\inst1|Add1~0_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|v_count\(0),
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|Add1~16_combout\);

-- Location: FF_X36_Y49_N31
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X36_Y49_N28
\inst1|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~17_combout\ = (\inst1|process_0~0_combout\ & (\inst1|Add1~2_combout\ & ((\inst1|LessThan1~3_combout\)))) # (!\inst1|process_0~0_combout\ & (((\inst1|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|Add1~2_combout\,
	datac => \inst1|v_count\(1),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add1~17_combout\);

-- Location: LCCOMB_X36_Y49_N8
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = ((!\inst1|Add1~17_combout\ & !\inst1|Add1~16_combout\)) # (!\inst1|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add1~17_combout\,
	datac => \inst1|Add1~16_combout\,
	datad => \inst1|Add1~28_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X36_Y49_N22
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = ((\inst1|Add1~6_combout\) # ((!\inst1|Add1~12_combout\) # (!\inst1|Add1~9_combout\))) # (!\inst1|Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~15_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|Add1~9_combout\,
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X36_Y49_N2
\inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (!\inst1|Add1~29_combout\ & (!\inst1|Add1~31_combout\ & (!\inst1|Add1~32_combout\ & !\inst1|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~29_combout\,
	datab => \inst1|Add1~31_combout\,
	datac => \inst1|Add1~32_combout\,
	datad => \inst1|Add1~30_combout\,
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X36_Y49_N0
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (!\inst1|process_0~5_combout\ & (!\inst1|process_0~4_combout\ & \inst1|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~5_combout\,
	datac => \inst1|process_0~4_combout\,
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X36_Y49_N1
\inst1|v_sync\ : dffeas
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
	q => \inst1|v_sync~q\);

-- Location: LCCOMB_X36_Y48_N22
\inst1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (\inst1|Add1~12_combout\ & \inst1|Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~12_combout\,
	datad => \inst1|Add1~15_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: LCCOMB_X36_Y48_N14
\inst1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~2_combout\ = ((\inst1|LessThan7~0_combout\ & ((!\inst1|LessThan7~1_combout\) # (!\inst1|Add1~9_combout\)))) # (!\inst1|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~9_combout\,
	datab => \inst1|LessThan7~0_combout\,
	datac => \inst1|LessThan7~1_combout\,
	datad => \inst1|Add1~28_combout\,
	combout => \inst1|LessThan7~2_combout\);

-- Location: FF_X36_Y48_N7
\inst1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~31_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(8));

-- Location: LCCOMB_X36_Y48_N28
\inst1|row[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[9]~feeder_combout\ = \inst1|Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add1~32_combout\,
	combout => \inst1|row[9]~feeder_combout\);

-- Location: FF_X36_Y48_N29
\inst1|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[9]~feeder_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(9));

-- Location: FF_X36_Y48_N13
\inst1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~12_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(4));

-- Location: FF_X36_Y48_N11
\inst1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~30_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(7));

-- Location: FF_X36_Y48_N5
\inst1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~15_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(5));

-- Location: FF_X36_Y48_N23
\inst1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~9_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(3));

-- Location: LCCOMB_X36_Y48_N4
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst1|row\(7) & (((!\inst1|row\(3)) # (!\inst1|row\(5))) # (!\inst1|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(7),
	datac => \inst1|row\(5),
	datad => \inst1|row\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: FF_X36_Y48_N17
\inst1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~29_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(6));

-- Location: LCCOMB_X35_Y48_N6
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst1|row\(8) & (!\inst1|row\(9) & (\inst|LessThan1~0_combout\ & !\inst1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(9),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst1|row\(6),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y48_N24
\inst1|row[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[10]~feeder_combout\ = \inst1|Add1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add1~28_combout\,
	combout => \inst1|row[10]~feeder_combout\);

-- Location: FF_X36_Y48_N25
\inst1|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[10]~feeder_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(10));

-- Location: LCCOMB_X35_Y48_N26
\inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~0_combout\ = (!\inst1|row\(10) & (((!\inst1|row\(9)) # (!\inst1|row\(7))) # (!\inst1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(10),
	datac => \inst1|row\(7),
	datad => \inst1|row\(9),
	combout => \inst|LessThan4~0_combout\);

-- Location: FF_X36_Y48_N27
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
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(2));

-- Location: LCCOMB_X36_Y48_N26
\inst|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_combout\ = (\inst1|row\(4)) # ((\inst1|row\(6)) # ((\inst1|row\(2)) # (\inst1|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(6),
	datac => \inst1|row\(2),
	datad => \inst1|row\(3),
	combout => \inst|LessThan5~1_combout\);

-- Location: FF_X36_Y48_N31
\inst1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~17_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(1));

-- Location: LCCOMB_X36_Y48_N0
\inst1|row[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[0]~0_combout\ = !\inst1|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add1~16_combout\,
	combout => \inst1|row[0]~0_combout\);

-- Location: FF_X36_Y48_N1
\inst1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[0]~0_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(0));

-- Location: LCCOMB_X36_Y48_N2
\inst|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~2_combout\ = (\inst1|row\(5)) # ((\inst1|row\(1) & !\inst1|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(1),
	datac => \inst1|row\(5),
	datad => \inst1|row\(0),
	combout => \inst|LessThan5~2_combout\);

-- Location: LCCOMB_X36_Y48_N6
\inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (\inst1|row\(10)) # ((\inst1|row\(8)) # (\inst1|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(10),
	datac => \inst1|row\(8),
	datad => \inst1|row\(9),
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X36_Y48_N10
\inst|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~3_combout\ = (\inst|LessThan5~0_combout\) # ((\inst1|row\(7) & ((\inst|LessThan5~1_combout\) # (\inst|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~1_combout\,
	datab => \inst|LessThan5~2_combout\,
	datac => \inst1|row\(7),
	datad => \inst|LessThan5~0_combout\,
	combout => \inst|LessThan5~3_combout\);

-- Location: LCCOMB_X35_Y48_N20
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

-- Location: LCCOMB_X39_Y48_N28
\inst1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~1_combout\ = ((!\inst1|Add0~16_combout\) # (!\inst1|Add0~14_combout\)) # (!\inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|LessThan6~1_combout\);

-- Location: LCCOMB_X39_Y48_N22
\inst1|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~2_combout\ = (\inst1|process_0~0_combout\) # ((!\inst1|Add0~22_combout\ & ((\inst1|LessThan6~1_combout\) # (!\inst1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~20_combout\,
	datab => \inst1|LessThan6~1_combout\,
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|LessThan6~2_combout\);

-- Location: FF_X35_Y48_N21
\inst1|column[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[31]~feeder_combout\,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(31));

-- Location: FF_X35_Y48_N23
\inst1|column[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~11_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(11));

-- Location: LCCOMB_X36_Y48_N18
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

-- Location: FF_X36_Y48_N19
\inst1|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[31]~feeder_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(31));

-- Location: LCCOMB_X35_Y48_N8
\inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = (\inst|LessThan5~3_combout\ & (\inst1|column\(31) & (!\inst1|column\(11) & \inst1|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~3_combout\,
	datab => \inst1|column\(31),
	datac => \inst1|column\(11),
	datad => \inst1|row\(31),
	combout => \inst|process_0~11_combout\);

-- Location: LCCOMB_X36_Y48_N30
\inst|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~1_combout\ = (!\inst1|row\(4) & (!\inst1|row\(2) & (!\inst1|row\(1) & !\inst1|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst1|row\(2),
	datac => \inst1|row\(1),
	datad => \inst1|row\(3),
	combout => \inst|LessThan4~1_combout\);

-- Location: LCCOMB_X36_Y48_N16
\inst|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~2_combout\ = (!\inst1|row\(6) & (!\inst1|row\(10) & ((\inst|LessThan4~1_combout\) # (!\inst1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan4~1_combout\,
	datab => \inst1|row\(5),
	datac => \inst1|row\(6),
	datad => \inst1|row\(10),
	combout => \inst|LessThan4~2_combout\);

-- Location: LCCOMB_X35_Y48_N4
\inst|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~12_combout\ = (\inst|process_0~11_combout\ & ((\inst|LessThan4~0_combout\) # ((\inst|LessThan4~2_combout\) # (!\inst1|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan4~0_combout\,
	datab => \inst|process_0~11_combout\,
	datac => \inst|LessThan4~2_combout\,
	datad => \inst1|row\(31),
	combout => \inst|process_0~12_combout\);

-- Location: FF_X35_Y48_N31
\inst1|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~7_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(1));

-- Location: FF_X35_Y48_N13
\inst1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~6_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(2));

-- Location: FF_X35_Y48_N3
\inst1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~5_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(3));

-- Location: FF_X35_Y48_N17
\inst1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~4_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(6));

-- Location: LCCOMB_X35_Y48_N2
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst1|column\(6)) # ((\inst1|column\(3) & ((\inst1|column\(1)) # (\inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst1|column\(2),
	datac => \inst1|column\(3),
	datad => \inst1|column\(6),
	combout => \inst|process_0~0_combout\);

-- Location: FF_X35_Y48_N29
\inst1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~2_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(4));

-- Location: FF_X35_Y48_N15
\inst1|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~3_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(5));

-- Location: FF_X35_Y48_N19
\inst1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~1_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(7));

-- Location: LCCOMB_X34_Y48_N8
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst1|column\(7) & ((\inst|process_0~0_combout\) # ((\inst1|column\(4)) # (\inst1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \inst1|column\(4),
	datac => \inst1|column\(5),
	datad => \inst1|column\(7),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X35_Y48_N10
\inst1|column[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[0]~0_combout\ = !\inst1|h_count~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|h_count~10_combout\,
	combout => \inst1|column[0]~0_combout\);

-- Location: FF_X35_Y48_N11
\inst1|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[0]~0_combout\,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(0));

-- Location: LCCOMB_X35_Y48_N12
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst1|column\(3) & ((\inst1|column\(1)) # ((\inst1|column\(2)) # (!\inst1|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst1|column\(3),
	datac => \inst1|column\(2),
	datad => \inst1|column\(0),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y48_N18
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (!\inst1|column\(5) & (!\inst1|column\(7) & ((!\inst|LessThan2~0_combout\) # (!\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(4),
	datac => \inst1|column\(7),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: FF_X35_Y48_N1
\inst1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~0_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(8));

-- Location: FF_X34_Y48_N11
\inst1|column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~8_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(10));

-- Location: FF_X35_Y48_N25
\inst1|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~9_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(9));

-- Location: LCCOMB_X34_Y48_N12
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst1|column\(10)) # (((!\inst1|column\(6) & !\inst1|column\(7))) # (!\inst1|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(6),
	datac => \inst1|column\(9),
	datad => \inst1|column\(7),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X35_Y48_N0
\inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst|process_0~1_combout\) # ((\inst|process_0~3_combout\) # ((\inst1|column\(8)) # (\inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst|process_0~3_combout\,
	datac => \inst1|column\(8),
	datad => \inst|process_0~2_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X40_Y48_N30
\inst1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = (((!\inst1|Add0~14_combout\) # (!\inst1|Add0~16_combout\)) # (!\inst1|Add0~18_combout\)) # (!\inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~20_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|LessThan6~0_combout\);

-- Location: LCCOMB_X36_Y48_N8
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (\inst1|LessThan7~2_combout\ & ((\inst1|process_0~0_combout\) # ((!\inst1|Add0~22_combout\ & \inst1|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|process_0~0_combout\,
	datac => \inst1|LessThan7~2_combout\,
	datad => \inst1|LessThan6~0_combout\,
	combout => \inst1|process_0~7_combout\);

-- Location: FF_X36_Y48_N9
\inst1|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|disp_ena~q\);

-- Location: LCCOMB_X35_Y48_N16
\inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (\inst1|column\(9) & (\inst1|column\(7) & \inst1|column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(7),
	datad => \inst1|column\(8),
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X34_Y48_N10
\inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (\inst1|column\(5) & (\inst1|column\(6) & (!\inst1|column\(10) & \inst|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(6),
	datac => \inst1|column\(10),
	datad => \inst|process_0~8_combout\,
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X34_Y48_N14
\inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst1|column\(10) & (!\inst1|column\(6) & (!\inst1|column\(9) & !\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(6),
	datac => \inst1|column\(9),
	datad => \inst1|column\(7),
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X35_Y48_N30
\inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = (((!\inst1|column\(2) & !\inst1|column\(1))) # (!\inst1|column\(3))) # (!\inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst1|column\(2),
	datac => \inst1|column\(1),
	datad => \inst1|column\(3),
	combout => \inst|process_0~5_combout\);

-- Location: LCCOMB_X35_Y48_N14
\inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (\inst|process_0~6_combout\ & (!\inst1|column\(8) & (!\inst1|column\(5) & \inst|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~6_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(5),
	datad => \inst|process_0~5_combout\,
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X35_Y48_N28
\inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (\inst|process_0~7_combout\) # ((\inst|process_0~9_combout\ & ((\inst1|column\(4)) # (\inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|process_0~7_combout\,
	datac => \inst1|column\(4),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X34_Y48_N0
\inst|red[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|red[7]~0_combout\ = (\inst1|disp_ena~q\ & (((\inst|process_0~4_combout\ & !\inst|process_0~10_combout\)) # (!\inst|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|process_0~4_combout\,
	datac => \inst1|disp_ena~q\,
	datad => \inst|process_0~10_combout\,
	combout => \inst|red[7]~0_combout\);

-- Location: LCCOMB_X35_Y48_N24
\inst|green[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|green[7]~1_combout\ = (\inst1|row\(31) & \inst1|row\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(31),
	datad => \inst1|row\(10),
	combout => \inst|green[7]~1_combout\);

-- Location: LCCOMB_X35_Y48_N22
\inst|green[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|green[7]~0_combout\ = (\inst1|column\(31) & ((\inst1|column\(11)) # ((\inst1|column\(10) & \inst|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(31),
	datac => \inst1|column\(11),
	datad => \inst|process_0~8_combout\,
	combout => \inst|green[7]~0_combout\);

-- Location: LCCOMB_X34_Y48_N26
\inst|green[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|green[7]~2_combout\ = (\inst|red[7]~0_combout\ & ((\inst|green[7]~0_combout\) # ((!\inst|LessThan1~1_combout\ & \inst|green[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|red[7]~0_combout\,
	datac => \inst|green[7]~1_combout\,
	datad => \inst|green[7]~0_combout\,
	combout => \inst|green[7]~2_combout\);
END structure;


