-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Full Version"

-- DATE "06/05/2015 11:56:23"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	image_process IS
    PORT (
	r_out : OUT std_logic_vector(7 DOWNTO 0);
	g_out : OUT std_logic_vector(7 DOWNTO 0);
	b_out : OUT std_logic_vector(7 DOWNTO 0);
	IMG : IN std_logic;
	reset : IN std_logic;
	VGA_HS : IN std_logic;
	VGA_VS : IN std_logic;
	VGA_CLK : IN std_logic;
	X_Cont : IN std_logic_vector(8 DOWNTO 0);
	Y_Cont : IN std_logic_vector(8 DOWNTO 0);
	r : IN std_logic_vector(7 DOWNTO 0);
	g : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0)
	);
END image_process;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[1]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[3]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[2]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMG	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF image_process IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IMG : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_X_Cont : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Y_Cont : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \nri[0]~0_combout\ : std_logic;
SIGNAL \gen~1_combout\ : std_logic;
SIGNAL \gen~2_combout\ : std_logic;
SIGNAL \gen~3_combout\ : std_logic;
SIGNAL \nbi[0]~8_combout\ : std_logic;
SIGNAL \VGA_HS~input_o\ : std_logic;
SIGNAL \VGA_VS~input_o\ : std_logic;
SIGNAL \X_Cont[3]~input_o\ : std_logic;
SIGNAL \X_Cont[5]~input_o\ : std_logic;
SIGNAL \X_Cont[1]~input_o\ : std_logic;
SIGNAL \Y_Cont[1]~input_o\ : std_logic;
SIGNAL \Y_Cont[6]~input_o\ : std_logic;
SIGNAL \r[0]~input_o\ : std_logic;
SIGNAL \g[5]~input_o\ : std_logic;
SIGNAL \r_out[0]~output_o\ : std_logic;
SIGNAL \r_out[1]~output_o\ : std_logic;
SIGNAL \r_out[2]~output_o\ : std_logic;
SIGNAL \r_out[3]~output_o\ : std_logic;
SIGNAL \r_out[4]~output_o\ : std_logic;
SIGNAL \r_out[5]~output_o\ : std_logic;
SIGNAL \r_out[6]~output_o\ : std_logic;
SIGNAL \r_out[7]~output_o\ : std_logic;
SIGNAL \g_out[0]~output_o\ : std_logic;
SIGNAL \g_out[1]~output_o\ : std_logic;
SIGNAL \g_out[2]~output_o\ : std_logic;
SIGNAL \g_out[3]~output_o\ : std_logic;
SIGNAL \g_out[4]~output_o\ : std_logic;
SIGNAL \g_out[5]~output_o\ : std_logic;
SIGNAL \g_out[6]~output_o\ : std_logic;
SIGNAL \g_out[7]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \b_out[4]~output_o\ : std_logic;
SIGNAL \b_out[5]~output_o\ : std_logic;
SIGNAL \b_out[6]~output_o\ : std_logic;
SIGNAL \b_out[7]~output_o\ : std_logic;
SIGNAL \VGA_CLK~input_o\ : std_logic;
SIGNAL \VGA_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \X_Cont[8]~input_o\ : std_logic;
SIGNAL \Y_Cont[8]~input_o\ : std_logic;
SIGNAL \Y_Cont[3]~input_o\ : std_logic;
SIGNAL \Y_Cont[2]~input_o\ : std_logic;
SIGNAL \Y_Cont[0]~input_o\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Y_Cont[5]~input_o\ : std_logic;
SIGNAL \Y_Cont[4]~input_o\ : std_logic;
SIGNAL \Y_Cont[7]~input_o\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \gen~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \g[0]~input_o\ : std_logic;
SIGNAL \gi~0_combout\ : std_logic;
SIGNAL \nri[0]~1_combout\ : std_logic;
SIGNAL \ri~0_combout\ : std_logic;
SIGNAL \IMG~input_o\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \r_out[0]~reg0_q\ : std_logic;
SIGNAL \g[1]~input_o\ : std_logic;
SIGNAL \gi~1_combout\ : std_logic;
SIGNAL \nri[1]~2_combout\ : std_logic;
SIGNAL \r[1]~input_o\ : std_logic;
SIGNAL \ri~1_combout\ : std_logic;
SIGNAL \r_out[1]~reg0_q\ : std_logic;
SIGNAL \g[2]~input_o\ : std_logic;
SIGNAL \gi~2_combout\ : std_logic;
SIGNAL \nri[2]~3_combout\ : std_logic;
SIGNAL \r[2]~input_o\ : std_logic;
SIGNAL \ri~2_combout\ : std_logic;
SIGNAL \r_out[2]~reg0_q\ : std_logic;
SIGNAL \g[3]~input_o\ : std_logic;
SIGNAL \gi~3_combout\ : std_logic;
SIGNAL \nri[3]~4_combout\ : std_logic;
SIGNAL \r[3]~input_o\ : std_logic;
SIGNAL \ri~3_combout\ : std_logic;
SIGNAL \r_out[3]~reg0_q\ : std_logic;
SIGNAL \g[4]~input_o\ : std_logic;
SIGNAL \gi~4_combout\ : std_logic;
SIGNAL \nri[4]~5_combout\ : std_logic;
SIGNAL \r[4]~input_o\ : std_logic;
SIGNAL \ri~4_combout\ : std_logic;
SIGNAL \r_out[4]~reg0_q\ : std_logic;
SIGNAL \gi~5_combout\ : std_logic;
SIGNAL \nri[5]~6_combout\ : std_logic;
SIGNAL \r[5]~input_o\ : std_logic;
SIGNAL \ri~5_combout\ : std_logic;
SIGNAL \r_out[5]~reg0_q\ : std_logic;
SIGNAL \g[6]~input_o\ : std_logic;
SIGNAL \gi~6_combout\ : std_logic;
SIGNAL \nri[6]~7_combout\ : std_logic;
SIGNAL \r[6]~input_o\ : std_logic;
SIGNAL \ri~6_combout\ : std_logic;
SIGNAL \r_out[6]~reg0_q\ : std_logic;
SIGNAL \g[7]~input_o\ : std_logic;
SIGNAL \gi~7_combout\ : std_logic;
SIGNAL \nri[7]~8_combout\ : std_logic;
SIGNAL \r[7]~input_o\ : std_logic;
SIGNAL \ri~7_combout\ : std_logic;
SIGNAL \r_out[7]~reg0_q\ : std_logic;
SIGNAL \X_Cont[7]~input_o\ : std_logic;
SIGNAL \X_Cont[0]~input_o\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \X_Cont[2]~input_o\ : std_logic;
SIGNAL \X_Cont[4]~input_o\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \X_Cont[6]~input_o\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \ngi[0]~12_combout\ : std_logic;
SIGNAL \ngi[0]~2_combout\ : std_logic;
SIGNAL \ngi[0]~3_combout\ : std_logic;
SIGNAL \g_out[0]~reg0_q\ : std_logic;
SIGNAL \ngi[1]~4_combout\ : std_logic;
SIGNAL \g_out[1]~reg0_q\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \ngi[0]~5_combout\ : std_logic;
SIGNAL \ngi[2]~6_combout\ : std_logic;
SIGNAL \g_out[2]~reg0_q\ : std_logic;
SIGNAL \ngi[3]~7_combout\ : std_logic;
SIGNAL \g_out[3]~reg0_q\ : std_logic;
SIGNAL \ngi[4]~8_combout\ : std_logic;
SIGNAL \g_out[4]~reg0_q\ : std_logic;
SIGNAL \ngi[5]~9_combout\ : std_logic;
SIGNAL \g_out[5]~reg0_q\ : std_logic;
SIGNAL \ngi[6]~10_combout\ : std_logic;
SIGNAL \g_out[6]~reg0_q\ : std_logic;
SIGNAL \ngi[7]~11_combout\ : std_logic;
SIGNAL \g_out[7]~reg0_q\ : std_logic;
SIGNAL \nbi[0]~9_combout\ : std_logic;
SIGNAL \nbi[0]~0_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \bi~0_combout\ : std_logic;
SIGNAL \b_out[0]~reg0_q\ : std_logic;
SIGNAL \nbi[1]~1_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \bi~1_combout\ : std_logic;
SIGNAL \b_out[1]~reg0_q\ : std_logic;
SIGNAL \nbi[2]~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \bi~2_combout\ : std_logic;
SIGNAL \b_out[2]~reg0_q\ : std_logic;
SIGNAL \nbi[3]~3_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \bi~3_combout\ : std_logic;
SIGNAL \b_out[3]~reg0_q\ : std_logic;
SIGNAL \nbi[4]~4_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \bi~4_combout\ : std_logic;
SIGNAL \b_out[4]~reg0_q\ : std_logic;
SIGNAL \nbi[5]~5_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \bi~5_combout\ : std_logic;
SIGNAL \b_out[5]~reg0_q\ : std_logic;
SIGNAL \nbi[6]~6_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \bi~6_combout\ : std_logic;
SIGNAL \b_out[6]~reg0_q\ : std_logic;
SIGNAL \nbi[7]~7_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \bi~7_combout\ : std_logic;
SIGNAL \b_out[7]~reg0_q\ : std_logic;
SIGNAL bi : std_logic_vector(7 DOWNTO 0);
SIGNAL gi : std_logic_vector(7 DOWNTO 0);
SIGNAL ri : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_IMG~input_o\ : std_logic;

BEGIN

r_out <= ww_r_out;
g_out <= ww_g_out;
b_out <= ww_b_out;
ww_IMG <= IMG;
ww_reset <= reset;
ww_VGA_HS <= VGA_HS;
ww_VGA_VS <= VGA_VS;
ww_VGA_CLK <= VGA_CLK;
ww_X_Cont <= X_Cont;
ww_Y_Cont <= Y_Cont;
ww_r <= r;
ww_g <= g;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA_CLK~input_o\);
\ALT_INV_state~q\ <= NOT \state~q\;
\ALT_INV_IMG~input_o\ <= NOT \IMG~input_o\;

-- Location: LCCOMB_X37_Y11_N14
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\X_Cont[6]~input_o\) # (!\X_Cont[7]~input_o\)) # (!\X_Cont[3]~input_o\)) # (!\X_Cont[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[5]~input_o\,
	datab => \X_Cont[3]~input_o\,
	datac => \X_Cont[7]~input_o\,
	datad => \X_Cont[6]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y11_N10
\nri[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[0]~0_combout\ = (!\X_Cont[8]~input_o\ & ((\LessThan4~2_combout\ & ((!\LessThan6~2_combout\))) # (!\LessThan4~2_combout\ & (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan4~2_combout\,
	datac => \X_Cont[8]~input_o\,
	datad => \LessThan6~2_combout\,
	combout => \nri[0]~0_combout\);

-- Location: LCCOMB_X38_Y11_N28
\gen~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen~1_combout\ = (\X_Cont[2]~input_o\ & (\X_Cont[4]~input_o\ & ((\X_Cont[1]~input_o\) # (\X_Cont[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[1]~input_o\,
	datab => \X_Cont[0]~input_o\,
	datac => \X_Cont[2]~input_o\,
	datad => \X_Cont[4]~input_o\,
	combout => \gen~1_combout\);

-- Location: LCCOMB_X37_Y11_N4
\gen~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen~2_combout\ = (\X_Cont[5]~input_o\) # ((\gen~1_combout\) # ((\X_Cont[3]~input_o\ & \X_Cont[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[5]~input_o\,
	datab => \X_Cont[3]~input_o\,
	datac => \X_Cont[4]~input_o\,
	datad => \gen~1_combout\,
	combout => \gen~2_combout\);

-- Location: LCCOMB_X37_Y11_N22
\gen~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen~3_combout\ = (\X_Cont[8]~input_o\ & ((\X_Cont[7]~input_o\) # ((\X_Cont[6]~input_o\ & \gen~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[6]~input_o\,
	datab => \X_Cont[7]~input_o\,
	datac => \gen~2_combout\,
	datad => \X_Cont[8]~input_o\,
	combout => \gen~3_combout\);

-- Location: LCCOMB_X37_Y11_N12
\nbi[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[0]~8_combout\ = (\LessThan4~2_combout\ & (\gen~3_combout\)) # (!\LessThan4~2_combout\ & ((\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => \gen~3_combout\,
	datad => \LessThan1~1_combout\,
	combout => \nbi[0]~8_combout\);

-- Location: IOIBUF_X38_Y0_N1
\X_Cont[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(3),
	o => \X_Cont[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\X_Cont[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(5),
	o => \X_Cont[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\X_Cont[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(1),
	o => \X_Cont[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\Y_Cont[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(1),
	o => \Y_Cont[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\Y_Cont[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(6),
	o => \Y_Cont[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\r[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(0),
	o => \r[0]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\g[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(5),
	o => \g[5]~input_o\);

-- Location: IOOBUF_X41_Y41_N16
\r_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\r_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\r_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\r_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\r_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\r_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[5]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\r_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\r_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \r_out[7]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\g_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\g_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\g_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\g_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[3]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\g_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\g_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\g_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\g_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[7]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\b_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\b_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\b_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[2]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\b_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\b_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[4]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\b_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\b_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\b_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\VGA_CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_CLK,
	o => \VGA_CLK~input_o\);

-- Location: CLKCTRL_G17
\VGA_CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N8
\X_Cont[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(8),
	o => \X_Cont[8]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\Y_Cont[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(8),
	o => \Y_Cont[8]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\Y_Cont[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(3),
	o => \Y_Cont[3]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\Y_Cont[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(2),
	o => \Y_Cont[2]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\Y_Cont[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(0),
	o => \Y_Cont[0]~input_o\);

-- Location: LCCOMB_X38_Y11_N14
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\Y_Cont[1]~input_o\ & (\Y_Cont[3]~input_o\ & (\Y_Cont[2]~input_o\ & \Y_Cont[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[1]~input_o\,
	datab => \Y_Cont[3]~input_o\,
	datac => \Y_Cont[2]~input_o\,
	datad => \Y_Cont[0]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: IOIBUF_X38_Y41_N8
\Y_Cont[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(5),
	o => \Y_Cont[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\Y_Cont[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(4),
	o => \Y_Cont[4]~input_o\);

-- Location: IOIBUF_X52_Y11_N1
\Y_Cont[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(7),
	o => \Y_Cont[7]~input_o\);

-- Location: LCCOMB_X38_Y11_N8
\LessThan4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\Y_Cont[6]~input_o\ & (\Y_Cont[5]~input_o\ & (\Y_Cont[4]~input_o\ & \Y_Cont[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[6]~input_o\,
	datab => \Y_Cont[5]~input_o\,
	datac => \Y_Cont[4]~input_o\,
	datad => \Y_Cont[7]~input_o\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X38_Y11_N26
\LessThan4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\Y_Cont[8]~input_o\) # ((\LessThan4~0_combout\ & \LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_Cont[8]~input_o\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan4~1_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X37_Y11_N28
\gen~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen~0_combout\ = (\LessThan4~2_combout\) # ((\LessThan1~1_combout\ & !\X_Cont[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \X_Cont[8]~input_o\,
	datad => \LessThan4~2_combout\,
	combout => \gen~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\g[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(0),
	o => \g[0]~input_o\);

-- Location: LCCOMB_X38_Y11_N16
\gi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~0_combout\ = (\reset~input_o\ & \g[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \g[0]~input_o\,
	combout => \gi~0_combout\);

-- Location: FF_X38_Y11_N17
\gi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(0));

-- Location: LCCOMB_X41_Y11_N8
\nri[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[0]~1_combout\ = (\nri[0]~0_combout\ & ((gi(0)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(0),
	combout => \nri[0]~1_combout\);

-- Location: LCCOMB_X38_Y11_N30
\ri~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~0_combout\ = (\r[0]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datac => \reset~input_o\,
	combout => \ri~0_combout\);

-- Location: FF_X38_Y11_N31
\ri[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(0));

-- Location: IOIBUF_X46_Y0_N1
\IMG~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMG,
	o => \IMG~input_o\);

-- Location: FF_X38_Y11_N19
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: FF_X41_Y11_N9
\r_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[0]~1_combout\,
	asdata => ri(0),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[0]~reg0_q\);

-- Location: IOIBUF_X31_Y0_N22
\g[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(1),
	o => \g[1]~input_o\);

-- Location: LCCOMB_X38_Y11_N0
\gi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~1_combout\ = (\reset~input_o\ & \g[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \g[1]~input_o\,
	combout => \gi~1_combout\);

-- Location: FF_X38_Y11_N1
\gi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(1));

-- Location: LCCOMB_X41_Y11_N18
\nri[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[1]~2_combout\ = (\nri[0]~0_combout\ & ((gi(1)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(1),
	combout => \nri[1]~2_combout\);

-- Location: IOIBUF_X31_Y0_N15
\r[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(1),
	o => \r[1]~input_o\);

-- Location: LCCOMB_X38_Y11_N10
\ri~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~1_combout\ = (\r[1]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[1]~input_o\,
	datac => \reset~input_o\,
	combout => \ri~1_combout\);

-- Location: FF_X38_Y11_N11
\ri[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(1));

-- Location: FF_X41_Y11_N19
\r_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[1]~2_combout\,
	asdata => ri(1),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[1]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N1
\g[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(2),
	o => \g[2]~input_o\);

-- Location: LCCOMB_X37_Y11_N6
\gi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~2_combout\ = (\g[2]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g[2]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~2_combout\);

-- Location: FF_X37_Y11_N7
\gi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(2));

-- Location: LCCOMB_X41_Y11_N4
\nri[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[2]~3_combout\ = (\nri[0]~0_combout\ & ((gi(2)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(2),
	combout => \nri[2]~3_combout\);

-- Location: IOIBUF_X52_Y11_N8
\r[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(2),
	o => \r[2]~input_o\);

-- Location: LCCOMB_X38_Y11_N12
\ri~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~2_combout\ = (\reset~input_o\ & \r[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \r[2]~input_o\,
	combout => \ri~2_combout\);

-- Location: FF_X38_Y11_N13
\ri[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(2));

-- Location: FF_X41_Y11_N5
\r_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[2]~3_combout\,
	asdata => ri(2),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[2]~reg0_q\);

-- Location: IOIBUF_X52_Y16_N1
\g[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(3),
	o => \g[3]~input_o\);

-- Location: LCCOMB_X38_Y11_N22
\gi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~3_combout\ = (\reset~input_o\ & \g[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \g[3]~input_o\,
	combout => \gi~3_combout\);

-- Location: FF_X38_Y11_N23
\gi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(3));

-- Location: LCCOMB_X41_Y11_N14
\nri[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[3]~4_combout\ = (\nri[0]~0_combout\ & ((gi(3)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(3),
	combout => \nri[3]~4_combout\);

-- Location: IOIBUF_X31_Y0_N1
\r[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(3),
	o => \r[3]~input_o\);

-- Location: LCCOMB_X38_Y11_N24
\ri~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~3_combout\ = (\reset~input_o\ & \r[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \r[3]~input_o\,
	combout => \ri~3_combout\);

-- Location: FF_X38_Y11_N25
\ri[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(3));

-- Location: FF_X41_Y11_N15
\r_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[3]~4_combout\,
	asdata => ri(3),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[3]~reg0_q\);

-- Location: IOIBUF_X52_Y23_N8
\g[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(4),
	o => \g[4]~input_o\);

-- Location: LCCOMB_X38_Y11_N2
\gi~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~4_combout\ = (\reset~input_o\ & \g[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \g[4]~input_o\,
	combout => \gi~4_combout\);

-- Location: FF_X38_Y11_N3
\gi[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(4));

-- Location: LCCOMB_X41_Y11_N0
\nri[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[4]~5_combout\ = (\nri[0]~0_combout\ & ((gi(4)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(4),
	combout => \nri[4]~5_combout\);

-- Location: IOIBUF_X52_Y15_N8
\r[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(4),
	o => \r[4]~input_o\);

-- Location: LCCOMB_X42_Y11_N10
\ri~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~4_combout\ = (\r[4]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[4]~input_o\,
	datad => \reset~input_o\,
	combout => \ri~4_combout\);

-- Location: FF_X42_Y11_N11
\ri[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(4));

-- Location: FF_X41_Y11_N1
\r_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[4]~5_combout\,
	asdata => ri(4),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[4]~reg0_q\);

-- Location: LCCOMB_X37_Y11_N24
\gi~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~5_combout\ = (\g[5]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g[5]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~5_combout\);

-- Location: FF_X37_Y11_N25
\gi[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(5));

-- Location: LCCOMB_X41_Y11_N2
\nri[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[5]~6_combout\ = (\nri[0]~0_combout\ & ((gi(5)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(5),
	combout => \nri[5]~6_combout\);

-- Location: IOIBUF_X48_Y0_N1
\r[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(5),
	o => \r[5]~input_o\);

-- Location: LCCOMB_X42_Y11_N12
\ri~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~5_combout\ = (\reset~input_o\ & \r[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \r[5]~input_o\,
	combout => \ri~5_combout\);

-- Location: FF_X42_Y11_N13
\ri[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(5));

-- Location: FF_X41_Y11_N3
\r_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[5]~6_combout\,
	asdata => ri(5),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[5]~reg0_q\);

-- Location: IOIBUF_X36_Y41_N8
\g[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(6),
	o => \g[6]~input_o\);

-- Location: LCCOMB_X37_Y11_N18
\gi~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~6_combout\ = (\g[6]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g[6]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~6_combout\);

-- Location: FF_X37_Y11_N19
\gi[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(6));

-- Location: LCCOMB_X41_Y11_N20
\nri[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[6]~7_combout\ = (\nri[0]~0_combout\ & ((gi(6)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(6),
	combout => \nri[6]~7_combout\);

-- Location: IOIBUF_X52_Y10_N8
\r[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(6),
	o => \r[6]~input_o\);

-- Location: LCCOMB_X42_Y11_N30
\ri~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~6_combout\ = (\r[6]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[6]~input_o\,
	datad => \reset~input_o\,
	combout => \ri~6_combout\);

-- Location: FF_X42_Y11_N31
\ri[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(6));

-- Location: FF_X41_Y11_N21
\r_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[6]~7_combout\,
	asdata => ri(6),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[6]~reg0_q\);

-- Location: IOIBUF_X52_Y15_N1
\g[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(7),
	o => \g[7]~input_o\);

-- Location: LCCOMB_X42_Y11_N24
\gi~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~7_combout\ = (\g[7]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g[7]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~7_combout\);

-- Location: FF_X42_Y11_N25
\gi[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \gi~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => gi(7));

-- Location: LCCOMB_X41_Y11_N22
\nri[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nri[7]~8_combout\ = (\nri[0]~0_combout\ & ((gi(7)))) # (!\nri[0]~0_combout\ & (!\gen~0_combout\ & !gi(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nri[0]~0_combout\,
	datab => \gen~0_combout\,
	datad => gi(7),
	combout => \nri[7]~8_combout\);

-- Location: IOIBUF_X52_Y12_N8
\r[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(7),
	o => \r[7]~input_o\);

-- Location: LCCOMB_X42_Y11_N18
\ri~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~7_combout\ = (\reset~input_o\ & \r[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \r[7]~input_o\,
	combout => \ri~7_combout\);

-- Location: FF_X42_Y11_N19
\ri[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ri~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ri(7));

-- Location: FF_X41_Y11_N23
\r_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nri[7]~8_combout\,
	asdata => ri(7),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_out[7]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N8
\X_Cont[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(7),
	o => \X_Cont[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\X_Cont[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(0),
	o => \X_Cont[0]~input_o\);

-- Location: LCCOMB_X38_Y11_N18
\LessThan6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\X_Cont[1]~input_o\ & \X_Cont[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[1]~input_o\,
	datab => \X_Cont[0]~input_o\,
	combout => \LessThan6~0_combout\);

-- Location: IOIBUF_X46_Y0_N8
\X_Cont[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(2),
	o => \X_Cont[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\X_Cont[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(4),
	o => \X_Cont[4]~input_o\);

-- Location: LCCOMB_X38_Y11_N20
\LessThan6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\X_Cont[4]~input_o\) # ((\X_Cont[3]~input_o\ & ((\LessThan6~0_combout\) # (\X_Cont[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[3]~input_o\,
	datab => \LessThan6~0_combout\,
	datac => \X_Cont[2]~input_o\,
	datad => \X_Cont[4]~input_o\,
	combout => \LessThan6~1_combout\);

-- Location: IOIBUF_X52_Y13_N1
\X_Cont[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(6),
	o => \X_Cont[6]~input_o\);

-- Location: LCCOMB_X37_Y11_N0
\LessThan6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\X_Cont[7]~input_o\ & ((\X_Cont[6]~input_o\) # ((\X_Cont[5]~input_o\ & \LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[5]~input_o\,
	datab => \X_Cont[7]~input_o\,
	datac => \LessThan6~1_combout\,
	datad => \X_Cont[6]~input_o\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X37_Y11_N26
\ngi[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[0]~12_combout\ = (!\gen~3_combout\ & (\LessThan4~2_combout\ & ((\LessThan6~2_combout\) # (\X_Cont[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen~3_combout\,
	datab => \LessThan6~2_combout\,
	datac => \X_Cont[8]~input_o\,
	datad => \LessThan4~2_combout\,
	combout => \ngi[0]~12_combout\);

-- Location: LCCOMB_X37_Y11_N16
\ngi[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[0]~2_combout\ = (\ngi[0]~12_combout\) # ((\LessThan1~1_combout\ & (!\LessThan4~2_combout\ & !\X_Cont[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan4~2_combout\,
	datac => \ngi[0]~12_combout\,
	datad => \X_Cont[8]~input_o\,
	combout => \ngi[0]~2_combout\);

-- Location: LCCOMB_X42_Y11_N16
\ngi[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[0]~3_combout\ = (\state~q\ & ((\ngi[0]~2_combout\ & ((gi(0)))) # (!\ngi[0]~2_combout\ & (!\gen~0_combout\ & !gi(0))))) # (!\state~q\ & (((gi(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \ngi[0]~2_combout\,
	datac => \gen~0_combout\,
	datad => gi(0),
	combout => \ngi[0]~3_combout\);

-- Location: FF_X42_Y11_N17
\g_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[0]~3_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[0]~reg0_q\);

-- Location: LCCOMB_X42_Y11_N26
\ngi[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[1]~4_combout\ = (\state~q\ & ((\ngi[0]~2_combout\ & ((gi(1)))) # (!\ngi[0]~2_combout\ & (!\gen~0_combout\ & !gi(1))))) # (!\state~q\ & (((gi(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \ngi[0]~2_combout\,
	datac => \gen~0_combout\,
	datad => gi(1),
	combout => \ngi[1]~4_combout\);

-- Location: FF_X42_Y11_N27
\g_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[1]~4_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[1]~reg0_q\);

-- Location: LCCOMB_X38_Y11_N4
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\) # (((!\X_Cont[4]~input_o\) # (!\X_Cont[2]~input_o\)) # (!\LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan6~0_combout\,
	datac => \X_Cont[2]~input_o\,
	datad => \X_Cont[4]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y11_N6
\ngi[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[0]~5_combout\ = ((!\LessThan4~2_combout\ & (!\X_Cont[8]~input_o\ & \LessThan1~1_combout\))) # (!\state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \X_Cont[8]~input_o\,
	datac => \LessThan1~1_combout\,
	datad => \state~q\,
	combout => \ngi[0]~5_combout\);

-- Location: LCCOMB_X37_Y11_N8
\ngi[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[2]~6_combout\ = (gi(2) & (((\ngi[0]~12_combout\) # (\ngi[0]~5_combout\)))) # (!gi(2) & (!\gen~0_combout\ & (!\ngi[0]~12_combout\ & !\ngi[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(2),
	datab => \gen~0_combout\,
	datac => \ngi[0]~12_combout\,
	datad => \ngi[0]~5_combout\,
	combout => \ngi[2]~6_combout\);

-- Location: FF_X37_Y11_N9
\g_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[2]~6_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[2]~reg0_q\);

-- Location: LCCOMB_X42_Y11_N4
\ngi[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[3]~7_combout\ = (\state~q\ & ((gi(3) & ((\ngi[0]~2_combout\))) # (!gi(3) & (!\gen~0_combout\ & !\ngi[0]~2_combout\)))) # (!\state~q\ & (gi(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => gi(3),
	datac => \gen~0_combout\,
	datad => \ngi[0]~2_combout\,
	combout => \ngi[3]~7_combout\);

-- Location: FF_X42_Y11_N5
\g_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[3]~7_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[3]~reg0_q\);

-- Location: LCCOMB_X42_Y11_N22
\ngi[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[4]~8_combout\ = (\state~q\ & ((\ngi[0]~2_combout\ & ((gi(4)))) # (!\ngi[0]~2_combout\ & (!\gen~0_combout\ & !gi(4))))) # (!\state~q\ & (((gi(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \ngi[0]~2_combout\,
	datac => \gen~0_combout\,
	datad => gi(4),
	combout => \ngi[4]~8_combout\);

-- Location: FF_X42_Y11_N23
\g_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[4]~8_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[4]~reg0_q\);

-- Location: LCCOMB_X37_Y11_N2
\ngi[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[5]~9_combout\ = (\ngi[0]~12_combout\ & (gi(5))) # (!\ngi[0]~12_combout\ & ((gi(5) & ((\ngi[0]~5_combout\))) # (!gi(5) & (!\gen~0_combout\ & !\ngi[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ngi[0]~12_combout\,
	datab => gi(5),
	datac => \gen~0_combout\,
	datad => \ngi[0]~5_combout\,
	combout => \ngi[5]~9_combout\);

-- Location: FF_X37_Y11_N3
\g_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[5]~9_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[5]~reg0_q\);

-- Location: LCCOMB_X37_Y11_N20
\ngi[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[6]~10_combout\ = (\ngi[0]~12_combout\ & (gi(6))) # (!\ngi[0]~12_combout\ & ((gi(6) & ((\ngi[0]~5_combout\))) # (!gi(6) & (!\gen~0_combout\ & !\ngi[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ngi[0]~12_combout\,
	datab => gi(6),
	datac => \gen~0_combout\,
	datad => \ngi[0]~5_combout\,
	combout => \ngi[6]~10_combout\);

-- Location: FF_X37_Y11_N21
\g_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[6]~10_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[6]~reg0_q\);

-- Location: LCCOMB_X42_Y11_N8
\ngi[7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ngi[7]~11_combout\ = (\state~q\ & ((gi(7) & ((\ngi[0]~2_combout\))) # (!gi(7) & (!\gen~0_combout\ & !\ngi[0]~2_combout\)))) # (!\state~q\ & (gi(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => gi(7),
	datac => \gen~0_combout\,
	datad => \ngi[0]~2_combout\,
	combout => \ngi[7]~11_combout\);

-- Location: FF_X42_Y11_N9
\g_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \ngi[7]~11_combout\,
	sclr => \ALT_INV_IMG~input_o\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[7]~reg0_q\);

-- Location: LCCOMB_X37_Y11_N30
\nbi[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[0]~9_combout\ = (\nbi[0]~8_combout\ & ((\X_Cont[8]~input_o\ & ((\LessThan4~2_combout\))) # (!\X_Cont[8]~input_o\ & ((\LessThan6~2_combout\) # (!\LessThan4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nbi[0]~8_combout\,
	datab => \LessThan6~2_combout\,
	datac => \X_Cont[8]~input_o\,
	datad => \LessThan4~2_combout\,
	combout => \nbi[0]~9_combout\);

-- Location: LCCOMB_X41_Y11_N24
\nbi[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[0]~0_combout\ = (gi(0) & ((\nbi[0]~9_combout\))) # (!gi(0) & (!\gen~0_combout\ & !\nbi[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(0),
	datab => \gen~0_combout\,
	datad => \nbi[0]~9_combout\,
	combout => \nbi[0]~0_combout\);

-- Location: IOIBUF_X50_Y0_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X42_Y11_N20
\bi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~0_combout\ = (\b[0]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \reset~input_o\,
	combout => \bi~0_combout\);

-- Location: FF_X42_Y11_N21
\bi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(0));

-- Location: FF_X41_Y11_N25
\b_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[0]~0_combout\,
	asdata => bi(0),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[0]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N26
\nbi[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[1]~1_combout\ = (gi(1) & ((\nbi[0]~9_combout\))) # (!gi(1) & (!\gen~0_combout\ & !\nbi[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(1),
	datab => \gen~0_combout\,
	datad => \nbi[0]~9_combout\,
	combout => \nbi[1]~1_combout\);

-- Location: IOIBUF_X52_Y19_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X42_Y11_N14
\bi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~1_combout\ = (\reset~input_o\ & \b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \b[1]~input_o\,
	combout => \bi~1_combout\);

-- Location: FF_X42_Y11_N15
\bi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(1));

-- Location: FF_X41_Y11_N27
\b_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[1]~1_combout\,
	asdata => bi(1),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[1]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N12
\nbi[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[2]~2_combout\ = (gi(2) & ((\nbi[0]~9_combout\))) # (!gi(2) & (!\gen~0_combout\ & !\nbi[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(2),
	datab => \gen~0_combout\,
	datad => \nbi[0]~9_combout\,
	combout => \nbi[2]~2_combout\);

-- Location: IOIBUF_X43_Y0_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X42_Y11_N0
\bi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~2_combout\ = (\b[2]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[2]~input_o\,
	datad => \reset~input_o\,
	combout => \bi~2_combout\);

-- Location: FF_X42_Y11_N1
\bi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(2));

-- Location: FF_X41_Y11_N13
\b_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[2]~2_combout\,
	asdata => bi(2),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[2]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N6
\nbi[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[3]~3_combout\ = (\nbi[0]~9_combout\ & ((gi(3)))) # (!\nbi[0]~9_combout\ & (!\gen~0_combout\ & !gi(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nbi[0]~9_combout\,
	datab => \gen~0_combout\,
	datad => gi(3),
	combout => \nbi[3]~3_combout\);

-- Location: IOIBUF_X52_Y10_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X42_Y11_N2
\bi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~3_combout\ = (\b[3]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[3]~input_o\,
	datad => \reset~input_o\,
	combout => \bi~3_combout\);

-- Location: FF_X42_Y11_N3
\bi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(3));

-- Location: FF_X41_Y11_N7
\b_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[3]~3_combout\,
	asdata => bi(3),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[3]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N16
\nbi[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[4]~4_combout\ = (gi(4) & ((\nbi[0]~9_combout\))) # (!gi(4) & (!\gen~0_combout\ & !\nbi[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(4),
	datab => \gen~0_combout\,
	datad => \nbi[0]~9_combout\,
	combout => \nbi[4]~4_combout\);

-- Location: IOIBUF_X41_Y0_N22
\b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X42_Y11_N28
\bi~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~4_combout\ = (\reset~input_o\ & \b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \b[4]~input_o\,
	combout => \bi~4_combout\);

-- Location: FF_X42_Y11_N29
\bi[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(4));

-- Location: FF_X41_Y11_N17
\b_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[4]~4_combout\,
	asdata => bi(4),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[4]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N10
\nbi[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[5]~5_combout\ = (\nbi[0]~9_combout\ & ((gi(5)))) # (!\nbi[0]~9_combout\ & (!\gen~0_combout\ & !gi(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nbi[0]~9_combout\,
	datab => \gen~0_combout\,
	datad => gi(5),
	combout => \nbi[5]~5_combout\);

-- Location: IOIBUF_X48_Y0_N8
\b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X42_Y11_N6
\bi~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~5_combout\ = (\reset~input_o\ & \b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \b[5]~input_o\,
	combout => \bi~5_combout\);

-- Location: FF_X42_Y11_N7
\bi[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(5));

-- Location: FF_X41_Y11_N11
\b_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[5]~5_combout\,
	asdata => bi(5),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[5]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N28
\nbi[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[6]~6_combout\ = (gi(6) & (\nbi[0]~9_combout\)) # (!gi(6) & (!\nbi[0]~9_combout\ & !\gen~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(6),
	datab => \nbi[0]~9_combout\,
	datad => \gen~0_combout\,
	combout => \nbi[6]~6_combout\);

-- Location: IOIBUF_X52_Y13_N8
\b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X39_Y11_N24
\bi~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~6_combout\ = (\reset~input_o\ & \b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \b[6]~input_o\,
	combout => \bi~6_combout\);

-- Location: FF_X39_Y11_N25
\bi[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(6));

-- Location: FF_X41_Y11_N29
\b_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[6]~6_combout\,
	asdata => bi(6),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[6]~reg0_q\);

-- Location: LCCOMB_X41_Y11_N30
\nbi[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nbi[7]~7_combout\ = (\nbi[0]~9_combout\ & ((gi(7)))) # (!\nbi[0]~9_combout\ & (!\gen~0_combout\ & !gi(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nbi[0]~9_combout\,
	datab => \gen~0_combout\,
	datad => gi(7),
	combout => \nbi[7]~7_combout\);

-- Location: IOIBUF_X52_Y21_N22
\b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X39_Y11_N18
\bi~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bi~7_combout\ = (\reset~input_o\ & \b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \b[7]~input_o\,
	combout => \bi~7_combout\);

-- Location: FF_X39_Y11_N19
\bi[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \bi~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bi(7));

-- Location: FF_X41_Y11_N31
\b_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \nbi[7]~7_combout\,
	asdata => bi(7),
	sclr => \ALT_INV_IMG~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[7]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N8
\VGA_HS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_HS,
	o => \VGA_HS~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\VGA_VS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_VS,
	o => \VGA_VS~input_o\);

ww_r_out(0) <= \r_out[0]~output_o\;

ww_r_out(1) <= \r_out[1]~output_o\;

ww_r_out(2) <= \r_out[2]~output_o\;

ww_r_out(3) <= \r_out[3]~output_o\;

ww_r_out(4) <= \r_out[4]~output_o\;

ww_r_out(5) <= \r_out[5]~output_o\;

ww_r_out(6) <= \r_out[6]~output_o\;

ww_r_out(7) <= \r_out[7]~output_o\;

ww_g_out(0) <= \g_out[0]~output_o\;

ww_g_out(1) <= \g_out[1]~output_o\;

ww_g_out(2) <= \g_out[2]~output_o\;

ww_g_out(3) <= \g_out[3]~output_o\;

ww_g_out(4) <= \g_out[4]~output_o\;

ww_g_out(5) <= \g_out[5]~output_o\;

ww_g_out(6) <= \g_out[6]~output_o\;

ww_g_out(7) <= \g_out[7]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;

ww_b_out(4) <= \b_out[4]~output_o\;

ww_b_out(5) <= \b_out[5]~output_o\;

ww_b_out(6) <= \b_out[6]~output_o\;

ww_b_out(7) <= \b_out[7]~output_o\;
END structure;


