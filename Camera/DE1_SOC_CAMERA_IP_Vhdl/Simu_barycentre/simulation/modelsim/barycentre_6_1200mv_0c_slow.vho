-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Full Version"

-- DATE "12/13/2018 21:27:54"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	barycentre IS
    PORT (
	IMG : IN std_logic;
	reset : IN std_logic;
	VGA_CLK : IN std_logic;
	X_Cont : IN std_logic_vector(8 DOWNTO 0);
	Y_Cont : IN std_logic_vector(8 DOWNTO 0);
	r_bary : IN std_logic_vector(7 DOWNTO 0);
	g_bary : IN std_logic_vector(7 DOWNTO 0);
	b_bary : IN std_logic_vector(7 DOWNTO 0);
	r_bary_out : OUT std_logic_vector(7 DOWNTO 0);
	g_bary_out : OUT std_logic_vector(7 DOWNTO 0);
	b_bary_out : OUT std_logic_vector(7 DOWNTO 0);
	X : OUT std_logic_vector(8 DOWNTO 0);
	Y : OUT std_logic_vector(8 DOWNTO 0)
	);
END barycentre;

-- Design Ports Information
-- b_bary[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[1]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[5]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[6]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary_out[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[4]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary_out[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[0]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_bary_out[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_Cont[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[5]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_Cont[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[1]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_bary[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMG	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_bary[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF barycentre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IMG : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_X_Cont : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Y_Cont : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_r_bary : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_bary : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_bary : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_bary_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g_bary_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_bary_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b_bary[0]~input_o\ : std_logic;
SIGNAL \b_bary[1]~input_o\ : std_logic;
SIGNAL \b_bary[2]~input_o\ : std_logic;
SIGNAL \b_bary[3]~input_o\ : std_logic;
SIGNAL \b_bary[4]~input_o\ : std_logic;
SIGNAL \b_bary[5]~input_o\ : std_logic;
SIGNAL \b_bary[6]~input_o\ : std_logic;
SIGNAL \b_bary[7]~input_o\ : std_logic;
SIGNAL \r_bary_out[0]~output_o\ : std_logic;
SIGNAL \r_bary_out[1]~output_o\ : std_logic;
SIGNAL \r_bary_out[2]~output_o\ : std_logic;
SIGNAL \r_bary_out[3]~output_o\ : std_logic;
SIGNAL \r_bary_out[4]~output_o\ : std_logic;
SIGNAL \r_bary_out[5]~output_o\ : std_logic;
SIGNAL \r_bary_out[6]~output_o\ : std_logic;
SIGNAL \r_bary_out[7]~output_o\ : std_logic;
SIGNAL \g_bary_out[0]~output_o\ : std_logic;
SIGNAL \g_bary_out[1]~output_o\ : std_logic;
SIGNAL \g_bary_out[2]~output_o\ : std_logic;
SIGNAL \g_bary_out[3]~output_o\ : std_logic;
SIGNAL \g_bary_out[4]~output_o\ : std_logic;
SIGNAL \g_bary_out[5]~output_o\ : std_logic;
SIGNAL \g_bary_out[6]~output_o\ : std_logic;
SIGNAL \g_bary_out[7]~output_o\ : std_logic;
SIGNAL \b_bary_out[0]~output_o\ : std_logic;
SIGNAL \b_bary_out[1]~output_o\ : std_logic;
SIGNAL \b_bary_out[2]~output_o\ : std_logic;
SIGNAL \b_bary_out[3]~output_o\ : std_logic;
SIGNAL \b_bary_out[4]~output_o\ : std_logic;
SIGNAL \b_bary_out[5]~output_o\ : std_logic;
SIGNAL \b_bary_out[6]~output_o\ : std_logic;
SIGNAL \b_bary_out[7]~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \X[4]~output_o\ : std_logic;
SIGNAL \X[5]~output_o\ : std_logic;
SIGNAL \X[6]~output_o\ : std_logic;
SIGNAL \X[7]~output_o\ : std_logic;
SIGNAL \X[8]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \VGA_CLK~input_o\ : std_logic;
SIGNAL \VGA_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \IMG~input_o\ : std_logic;
SIGNAL \state~8_combout\ : std_logic;
SIGNAL \state.colonne~q\ : std_logic;
SIGNAL \Y_Cont[7]~input_o\ : std_logic;
SIGNAL \Y_Cont[4]~input_o\ : std_logic;
SIGNAL \Y_Cont[5]~input_o\ : std_logic;
SIGNAL \Y_Cont[3]~input_o\ : std_logic;
SIGNAL \Y_Cont[6]~input_o\ : std_logic;
SIGNAL \proc_H~1_combout\ : std_logic;
SIGNAL \Y_Cont[8]~input_o\ : std_logic;
SIGNAL \Y_Cont[1]~input_o\ : std_logic;
SIGNAL \Y_Cont[2]~input_o\ : std_logic;
SIGNAL \Y_Cont[0]~input_o\ : std_logic;
SIGNAL \proc_H~0_combout\ : std_logic;
SIGNAL \proc_H~2_combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \state.ligne~q\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state.calcul_barycentre~q\ : std_logic;
SIGNAL \g_bary[4]~input_o\ : std_logic;
SIGNAL \gi~7_combout\ : std_logic;
SIGNAL \g_bary[6]~input_o\ : std_logic;
SIGNAL \gi~5_combout\ : std_logic;
SIGNAL \g_bary[5]~input_o\ : std_logic;
SIGNAL \gi~6_combout\ : std_logic;
SIGNAL \g_bary[7]~input_o\ : std_logic;
SIGNAL \gi~4_combout\ : std_logic;
SIGNAL \next_sum_Hpx~1_combout\ : std_logic;
SIGNAL \X_Cont[8]~input_o\ : std_logic;
SIGNAL \X_Cont[5]~input_o\ : std_logic;
SIGNAL \X_Cont[7]~input_o\ : std_logic;
SIGNAL \X_Cont[6]~input_o\ : std_logic;
SIGNAL \X_Cont[4]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \X_Cont[1]~input_o\ : std_logic;
SIGNAL \X_Cont[0]~input_o\ : std_logic;
SIGNAL \X_Cont[2]~input_o\ : std_logic;
SIGNAL \X_Cont[3]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \g_bary[0]~input_o\ : std_logic;
SIGNAL \gi~3_combout\ : std_logic;
SIGNAL \g_bary[2]~input_o\ : std_logic;
SIGNAL \gi~1_combout\ : std_logic;
SIGNAL \g_bary[1]~input_o\ : std_logic;
SIGNAL \gi~2_combout\ : std_logic;
SIGNAL \g_bary[3]~input_o\ : std_logic;
SIGNAL \gi~0_combout\ : std_logic;
SIGNAL \next_sum_Hpx~0_combout\ : std_logic;
SIGNAL \next_sum_Hpx~2_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~49_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~60\ : std_logic;
SIGNAL \Add1~61_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_cout\ : std_logic;
SIGNAL \LessThan1~6_cout\ : std_logic;
SIGNAL \LessThan1~8_cout\ : std_logic;
SIGNAL \LessThan1~10_cout\ : std_logic;
SIGNAL \LessThan1~12_cout\ : std_logic;
SIGNAL \LessThan1~14_cout\ : std_logic;
SIGNAL \LessThan1~16_cout\ : std_logic;
SIGNAL \LessThan1~18_cout\ : std_logic;
SIGNAL \LessThan1~20_cout\ : std_logic;
SIGNAL \LessThan1~22_cout\ : std_logic;
SIGNAL \LessThan1~24_cout\ : std_logic;
SIGNAL \LessThan1~26_cout\ : std_logic;
SIGNAL \LessThan1~28_cout\ : std_logic;
SIGNAL \LessThan1~30_cout\ : std_logic;
SIGNAL \LessThan1~32_cout\ : std_logic;
SIGNAL \LessThan1~34_cout\ : std_logic;
SIGNAL \LessThan1~36_cout\ : std_logic;
SIGNAL \LessThan1~38_cout\ : std_logic;
SIGNAL \LessThan1~39_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~36\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~40\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~44\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add4~47_combout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~57_combout\ : std_logic;
SIGNAL \Add4~59_combout\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~43_combout\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~41_combout\ : std_logic;
SIGNAL \Add4~49_combout\ : std_logic;
SIGNAL \Add4~39_combout\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~37_combout\ : std_logic;
SIGNAL \Add4~51_combout\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~33_combout\ : std_logic;
SIGNAL \Add4~53_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~27_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~29_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~31_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~19_cout\ : std_logic;
SIGNAL \LessThan2~21_cout\ : std_logic;
SIGNAL \LessThan2~23_cout\ : std_logic;
SIGNAL \LessThan2~25_cout\ : std_logic;
SIGNAL \LessThan2~27_cout\ : std_logic;
SIGNAL \LessThan2~29_cout\ : std_logic;
SIGNAL \LessThan2~31_cout\ : std_logic;
SIGNAL \LessThan2~33_cout\ : std_logic;
SIGNAL \LessThan2~35_cout\ : std_logic;
SIGNAL \LessThan2~36_combout\ : std_logic;
SIGNAL \LessThan2~38_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~52\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~49_combout\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~51_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add5~53_combout\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~55_combout\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~57_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~27_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~29_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~31_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~33_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \LessThan1~41_combout\ : std_logic;
SIGNAL \LessThan3~2_cout\ : std_logic;
SIGNAL \LessThan3~4_cout\ : std_logic;
SIGNAL \LessThan3~6_cout\ : std_logic;
SIGNAL \LessThan3~8_cout\ : std_logic;
SIGNAL \LessThan3~10_cout\ : std_logic;
SIGNAL \LessThan3~12_cout\ : std_logic;
SIGNAL \LessThan3~14_cout\ : std_logic;
SIGNAL \LessThan3~16_cout\ : std_logic;
SIGNAL \LessThan3~18_cout\ : std_logic;
SIGNAL \LessThan3~20_cout\ : std_logic;
SIGNAL \LessThan3~22_cout\ : std_logic;
SIGNAL \LessThan3~24_cout\ : std_logic;
SIGNAL \LessThan3~26_cout\ : std_logic;
SIGNAL \LessThan3~28_cout\ : std_logic;
SIGNAL \LessThan3~30_cout\ : std_logic;
SIGNAL \LessThan3~32_cout\ : std_logic;
SIGNAL \LessThan3~34_cout\ : std_logic;
SIGNAL \LessThan3~36_cout\ : std_logic;
SIGNAL \LessThan3~37_combout\ : std_logic;
SIGNAL \LessThan3~39_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \Add5~61_combout\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~40\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~44\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~48\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~47_combout\ : std_logic;
SIGNAL \Add6~49_combout\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~61_combout\ : std_logic;
SIGNAL \Add6~63_combout\ : std_logic;
SIGNAL \Add6~45_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~43_combout\ : std_logic;
SIGNAL \Add6~55_combout\ : std_logic;
SIGNAL \Add6~41_combout\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~39_combout\ : std_logic;
SIGNAL \Add6~57_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~27_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~29_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~31_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~33_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~37_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \LessThan1~42_combout\ : std_logic;
SIGNAL \LessThan4~2_cout\ : std_logic;
SIGNAL \LessThan4~4_cout\ : std_logic;
SIGNAL \LessThan4~6_cout\ : std_logic;
SIGNAL \LessThan4~8_cout\ : std_logic;
SIGNAL \LessThan4~10_cout\ : std_logic;
SIGNAL \LessThan4~12_cout\ : std_logic;
SIGNAL \LessThan4~14_cout\ : std_logic;
SIGNAL \LessThan4~16_cout\ : std_logic;
SIGNAL \LessThan4~18_cout\ : std_logic;
SIGNAL \LessThan4~20_cout\ : std_logic;
SIGNAL \LessThan4~22_cout\ : std_logic;
SIGNAL \LessThan4~24_cout\ : std_logic;
SIGNAL \LessThan4~26_cout\ : std_logic;
SIGNAL \LessThan4~28_cout\ : std_logic;
SIGNAL \LessThan4~30_cout\ : std_logic;
SIGNAL \LessThan4~32_cout\ : std_logic;
SIGNAL \LessThan4~34_cout\ : std_logic;
SIGNAL \LessThan4~36_cout\ : std_logic;
SIGNAL \LessThan4~37_combout\ : std_logic;
SIGNAL \LessThan4~39_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add6~65_combout\ : std_logic;
SIGNAL \Add6~64_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \temp1~17_combout\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \temp1~14_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \temp1~15_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \temp1~16_combout\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \temp1~0_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \temp1~1_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \temp1~2_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \temp1~3_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \temp1~4_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \temp1~5_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \temp1~6_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \temp1~7_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \temp1~8_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \temp1~9_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \temp1~10_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \temp1~11_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \temp1~12_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \temp1~13_combout\ : std_logic;
SIGNAL \LessThan5~2_cout\ : std_logic;
SIGNAL \LessThan5~4_cout\ : std_logic;
SIGNAL \LessThan5~6_cout\ : std_logic;
SIGNAL \LessThan5~8_cout\ : std_logic;
SIGNAL \LessThan5~10_cout\ : std_logic;
SIGNAL \LessThan5~12_cout\ : std_logic;
SIGNAL \LessThan5~14_cout\ : std_logic;
SIGNAL \LessThan5~16_cout\ : std_logic;
SIGNAL \LessThan5~18_cout\ : std_logic;
SIGNAL \LessThan5~20_cout\ : std_logic;
SIGNAL \LessThan5~22_cout\ : std_logic;
SIGNAL \LessThan5~24_cout\ : std_logic;
SIGNAL \LessThan5~26_cout\ : std_logic;
SIGNAL \LessThan5~28_cout\ : std_logic;
SIGNAL \LessThan5~30_cout\ : std_logic;
SIGNAL \LessThan5~32_cout\ : std_logic;
SIGNAL \LessThan5~34_cout\ : std_logic;
SIGNAL \LessThan5~36_cout\ : std_logic;
SIGNAL \LessThan5~37_combout\ : std_logic;
SIGNAL \LessThan5~39_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \temp1~35_combout\ : std_logic;
SIGNAL \temp1~34_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \temp1~38_combout\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \LessThan6~39_combout\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \temp1~33_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \temp1~36_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \temp1~37_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \temp1~18_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \temp1~19_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \temp1~20_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \temp1~21_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \temp1~22_combout\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \temp1~23_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \temp1~24_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \temp1~25_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \temp1~26_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \temp1~27_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \temp1~28_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \temp1~29_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \temp1~30_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \temp1~31_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \temp1~32_combout\ : std_logic;
SIGNAL \LessThan1~43_combout\ : std_logic;
SIGNAL \LessThan6~2_cout\ : std_logic;
SIGNAL \LessThan6~4_cout\ : std_logic;
SIGNAL \LessThan6~6_cout\ : std_logic;
SIGNAL \LessThan6~8_cout\ : std_logic;
SIGNAL \LessThan6~10_cout\ : std_logic;
SIGNAL \LessThan6~12_cout\ : std_logic;
SIGNAL \LessThan6~14_cout\ : std_logic;
SIGNAL \LessThan6~16_cout\ : std_logic;
SIGNAL \LessThan6~18_cout\ : std_logic;
SIGNAL \LessThan6~20_cout\ : std_logic;
SIGNAL \LessThan6~22_cout\ : std_logic;
SIGNAL \LessThan6~24_cout\ : std_logic;
SIGNAL \LessThan6~26_cout\ : std_logic;
SIGNAL \LessThan6~28_cout\ : std_logic;
SIGNAL \LessThan6~30_cout\ : std_logic;
SIGNAL \LessThan6~32_cout\ : std_logic;
SIGNAL \LessThan6~34_cout\ : std_logic;
SIGNAL \LessThan6~36_cout\ : std_logic;
SIGNAL \LessThan6~37_combout\ : std_logic;
SIGNAL \LessThan6~40_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~53_combout\ : std_logic;
SIGNAL \temp1~39_combout\ : std_logic;
SIGNAL \Add9~54\ : std_logic;
SIGNAL \Add9~56\ : std_logic;
SIGNAL \Add9~57_combout\ : std_logic;
SIGNAL \Add9~55_combout\ : std_logic;
SIGNAL \LessThan7~40_combout\ : std_logic;
SIGNAL \Add9~58\ : std_logic;
SIGNAL \Add9~59_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~60\ : std_logic;
SIGNAL \Add9~62\ : std_logic;
SIGNAL \Add9~63_combout\ : std_logic;
SIGNAL \Add9~61_combout\ : std_logic;
SIGNAL \Add9~64\ : std_logic;
SIGNAL \Add9~65_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~67_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Add9~33_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add9~35_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~37_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~39_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~41_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~43_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~45_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~47_combout\ : std_logic;
SIGNAL \LessThan1~44_combout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~17_cout\ : std_logic;
SIGNAL \LessThan7~19_cout\ : std_logic;
SIGNAL \LessThan7~21_cout\ : std_logic;
SIGNAL \LessThan7~23_cout\ : std_logic;
SIGNAL \LessThan7~25_cout\ : std_logic;
SIGNAL \LessThan7~27_cout\ : std_logic;
SIGNAL \LessThan7~29_cout\ : std_logic;
SIGNAL \LessThan7~31_cout\ : std_logic;
SIGNAL \LessThan7~33_cout\ : std_logic;
SIGNAL \LessThan7~35_cout\ : std_logic;
SIGNAL \LessThan7~37_cout\ : std_logic;
SIGNAL \LessThan7~38_combout\ : std_logic;
SIGNAL \LessThan7~41_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~25\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~29\ : std_logic;
SIGNAL \Add10~31\ : std_logic;
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \Add10~57_combout\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add10~59_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~61_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add10~63_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add10~64_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add10~65_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~66_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~67_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~68_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~69_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add10~70_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add10~71_combout\ : std_logic;
SIGNAL \LessThan8~3_cout\ : std_logic;
SIGNAL \LessThan8~5_cout\ : std_logic;
SIGNAL \LessThan8~7_cout\ : std_logic;
SIGNAL \LessThan8~9_cout\ : std_logic;
SIGNAL \LessThan8~11_cout\ : std_logic;
SIGNAL \LessThan8~13_cout\ : std_logic;
SIGNAL \LessThan8~15_cout\ : std_logic;
SIGNAL \LessThan8~17_cout\ : std_logic;
SIGNAL \LessThan8~19_cout\ : std_logic;
SIGNAL \LessThan8~21_cout\ : std_logic;
SIGNAL \LessThan8~23_cout\ : std_logic;
SIGNAL \LessThan8~25_cout\ : std_logic;
SIGNAL \LessThan8~27_cout\ : std_logic;
SIGNAL \LessThan8~29_cout\ : std_logic;
SIGNAL \LessThan8~31_cout\ : std_logic;
SIGNAL \LessThan8~33_cout\ : std_logic;
SIGNAL \LessThan8~35_cout\ : std_logic;
SIGNAL \LessThan8~37_cout\ : std_logic;
SIGNAL \LessThan8~38_combout\ : std_logic;
SIGNAL \Add10~33\ : std_logic;
SIGNAL \Add10~35_combout\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \Add9~74_combout\ : std_logic;
SIGNAL \Add9~69_combout\ : std_logic;
SIGNAL \Add9~68_combout\ : std_logic;
SIGNAL \Add10~36\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~40\ : std_logic;
SIGNAL \Add10~42\ : std_logic;
SIGNAL \Add10~43_combout\ : std_logic;
SIGNAL \Add10~55_combout\ : std_logic;
SIGNAL \Add9~70_combout\ : std_logic;
SIGNAL \Add9~71_combout\ : std_logic;
SIGNAL \Add9~72_combout\ : std_logic;
SIGNAL \Add9~73_combout\ : std_logic;
SIGNAL \Add10~44\ : std_logic;
SIGNAL \Add10~46\ : std_logic;
SIGNAL \Add10~48\ : std_logic;
SIGNAL \Add10~50\ : std_logic;
SIGNAL \Add10~51_combout\ : std_logic;
SIGNAL \Add10~53_combout\ : std_logic;
SIGNAL \Add10~39_combout\ : std_logic;
SIGNAL \Add10~41_combout\ : std_logic;
SIGNAL \Add10~37_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Add10~45_combout\ : std_logic;
SIGNAL \Add10~72_combout\ : std_logic;
SIGNAL \Add10~49_combout\ : std_logic;
SIGNAL \Add10~74_combout\ : std_logic;
SIGNAL \Add10~47_combout\ : std_logic;
SIGNAL \Add10~73_combout\ : std_logic;
SIGNAL \LessThan8~40_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector97~1_combout\ : std_logic;
SIGNAL \Add20~1_cout\ : std_logic;
SIGNAL \Add20~3\ : std_logic;
SIGNAL \Add20~5\ : std_logic;
SIGNAL \Add20~7\ : std_logic;
SIGNAL \Add20~9\ : std_logic;
SIGNAL \Add20~11\ : std_logic;
SIGNAL \Add20~13\ : std_logic;
SIGNAL \Add20~14_combout\ : std_logic;
SIGNAL \Add20~12_combout\ : std_logic;
SIGNAL \Add20~10_combout\ : std_logic;
SIGNAL \Add20~8_combout\ : std_logic;
SIGNAL \Add20~6_combout\ : std_logic;
SIGNAL \Add20~4_combout\ : std_logic;
SIGNAL \Add20~2_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector98~1_combout\ : std_logic;
SIGNAL \Add10~77_combout\ : std_logic;
SIGNAL \Add10~76_combout\ : std_logic;
SIGNAL \Add10~75_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~29\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~33\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~37\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~41\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~45\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~49\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~52_combout\ : std_logic;
SIGNAL \Add11~50_combout\ : std_logic;
SIGNAL \Add11~44_combout\ : std_logic;
SIGNAL \Add11~42_combout\ : std_logic;
SIGNAL \Add11~48_combout\ : std_logic;
SIGNAL \Add11~46_combout\ : std_logic;
SIGNAL \Selector98~4_combout\ : std_logic;
SIGNAL \Add11~38_combout\ : std_logic;
SIGNAL \Add11~40_combout\ : std_logic;
SIGNAL \Add11~34_combout\ : std_logic;
SIGNAL \Add11~36_combout\ : std_logic;
SIGNAL \Selector98~3_combout\ : std_logic;
SIGNAL \Selector98~5_combout\ : std_logic;
SIGNAL \Add11~32_combout\ : std_logic;
SIGNAL \temp1~40_combout\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \temp1~41_combout\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \temp1~42_combout\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \temp1~43_combout\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \temp1~44_combout\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \temp1~45_combout\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \temp1~46_combout\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \temp1~47_combout\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \temp1~48_combout\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \temp1~49_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \temp1~50_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \temp1~51_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \temp1~52_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \temp1~53_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \temp1~54_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \temp1~55_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \temp1~56_combout\ : std_logic;
SIGNAL \LessThan9~1_cout\ : std_logic;
SIGNAL \LessThan9~3_cout\ : std_logic;
SIGNAL \LessThan9~5_cout\ : std_logic;
SIGNAL \LessThan9~7_cout\ : std_logic;
SIGNAL \LessThan9~9_cout\ : std_logic;
SIGNAL \LessThan9~11_cout\ : std_logic;
SIGNAL \LessThan9~13_cout\ : std_logic;
SIGNAL \LessThan9~15_cout\ : std_logic;
SIGNAL \LessThan9~17_cout\ : std_logic;
SIGNAL \LessThan9~19_cout\ : std_logic;
SIGNAL \LessThan9~21_cout\ : std_logic;
SIGNAL \LessThan9~23_cout\ : std_logic;
SIGNAL \LessThan9~25_cout\ : std_logic;
SIGNAL \LessThan9~27_cout\ : std_logic;
SIGNAL \LessThan9~29_cout\ : std_logic;
SIGNAL \LessThan9~31_cout\ : std_logic;
SIGNAL \LessThan9~33_cout\ : std_logic;
SIGNAL \LessThan9~34_combout\ : std_logic;
SIGNAL \Selector98~2_combout\ : std_logic;
SIGNAL \Selector98~6_combout\ : std_logic;
SIGNAL \LessThan19~1_cout\ : std_logic;
SIGNAL \LessThan19~3_cout\ : std_logic;
SIGNAL \LessThan19~5_cout\ : std_logic;
SIGNAL \LessThan19~7_cout\ : std_logic;
SIGNAL \LessThan19~9_cout\ : std_logic;
SIGNAL \LessThan19~11_cout\ : std_logic;
SIGNAL \LessThan19~13_cout\ : std_logic;
SIGNAL \LessThan19~15_cout\ : std_logic;
SIGNAL \LessThan19~16_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \test~q\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~75_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~76_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~77_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~78_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~79_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~81_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~82_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~49_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~47_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~43_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~41_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~51_combout\ : std_logic;
SIGNAL \Add3~74_combout\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~53_combout\ : std_logic;
SIGNAL \Add3~73_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add3~72_combout\ : std_logic;
SIGNAL \Add3~56\ : std_logic;
SIGNAL \Add3~57_combout\ : std_logic;
SIGNAL \Add3~71_combout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~59_combout\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~60\ : std_logic;
SIGNAL \Add3~61_combout\ : std_logic;
SIGNAL \Add3~69_combout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~63_combout\ : std_logic;
SIGNAL \Add3~68_combout\ : std_logic;
SIGNAL \Add3~64\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Add3~67_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~31_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Add2~53_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~36\ : std_logic;
SIGNAL \Add2~37_combout\ : std_logic;
SIGNAL \Add2~51_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~40\ : std_logic;
SIGNAL \Add2~41_combout\ : std_logic;
SIGNAL \Add2~49_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~43_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~44\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~47_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan10~4_cout\ : std_logic;
SIGNAL \LessThan10~6_cout\ : std_logic;
SIGNAL \LessThan10~8_cout\ : std_logic;
SIGNAL \LessThan10~10_cout\ : std_logic;
SIGNAL \LessThan10~12_cout\ : std_logic;
SIGNAL \LessThan10~14_cout\ : std_logic;
SIGNAL \LessThan10~16_cout\ : std_logic;
SIGNAL \LessThan10~18_cout\ : std_logic;
SIGNAL \LessThan10~20_cout\ : std_logic;
SIGNAL \LessThan10~22_cout\ : std_logic;
SIGNAL \LessThan10~24_cout\ : std_logic;
SIGNAL \LessThan10~26_cout\ : std_logic;
SIGNAL \LessThan10~28_cout\ : std_logic;
SIGNAL \LessThan10~30_cout\ : std_logic;
SIGNAL \LessThan10~32_cout\ : std_logic;
SIGNAL \LessThan10~34_cout\ : std_logic;
SIGNAL \LessThan10~36_cout\ : std_logic;
SIGNAL \LessThan10~38_cout\ : std_logic;
SIGNAL \LessThan10~39_combout\ : std_logic;
SIGNAL \Selector99~1_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~21\ : std_logic;
SIGNAL \Add12~34\ : std_logic;
SIGNAL \Add12~36\ : std_logic;
SIGNAL \Add12~38\ : std_logic;
SIGNAL \Add12~40\ : std_logic;
SIGNAL \Add12~42\ : std_logic;
SIGNAL \Add12~44\ : std_logic;
SIGNAL \Add12~46\ : std_logic;
SIGNAL \Add12~54_combout\ : std_logic;
SIGNAL \Add12~56_combout\ : std_logic;
SIGNAL \Add12~45_combout\ : std_logic;
SIGNAL \Add12~47_combout\ : std_logic;
SIGNAL \Add12~55\ : std_logic;
SIGNAL \Add12~57_combout\ : std_logic;
SIGNAL \Add12~59_combout\ : std_logic;
SIGNAL \Add12~43_combout\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Add12~41_combout\ : std_logic;
SIGNAL \Add12~49_combout\ : std_logic;
SIGNAL \Add12~39_combout\ : std_logic;
SIGNAL \Add12~50_combout\ : std_logic;
SIGNAL \Add12~37_combout\ : std_logic;
SIGNAL \Add12~51_combout\ : std_logic;
SIGNAL \Add12~35_combout\ : std_logic;
SIGNAL \Add12~52_combout\ : std_logic;
SIGNAL \Add12~33_combout\ : std_logic;
SIGNAL \Add12~53_combout\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \Add12~22_combout\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add12~23_combout\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Add12~24_combout\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add12~25_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~27_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add12~29_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add12~31_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~32_combout\ : std_logic;
SIGNAL \LessThan11~1_cout\ : std_logic;
SIGNAL \LessThan11~3_cout\ : std_logic;
SIGNAL \LessThan11~5_cout\ : std_logic;
SIGNAL \LessThan11~7_cout\ : std_logic;
SIGNAL \LessThan11~9_cout\ : std_logic;
SIGNAL \LessThan11~11_cout\ : std_logic;
SIGNAL \LessThan11~13_cout\ : std_logic;
SIGNAL \LessThan11~15_cout\ : std_logic;
SIGNAL \LessThan11~17_cout\ : std_logic;
SIGNAL \LessThan11~19_cout\ : std_logic;
SIGNAL \LessThan11~21_cout\ : std_logic;
SIGNAL \LessThan11~23_cout\ : std_logic;
SIGNAL \LessThan11~25_cout\ : std_logic;
SIGNAL \LessThan11~27_cout\ : std_logic;
SIGNAL \LessThan11~29_cout\ : std_logic;
SIGNAL \LessThan11~31_cout\ : std_logic;
SIGNAL \LessThan11~33_cout\ : std_logic;
SIGNAL \LessThan11~35_cout\ : std_logic;
SIGNAL \LessThan11~36_combout\ : std_logic;
SIGNAL \LessThan11~38_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~41\ : std_logic;
SIGNAL \Add13~43\ : std_logic;
SIGNAL \Add13~45\ : std_logic;
SIGNAL \Add13~47\ : std_logic;
SIGNAL \Add13~49\ : std_logic;
SIGNAL \Add13~52\ : std_logic;
SIGNAL \Add13~54\ : std_logic;
SIGNAL \Add13~60_combout\ : std_logic;
SIGNAL \Add13~53_combout\ : std_logic;
SIGNAL \Add13~51_combout\ : std_logic;
SIGNAL \Add13~48_combout\ : std_logic;
SIGNAL \Add13~50_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \Add13~46_combout\ : std_logic;
SIGNAL \Add13~55_combout\ : std_logic;
SIGNAL \Add13~44_combout\ : std_logic;
SIGNAL \Add13~56_combout\ : std_logic;
SIGNAL \Add13~42_combout\ : std_logic;
SIGNAL \Add13~57_combout\ : std_logic;
SIGNAL \Add13~40_combout\ : std_logic;
SIGNAL \Add13~58_combout\ : std_logic;
SIGNAL \Add13~38_combout\ : std_logic;
SIGNAL \Add13~59_combout\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Add13~24_combout\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Add13~25_combout\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add13~26_combout\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Add13~27_combout\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add13~28_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add13~29_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~30_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add13~31_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~32_combout\ : std_logic;
SIGNAL \Add13~33_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add13~34_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add13~35_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add13~36_combout\ : std_logic;
SIGNAL \Add13~37_combout\ : std_logic;
SIGNAL \LessThan10~41_combout\ : std_logic;
SIGNAL \LessThan12~2_cout\ : std_logic;
SIGNAL \LessThan12~4_cout\ : std_logic;
SIGNAL \LessThan12~6_cout\ : std_logic;
SIGNAL \LessThan12~8_cout\ : std_logic;
SIGNAL \LessThan12~10_cout\ : std_logic;
SIGNAL \LessThan12~12_cout\ : std_logic;
SIGNAL \LessThan12~14_cout\ : std_logic;
SIGNAL \LessThan12~16_cout\ : std_logic;
SIGNAL \LessThan12~18_cout\ : std_logic;
SIGNAL \LessThan12~20_cout\ : std_logic;
SIGNAL \LessThan12~22_cout\ : std_logic;
SIGNAL \LessThan12~24_cout\ : std_logic;
SIGNAL \LessThan12~26_cout\ : std_logic;
SIGNAL \LessThan12~28_cout\ : std_logic;
SIGNAL \LessThan12~30_cout\ : std_logic;
SIGNAL \LessThan12~32_cout\ : std_logic;
SIGNAL \LessThan12~34_cout\ : std_logic;
SIGNAL \LessThan12~36_cout\ : std_logic;
SIGNAL \LessThan12~37_combout\ : std_logic;
SIGNAL \LessThan12~39_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Add13~64_combout\ : std_logic;
SIGNAL \Add13~63_combout\ : std_logic;
SIGNAL \Add13~62_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~13\ : std_logic;
SIGNAL \Add14~15\ : std_logic;
SIGNAL \Add14~17\ : std_logic;
SIGNAL \Add14~19\ : std_logic;
SIGNAL \Add14~21\ : std_logic;
SIGNAL \Add14~23\ : std_logic;
SIGNAL \Add14~25\ : std_logic;
SIGNAL \Add14~41\ : std_logic;
SIGNAL \Add14~43\ : std_logic;
SIGNAL \Add14~45\ : std_logic;
SIGNAL \Add14~47\ : std_logic;
SIGNAL \Add14~49\ : std_logic;
SIGNAL \Add14~52\ : std_logic;
SIGNAL \Add14~54\ : std_logic;
SIGNAL \Add14~59_combout\ : std_logic;
SIGNAL \Add14~61_combout\ : std_logic;
SIGNAL \Add14~53_combout\ : std_logic;
SIGNAL \Add14~51_combout\ : std_logic;
SIGNAL \Add14~48_combout\ : std_logic;
SIGNAL \Add14~50_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \Add14~60\ : std_logic;
SIGNAL \Add14~62_combout\ : std_logic;
SIGNAL \Add14~64_combout\ : std_logic;
SIGNAL \Add14~46_combout\ : std_logic;
SIGNAL \Add14~55_combout\ : std_logic;
SIGNAL \Add14~44_combout\ : std_logic;
SIGNAL \Add14~56_combout\ : std_logic;
SIGNAL \Add14~42_combout\ : std_logic;
SIGNAL \Add14~57_combout\ : std_logic;
SIGNAL \Add14~40_combout\ : std_logic;
SIGNAL \Add14~58_combout\ : std_logic;
SIGNAL \Add14~24_combout\ : std_logic;
SIGNAL \Add14~26_combout\ : std_logic;
SIGNAL \Add14~22_combout\ : std_logic;
SIGNAL \Add14~27_combout\ : std_logic;
SIGNAL \Add14~20_combout\ : std_logic;
SIGNAL \Add14~28_combout\ : std_logic;
SIGNAL \Add14~18_combout\ : std_logic;
SIGNAL \Add14~29_combout\ : std_logic;
SIGNAL \Add14~16_combout\ : std_logic;
SIGNAL \Add14~30_combout\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Add14~31_combout\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add14~32_combout\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Add14~33_combout\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add14~34_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add14~35_combout\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add14~36_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add14~37_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add14~38_combout\ : std_logic;
SIGNAL \Add14~39_combout\ : std_logic;
SIGNAL \LessThan10~42_combout\ : std_logic;
SIGNAL \LessThan13~2_cout\ : std_logic;
SIGNAL \LessThan13~4_cout\ : std_logic;
SIGNAL \LessThan13~6_cout\ : std_logic;
SIGNAL \LessThan13~8_cout\ : std_logic;
SIGNAL \LessThan13~10_cout\ : std_logic;
SIGNAL \LessThan13~12_cout\ : std_logic;
SIGNAL \LessThan13~14_cout\ : std_logic;
SIGNAL \LessThan13~16_cout\ : std_logic;
SIGNAL \LessThan13~18_cout\ : std_logic;
SIGNAL \LessThan13~20_cout\ : std_logic;
SIGNAL \LessThan13~22_cout\ : std_logic;
SIGNAL \LessThan13~24_cout\ : std_logic;
SIGNAL \LessThan13~26_cout\ : std_logic;
SIGNAL \LessThan13~28_cout\ : std_logic;
SIGNAL \LessThan13~30_cout\ : std_logic;
SIGNAL \LessThan13~32_cout\ : std_logic;
SIGNAL \LessThan13~34_cout\ : std_logic;
SIGNAL \LessThan13~36_cout\ : std_logic;
SIGNAL \LessThan13~37_combout\ : std_logic;
SIGNAL \LessThan13~39_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Add14~66_combout\ : std_logic;
SIGNAL \Add14~65_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~13\ : std_logic;
SIGNAL \Add15~15\ : std_logic;
SIGNAL \Add15~17\ : std_logic;
SIGNAL \Add15~19\ : std_logic;
SIGNAL \Add15~21\ : std_logic;
SIGNAL \Add15~23\ : std_logic;
SIGNAL \Add15~25\ : std_logic;
SIGNAL \Add15~27\ : std_logic;
SIGNAL \Add15~29\ : std_logic;
SIGNAL \Add15~31\ : std_logic;
SIGNAL \Add15~33\ : std_logic;
SIGNAL \Add15~35\ : std_logic;
SIGNAL \Add15~37\ : std_logic;
SIGNAL \Add15~39\ : std_logic;
SIGNAL \Add15~41\ : std_logic;
SIGNAL \Add15~43\ : std_logic;
SIGNAL \Add15~44_combout\ : std_logic;
SIGNAL \Add15~38_combout\ : std_logic;
SIGNAL \Add15~40_combout\ : std_logic;
SIGNAL \Add15~42_combout\ : std_logic;
SIGNAL \temp3~19_combout\ : std_logic;
SIGNAL \Add15~36_combout\ : std_logic;
SIGNAL \Add15~34_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \Add15~32_combout\ : std_logic;
SIGNAL \temp3~16_combout\ : std_logic;
SIGNAL \Add15~30_combout\ : std_logic;
SIGNAL \temp3~17_combout\ : std_logic;
SIGNAL \Add15~28_combout\ : std_logic;
SIGNAL \temp3~18_combout\ : std_logic;
SIGNAL \Add15~26_combout\ : std_logic;
SIGNAL \temp3~0_combout\ : std_logic;
SIGNAL \Add15~24_combout\ : std_logic;
SIGNAL \temp3~1_combout\ : std_logic;
SIGNAL \Add15~22_combout\ : std_logic;
SIGNAL \temp3~2_combout\ : std_logic;
SIGNAL \Add15~20_combout\ : std_logic;
SIGNAL \temp3~3_combout\ : std_logic;
SIGNAL \Add15~18_combout\ : std_logic;
SIGNAL \temp3~4_combout\ : std_logic;
SIGNAL \Add15~16_combout\ : std_logic;
SIGNAL \temp3~5_combout\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \temp3~6_combout\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \temp3~7_combout\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \temp3~8_combout\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \temp3~9_combout\ : std_logic;
SIGNAL \temp3~10_combout\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \temp3~11_combout\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \temp3~12_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \temp3~13_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \temp3~14_combout\ : std_logic;
SIGNAL \temp3~15_combout\ : std_logic;
SIGNAL \LessThan14~2_cout\ : std_logic;
SIGNAL \LessThan14~4_cout\ : std_logic;
SIGNAL \LessThan14~6_cout\ : std_logic;
SIGNAL \LessThan14~8_cout\ : std_logic;
SIGNAL \LessThan14~10_cout\ : std_logic;
SIGNAL \LessThan14~12_cout\ : std_logic;
SIGNAL \LessThan14~14_cout\ : std_logic;
SIGNAL \LessThan14~16_cout\ : std_logic;
SIGNAL \LessThan14~18_cout\ : std_logic;
SIGNAL \LessThan14~20_cout\ : std_logic;
SIGNAL \LessThan14~22_cout\ : std_logic;
SIGNAL \LessThan14~24_cout\ : std_logic;
SIGNAL \LessThan14~26_cout\ : std_logic;
SIGNAL \LessThan14~28_cout\ : std_logic;
SIGNAL \LessThan14~30_cout\ : std_logic;
SIGNAL \LessThan14~32_cout\ : std_logic;
SIGNAL \LessThan14~34_cout\ : std_logic;
SIGNAL \LessThan14~36_cout\ : std_logic;
SIGNAL \LessThan14~37_combout\ : std_logic;
SIGNAL \LessThan14~39_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \temp3~38_combout\ : std_logic;
SIGNAL \temp3~37_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~15\ : std_logic;
SIGNAL \Add16~17\ : std_logic;
SIGNAL \Add16~19\ : std_logic;
SIGNAL \Add16~21\ : std_logic;
SIGNAL \Add16~23\ : std_logic;
SIGNAL \Add16~25\ : std_logic;
SIGNAL \Add16~27\ : std_logic;
SIGNAL \Add16~29\ : std_logic;
SIGNAL \Add16~31\ : std_logic;
SIGNAL \Add16~33\ : std_logic;
SIGNAL \Add16~35\ : std_logic;
SIGNAL \Add16~37\ : std_logic;
SIGNAL \Add16~38_combout\ : std_logic;
SIGNAL \temp3~41_combout\ : std_logic;
SIGNAL \Add16~34_combout\ : std_logic;
SIGNAL \temp3~36_combout\ : std_logic;
SIGNAL \Add16~39\ : std_logic;
SIGNAL \Add16~41\ : std_logic;
SIGNAL \Add16~43\ : std_logic;
SIGNAL \Add16~45\ : std_logic;
SIGNAL \Add16~46_combout\ : std_logic;
SIGNAL \Add16~36_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \Add16~42_combout\ : std_logic;
SIGNAL \Add16~40_combout\ : std_logic;
SIGNAL \Add16~44_combout\ : std_logic;
SIGNAL \LessThan15~39_combout\ : std_logic;
SIGNAL \Add16~32_combout\ : std_logic;
SIGNAL \temp3~39_combout\ : std_logic;
SIGNAL \Add16~30_combout\ : std_logic;
SIGNAL \temp3~40_combout\ : std_logic;
SIGNAL \Add16~28_combout\ : std_logic;
SIGNAL \temp3~20_combout\ : std_logic;
SIGNAL \Add16~26_combout\ : std_logic;
SIGNAL \temp3~21_combout\ : std_logic;
SIGNAL \Add16~24_combout\ : std_logic;
SIGNAL \temp3~22_combout\ : std_logic;
SIGNAL \Add16~22_combout\ : std_logic;
SIGNAL \temp3~23_combout\ : std_logic;
SIGNAL \Add16~20_combout\ : std_logic;
SIGNAL \temp3~24_combout\ : std_logic;
SIGNAL \Add16~18_combout\ : std_logic;
SIGNAL \temp3~25_combout\ : std_logic;
SIGNAL \Add16~16_combout\ : std_logic;
SIGNAL \temp3~26_combout\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;
SIGNAL \temp3~27_combout\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \temp3~28_combout\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \temp3~29_combout\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \temp3~30_combout\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \temp3~31_combout\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \temp3~32_combout\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \temp3~33_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \temp3~34_combout\ : std_logic;
SIGNAL \temp3~35_combout\ : std_logic;
SIGNAL \LessThan10~43_combout\ : std_logic;
SIGNAL \LessThan15~2_cout\ : std_logic;
SIGNAL \LessThan15~4_cout\ : std_logic;
SIGNAL \LessThan15~6_cout\ : std_logic;
SIGNAL \LessThan15~8_cout\ : std_logic;
SIGNAL \LessThan15~10_cout\ : std_logic;
SIGNAL \LessThan15~12_cout\ : std_logic;
SIGNAL \LessThan15~14_cout\ : std_logic;
SIGNAL \LessThan15~16_cout\ : std_logic;
SIGNAL \LessThan15~18_cout\ : std_logic;
SIGNAL \LessThan15~20_cout\ : std_logic;
SIGNAL \LessThan15~22_cout\ : std_logic;
SIGNAL \LessThan15~24_cout\ : std_logic;
SIGNAL \LessThan15~26_cout\ : std_logic;
SIGNAL \LessThan15~28_cout\ : std_logic;
SIGNAL \LessThan15~30_cout\ : std_logic;
SIGNAL \LessThan15~32_cout\ : std_logic;
SIGNAL \LessThan15~34_cout\ : std_logic;
SIGNAL \LessThan15~36_cout\ : std_logic;
SIGNAL \LessThan15~37_combout\ : std_logic;
SIGNAL \LessThan15~40_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~11\ : std_logic;
SIGNAL \Add17~13\ : std_logic;
SIGNAL \Add17~15\ : std_logic;
SIGNAL \Add17~17\ : std_logic;
SIGNAL \Add17~19\ : std_logic;
SIGNAL \Add17~21\ : std_logic;
SIGNAL \Add17~23\ : std_logic;
SIGNAL \Add17~25\ : std_logic;
SIGNAL \Add17~27\ : std_logic;
SIGNAL \Add17~29\ : std_logic;
SIGNAL \Add17~31\ : std_logic;
SIGNAL \Add17~33\ : std_logic;
SIGNAL \Add17~35\ : std_logic;
SIGNAL \Add17~54\ : std_logic;
SIGNAL \Add17~56\ : std_logic;
SIGNAL \Add17~58_combout\ : std_logic;
SIGNAL \temp3~42_combout\ : std_logic;
SIGNAL \Add17~59\ : std_logic;
SIGNAL \Add17~60_combout\ : std_logic;
SIGNAL \Add17~61\ : std_logic;
SIGNAL \Add17~62_combout\ : std_logic;
SIGNAL \LessThan16~40_combout\ : std_logic;
SIGNAL \Add17~63\ : std_logic;
SIGNAL \Add17~64_combout\ : std_logic;
SIGNAL \Add17~55_combout\ : std_logic;
SIGNAL \Add17~57_combout\ : std_logic;
SIGNAL \Add17~65\ : std_logic;
SIGNAL \Add17~66_combout\ : std_logic;
SIGNAL \Add17~67\ : std_logic;
SIGNAL \Add17~69\ : std_logic;
SIGNAL \Add17~70_combout\ : std_logic;
SIGNAL \Add17~68_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \Add17~53_combout\ : std_logic;
SIGNAL \Add17~72_combout\ : std_logic;
SIGNAL \Add17~34_combout\ : std_logic;
SIGNAL \Add17~36_combout\ : std_logic;
SIGNAL \Add17~32_combout\ : std_logic;
SIGNAL \Add17~37_combout\ : std_logic;
SIGNAL \Add17~30_combout\ : std_logic;
SIGNAL \Add17~38_combout\ : std_logic;
SIGNAL \Add17~28_combout\ : std_logic;
SIGNAL \Add17~39_combout\ : std_logic;
SIGNAL \Add17~26_combout\ : std_logic;
SIGNAL \Add17~40_combout\ : std_logic;
SIGNAL \Add17~24_combout\ : std_logic;
SIGNAL \Add17~41_combout\ : std_logic;
SIGNAL \Add17~22_combout\ : std_logic;
SIGNAL \Add17~42_combout\ : std_logic;
SIGNAL \Add17~20_combout\ : std_logic;
SIGNAL \Add17~43_combout\ : std_logic;
SIGNAL \Add17~18_combout\ : std_logic;
SIGNAL \Add17~44_combout\ : std_logic;
SIGNAL \Add17~16_combout\ : std_logic;
SIGNAL \Add17~45_combout\ : std_logic;
SIGNAL \Add17~14_combout\ : std_logic;
SIGNAL \Add17~46_combout\ : std_logic;
SIGNAL \Add17~12_combout\ : std_logic;
SIGNAL \Add17~47_combout\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add17~48_combout\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \Add17~80_combout\ : std_logic;
SIGNAL \Add17~49_combout\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add17~50_combout\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \Add17~51_combout\ : std_logic;
SIGNAL \Add17~52_combout\ : std_logic;
SIGNAL \LessThan10~44_combout\ : std_logic;
SIGNAL \LessThan16~3_cout\ : std_logic;
SIGNAL \LessThan16~5_cout\ : std_logic;
SIGNAL \LessThan16~7_cout\ : std_logic;
SIGNAL \LessThan16~9_cout\ : std_logic;
SIGNAL \LessThan16~11_cout\ : std_logic;
SIGNAL \LessThan16~13_cout\ : std_logic;
SIGNAL \LessThan16~15_cout\ : std_logic;
SIGNAL \LessThan16~17_cout\ : std_logic;
SIGNAL \LessThan16~19_cout\ : std_logic;
SIGNAL \LessThan16~21_cout\ : std_logic;
SIGNAL \LessThan16~23_cout\ : std_logic;
SIGNAL \LessThan16~25_cout\ : std_logic;
SIGNAL \LessThan16~27_cout\ : std_logic;
SIGNAL \LessThan16~29_cout\ : std_logic;
SIGNAL \LessThan16~31_cout\ : std_logic;
SIGNAL \LessThan16~33_cout\ : std_logic;
SIGNAL \LessThan16~35_cout\ : std_logic;
SIGNAL \LessThan16~37_cout\ : std_logic;
SIGNAL \LessThan16~38_combout\ : std_logic;
SIGNAL \LessThan16~41_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Add17~77_combout\ : std_logic;
SIGNAL \Add17~78_combout\ : std_logic;
SIGNAL \Add17~79_combout\ : std_logic;
SIGNAL \Add17~74_combout\ : std_logic;
SIGNAL \Add17~73_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~13\ : std_logic;
SIGNAL \Add18~15\ : std_logic;
SIGNAL \Add18~17\ : std_logic;
SIGNAL \Add18~19\ : std_logic;
SIGNAL \Add18~21\ : std_logic;
SIGNAL \Add18~23\ : std_logic;
SIGNAL \Add18~25\ : std_logic;
SIGNAL \Add18~27\ : std_logic;
SIGNAL \Add18~29\ : std_logic;
SIGNAL \Add18~31\ : std_logic;
SIGNAL \Add18~33\ : std_logic;
SIGNAL \Add18~36\ : std_logic;
SIGNAL \Add18~38\ : std_logic;
SIGNAL \Add18~40\ : std_logic;
SIGNAL \Add18~42\ : std_logic;
SIGNAL \Add18~44\ : std_logic;
SIGNAL \Add18~46\ : std_logic;
SIGNAL \Add18~47_combout\ : std_logic;
SIGNAL \Add18~74_combout\ : std_logic;
SIGNAL \Add17~76_combout\ : std_logic;
SIGNAL \Add18~48\ : std_logic;
SIGNAL \Add18~49_combout\ : std_logic;
SIGNAL \Add18~75_combout\ : std_logic;
SIGNAL \Add18~45_combout\ : std_logic;
SIGNAL \Add18~73_combout\ : std_logic;
SIGNAL \Add17~75_combout\ : std_logic;
SIGNAL \Add18~50\ : std_logic;
SIGNAL \Add18~51_combout\ : std_logic;
SIGNAL \Add18~53_combout\ : std_logic;
SIGNAL \Add18~39_combout\ : std_logic;
SIGNAL \Add18~41_combout\ : std_logic;
SIGNAL \Add18~37_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \Add18~35_combout\ : std_logic;
SIGNAL \Add18~54_combout\ : std_logic;
SIGNAL \Add18~43_combout\ : std_logic;
SIGNAL \Add18~55_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \LessThan17~40_combout\ : std_logic;
SIGNAL \Add18~32_combout\ : std_logic;
SIGNAL \Add18~34_combout\ : std_logic;
SIGNAL \Add18~30_combout\ : std_logic;
SIGNAL \Add18~56_combout\ : std_logic;
SIGNAL \Add18~28_combout\ : std_logic;
SIGNAL \Add18~57_combout\ : std_logic;
SIGNAL \Add18~26_combout\ : std_logic;
SIGNAL \Add18~58_combout\ : std_logic;
SIGNAL \Add18~24_combout\ : std_logic;
SIGNAL \Add18~59_combout\ : std_logic;
SIGNAL \Add18~22_combout\ : std_logic;
SIGNAL \Add18~60_combout\ : std_logic;
SIGNAL \Add18~20_combout\ : std_logic;
SIGNAL \Add18~61_combout\ : std_logic;
SIGNAL \Add18~18_combout\ : std_logic;
SIGNAL \Add18~62_combout\ : std_logic;
SIGNAL \Add18~16_combout\ : std_logic;
SIGNAL \Add18~63_combout\ : std_logic;
SIGNAL \Add18~14_combout\ : std_logic;
SIGNAL \Add18~64_combout\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \Add18~65_combout\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \Add18~66_combout\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \Add18~67_combout\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \Add18~68_combout\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \Add18~69_combout\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \Add18~70_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \Add18~71_combout\ : std_logic;
SIGNAL \Add18~72_combout\ : std_logic;
SIGNAL \LessThan17~3_cout\ : std_logic;
SIGNAL \LessThan17~5_cout\ : std_logic;
SIGNAL \LessThan17~7_cout\ : std_logic;
SIGNAL \LessThan17~9_cout\ : std_logic;
SIGNAL \LessThan17~11_cout\ : std_logic;
SIGNAL \LessThan17~13_cout\ : std_logic;
SIGNAL \LessThan17~15_cout\ : std_logic;
SIGNAL \LessThan17~17_cout\ : std_logic;
SIGNAL \LessThan17~19_cout\ : std_logic;
SIGNAL \LessThan17~21_cout\ : std_logic;
SIGNAL \LessThan17~23_cout\ : std_logic;
SIGNAL \LessThan17~25_cout\ : std_logic;
SIGNAL \LessThan17~27_cout\ : std_logic;
SIGNAL \LessThan17~29_cout\ : std_logic;
SIGNAL \LessThan17~31_cout\ : std_logic;
SIGNAL \LessThan17~33_cout\ : std_logic;
SIGNAL \LessThan17~35_cout\ : std_logic;
SIGNAL \LessThan17~37_cout\ : std_logic;
SIGNAL \LessThan17~38_combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \Selector106~1_combout\ : std_logic;
SIGNAL \Add21~1_cout\ : std_logic;
SIGNAL \Add21~3\ : std_logic;
SIGNAL \Add21~5\ : std_logic;
SIGNAL \Add21~7\ : std_logic;
SIGNAL \Add21~9\ : std_logic;
SIGNAL \Add21~11\ : std_logic;
SIGNAL \Add21~13\ : std_logic;
SIGNAL \Add21~14_combout\ : std_logic;
SIGNAL \Add21~12_combout\ : std_logic;
SIGNAL \Add21~10_combout\ : std_logic;
SIGNAL \Add21~8_combout\ : std_logic;
SIGNAL \Add21~6_combout\ : std_logic;
SIGNAL \Add21~4_combout\ : std_logic;
SIGNAL \Add21~2_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \Selector107~1_combout\ : std_logic;
SIGNAL \Add18~78_combout\ : std_logic;
SIGNAL \Add18~77_combout\ : std_logic;
SIGNAL \Add18~76_combout\ : std_logic;
SIGNAL \Add19~1\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~13\ : std_logic;
SIGNAL \Add19~15\ : std_logic;
SIGNAL \Add19~17\ : std_logic;
SIGNAL \Add19~19\ : std_logic;
SIGNAL \Add19~21\ : std_logic;
SIGNAL \Add19~23\ : std_logic;
SIGNAL \Add19~25\ : std_logic;
SIGNAL \Add19~27\ : std_logic;
SIGNAL \Add19~29\ : std_logic;
SIGNAL \Add19~31\ : std_logic;
SIGNAL \Add19~33\ : std_logic;
SIGNAL \Add19~35\ : std_logic;
SIGNAL \Add19~37\ : std_logic;
SIGNAL \Add19~39\ : std_logic;
SIGNAL \Add19~41\ : std_logic;
SIGNAL \Add19~43\ : std_logic;
SIGNAL \Add19~45\ : std_logic;
SIGNAL \Add19~47\ : std_logic;
SIGNAL \Add19~49\ : std_logic;
SIGNAL \Add19~51\ : std_logic;
SIGNAL \Add19~52_combout\ : std_logic;
SIGNAL \Add19~50_combout\ : std_logic;
SIGNAL \Add19~36_combout\ : std_logic;
SIGNAL \Add19~40_combout\ : std_logic;
SIGNAL \Add19~38_combout\ : std_logic;
SIGNAL \Add19~34_combout\ : std_logic;
SIGNAL \Selector107~3_combout\ : std_logic;
SIGNAL \Add19~48_combout\ : std_logic;
SIGNAL \Add19~46_combout\ : std_logic;
SIGNAL \Add19~42_combout\ : std_logic;
SIGNAL \Add19~44_combout\ : std_logic;
SIGNAL \Selector107~4_combout\ : std_logic;
SIGNAL \Selector107~5_combout\ : std_logic;
SIGNAL \Add19~32_combout\ : std_logic;
SIGNAL \temp3~43_combout\ : std_logic;
SIGNAL \Add19~30_combout\ : std_logic;
SIGNAL \temp3~44_combout\ : std_logic;
SIGNAL \Add19~28_combout\ : std_logic;
SIGNAL \temp3~45_combout\ : std_logic;
SIGNAL \Add19~26_combout\ : std_logic;
SIGNAL \temp3~46_combout\ : std_logic;
SIGNAL \Add19~24_combout\ : std_logic;
SIGNAL \temp3~47_combout\ : std_logic;
SIGNAL \Add19~22_combout\ : std_logic;
SIGNAL \temp3~48_combout\ : std_logic;
SIGNAL \Add19~20_combout\ : std_logic;
SIGNAL \temp3~49_combout\ : std_logic;
SIGNAL \Add19~18_combout\ : std_logic;
SIGNAL \temp3~50_combout\ : std_logic;
SIGNAL \Add19~16_combout\ : std_logic;
SIGNAL \temp3~51_combout\ : std_logic;
SIGNAL \Add19~14_combout\ : std_logic;
SIGNAL \temp3~52_combout\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \temp3~53_combout\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \temp3~54_combout\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \temp3~55_combout\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \temp3~56_combout\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \temp3~57_combout\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \temp3~58_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \temp3~59_combout\ : std_logic;
SIGNAL \LessThan18~1_cout\ : std_logic;
SIGNAL \LessThan18~3_cout\ : std_logic;
SIGNAL \LessThan18~5_cout\ : std_logic;
SIGNAL \LessThan18~7_cout\ : std_logic;
SIGNAL \LessThan18~9_cout\ : std_logic;
SIGNAL \LessThan18~11_cout\ : std_logic;
SIGNAL \LessThan18~13_cout\ : std_logic;
SIGNAL \LessThan18~15_cout\ : std_logic;
SIGNAL \LessThan18~17_cout\ : std_logic;
SIGNAL \LessThan18~19_cout\ : std_logic;
SIGNAL \LessThan18~21_cout\ : std_logic;
SIGNAL \LessThan18~23_cout\ : std_logic;
SIGNAL \LessThan18~25_cout\ : std_logic;
SIGNAL \LessThan18~27_cout\ : std_logic;
SIGNAL \LessThan18~29_cout\ : std_logic;
SIGNAL \LessThan18~31_cout\ : std_logic;
SIGNAL \LessThan18~33_cout\ : std_logic;
SIGNAL \LessThan18~34_combout\ : std_logic;
SIGNAL \Selector107~2_combout\ : std_logic;
SIGNAL \Selector107~6_combout\ : std_logic;
SIGNAL \LessThan20~1_cout\ : std_logic;
SIGNAL \LessThan20~3_cout\ : std_logic;
SIGNAL \LessThan20~5_cout\ : std_logic;
SIGNAL \LessThan20~7_cout\ : std_logic;
SIGNAL \LessThan20~9_cout\ : std_logic;
SIGNAL \LessThan20~11_cout\ : std_logic;
SIGNAL \LessThan20~13_cout\ : std_logic;
SIGNAL \LessThan20~15_cout\ : std_logic;
SIGNAL \LessThan20~16_combout\ : std_logic;
SIGNAL \Add22~1\ : std_logic;
SIGNAL \Add22~3\ : std_logic;
SIGNAL \Add22~5\ : std_logic;
SIGNAL \Add22~7\ : std_logic;
SIGNAL \Add22~9\ : std_logic;
SIGNAL \Add22~11\ : std_logic;
SIGNAL \Add22~12_combout\ : std_logic;
SIGNAL \Add22~10_combout\ : std_logic;
SIGNAL \Add22~8_combout\ : std_logic;
SIGNAL \Add22~6_combout\ : std_logic;
SIGNAL \Add22~4_combout\ : std_logic;
SIGNAL \Add22~2_combout\ : std_logic;
SIGNAL \Add22~0_combout\ : std_logic;
SIGNAL \LessThan21~1_cout\ : std_logic;
SIGNAL \LessThan21~3_cout\ : std_logic;
SIGNAL \LessThan21~5_cout\ : std_logic;
SIGNAL \LessThan21~7_cout\ : std_logic;
SIGNAL \LessThan21~9_cout\ : std_logic;
SIGNAL \LessThan21~11_cout\ : std_logic;
SIGNAL \LessThan21~13_cout\ : std_logic;
SIGNAL \LessThan21~15_cout\ : std_logic;
SIGNAL \LessThan21~16_combout\ : std_logic;
SIGNAL \Add23~1\ : std_logic;
SIGNAL \Add23~3\ : std_logic;
SIGNAL \Add23~5\ : std_logic;
SIGNAL \Add23~7\ : std_logic;
SIGNAL \Add23~9\ : std_logic;
SIGNAL \Add23~11\ : std_logic;
SIGNAL \Add23~12_combout\ : std_logic;
SIGNAL \Add23~10_combout\ : std_logic;
SIGNAL \Add23~8_combout\ : std_logic;
SIGNAL \Add23~6_combout\ : std_logic;
SIGNAL \Add23~4_combout\ : std_logic;
SIGNAL \Add23~2_combout\ : std_logic;
SIGNAL \Add23~0_combout\ : std_logic;
SIGNAL \LessThan22~1_cout\ : std_logic;
SIGNAL \LessThan22~3_cout\ : std_logic;
SIGNAL \LessThan22~5_cout\ : std_logic;
SIGNAL \LessThan22~7_cout\ : std_logic;
SIGNAL \LessThan22~9_cout\ : std_logic;
SIGNAL \LessThan22~11_cout\ : std_logic;
SIGNAL \LessThan22~13_cout\ : std_logic;
SIGNAL \LessThan22~15_cout\ : std_logic;
SIGNAL \LessThan22~16_combout\ : std_logic;
SIGNAL \r_bary_out[0]~0_combout\ : std_logic;
SIGNAL \r_bary_out[0]~1_combout\ : std_logic;
SIGNAL \r_bary[0]~input_o\ : std_logic;
SIGNAL \ri~0_combout\ : std_logic;
SIGNAL \r_bary_out~2_combout\ : std_logic;
SIGNAL \r_bary_out[0]~reg0_q\ : std_logic;
SIGNAL \r_bary[1]~input_o\ : std_logic;
SIGNAL \ri~1_combout\ : std_logic;
SIGNAL \r_bary_out~3_combout\ : std_logic;
SIGNAL \r_bary_out[1]~reg0_q\ : std_logic;
SIGNAL \r_bary[2]~input_o\ : std_logic;
SIGNAL \ri~2_combout\ : std_logic;
SIGNAL \r_bary_out~4_combout\ : std_logic;
SIGNAL \r_bary_out[2]~reg0_q\ : std_logic;
SIGNAL \r_bary[3]~input_o\ : std_logic;
SIGNAL \ri~3_combout\ : std_logic;
SIGNAL \r_bary_out~5_combout\ : std_logic;
SIGNAL \r_bary_out[3]~reg0_q\ : std_logic;
SIGNAL \r_bary[4]~input_o\ : std_logic;
SIGNAL \ri~4_combout\ : std_logic;
SIGNAL \r_bary_out~6_combout\ : std_logic;
SIGNAL \r_bary_out[4]~reg0_q\ : std_logic;
SIGNAL \r_bary[5]~input_o\ : std_logic;
SIGNAL \ri~5_combout\ : std_logic;
SIGNAL \r_bary_out~7_combout\ : std_logic;
SIGNAL \r_bary_out[5]~reg0_q\ : std_logic;
SIGNAL \r_bary[6]~input_o\ : std_logic;
SIGNAL \ri~6_combout\ : std_logic;
SIGNAL \r_bary_out~8_combout\ : std_logic;
SIGNAL \r_bary_out[6]~reg0_q\ : std_logic;
SIGNAL \r_bary[7]~input_o\ : std_logic;
SIGNAL \ri~7_combout\ : std_logic;
SIGNAL \r_bary_out~9_combout\ : std_logic;
SIGNAL \r_bary_out[7]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[0]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[1]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[2]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[3]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[4]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[5]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[6]~reg0_q\ : std_logic;
SIGNAL \g_bary_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \g_bary_out[7]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[0]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[1]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[2]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[3]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[4]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[5]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[6]~reg0_q\ : std_logic;
SIGNAL \b_bary_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \b_bary_out[7]~reg0_q\ : std_logic;
SIGNAL gi : std_logic_vector(7 DOWNTO 0);
SIGNAL n_x : std_logic_vector(17 DOWNTO 0);
SIGNAL sum_Hpx : std_logic_vector(26 DOWNTO 0);
SIGNAL sum_Vpx : std_logic_vector(26 DOWNTO 0);
SIGNAL x_int : std_logic_vector(8 DOWNTO 0);
SIGNAL y_int : std_logic_vector(8 DOWNTO 0);
SIGNAL ri : std_logic_vector(7 DOWNTO 0);
SIGNAL n_y : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_IMG <= IMG;
ww_reset <= reset;
ww_VGA_CLK <= VGA_CLK;
ww_X_Cont <= X_Cont;
ww_Y_Cont <= Y_Cont;
ww_r_bary <= r_bary;
ww_g_bary <= g_bary;
ww_b_bary <= b_bary;
r_bary_out <= ww_r_bary_out;
g_bary_out <= ww_g_bary_out;
b_bary_out <= ww_b_bary_out;
X <= ww_X;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA_CLK~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X50_Y0_N2
\r_bary_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[0]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\r_bary_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[1]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\r_bary_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\r_bary_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[3]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\r_bary_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[4]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\r_bary_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[5]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\r_bary_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[6]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\r_bary_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_bary_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \r_bary_out[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\g_bary_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\g_bary_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\g_bary_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\g_bary_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\g_bary_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\g_bary_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\g_bary_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\g_bary_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_bary_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \g_bary_out[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\b_bary_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\b_bary_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\b_bary_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\b_bary_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[3]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\b_bary_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\b_bary_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[5]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\b_bary_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\b_bary_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_bary_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \b_bary_out[7]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\X[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(0),
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\X[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(1),
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\X[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(2),
	devoe => ww_devoe,
	o => \X[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\X[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(3),
	devoe => ww_devoe,
	o => \X[3]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\X[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(4),
	devoe => ww_devoe,
	o => \X[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\X[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(5),
	devoe => ww_devoe,
	o => \X[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\X[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(6),
	devoe => ww_devoe,
	o => \X[6]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\X[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(7),
	devoe => ww_devoe,
	o => \X[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\X[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_int(8),
	devoe => ww_devoe,
	o => \X[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\Y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(0),
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\Y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\Y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\Y[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\Y[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\Y[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\Y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\Y[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y_int(8),
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

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

-- Location: IOIBUF_X31_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X41_Y24_N16
\state.init~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.init~feeder_combout\ = \reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \state.init~feeder_combout\);

-- Location: FF_X41_Y24_N17
\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \state.init~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: IOIBUF_X52_Y19_N8
\IMG~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMG,
	o => \IMG~input_o\);

-- Location: LCCOMB_X43_Y24_N10
\state~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~8_combout\ = (\state.init~q\ & (!\state.calcul_barycentre~q\ & (\reset~input_o\ & \IMG~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.calcul_barycentre~q\,
	datac => \reset~input_o\,
	datad => \IMG~input_o\,
	combout => \state~8_combout\);

-- Location: FF_X43_Y24_N11
\state.colonne\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.colonne~q\);

-- Location: IOIBUF_X52_Y23_N8
\Y_Cont[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(7),
	o => \Y_Cont[7]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\Y_Cont[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(4),
	o => \Y_Cont[4]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\Y_Cont[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(5),
	o => \Y_Cont[5]~input_o\);

-- Location: IOIBUF_X52_Y23_N1
\Y_Cont[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(3),
	o => \Y_Cont[3]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\Y_Cont[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(6),
	o => \Y_Cont[6]~input_o\);

-- Location: LCCOMB_X44_Y24_N18
\proc_H~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_H~1_combout\ = (\Y_Cont[4]~input_o\ & (!\Y_Cont[5]~input_o\ & (\Y_Cont[3]~input_o\ & \Y_Cont[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[4]~input_o\,
	datab => \Y_Cont[5]~input_o\,
	datac => \Y_Cont[3]~input_o\,
	datad => \Y_Cont[6]~input_o\,
	combout => \proc_H~1_combout\);

-- Location: IOIBUF_X52_Y27_N1
\Y_Cont[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(8),
	o => \Y_Cont[8]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\Y_Cont[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(1),
	o => \Y_Cont[1]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\Y_Cont[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(2),
	o => \Y_Cont[2]~input_o\);

-- Location: IOIBUF_X52_Y27_N8
\Y_Cont[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_Cont(0),
	o => \Y_Cont[0]~input_o\);

-- Location: LCCOMB_X44_Y24_N28
\proc_H~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_H~0_combout\ = (!\IMG~input_o\ & (\Y_Cont[1]~input_o\ & (\Y_Cont[2]~input_o\ & \Y_Cont[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMG~input_o\,
	datab => \Y_Cont[1]~input_o\,
	datac => \Y_Cont[2]~input_o\,
	datad => \Y_Cont[0]~input_o\,
	combout => \proc_H~0_combout\);

-- Location: LCCOMB_X44_Y24_N24
\proc_H~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_H~2_combout\ = (\Y_Cont[7]~input_o\ & (\proc_H~1_combout\ & (\Y_Cont[8]~input_o\ & \proc_H~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[7]~input_o\,
	datab => \proc_H~1_combout\,
	datac => \Y_Cont[8]~input_o\,
	datad => \proc_H~0_combout\,
	combout => \proc_H~2_combout\);

-- Location: LCCOMB_X43_Y24_N24
\Selector128~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (!\IMG~input_o\ & ((\state.colonne~q\) # ((!\proc_H~2_combout\ & \state.ligne~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.colonne~q\,
	datab => \proc_H~2_combout\,
	datac => \state.ligne~q\,
	datad => \IMG~input_o\,
	combout => \Selector128~0_combout\);

-- Location: FF_X43_Y24_N25
\state.ligne\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector128~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ligne~q\);

-- Location: LCCOMB_X43_Y24_N2
\state~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (\state.ligne~q\ & (\reset~input_o\ & \proc_H~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ligne~q\,
	datac => \reset~input_o\,
	datad => \proc_H~2_combout\,
	combout => \state~7_combout\);

-- Location: FF_X43_Y24_N3
\state.calcul_barycentre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.calcul_barycentre~q\);

-- Location: IOIBUF_X25_Y41_N1
\g_bary[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(4),
	o => \g_bary[4]~input_o\);

-- Location: LCCOMB_X44_Y30_N12
\gi~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~7_combout\ = (\g_bary[4]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_bary[4]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~7_combout\);

-- Location: FF_X44_Y30_N13
\gi[4]\ : dffeas
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
	q => gi(4));

-- Location: IOIBUF_X52_Y30_N8
\g_bary[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(6),
	o => \g_bary[6]~input_o\);

-- Location: LCCOMB_X44_Y30_N20
\gi~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~5_combout\ = (\reset~input_o\ & \g_bary[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \g_bary[6]~input_o\,
	combout => \gi~5_combout\);

-- Location: FF_X44_Y30_N21
\gi[6]\ : dffeas
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
	q => gi(6));

-- Location: IOIBUF_X52_Y32_N1
\g_bary[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(5),
	o => \g_bary[5]~input_o\);

-- Location: LCCOMB_X44_Y30_N22
\gi~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~6_combout\ = (\g_bary[5]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_bary[5]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~6_combout\);

-- Location: FF_X44_Y30_N23
\gi[5]\ : dffeas
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
	q => gi(5));

-- Location: IOIBUF_X52_Y32_N22
\g_bary[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(7),
	o => \g_bary[7]~input_o\);

-- Location: LCCOMB_X44_Y30_N18
\gi~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~4_combout\ = (\g_bary[7]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_bary[7]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~4_combout\);

-- Location: FF_X44_Y30_N19
\gi[7]\ : dffeas
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
	q => gi(7));

-- Location: LCCOMB_X44_Y30_N26
\next_sum_Hpx~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_sum_Hpx~1_combout\ = (gi(4)) # ((gi(6)) # ((gi(5)) # (gi(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(4),
	datab => gi(6),
	datac => gi(5),
	datad => gi(7),
	combout => \next_sum_Hpx~1_combout\);

-- Location: IOIBUF_X41_Y41_N8
\X_Cont[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(8),
	o => \X_Cont[8]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\X_Cont[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(5),
	o => \X_Cont[5]~input_o\);

-- Location: IOIBUF_X38_Y41_N8
\X_Cont[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(7),
	o => \X_Cont[7]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\X_Cont[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(6),
	o => \X_Cont[6]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\X_Cont[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(4),
	o => \X_Cont[4]~input_o\);

-- Location: LCCOMB_X37_Y30_N28
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\X_Cont[5]~input_o\ & (!\X_Cont[7]~input_o\ & (!\X_Cont[6]~input_o\ & !\X_Cont[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[5]~input_o\,
	datab => \X_Cont[7]~input_o\,
	datac => \X_Cont[6]~input_o\,
	datad => \X_Cont[4]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y30_N30
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\X_Cont[8]~input_o\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X_Cont[8]~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X36_Y0_N1
\X_Cont[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(1),
	o => \X_Cont[1]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\X_Cont[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(0),
	o => \X_Cont[0]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\X_Cont[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(2),
	o => \X_Cont[2]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\X_Cont[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X_Cont(3),
	o => \X_Cont[3]~input_o\);

-- Location: LCCOMB_X36_Y29_N0
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!\X_Cont[3]~input_o\) # (!\X_Cont[2]~input_o\)) # (!\X_Cont[0]~input_o\)) # (!\X_Cont[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[1]~input_o\,
	datab => \X_Cont[0]~input_o\,
	datac => \X_Cont[2]~input_o\,
	datad => \X_Cont[3]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X52_Y31_N8
\g_bary[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(0),
	o => \g_bary[0]~input_o\);

-- Location: LCCOMB_X44_Y30_N10
\gi~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~3_combout\ = (\reset~input_o\ & \g_bary[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \g_bary[0]~input_o\,
	combout => \gi~3_combout\);

-- Location: FF_X44_Y30_N11
\gi[0]\ : dffeas
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
	q => gi(0));

-- Location: IOIBUF_X52_Y30_N1
\g_bary[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(2),
	o => \g_bary[2]~input_o\);

-- Location: LCCOMB_X44_Y30_N2
\gi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~1_combout\ = (\reset~input_o\ & \g_bary[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \g_bary[2]~input_o\,
	combout => \gi~1_combout\);

-- Location: FF_X44_Y30_N3
\gi[2]\ : dffeas
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
	q => gi(2));

-- Location: IOIBUF_X52_Y32_N8
\g_bary[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(1),
	o => \g_bary[1]~input_o\);

-- Location: LCCOMB_X44_Y30_N4
\gi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~2_combout\ = (\g_bary[1]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_bary[1]~input_o\,
	datad => \reset~input_o\,
	combout => \gi~2_combout\);

-- Location: FF_X44_Y30_N5
\gi[1]\ : dffeas
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
	q => gi(1));

-- Location: IOIBUF_X43_Y41_N8
\g_bary[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_bary(3),
	o => \g_bary[3]~input_o\);

-- Location: LCCOMB_X44_Y30_N28
\gi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gi~0_combout\ = (\reset~input_o\ & \g_bary[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \g_bary[3]~input_o\,
	combout => \gi~0_combout\);

-- Location: FF_X44_Y30_N29
\gi[3]\ : dffeas
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
	q => gi(3));

-- Location: LCCOMB_X44_Y30_N24
\next_sum_Hpx~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_sum_Hpx~0_combout\ = (gi(0)) # ((gi(2)) # ((gi(1)) # (gi(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => gi(0),
	datab => gi(2),
	datac => gi(1),
	datad => gi(3),
	combout => \next_sum_Hpx~0_combout\);

-- Location: LCCOMB_X41_Y30_N20
\next_sum_Hpx~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_sum_Hpx~2_combout\ = (\next_sum_Hpx~1_combout\) # ((\next_sum_Hpx~0_combout\) # ((\LessThan0~2_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_sum_Hpx~1_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \next_sum_Hpx~0_combout\,
	combout => \next_sum_Hpx~2_combout\);

-- Location: LCCOMB_X38_Y26_N6
\Add1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\state.colonne~q\ & !\next_sum_Hpx~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.colonne~q\,
	datad => \next_sum_Hpx~2_combout\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X38_Y26_N8
\Add1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (\state.colonne~q\ & ((\next_sum_Hpx~2_combout\))) # (!\state.colonne~q\ & (\state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.colonne~q\,
	datac => \state.init~q\,
	datad => \next_sum_Hpx~2_combout\,
	combout => \Add1~39_combout\);

-- Location: LCCOMB_X35_Y28_N6
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (sum_Hpx(0) & (\X_Cont[0]~input_o\ $ (VCC))) # (!sum_Hpx(0) & (\X_Cont[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((sum_Hpx(0) & \X_Cont[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(0),
	datab => \X_Cont[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X34_Y27_N12
\Add1~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (\Add1~0_combout\ & ((\Add1~38_combout\) # ((sum_Hpx(0) & \Add1~39_combout\)))) # (!\Add1~0_combout\ & (((sum_Hpx(0) & \Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~38_combout\,
	datac => sum_Hpx(0),
	datad => \Add1~39_combout\,
	combout => \Add1~75_combout\);

-- Location: FF_X34_Y27_N13
\sum_Hpx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~75_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(0));

-- Location: LCCOMB_X35_Y28_N8
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (sum_Hpx(1) & ((\X_Cont[1]~input_o\ & (\Add1~1\ & VCC)) # (!\X_Cont[1]~input_o\ & (!\Add1~1\)))) # (!sum_Hpx(1) & ((\X_Cont[1]~input_o\ & (!\Add1~1\)) # (!\X_Cont[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((sum_Hpx(1) & (!\X_Cont[1]~input_o\ & !\Add1~1\)) # (!sum_Hpx(1) & ((!\Add1~1\) # (!\X_Cont[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(1),
	datab => \X_Cont[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X38_Y26_N22
\Add1~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (\Add1~2_combout\ & ((\Add1~38_combout\) # ((\Add1~39_combout\ & sum_Hpx(1))))) # (!\Add1~2_combout\ & (\Add1~39_combout\ & (sum_Hpx(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(1),
	datad => \Add1~38_combout\,
	combout => \Add1~76_combout\);

-- Location: FF_X35_Y26_N3
\sum_Hpx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~76_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(1));

-- Location: LCCOMB_X35_Y28_N10
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\X_Cont[2]~input_o\ $ (sum_Hpx(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\X_Cont[2]~input_o\ & ((sum_Hpx(2)) # (!\Add1~3\))) # (!\X_Cont[2]~input_o\ & (sum_Hpx(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[2]~input_o\,
	datab => sum_Hpx(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X34_Y27_N6
\Add1~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\Add1~39_combout\ & ((sum_Hpx(2)) # ((\Add1~38_combout\ & \Add1~4_combout\)))) # (!\Add1~39_combout\ & (\Add1~38_combout\ & (\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => \Add1~38_combout\,
	datac => \Add1~4_combout\,
	datad => sum_Hpx(2),
	combout => \Add1~77_combout\);

-- Location: FF_X35_Y26_N1
\sum_Hpx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~77_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(2));

-- Location: LCCOMB_X35_Y28_N12
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (sum_Hpx(3) & ((\X_Cont[3]~input_o\ & (\Add1~5\ & VCC)) # (!\X_Cont[3]~input_o\ & (!\Add1~5\)))) # (!sum_Hpx(3) & ((\X_Cont[3]~input_o\ & (!\Add1~5\)) # (!\X_Cont[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((sum_Hpx(3) & (!\X_Cont[3]~input_o\ & !\Add1~5\)) # (!sum_Hpx(3) & ((!\Add1~5\) # (!\X_Cont[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(3),
	datab => \X_Cont[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X35_Y26_N8
\Add1~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (\Add1~6_combout\ & ((\Add1~38_combout\) # ((\Add1~39_combout\ & sum_Hpx(3))))) # (!\Add1~6_combout\ & (\Add1~39_combout\ & (sum_Hpx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(3),
	datad => \Add1~38_combout\,
	combout => \Add1~78_combout\);

-- Location: FF_X35_Y26_N7
\sum_Hpx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~78_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(3));

-- Location: LCCOMB_X35_Y28_N14
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\X_Cont[4]~input_o\ $ (sum_Hpx(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\X_Cont[4]~input_o\ & ((sum_Hpx(4)) # (!\Add1~7\))) # (!\X_Cont[4]~input_o\ & (sum_Hpx(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[4]~input_o\,
	datab => sum_Hpx(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X35_Y24_N16
\Add1~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (\Add1~39_combout\ & ((sum_Hpx(4)) # ((\Add1~38_combout\ & \Add1~8_combout\)))) # (!\Add1~39_combout\ & (\Add1~38_combout\ & ((\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => \Add1~38_combout\,
	datac => sum_Hpx(4),
	datad => \Add1~8_combout\,
	combout => \Add1~79_combout\);

-- Location: FF_X35_Y26_N13
\sum_Hpx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~79_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(4));

-- Location: LCCOMB_X35_Y28_N16
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\X_Cont[5]~input_o\ & ((sum_Hpx(5) & (\Add1~9\ & VCC)) # (!sum_Hpx(5) & (!\Add1~9\)))) # (!\X_Cont[5]~input_o\ & ((sum_Hpx(5) & (!\Add1~9\)) # (!sum_Hpx(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\X_Cont[5]~input_o\ & (!sum_Hpx(5) & !\Add1~9\)) # (!\X_Cont[5]~input_o\ & ((!\Add1~9\) # (!sum_Hpx(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[5]~input_o\,
	datab => sum_Hpx(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X36_Y26_N2
\Add1~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (\Add1~10_combout\ & ((\Add1~38_combout\) # ((\Add1~39_combout\ & sum_Hpx(5))))) # (!\Add1~10_combout\ & (\Add1~39_combout\ & (sum_Hpx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(5),
	datad => \Add1~38_combout\,
	combout => \Add1~80_combout\);

-- Location: FF_X36_Y26_N3
\sum_Hpx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~80_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(5));

-- Location: LCCOMB_X35_Y28_N18
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\X_Cont[6]~input_o\ $ (sum_Hpx(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\X_Cont[6]~input_o\ & ((sum_Hpx(6)) # (!\Add1~11\))) # (!\X_Cont[6]~input_o\ & (sum_Hpx(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[6]~input_o\,
	datab => sum_Hpx(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X36_Y28_N22
\Add1~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (\Add1~38_combout\ & ((\Add1~12_combout\) # ((sum_Hpx(6) & \Add1~39_combout\)))) # (!\Add1~38_combout\ & (((sum_Hpx(6) & \Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~12_combout\,
	datac => sum_Hpx(6),
	datad => \Add1~39_combout\,
	combout => \Add1~81_combout\);

-- Location: FF_X35_Y26_N11
\sum_Hpx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~81_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(6));

-- Location: LCCOMB_X35_Y28_N20
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (sum_Hpx(7) & ((\X_Cont[7]~input_o\ & (\Add1~13\ & VCC)) # (!\X_Cont[7]~input_o\ & (!\Add1~13\)))) # (!sum_Hpx(7) & ((\X_Cont[7]~input_o\ & (!\Add1~13\)) # (!\X_Cont[7]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((sum_Hpx(7) & (!\X_Cont[7]~input_o\ & !\Add1~13\)) # (!sum_Hpx(7) & ((!\Add1~13\) # (!\X_Cont[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(7),
	datab => \X_Cont[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X35_Y28_N0
\Add1~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (sum_Hpx(7) & ((\Add1~39_combout\) # ((\Add1~38_combout\ & \Add1~14_combout\)))) # (!sum_Hpx(7) & (((\Add1~38_combout\ & \Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(7),
	datab => \Add1~39_combout\,
	datac => \Add1~38_combout\,
	datad => \Add1~14_combout\,
	combout => \Add1~82_combout\);

-- Location: FF_X35_Y26_N23
\sum_Hpx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~82_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(7));

-- Location: LCCOMB_X35_Y28_N22
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((sum_Hpx(8) $ (\X_Cont[8]~input_o\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((sum_Hpx(8) & ((\X_Cont[8]~input_o\) # (!\Add1~15\))) # (!sum_Hpx(8) & (\X_Cont[8]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(8),
	datab => \X_Cont[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X35_Y28_N2
\Add1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add1~38_combout\ & ((\Add1~16_combout\) # ((\Add1~39_combout\ & sum_Hpx(8))))) # (!\Add1~38_combout\ & (\Add1~39_combout\ & ((sum_Hpx(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~39_combout\,
	datac => \Add1~16_combout\,
	datad => sum_Hpx(8),
	combout => \Add1~50_combout\);

-- Location: FF_X35_Y26_N5
\sum_Hpx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~50_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(8));

-- Location: LCCOMB_X35_Y28_N24
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (sum_Hpx(9) & (!\Add1~17\)) # (!sum_Hpx(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!sum_Hpx(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X36_Y28_N20
\Add1~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~49_combout\ = (\Add1~38_combout\ & ((\Add1~18_combout\) # ((sum_Hpx(9) & \Add1~39_combout\)))) # (!\Add1~38_combout\ & (((sum_Hpx(9) & \Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~18_combout\,
	datac => sum_Hpx(9),
	datad => \Add1~39_combout\,
	combout => \Add1~49_combout\);

-- Location: FF_X35_Y26_N27
\sum_Hpx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~49_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(9));

-- Location: LCCOMB_X35_Y28_N26
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (sum_Hpx(10) & (\Add1~19\ $ (GND))) # (!sum_Hpx(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((sum_Hpx(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X36_Y26_N0
\Add1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\Add1~20_combout\ & ((\Add1~38_combout\) # ((\Add1~39_combout\ & sum_Hpx(10))))) # (!\Add1~20_combout\ & (\Add1~39_combout\ & (sum_Hpx(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(10),
	datad => \Add1~38_combout\,
	combout => \Add1~48_combout\);

-- Location: FF_X36_Y26_N1
\sum_Hpx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(10));

-- Location: LCCOMB_X35_Y28_N28
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (sum_Hpx(11) & (!\Add1~21\)) # (!sum_Hpx(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!sum_Hpx(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X35_Y28_N4
\Add1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\Add1~38_combout\ & ((\Add1~22_combout\) # ((\Add1~39_combout\ & sum_Hpx(11))))) # (!\Add1~38_combout\ & (\Add1~39_combout\ & (sum_Hpx(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(11),
	datad => \Add1~22_combout\,
	combout => \Add1~47_combout\);

-- Location: FF_X35_Y26_N21
\sum_Hpx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~47_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(11));

-- Location: LCCOMB_X35_Y28_N30
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (sum_Hpx(12) & (\Add1~23\ $ (GND))) # (!sum_Hpx(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((sum_Hpx(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X34_Y27_N8
\Add1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add1~39_combout\ & ((sum_Hpx(12)) # ((\Add1~24_combout\ & \Add1~38_combout\)))) # (!\Add1~39_combout\ & (((\Add1~24_combout\ & \Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => sum_Hpx(12),
	datac => \Add1~24_combout\,
	datad => \Add1~38_combout\,
	combout => \Add1~46_combout\);

-- Location: FF_X35_Y26_N29
\sum_Hpx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~46_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(12));

-- Location: LCCOMB_X35_Y27_N0
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (sum_Hpx(13) & (!\Add1~25\)) # (!sum_Hpx(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!sum_Hpx(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X35_Y27_N30
\Add1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (\Add1~38_combout\ & ((\Add1~26_combout\) # ((\Add1~39_combout\ & sum_Hpx(13))))) # (!\Add1~38_combout\ & (((\Add1~39_combout\ & sum_Hpx(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~26_combout\,
	datac => \Add1~39_combout\,
	datad => sum_Hpx(13),
	combout => \Add1~45_combout\);

-- Location: FF_X34_Y26_N3
\sum_Hpx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~45_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(13));

-- Location: LCCOMB_X35_Y27_N2
\Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (sum_Hpx(14) & (\Add1~27\ $ (GND))) # (!sum_Hpx(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((sum_Hpx(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X34_Y27_N30
\Add1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Add1~39_combout\ & ((sum_Hpx(14)) # ((\Add1~38_combout\ & \Add1~28_combout\)))) # (!\Add1~39_combout\ & (\Add1~38_combout\ & (\Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => \Add1~38_combout\,
	datac => \Add1~28_combout\,
	datad => sum_Hpx(14),
	combout => \Add1~44_combout\);

-- Location: FF_X34_Y26_N5
\sum_Hpx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~44_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(14));

-- Location: LCCOMB_X35_Y27_N4
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (sum_Hpx(15) & (!\Add1~29\)) # (!sum_Hpx(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!sum_Hpx(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X35_Y27_N28
\Add1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (\Add1~39_combout\ & ((sum_Hpx(15)) # ((\Add1~30_combout\ & \Add1~38_combout\)))) # (!\Add1~39_combout\ & (((\Add1~30_combout\ & \Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => sum_Hpx(15),
	datac => \Add1~30_combout\,
	datad => \Add1~38_combout\,
	combout => \Add1~43_combout\);

-- Location: FF_X35_Y26_N31
\sum_Hpx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~43_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(15));

-- Location: LCCOMB_X35_Y27_N6
\Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (sum_Hpx(16) & (\Add1~31\ $ (GND))) # (!sum_Hpx(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((sum_Hpx(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X35_Y24_N18
\Add1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add1~39_combout\ & ((sum_Hpx(16)) # ((\Add1~38_combout\ & \Add1~32_combout\)))) # (!\Add1~39_combout\ & (\Add1~38_combout\ & ((\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => \Add1~38_combout\,
	datac => sum_Hpx(16),
	datad => \Add1~32_combout\,
	combout => \Add1~42_combout\);

-- Location: FF_X35_Y24_N19
\sum_Hpx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(16));

-- Location: LCCOMB_X35_Y27_N8
\Add1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (sum_Hpx(17) & (!\Add1~33\)) # (!sum_Hpx(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!sum_Hpx(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X38_Y27_N4
\Add1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (sum_Hpx(17) & ((\Add1~39_combout\) # ((\Add1~34_combout\ & \Add1~38_combout\)))) # (!sum_Hpx(17) & (\Add1~34_combout\ & (\Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(17),
	datab => \Add1~34_combout\,
	datac => \Add1~38_combout\,
	datad => \Add1~39_combout\,
	combout => \Add1~41_combout\);

-- Location: FF_X35_Y26_N19
\sum_Hpx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~41_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(17));

-- Location: LCCOMB_X35_Y27_N10
\Add1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (sum_Hpx(18) & (\Add1~35\ $ (GND))) # (!sum_Hpx(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((sum_Hpx(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X35_Y24_N0
\Add1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Add1~39_combout\ & ((sum_Hpx(18)) # ((\Add1~38_combout\ & \Add1~36_combout\)))) # (!\Add1~39_combout\ & (\Add1~38_combout\ & ((\Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datab => \Add1~38_combout\,
	datac => sum_Hpx(18),
	datad => \Add1~36_combout\,
	combout => \Add1~40_combout\);

-- Location: FF_X35_Y24_N1
\sum_Hpx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(18));

-- Location: LCCOMB_X35_Y27_N12
\Add1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (sum_Hpx(19) & (!\Add1~37\)) # (!sum_Hpx(19) & ((\Add1~37\) # (GND)))
-- \Add1~52\ = CARRY((!\Add1~37\) # (!sum_Hpx(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X38_Y27_N6
\Add1~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\Add1~51_combout\ & ((\Add1~38_combout\) # ((sum_Hpx(19) & \Add1~39_combout\)))) # (!\Add1~51_combout\ & (sum_Hpx(19) & ((\Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~51_combout\,
	datab => sum_Hpx(19),
	datac => \Add1~38_combout\,
	datad => \Add1~39_combout\,
	combout => \Add1~74_combout\);

-- Location: FF_X34_Y25_N21
\sum_Hpx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~74_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(19));

-- Location: LCCOMB_X35_Y27_N14
\Add1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (sum_Hpx(20) & (\Add1~52\ $ (GND))) # (!sum_Hpx(20) & (!\Add1~52\ & VCC))
-- \Add1~54\ = CARRY((sum_Hpx(20) & !\Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(20),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~53_combout\,
	cout => \Add1~54\);

-- Location: LCCOMB_X34_Y26_N0
\Add1~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = (sum_Hpx(20) & ((\Add1~39_combout\) # ((\Add1~38_combout\ & \Add1~53_combout\)))) # (!sum_Hpx(20) & (\Add1~38_combout\ & ((\Add1~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(20),
	datab => \Add1~38_combout\,
	datac => \Add1~39_combout\,
	datad => \Add1~53_combout\,
	combout => \Add1~73_combout\);

-- Location: FF_X32_Y25_N23
\sum_Hpx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add1~73_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(20));

-- Location: LCCOMB_X35_Y27_N16
\Add1~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~55_combout\ = (sum_Hpx(21) & (!\Add1~54\)) # (!sum_Hpx(21) & ((\Add1~54\) # (GND)))
-- \Add1~56\ = CARRY((!\Add1~54\) # (!sum_Hpx(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(21),
	datad => VCC,
	cin => \Add1~54\,
	combout => \Add1~55_combout\,
	cout => \Add1~56\);

-- Location: LCCOMB_X36_Y25_N26
\Add1~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (\Add1~38_combout\ & ((\Add1~55_combout\) # ((\Add1~39_combout\ & sum_Hpx(21))))) # (!\Add1~38_combout\ & (\Add1~39_combout\ & (sum_Hpx(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(21),
	datad => \Add1~55_combout\,
	combout => \Add1~72_combout\);

-- Location: FF_X36_Y25_N27
\sum_Hpx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~72_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(21));

-- Location: LCCOMB_X35_Y27_N18
\Add1~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (sum_Hpx(22) & (\Add1~56\ $ (GND))) # (!sum_Hpx(22) & (!\Add1~56\ & VCC))
-- \Add1~58\ = CARRY((sum_Hpx(22) & !\Add1~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(22),
	datad => VCC,
	cin => \Add1~56\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X37_Y25_N30
\Add1~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\Add1~57_combout\ & ((\Add1~38_combout\) # ((\Add1~39_combout\ & sum_Hpx(22))))) # (!\Add1~57_combout\ & (\Add1~39_combout\ & (sum_Hpx(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~57_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(22),
	datad => \Add1~38_combout\,
	combout => \Add1~71_combout\);

-- Location: FF_X37_Y25_N31
\sum_Hpx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~71_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(22));

-- Location: LCCOMB_X35_Y27_N20
\Add1~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (sum_Hpx(23) & (!\Add1~58\)) # (!sum_Hpx(23) & ((\Add1~58\) # (GND)))
-- \Add1~60\ = CARRY((!\Add1~58\) # (!sum_Hpx(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(23),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~59_combout\,
	cout => \Add1~60\);

-- Location: LCCOMB_X35_Y25_N20
\Add1~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (\Add1~38_combout\ & ((\Add1~59_combout\) # ((\Add1~39_combout\ & sum_Hpx(23))))) # (!\Add1~38_combout\ & (\Add1~39_combout\ & (sum_Hpx(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(23),
	datad => \Add1~59_combout\,
	combout => \Add1~70_combout\);

-- Location: FF_X35_Y25_N21
\sum_Hpx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~70_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(23));

-- Location: LCCOMB_X35_Y27_N22
\Add1~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~61_combout\ = (sum_Hpx(24) & (\Add1~60\ $ (GND))) # (!sum_Hpx(24) & (!\Add1~60\ & VCC))
-- \Add1~62\ = CARRY((sum_Hpx(24) & !\Add1~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(24),
	datad => VCC,
	cin => \Add1~60\,
	combout => \Add1~61_combout\,
	cout => \Add1~62\);

-- Location: LCCOMB_X35_Y25_N22
\Add1~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (\Add1~38_combout\ & ((\Add1~61_combout\) # ((\Add1~39_combout\ & sum_Hpx(24))))) # (!\Add1~38_combout\ & (\Add1~39_combout\ & (sum_Hpx(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(24),
	datad => \Add1~61_combout\,
	combout => \Add1~69_combout\);

-- Location: FF_X35_Y25_N23
\sum_Hpx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~69_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(24));

-- Location: LCCOMB_X35_Y27_N24
\Add1~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (sum_Hpx(25) & (!\Add1~62\)) # (!sum_Hpx(25) & ((\Add1~62\) # (GND)))
-- \Add1~64\ = CARRY((!\Add1~62\) # (!sum_Hpx(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(25),
	datad => VCC,
	cin => \Add1~62\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X35_Y25_N26
\Add1~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\Add1~38_combout\ & ((\Add1~63_combout\) # ((\Add1~39_combout\ & sum_Hpx(25))))) # (!\Add1~38_combout\ & (\Add1~39_combout\ & (sum_Hpx(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~39_combout\,
	datac => sum_Hpx(25),
	datad => \Add1~63_combout\,
	combout => \Add1~68_combout\);

-- Location: FF_X35_Y25_N27
\sum_Hpx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~68_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(25));

-- Location: LCCOMB_X35_Y27_N26
\Add1~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = \Add1~64\ $ (!sum_Hpx(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sum_Hpx(26),
	cin => \Add1~64\,
	combout => \Add1~65_combout\);

-- Location: LCCOMB_X36_Y25_N20
\Add1~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (\Add1~38_combout\ & ((\Add1~65_combout\) # ((sum_Hpx(26) & \Add1~39_combout\)))) # (!\Add1~38_combout\ & (((sum_Hpx(26) & \Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~65_combout\,
	datac => sum_Hpx(26),
	datad => \Add1~39_combout\,
	combout => \Add1~67_combout\);

-- Location: FF_X36_Y25_N21
\sum_Hpx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add1~67_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Hpx(26));

-- Location: LCCOMB_X37_Y26_N14
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (n_x(0) & (\next_sum_Hpx~2_combout\ $ (GND))) # (!n_x(0) & (!\next_sum_Hpx~2_combout\ & VCC))
-- \Add0~1\ = CARRY((n_x(0) & !\next_sum_Hpx~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => \next_sum_Hpx~2_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X36_Y26_N4
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\state.colonne~q\ & (\Add0~0_combout\)) # (!\state.colonne~q\ & (((n_x(0) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \state.colonne~q\,
	datac => n_x(0),
	datad => \state.init~q\,
	combout => \Add0~32_combout\);

-- Location: FF_X36_Y26_N5
\n_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(0));

-- Location: LCCOMB_X37_Y26_N16
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (n_x(1) & (!\Add0~1\)) # (!n_x(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!n_x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X37_Y26_N0
\Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\state.colonne~q\ & (((\Add0~2_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & ((n_x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \Add0~2_combout\,
	datac => \state.colonne~q\,
	datad => n_x(1),
	combout => \Add0~31_combout\);

-- Location: FF_X35_Y26_N15
\n_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add0~31_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(1));

-- Location: LCCOMB_X37_Y26_N18
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (n_x(2) & (\Add0~3\ $ (GND))) # (!n_x(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((n_x(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X36_Y26_N6
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\state.colonne~q\ & (\Add0~4_combout\)) # (!\state.colonne~q\ & (((n_x(2) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \state.colonne~q\,
	datac => n_x(2),
	datad => \state.init~q\,
	combout => \Add0~30_combout\);

-- Location: FF_X36_Y26_N7
\n_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(2));

-- Location: LCCOMB_X37_Y26_N20
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (n_x(3) & (!\Add0~5\)) # (!n_x(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!n_x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X37_Y26_N6
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\state.colonne~q\ & (((\Add0~6_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(3),
	datad => \Add0~6_combout\,
	combout => \Add0~29_combout\);

-- Location: FF_X37_Y26_N7
\n_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~29_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(3));

-- Location: LCCOMB_X37_Y26_N22
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (n_x(4) & (\Add0~7\ $ (GND))) # (!n_x(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((n_x(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X37_Y26_N4
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\state.colonne~q\ & (\Add0~8_combout\)) # (!\state.colonne~q\ & (((n_x(4) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \state.colonne~q\,
	datac => n_x(4),
	datad => \state.init~q\,
	combout => \Add0~28_combout\);

-- Location: FF_X37_Y26_N5
\n_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(4));

-- Location: LCCOMB_X37_Y26_N24
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (n_x(5) & (!\Add0~9\)) # (!n_x(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!n_x(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X37_Y26_N10
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\state.colonne~q\ & (((\Add0~10_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(5),
	datad => \Add0~10_combout\,
	combout => \Add0~27_combout\);

-- Location: FF_X37_Y26_N11
\n_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~27_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(5));

-- Location: LCCOMB_X37_Y26_N26
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (n_x(6) & (\Add0~11\ $ (GND))) # (!n_x(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((n_x(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X37_Y26_N8
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\state.colonne~q\ & (\Add0~12_combout\)) # (!\state.colonne~q\ & (((n_x(6) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \state.colonne~q\,
	datac => n_x(6),
	datad => \state.init~q\,
	combout => \Add0~26_combout\);

-- Location: FF_X37_Y26_N9
\n_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(6));

-- Location: LCCOMB_X37_Y26_N28
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (n_x(7) & (!\Add0~13\)) # (!n_x(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!n_x(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X37_Y26_N2
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\state.colonne~q\ & (((\Add0~14_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(7),
	datad => \Add0~14_combout\,
	combout => \Add0~25_combout\);

-- Location: FF_X37_Y26_N3
\n_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~25_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(7));

-- Location: LCCOMB_X37_Y26_N30
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (n_x(8) & (\Add0~15\ $ (GND))) # (!n_x(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((n_x(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X37_Y26_N12
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\state.colonne~q\ & (\Add0~16_combout\)) # (!\state.colonne~q\ & (((n_x(8) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \state.colonne~q\,
	datac => n_x(8),
	datad => \state.init~q\,
	combout => \Add0~24_combout\);

-- Location: FF_X37_Y26_N13
\n_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(8));

-- Location: LCCOMB_X37_Y25_N0
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (n_x(9) & (!\Add0~17\)) # (!n_x(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!n_x(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X37_Y25_N28
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\state.colonne~q\ & (((\Add0~18_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(9),
	datad => \Add0~18_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X37_Y25_N29
\n_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~23_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(9));

-- Location: LCCOMB_X37_Y25_N2
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (n_x(10) & (\Add0~19\ $ (GND))) # (!n_x(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((n_x(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X37_Y25_N18
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\state.colonne~q\ & (((\Add0~20_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(10),
	datad => \Add0~20_combout\,
	combout => \Add0~22_combout\);

-- Location: FF_X37_Y25_N19
\n_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(10));

-- Location: LCCOMB_X37_Y25_N4
\Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (n_x(11) & (!\Add0~21\)) # (!n_x(11) & ((\Add0~21\) # (GND)))
-- \Add0~34\ = CARRY((!\Add0~21\) # (!n_x(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X37_Y25_N20
\Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\state.colonne~q\ & (\Add0~33_combout\)) # (!\state.colonne~q\ & (((n_x(11) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \state.colonne~q\,
	datac => n_x(11),
	datad => \state.init~q\,
	combout => \Add0~53_combout\);

-- Location: FF_X37_Y25_N21
\n_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~53_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(11));

-- Location: LCCOMB_X37_Y25_N6
\Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (n_x(12) & (\Add0~34\ $ (GND))) # (!n_x(12) & (!\Add0~34\ & VCC))
-- \Add0~36\ = CARRY((n_x(12) & !\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X37_Y25_N22
\Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\state.colonne~q\ & (((\Add0~35_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(12),
	datad => \Add0~35_combout\,
	combout => \Add0~52_combout\);

-- Location: FF_X37_Y25_N23
\n_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(12));

-- Location: LCCOMB_X37_Y25_N8
\Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (n_x(13) & (!\Add0~36\)) # (!n_x(13) & ((\Add0~36\) # (GND)))
-- \Add0~38\ = CARRY((!\Add0~36\) # (!n_x(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(13),
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X37_Y25_N24
\Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\state.colonne~q\ & (((\Add0~37_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & (n_x(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.colonne~q\,
	datac => n_x(13),
	datad => \Add0~37_combout\,
	combout => \Add0~51_combout\);

-- Location: FF_X37_Y25_N25
\n_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~51_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(13));

-- Location: LCCOMB_X37_Y25_N10
\Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (n_x(14) & (\Add0~38\ $ (GND))) # (!n_x(14) & (!\Add0~38\ & VCC))
-- \Add0~40\ = CARRY((n_x(14) & !\Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(14),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X36_Y25_N24
\Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\state.colonne~q\ & (((\Add0~39_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & ((n_x(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \Add0~39_combout\,
	datac => n_x(14),
	datad => \state.colonne~q\,
	combout => \Add0~50_combout\);

-- Location: FF_X36_Y25_N25
\n_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(14));

-- Location: LCCOMB_X37_Y25_N12
\Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (n_x(15) & (!\Add0~40\)) # (!n_x(15) & ((\Add0~40\) # (GND)))
-- \Add0~42\ = CARRY((!\Add0~40\) # (!n_x(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(15),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X36_Y25_N30
\Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\state.colonne~q\ & (((\Add0~41_combout\)))) # (!\state.colonne~q\ & (\state.init~q\ & ((n_x(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \Add0~41_combout\,
	datac => n_x(15),
	datad => \state.colonne~q\,
	combout => \Add0~49_combout\);

-- Location: FF_X36_Y25_N31
\n_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~49_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(15));

-- Location: LCCOMB_X37_Y25_N14
\Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (n_x(16) & (\Add0~42\ $ (GND))) # (!n_x(16) & (!\Add0~42\ & VCC))
-- \Add0~44\ = CARRY((n_x(16) & !\Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X35_Y25_N28
\Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\state.colonne~q\ & (\Add0~43_combout\)) # (!\state.colonne~q\ & (((\state.init~q\ & n_x(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \state.init~q\,
	datac => n_x(16),
	datad => \state.colonne~q\,
	combout => \Add0~48_combout\);

-- Location: FF_X35_Y25_N29
\n_x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(16));

-- Location: LCCOMB_X37_Y25_N16
\Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = \Add0~44\ $ (n_x(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => n_x(17),
	cin => \Add0~44\,
	combout => \Add0~45_combout\);

-- Location: LCCOMB_X35_Y25_N24
\Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\state.colonne~q\ & (\Add0~45_combout\)) # (!\state.colonne~q\ & (((n_x(17) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.colonne~q\,
	datab => \Add0~45_combout\,
	datac => n_x(17),
	datad => \state.init~q\,
	combout => \Add0~47_combout\);

-- Location: FF_X35_Y25_N25
\n_x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add0~47_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_x(17));

-- Location: LCCOMB_X35_Y26_N2
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (sum_Hpx(3)) # ((sum_Hpx(2)) # ((sum_Hpx(1)) # (sum_Hpx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(3),
	datab => sum_Hpx(2),
	datac => sum_Hpx(1),
	datad => sum_Hpx(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y26_N10
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (sum_Hpx(5)) # ((sum_Hpx(4)) # ((sum_Hpx(6)) # (\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(5),
	datab => sum_Hpx(4),
	datac => sum_Hpx(6),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X35_Y26_N12
\LessThan1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (sum_Hpx(7)) # (\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(7),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y26_N14
\LessThan1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~4_cout\ = CARRY(\LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datad => VCC,
	cout => \LessThan1~4_cout\);

-- Location: LCCOMB_X35_Y26_N16
\LessThan1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~6_cout\ = CARRY((n_x(0) & ((!\LessThan1~4_cout\) # (!sum_Hpx(8)))) # (!n_x(0) & (!sum_Hpx(8) & !\LessThan1~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(8),
	datad => VCC,
	cin => \LessThan1~4_cout\,
	cout => \LessThan1~6_cout\);

-- Location: LCCOMB_X35_Y26_N18
\LessThan1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~8_cout\ = CARRY((sum_Hpx(9) & ((!\LessThan1~6_cout\) # (!n_x(1)))) # (!sum_Hpx(9) & (!n_x(1) & !\LessThan1~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(9),
	datab => n_x(1),
	datad => VCC,
	cin => \LessThan1~6_cout\,
	cout => \LessThan1~8_cout\);

-- Location: LCCOMB_X35_Y26_N20
\LessThan1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~10_cout\ = CARRY((n_x(2) & ((!\LessThan1~8_cout\) # (!sum_Hpx(10)))) # (!n_x(2) & (!sum_Hpx(10) & !\LessThan1~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => sum_Hpx(10),
	datad => VCC,
	cin => \LessThan1~8_cout\,
	cout => \LessThan1~10_cout\);

-- Location: LCCOMB_X35_Y26_N22
\LessThan1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~12_cout\ = CARRY((sum_Hpx(11) & ((!\LessThan1~10_cout\) # (!n_x(3)))) # (!sum_Hpx(11) & (!n_x(3) & !\LessThan1~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(11),
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan1~10_cout\,
	cout => \LessThan1~12_cout\);

-- Location: LCCOMB_X35_Y26_N24
\LessThan1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~14_cout\ = CARRY((n_x(4) & ((!\LessThan1~12_cout\) # (!sum_Hpx(12)))) # (!n_x(4) & (!sum_Hpx(12) & !\LessThan1~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => sum_Hpx(12),
	datad => VCC,
	cin => \LessThan1~12_cout\,
	cout => \LessThan1~14_cout\);

-- Location: LCCOMB_X35_Y26_N26
\LessThan1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~16_cout\ = CARRY((sum_Hpx(13) & ((!\LessThan1~14_cout\) # (!n_x(5)))) # (!sum_Hpx(13) & (!n_x(5) & !\LessThan1~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(13),
	datab => n_x(5),
	datad => VCC,
	cin => \LessThan1~14_cout\,
	cout => \LessThan1~16_cout\);

-- Location: LCCOMB_X35_Y26_N28
\LessThan1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~18_cout\ = CARRY((n_x(6) & ((!\LessThan1~16_cout\) # (!sum_Hpx(14)))) # (!n_x(6) & (!sum_Hpx(14) & !\LessThan1~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => sum_Hpx(14),
	datad => VCC,
	cin => \LessThan1~16_cout\,
	cout => \LessThan1~18_cout\);

-- Location: LCCOMB_X35_Y26_N30
\LessThan1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~20_cout\ = CARRY((sum_Hpx(15) & ((!\LessThan1~18_cout\) # (!n_x(7)))) # (!sum_Hpx(15) & (!n_x(7) & !\LessThan1~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(15),
	datab => n_x(7),
	datad => VCC,
	cin => \LessThan1~18_cout\,
	cout => \LessThan1~20_cout\);

-- Location: LCCOMB_X35_Y25_N0
\LessThan1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~22_cout\ = CARRY((sum_Hpx(16) & (n_x(8) & !\LessThan1~20_cout\)) # (!sum_Hpx(16) & ((n_x(8)) # (!\LessThan1~20_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(16),
	datab => n_x(8),
	datad => VCC,
	cin => \LessThan1~20_cout\,
	cout => \LessThan1~22_cout\);

-- Location: LCCOMB_X35_Y25_N2
\LessThan1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~24_cout\ = CARRY((n_x(9) & (sum_Hpx(17) & !\LessThan1~22_cout\)) # (!n_x(9) & ((sum_Hpx(17)) # (!\LessThan1~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => sum_Hpx(17),
	datad => VCC,
	cin => \LessThan1~22_cout\,
	cout => \LessThan1~24_cout\);

-- Location: LCCOMB_X35_Y25_N4
\LessThan1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~26_cout\ = CARRY((n_x(10) & ((!\LessThan1~24_cout\) # (!sum_Hpx(18)))) # (!n_x(10) & (!sum_Hpx(18) & !\LessThan1~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => sum_Hpx(18),
	datad => VCC,
	cin => \LessThan1~24_cout\,
	cout => \LessThan1~26_cout\);

-- Location: LCCOMB_X35_Y25_N6
\LessThan1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~28_cout\ = CARRY((sum_Hpx(19) & ((!\LessThan1~26_cout\) # (!n_x(11)))) # (!sum_Hpx(19) & (!n_x(11) & !\LessThan1~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(19),
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan1~26_cout\,
	cout => \LessThan1~28_cout\);

-- Location: LCCOMB_X35_Y25_N8
\LessThan1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~30_cout\ = CARRY((sum_Hpx(20) & (n_x(12) & !\LessThan1~28_cout\)) # (!sum_Hpx(20) & ((n_x(12)) # (!\LessThan1~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(20),
	datab => n_x(12),
	datad => VCC,
	cin => \LessThan1~28_cout\,
	cout => \LessThan1~30_cout\);

-- Location: LCCOMB_X35_Y25_N10
\LessThan1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~32_cout\ = CARRY((n_x(13) & (sum_Hpx(21) & !\LessThan1~30_cout\)) # (!n_x(13) & ((sum_Hpx(21)) # (!\LessThan1~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => sum_Hpx(21),
	datad => VCC,
	cin => \LessThan1~30_cout\,
	cout => \LessThan1~32_cout\);

-- Location: LCCOMB_X35_Y25_N12
\LessThan1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~34_cout\ = CARRY((n_x(14) & ((!\LessThan1~32_cout\) # (!sum_Hpx(22)))) # (!n_x(14) & (!sum_Hpx(22) & !\LessThan1~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => sum_Hpx(22),
	datad => VCC,
	cin => \LessThan1~32_cout\,
	cout => \LessThan1~34_cout\);

-- Location: LCCOMB_X35_Y25_N14
\LessThan1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~36_cout\ = CARRY((n_x(15) & (sum_Hpx(23) & !\LessThan1~34_cout\)) # (!n_x(15) & ((sum_Hpx(23)) # (!\LessThan1~34_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => sum_Hpx(23),
	datad => VCC,
	cin => \LessThan1~34_cout\,
	cout => \LessThan1~36_cout\);

-- Location: LCCOMB_X35_Y25_N16
\LessThan1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~38_cout\ = CARRY((sum_Hpx(24) & (n_x(16) & !\LessThan1~36_cout\)) # (!sum_Hpx(24) & ((n_x(16)) # (!\LessThan1~36_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(24),
	datab => n_x(16),
	datad => VCC,
	cin => \LessThan1~36_cout\,
	cout => \LessThan1~38_cout\);

-- Location: LCCOMB_X35_Y25_N18
\LessThan1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~39_combout\ = (sum_Hpx(25) & ((!n_x(17)) # (!\LessThan1~38_cout\))) # (!sum_Hpx(25) & (!\LessThan1~38_cout\ & !n_x(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(25),
	datad => n_x(17),
	cin => \LessThan1~38_cout\,
	combout => \LessThan1~39_combout\);

-- Location: LCCOMB_X32_Y27_N10
\Selector90~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (x_int(8) & (\state.init~q\ & !\state.calcul_barycentre~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_int(8),
	datac => \state.init~q\,
	datad => \state.calcul_barycentre~q\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X32_Y27_N12
\Selector90~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\Selector90~0_combout\) # ((\state.calcul_barycentre~q\ & ((sum_Hpx(26)) # (\LessThan1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => sum_Hpx(26),
	datac => \LessThan1~39_combout\,
	datad => \Selector90~0_combout\,
	combout => \Selector90~1_combout\);

-- Location: FF_X32_Y27_N13
\x_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector90~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(8));

-- Location: LCCOMB_X36_Y26_N12
\Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (n_x(0) & (sum_Hpx(8) $ (VCC))) # (!n_x(0) & ((sum_Hpx(8)) # (GND)))
-- \Add4~1\ = CARRY((sum_Hpx(8)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(8),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X36_Y26_N14
\Add4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (n_x(1) & ((sum_Hpx(9) & (!\Add4~1\)) # (!sum_Hpx(9) & ((\Add4~1\) # (GND))))) # (!n_x(1) & ((sum_Hpx(9) & (\Add4~1\ & VCC)) # (!sum_Hpx(9) & (!\Add4~1\))))
-- \Add4~3\ = CARRY((n_x(1) & ((!\Add4~1\) # (!sum_Hpx(9)))) # (!n_x(1) & (!sum_Hpx(9) & !\Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(1),
	datab => sum_Hpx(9),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X36_Y26_N16
\Add4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((n_x(2) $ (sum_Hpx(10) $ (\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((n_x(2) & (sum_Hpx(10) & !\Add4~3\)) # (!n_x(2) & ((sum_Hpx(10)) # (!\Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => sum_Hpx(10),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X36_Y26_N18
\Add4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (n_x(3) & ((sum_Hpx(11) & (!\Add4~5\)) # (!sum_Hpx(11) & ((\Add4~5\) # (GND))))) # (!n_x(3) & ((sum_Hpx(11) & (\Add4~5\ & VCC)) # (!sum_Hpx(11) & (!\Add4~5\))))
-- \Add4~7\ = CARRY((n_x(3) & ((!\Add4~5\) # (!sum_Hpx(11)))) # (!n_x(3) & (!sum_Hpx(11) & !\Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(3),
	datab => sum_Hpx(11),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X36_Y26_N20
\Add4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((n_x(4) $ (sum_Hpx(12) $ (\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((n_x(4) & (sum_Hpx(12) & !\Add4~7\)) # (!n_x(4) & ((sum_Hpx(12)) # (!\Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => sum_Hpx(12),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X36_Y26_N22
\Add4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (n_x(5) & ((sum_Hpx(13) & (!\Add4~9\)) # (!sum_Hpx(13) & ((\Add4~9\) # (GND))))) # (!n_x(5) & ((sum_Hpx(13) & (\Add4~9\ & VCC)) # (!sum_Hpx(13) & (!\Add4~9\))))
-- \Add4~11\ = CARRY((n_x(5) & ((!\Add4~9\) # (!sum_Hpx(13)))) # (!n_x(5) & (!sum_Hpx(13) & !\Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => sum_Hpx(13),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X36_Y26_N24
\Add4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((sum_Hpx(14) $ (n_x(6) $ (\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((sum_Hpx(14) & ((!\Add4~11\) # (!n_x(6)))) # (!sum_Hpx(14) & (!n_x(6) & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(14),
	datab => n_x(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X36_Y26_N26
\Add4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (n_x(7) & ((sum_Hpx(15) & (!\Add4~13\)) # (!sum_Hpx(15) & ((\Add4~13\) # (GND))))) # (!n_x(7) & ((sum_Hpx(15) & (\Add4~13\ & VCC)) # (!sum_Hpx(15) & (!\Add4~13\))))
-- \Add4~15\ = CARRY((n_x(7) & ((!\Add4~13\) # (!sum_Hpx(15)))) # (!n_x(7) & (!sum_Hpx(15) & !\Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => sum_Hpx(15),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X36_Y26_N28
\Add4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((sum_Hpx(16) $ (n_x(8) $ (\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((sum_Hpx(16) & ((!\Add4~15\) # (!n_x(8)))) # (!sum_Hpx(16) & (!n_x(8) & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(16),
	datab => n_x(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X36_Y26_N30
\Add4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (sum_Hpx(17) & ((n_x(9) & (!\Add4~17\)) # (!n_x(9) & (\Add4~17\ & VCC)))) # (!sum_Hpx(17) & ((n_x(9) & ((\Add4~17\) # (GND))) # (!n_x(9) & (!\Add4~17\))))
-- \Add4~19\ = CARRY((sum_Hpx(17) & (n_x(9) & !\Add4~17\)) # (!sum_Hpx(17) & ((n_x(9)) # (!\Add4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(17),
	datab => n_x(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X36_Y25_N0
\Add4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((sum_Hpx(18) $ (n_x(10) $ (\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((sum_Hpx(18) & ((!\Add4~19\) # (!n_x(10)))) # (!sum_Hpx(18) & (!n_x(10) & !\Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(18),
	datab => n_x(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X36_Y25_N2
\Add4~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~33_combout\ = (n_x(11) & ((sum_Hpx(19) & (!\Add4~21\)) # (!sum_Hpx(19) & ((\Add4~21\) # (GND))))) # (!n_x(11) & ((sum_Hpx(19) & (\Add4~21\ & VCC)) # (!sum_Hpx(19) & (!\Add4~21\))))
-- \Add4~34\ = CARRY((n_x(11) & ((!\Add4~21\) # (!sum_Hpx(19)))) # (!n_x(11) & (!sum_Hpx(19) & !\Add4~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => sum_Hpx(19),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~33_combout\,
	cout => \Add4~34\);

-- Location: LCCOMB_X36_Y25_N4
\Add4~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~35_combout\ = ((sum_Hpx(20) $ (n_x(12) $ (\Add4~34\)))) # (GND)
-- \Add4~36\ = CARRY((sum_Hpx(20) & ((!\Add4~34\) # (!n_x(12)))) # (!sum_Hpx(20) & (!n_x(12) & !\Add4~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(20),
	datab => n_x(12),
	datad => VCC,
	cin => \Add4~34\,
	combout => \Add4~35_combout\,
	cout => \Add4~36\);

-- Location: LCCOMB_X36_Y25_N6
\Add4~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~37_combout\ = (sum_Hpx(21) & ((n_x(13) & (!\Add4~36\)) # (!n_x(13) & (\Add4~36\ & VCC)))) # (!sum_Hpx(21) & ((n_x(13) & ((\Add4~36\) # (GND))) # (!n_x(13) & (!\Add4~36\))))
-- \Add4~38\ = CARRY((sum_Hpx(21) & (n_x(13) & !\Add4~36\)) # (!sum_Hpx(21) & ((n_x(13)) # (!\Add4~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(21),
	datab => n_x(13),
	datad => VCC,
	cin => \Add4~36\,
	combout => \Add4~37_combout\,
	cout => \Add4~38\);

-- Location: LCCOMB_X36_Y25_N8
\Add4~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~39_combout\ = ((sum_Hpx(22) $ (n_x(14) $ (\Add4~38\)))) # (GND)
-- \Add4~40\ = CARRY((sum_Hpx(22) & ((!\Add4~38\) # (!n_x(14)))) # (!sum_Hpx(22) & (!n_x(14) & !\Add4~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(22),
	datab => n_x(14),
	datad => VCC,
	cin => \Add4~38\,
	combout => \Add4~39_combout\,
	cout => \Add4~40\);

-- Location: LCCOMB_X36_Y25_N10
\Add4~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~41_combout\ = (n_x(15) & ((sum_Hpx(23) & (!\Add4~40\)) # (!sum_Hpx(23) & ((\Add4~40\) # (GND))))) # (!n_x(15) & ((sum_Hpx(23) & (\Add4~40\ & VCC)) # (!sum_Hpx(23) & (!\Add4~40\))))
-- \Add4~42\ = CARRY((n_x(15) & ((!\Add4~40\) # (!sum_Hpx(23)))) # (!n_x(15) & (!sum_Hpx(23) & !\Add4~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => sum_Hpx(23),
	datad => VCC,
	cin => \Add4~40\,
	combout => \Add4~41_combout\,
	cout => \Add4~42\);

-- Location: LCCOMB_X36_Y25_N12
\Add4~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~43_combout\ = ((n_x(16) $ (sum_Hpx(24) $ (\Add4~42\)))) # (GND)
-- \Add4~44\ = CARRY((n_x(16) & (sum_Hpx(24) & !\Add4~42\)) # (!n_x(16) & ((sum_Hpx(24)) # (!\Add4~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => sum_Hpx(24),
	datad => VCC,
	cin => \Add4~42\,
	combout => \Add4~43_combout\,
	cout => \Add4~44\);

-- Location: LCCOMB_X36_Y25_N14
\Add4~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~45_combout\ = (sum_Hpx(25) & ((n_x(17) & (!\Add4~44\)) # (!n_x(17) & (\Add4~44\ & VCC)))) # (!sum_Hpx(25) & ((n_x(17) & ((\Add4~44\) # (GND))) # (!n_x(17) & (!\Add4~44\))))
-- \Add4~46\ = CARRY((sum_Hpx(25) & (n_x(17) & !\Add4~44\)) # (!sum_Hpx(25) & ((n_x(17)) # (!\Add4~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(25),
	datab => n_x(17),
	datad => VCC,
	cin => \Add4~44\,
	combout => \Add4~45_combout\,
	cout => \Add4~46\);

-- Location: LCCOMB_X35_Y25_N30
\Add4~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~47_combout\ = (sum_Hpx(26) & (\Add4~45_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~45_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => \Add4~45_combout\,
	datac => sum_Hpx(25),
	datad => \LessThan1~39_combout\,
	combout => \Add4~47_combout\);

-- Location: LCCOMB_X36_Y25_N16
\Add4~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (sum_Hpx(26) & ((GND) # (!\Add4~46\))) # (!sum_Hpx(26) & (\Add4~46\ $ (GND)))
-- \Add4~55\ = CARRY((sum_Hpx(26)) # (!\Add4~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(26),
	datad => VCC,
	cin => \Add4~46\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X36_Y25_N18
\Add4~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~57_combout\ = !\Add4~55\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~55\,
	combout => \Add4~57_combout\);

-- Location: LCCOMB_X34_Y25_N28
\Add4~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~59_combout\ = (\Add4~57_combout\ & ((sum_Hpx(26)) # (\LessThan1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(26),
	datac => \Add4~57_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~59_combout\);

-- Location: LCCOMB_X34_Y25_N26
\Add4~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (\Add4~54_combout\ & ((sum_Hpx(26)) # (\LessThan1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(26),
	datac => \Add4~54_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~56_combout\);

-- Location: LCCOMB_X34_Y25_N22
\Add4~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (sum_Hpx(26) & (((\Add4~43_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~43_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(24),
	datab => sum_Hpx(26),
	datac => \Add4~43_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~48_combout\);

-- Location: LCCOMB_X34_Y25_N24
\Add4~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~49_combout\ = (sum_Hpx(26) & (((\Add4~41_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~41_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(23),
	datab => sum_Hpx(26),
	datac => \Add4~41_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~49_combout\);

-- Location: LCCOMB_X36_Y25_N28
\Add4~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (sum_Hpx(26) & (((\Add4~39_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~39_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(22),
	datab => sum_Hpx(26),
	datac => \Add4~39_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~50_combout\);

-- Location: LCCOMB_X36_Y25_N22
\Add4~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~51_combout\ = (sum_Hpx(26) & (\Add4~37_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~37_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~37_combout\,
	datab => sum_Hpx(26),
	datac => sum_Hpx(21),
	datad => \LessThan1~39_combout\,
	combout => \Add4~51_combout\);

-- Location: LCCOMB_X32_Y25_N22
\Add4~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (sum_Hpx(26) & (\Add4~35_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~35_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~35_combout\,
	datab => sum_Hpx(26),
	datac => sum_Hpx(20),
	datad => \LessThan1~39_combout\,
	combout => \Add4~52_combout\);

-- Location: LCCOMB_X34_Y25_N20
\Add4~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~53_combout\ = (sum_Hpx(26) & (\Add4~33_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~33_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~33_combout\,
	datab => sum_Hpx(26),
	datac => sum_Hpx(19),
	datad => \LessThan1~39_combout\,
	combout => \Add4~53_combout\);

-- Location: LCCOMB_X35_Y24_N12
\Add4~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (sum_Hpx(26) & (((\Add4~20_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~20_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => sum_Hpx(18),
	datac => \Add4~20_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~22_combout\);

-- Location: LCCOMB_X36_Y26_N8
\Add4~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~23_combout\ = (sum_Hpx(26) & (((\Add4~18_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~18_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(17),
	datab => sum_Hpx(26),
	datac => \Add4~18_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~23_combout\);

-- Location: LCCOMB_X35_Y24_N30
\Add4~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (sum_Hpx(26) & (((\Add4~16_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~16_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => sum_Hpx(16),
	datac => \Add4~16_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~24_combout\);

-- Location: LCCOMB_X36_Y26_N10
\Add4~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~25_combout\ = (sum_Hpx(26) & (\Add4~14_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~14_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => sum_Hpx(15),
	datac => sum_Hpx(26),
	datad => \LessThan1~39_combout\,
	combout => \Add4~25_combout\);

-- Location: LCCOMB_X34_Y26_N4
\Add4~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (sum_Hpx(26) & (\Add4~12_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~12_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => \Add4~12_combout\,
	datac => sum_Hpx(14),
	datad => \LessThan1~39_combout\,
	combout => \Add4~26_combout\);

-- Location: LCCOMB_X34_Y26_N2
\Add4~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~27_combout\ = (sum_Hpx(26) & (\Add4~10_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~10_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => \Add4~10_combout\,
	datac => sum_Hpx(13),
	datad => \LessThan1~39_combout\,
	combout => \Add4~27_combout\);

-- Location: LCCOMB_X34_Y26_N8
\Add4~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (sum_Hpx(26) & (((\Add4~8_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~8_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => sum_Hpx(12),
	datac => \Add4~8_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~28_combout\);

-- Location: LCCOMB_X34_Y26_N6
\Add4~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~29_combout\ = (sum_Hpx(26) & (((\Add4~6_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~6_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => sum_Hpx(11),
	datac => \Add4~6_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~29_combout\);

-- Location: LCCOMB_X34_Y26_N12
\Add4~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (sum_Hpx(26) & (((\Add4~4_combout\)))) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & ((\Add4~4_combout\))) # (!\LessThan1~39_combout\ & (sum_Hpx(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => sum_Hpx(10),
	datac => \Add4~4_combout\,
	datad => \LessThan1~39_combout\,
	combout => \Add4~30_combout\);

-- Location: LCCOMB_X34_Y26_N10
\Add4~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~31_combout\ = (sum_Hpx(26) & (\Add4~2_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~2_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => sum_Hpx(9),
	datac => sum_Hpx(26),
	datad => \LessThan1~39_combout\,
	combout => \Add4~31_combout\);

-- Location: LCCOMB_X35_Y26_N4
\Add4~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (sum_Hpx(26) & (\Add4~0_combout\)) # (!sum_Hpx(26) & ((\LessThan1~39_combout\ & (\Add4~0_combout\)) # (!\LessThan1~39_combout\ & ((sum_Hpx(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(26),
	datab => \Add4~0_combout\,
	datac => sum_Hpx(8),
	datad => \LessThan1~39_combout\,
	combout => \Add4~32_combout\);

-- Location: LCCOMB_X34_Y26_N14
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY(\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X34_Y26_N16
\LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((n_x(0) & ((!\LessThan2~1_cout\) # (!sum_Hpx(7)))) # (!n_x(0) & (!sum_Hpx(7) & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(7),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X34_Y26_N18
\LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\Add4~32_combout\ & ((!\LessThan2~3_cout\) # (!n_x(1)))) # (!\Add4~32_combout\ & (!n_x(1) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X34_Y26_N20
\LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\Add4~31_combout\ & (n_x(2) & !\LessThan2~5_cout\)) # (!\Add4~31_combout\ & ((n_x(2)) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~31_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X34_Y26_N22
\LessThan2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\Add4~30_combout\ & ((!\LessThan2~7_cout\) # (!n_x(3)))) # (!\Add4~30_combout\ & (!n_x(3) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X34_Y26_N24
\LessThan2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\Add4~29_combout\ & (n_x(4) & !\LessThan2~9_cout\)) # (!\Add4~29_combout\ & ((n_x(4)) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~29_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X34_Y26_N26
\LessThan2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((n_x(5) & (\Add4~28_combout\ & !\LessThan2~11_cout\)) # (!n_x(5) & ((\Add4~28_combout\) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add4~28_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X34_Y26_N28
\LessThan2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((n_x(6) & ((!\LessThan2~13_cout\) # (!\Add4~27_combout\))) # (!n_x(6) & (!\Add4~27_combout\ & !\LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \Add4~27_combout\,
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X34_Y26_N30
\LessThan2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((n_x(7) & (\Add4~26_combout\ & !\LessThan2~15_cout\)) # (!n_x(7) & ((\Add4~26_combout\) # (!\LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \Add4~26_combout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X34_Y25_N0
\LessThan2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~19_cout\ = CARRY((\Add4~25_combout\ & (n_x(8) & !\LessThan2~17_cout\)) # (!\Add4~25_combout\ & ((n_x(8)) # (!\LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \LessThan2~17_cout\,
	cout => \LessThan2~19_cout\);

-- Location: LCCOMB_X34_Y25_N2
\LessThan2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~21_cout\ = CARRY((n_x(9) & (\Add4~24_combout\ & !\LessThan2~19_cout\)) # (!n_x(9) & ((\Add4~24_combout\) # (!\LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \LessThan2~19_cout\,
	cout => \LessThan2~21_cout\);

-- Location: LCCOMB_X34_Y25_N4
\LessThan2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~23_cout\ = CARRY((\Add4~23_combout\ & (n_x(10) & !\LessThan2~21_cout\)) # (!\Add4~23_combout\ & ((n_x(10)) # (!\LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~23_combout\,
	datab => n_x(10),
	datad => VCC,
	cin => \LessThan2~21_cout\,
	cout => \LessThan2~23_cout\);

-- Location: LCCOMB_X34_Y25_N6
\LessThan2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~25_cout\ = CARRY((\Add4~22_combout\ & ((!\LessThan2~23_cout\) # (!n_x(11)))) # (!\Add4~22_combout\ & (!n_x(11) & !\LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan2~23_cout\,
	cout => \LessThan2~25_cout\);

-- Location: LCCOMB_X34_Y25_N8
\LessThan2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~27_cout\ = CARRY((n_x(12) & ((!\LessThan2~25_cout\) # (!\Add4~53_combout\))) # (!n_x(12) & (!\Add4~53_combout\ & !\LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datab => \Add4~53_combout\,
	datad => VCC,
	cin => \LessThan2~25_cout\,
	cout => \LessThan2~27_cout\);

-- Location: LCCOMB_X34_Y25_N10
\LessThan2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~29_cout\ = CARRY((\Add4~52_combout\ & ((!\LessThan2~27_cout\) # (!n_x(13)))) # (!\Add4~52_combout\ & (!n_x(13) & !\LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~52_combout\,
	datab => n_x(13),
	datad => VCC,
	cin => \LessThan2~27_cout\,
	cout => \LessThan2~29_cout\);

-- Location: LCCOMB_X34_Y25_N12
\LessThan2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~31_cout\ = CARRY((\Add4~51_combout\ & (n_x(14) & !\LessThan2~29_cout\)) # (!\Add4~51_combout\ & ((n_x(14)) # (!\LessThan2~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~51_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \LessThan2~29_cout\,
	cout => \LessThan2~31_cout\);

-- Location: LCCOMB_X34_Y25_N14
\LessThan2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~33_cout\ = CARRY((n_x(15) & (\Add4~50_combout\ & !\LessThan2~31_cout\)) # (!n_x(15) & ((\Add4~50_combout\) # (!\LessThan2~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add4~50_combout\,
	datad => VCC,
	cin => \LessThan2~31_cout\,
	cout => \LessThan2~33_cout\);

-- Location: LCCOMB_X34_Y25_N16
\LessThan2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~35_cout\ = CARRY((n_x(16) & ((!\LessThan2~33_cout\) # (!\Add4~49_combout\))) # (!n_x(16) & (!\Add4~49_combout\ & !\LessThan2~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \Add4~49_combout\,
	datad => VCC,
	cin => \LessThan2~33_cout\,
	cout => \LessThan2~35_cout\);

-- Location: LCCOMB_X34_Y25_N18
\LessThan2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~36_combout\ = (\Add4~48_combout\ & ((!n_x(17)) # (!\LessThan2~35_cout\))) # (!\Add4~48_combout\ & (!\LessThan2~35_cout\ & !n_x(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datad => n_x(17),
	cin => \LessThan2~35_cout\,
	combout => \LessThan2~36_combout\);

-- Location: LCCOMB_X34_Y25_N30
\LessThan2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~38_combout\ = (\Add4~47_combout\) # ((\Add4~59_combout\) # ((\Add4~56_combout\) # (\LessThan2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~47_combout\,
	datab => \Add4~59_combout\,
	datac => \Add4~56_combout\,
	datad => \LessThan2~36_combout\,
	combout => \LessThan2~38_combout\);

-- Location: LCCOMB_X32_Y27_N2
\Selector91~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan2~38_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (x_int(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => x_int(7),
	datad => \LessThan2~38_combout\,
	combout => \Selector91~0_combout\);

-- Location: FF_X32_Y27_N3
\x_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector91~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(7));

-- Location: LCCOMB_X32_Y26_N12
\Add5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (sum_Hpx(7) & ((GND) # (!n_x(0)))) # (!sum_Hpx(7) & (n_x(0) $ (GND)))
-- \Add5~1\ = CARRY((sum_Hpx(7)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(7),
	datab => n_x(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X32_Y26_N14
\Add5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add4~32_combout\ & ((n_x(1) & (!\Add5~1\)) # (!n_x(1) & (\Add5~1\ & VCC)))) # (!\Add4~32_combout\ & ((n_x(1) & ((\Add5~1\) # (GND))) # (!n_x(1) & (!\Add5~1\))))
-- \Add5~3\ = CARRY((\Add4~32_combout\ & (n_x(1) & !\Add5~1\)) # (!\Add4~32_combout\ & ((n_x(1)) # (!\Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X32_Y26_N16
\Add5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((n_x(2) $ (\Add4~31_combout\ $ (\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((n_x(2) & (\Add4~31_combout\ & !\Add5~3\)) # (!n_x(2) & ((\Add4~31_combout\) # (!\Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => \Add4~31_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X32_Y26_N18
\Add5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add4~30_combout\ & ((n_x(3) & (!\Add5~5\)) # (!n_x(3) & (\Add5~5\ & VCC)))) # (!\Add4~30_combout\ & ((n_x(3) & ((\Add5~5\) # (GND))) # (!n_x(3) & (!\Add5~5\))))
-- \Add5~7\ = CARRY((\Add4~30_combout\ & (n_x(3) & !\Add5~5\)) # (!\Add4~30_combout\ & ((n_x(3)) # (!\Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X32_Y26_N20
\Add5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\Add4~29_combout\ $ (n_x(4) $ (\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\Add4~29_combout\ & ((!\Add5~7\) # (!n_x(4)))) # (!\Add4~29_combout\ & (!n_x(4) & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~29_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X32_Y26_N22
\Add5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (n_x(5) & ((\Add4~28_combout\ & (!\Add5~9\)) # (!\Add4~28_combout\ & ((\Add5~9\) # (GND))))) # (!n_x(5) & ((\Add4~28_combout\ & (\Add5~9\ & VCC)) # (!\Add4~28_combout\ & (!\Add5~9\))))
-- \Add5~11\ = CARRY((n_x(5) & ((!\Add5~9\) # (!\Add4~28_combout\))) # (!n_x(5) & (!\Add4~28_combout\ & !\Add5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add4~28_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X32_Y26_N24
\Add5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((\Add4~27_combout\ $ (n_x(6) $ (\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((\Add4~27_combout\ & ((!\Add5~11\) # (!n_x(6)))) # (!\Add4~27_combout\ & (!n_x(6) & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~27_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X32_Y26_N26
\Add5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (n_x(7) & ((\Add4~26_combout\ & (!\Add5~13\)) # (!\Add4~26_combout\ & ((\Add5~13\) # (GND))))) # (!n_x(7) & ((\Add4~26_combout\ & (\Add5~13\ & VCC)) # (!\Add4~26_combout\ & (!\Add5~13\))))
-- \Add5~15\ = CARRY((n_x(7) & ((!\Add5~13\) # (!\Add4~26_combout\))) # (!n_x(7) & (!\Add4~26_combout\ & !\Add5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \Add4~26_combout\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X32_Y26_N28
\Add5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((\Add4~25_combout\ $ (n_x(8) $ (\Add5~15\)))) # (GND)
-- \Add5~17\ = CARRY((\Add4~25_combout\ & ((!\Add5~15\) # (!n_x(8)))) # (!\Add4~25_combout\ & (!n_x(8) & !\Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X32_Y26_N30
\Add5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (n_x(9) & ((\Add4~24_combout\ & (!\Add5~17\)) # (!\Add4~24_combout\ & ((\Add5~17\) # (GND))))) # (!n_x(9) & ((\Add4~24_combout\ & (\Add5~17\ & VCC)) # (!\Add4~24_combout\ & (!\Add5~17\))))
-- \Add5~19\ = CARRY((n_x(9) & ((!\Add5~17\) # (!\Add4~24_combout\))) # (!n_x(9) & (!\Add4~24_combout\ & !\Add5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X32_Y25_N0
\Add5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = ((n_x(10) $ (\Add4~23_combout\ $ (\Add5~19\)))) # (GND)
-- \Add5~21\ = CARRY((n_x(10) & (\Add4~23_combout\ & !\Add5~19\)) # (!n_x(10) & ((\Add4~23_combout\) # (!\Add5~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add4~23_combout\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X32_Y25_N2
\Add5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\Add4~22_combout\ & ((n_x(11) & (!\Add5~21\)) # (!n_x(11) & (\Add5~21\ & VCC)))) # (!\Add4~22_combout\ & ((n_x(11) & ((\Add5~21\) # (GND))) # (!n_x(11) & (!\Add5~21\))))
-- \Add5~23\ = CARRY((\Add4~22_combout\ & (n_x(11) & !\Add5~21\)) # (!\Add4~22_combout\ & ((n_x(11)) # (!\Add5~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X32_Y25_N4
\Add5~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = ((\Add4~53_combout\ $ (n_x(12) $ (\Add5~23\)))) # (GND)
-- \Add5~37\ = CARRY((\Add4~53_combout\ & ((!\Add5~23\) # (!n_x(12)))) # (!\Add4~53_combout\ & (!n_x(12) & !\Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~53_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X32_Y25_N6
\Add5~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (\Add4~52_combout\ & ((n_x(13) & (!\Add5~37\)) # (!n_x(13) & (\Add5~37\ & VCC)))) # (!\Add4~52_combout\ & ((n_x(13) & ((\Add5~37\) # (GND))) # (!n_x(13) & (!\Add5~37\))))
-- \Add5~39\ = CARRY((\Add4~52_combout\ & (n_x(13) & !\Add5~37\)) # (!\Add4~52_combout\ & ((n_x(13)) # (!\Add5~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~52_combout\,
	datab => n_x(13),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X32_Y25_N8
\Add5~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = ((n_x(14) $ (\Add4~51_combout\ $ (\Add5~39\)))) # (GND)
-- \Add5~41\ = CARRY((n_x(14) & (\Add4~51_combout\ & !\Add5~39\)) # (!n_x(14) & ((\Add4~51_combout\) # (!\Add5~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \Add4~51_combout\,
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X32_Y25_N10
\Add5~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (\Add4~50_combout\ & ((n_x(15) & (!\Add5~41\)) # (!n_x(15) & (\Add5~41\ & VCC)))) # (!\Add4~50_combout\ & ((n_x(15) & ((\Add5~41\) # (GND))) # (!n_x(15) & (!\Add5~41\))))
-- \Add5~43\ = CARRY((\Add4~50_combout\ & (n_x(15) & !\Add5~41\)) # (!\Add4~50_combout\ & ((n_x(15)) # (!\Add5~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~50_combout\,
	datab => n_x(15),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X32_Y25_N12
\Add5~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = ((\Add4~49_combout\ $ (n_x(16) $ (\Add5~43\)))) # (GND)
-- \Add5~45\ = CARRY((\Add4~49_combout\ & ((!\Add5~43\) # (!n_x(16)))) # (!\Add4~49_combout\ & (!n_x(16) & !\Add5~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~49_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X32_Y25_N14
\Add5~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (\Add4~48_combout\ & ((n_x(17) & (!\Add5~45\)) # (!n_x(17) & (\Add5~45\ & VCC)))) # (!\Add4~48_combout\ & ((n_x(17) & ((\Add5~45\) # (GND))) # (!n_x(17) & (!\Add5~45\))))
-- \Add5~47\ = CARRY((\Add4~48_combout\ & (n_x(17) & !\Add5~45\)) # (!\Add4~48_combout\ & ((n_x(17)) # (!\Add5~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datab => n_x(17),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X32_Y25_N16
\Add5~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~49_combout\ = (\Add4~47_combout\ & ((GND) # (!\Add5~47\))) # (!\Add4~47_combout\ & (\Add5~47\ $ (GND)))
-- \Add5~50\ = CARRY((\Add4~47_combout\) # (!\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~47_combout\,
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~49_combout\,
	cout => \Add5~50\);

-- Location: LCCOMB_X32_Y25_N18
\Add5~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~51_combout\ = (\Add4~56_combout\ & (\Add5~50\ & VCC)) # (!\Add4~56_combout\ & (!\Add5~50\))
-- \Add5~52\ = CARRY((!\Add4~56_combout\ & !\Add5~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~56_combout\,
	datad => VCC,
	cin => \Add5~50\,
	combout => \Add5~51_combout\,
	cout => \Add5~52\);

-- Location: LCCOMB_X32_Y25_N20
\Add5~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = \Add5~52\ $ (\Add4~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add4~59_combout\,
	cin => \Add5~52\,
	combout => \Add5~58_combout\);

-- Location: LCCOMB_X32_Y25_N30
\Add5~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (\LessThan2~38_combout\ & ((\Add5~46_combout\))) # (!\LessThan2~38_combout\ & (\Add4~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datac => \Add5~46_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~48_combout\);

-- Location: LCCOMB_X32_Y25_N24
\LessThan3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\Add5~48_combout\) # ((\LessThan2~38_combout\ & ((\Add5~49_combout\) # (\Add5~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~49_combout\,
	datab => \LessThan2~38_combout\,
	datac => \Add5~48_combout\,
	datad => \Add5~51_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Add5~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~53_combout\ = (\LessThan2~38_combout\ & ((\Add5~44_combout\))) # (!\LessThan2~38_combout\ & (\Add4~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~49_combout\,
	datac => \Add5~44_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~53_combout\);

-- Location: LCCOMB_X31_Y25_N26
\Add5~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (\LessThan2~38_combout\ & ((\Add5~42_combout\))) # (!\LessThan2~38_combout\ & (\Add4~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~50_combout\,
	datac => \Add5~42_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~54_combout\);

-- Location: LCCOMB_X31_Y25_N24
\Add5~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~55_combout\ = (\LessThan2~38_combout\ & ((\Add5~40_combout\))) # (!\LessThan2~38_combout\ & (\Add4~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~51_combout\,
	datac => \Add5~40_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~55_combout\);

-- Location: LCCOMB_X32_Y26_N8
\Add5~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (\LessThan2~38_combout\ & (\Add5~38_combout\)) # (!\LessThan2~38_combout\ & ((\Add4~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~38_combout\,
	datac => \Add4~52_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~56_combout\);

-- Location: LCCOMB_X32_Y25_N26
\Add5~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~57_combout\ = (\LessThan2~38_combout\ & ((\Add5~36_combout\))) # (!\LessThan2~38_combout\ & (\Add4~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~53_combout\,
	datac => \Add5~36_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~57_combout\);

-- Location: LCCOMB_X32_Y25_N28
\Add5~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\LessThan2~38_combout\ & (\Add5~22_combout\)) # (!\LessThan2~38_combout\ & ((\Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~22_combout\,
	datac => \Add4~22_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X32_Y26_N0
\Add5~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (\LessThan2~38_combout\ & (\Add5~20_combout\)) # (!\LessThan2~38_combout\ & ((\Add4~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~20_combout\,
	datac => \Add4~23_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~25_combout\);

-- Location: LCCOMB_X32_Y24_N0
\Add5~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\LessThan2~38_combout\ & ((\Add5~18_combout\))) # (!\LessThan2~38_combout\ & (\Add4~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datac => \LessThan2~38_combout\,
	datad => \Add5~18_combout\,
	combout => \Add5~26_combout\);

-- Location: LCCOMB_X32_Y26_N10
\Add5~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~27_combout\ = (\LessThan2~38_combout\ & ((\Add5~16_combout\))) # (!\LessThan2~38_combout\ & (\Add4~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => \Add5~16_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~27_combout\);

-- Location: LCCOMB_X32_Y26_N4
\Add5~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (\LessThan2~38_combout\ & ((\Add5~14_combout\))) # (!\LessThan2~38_combout\ & (\Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~26_combout\,
	datac => \Add5~14_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~28_combout\);

-- Location: LCCOMB_X31_Y26_N4
\Add5~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~29_combout\ = (\LessThan2~38_combout\ & (\Add5~12_combout\)) # (!\LessThan2~38_combout\ & ((\Add4~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~12_combout\,
	datac => \Add4~27_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~29_combout\);

-- Location: LCCOMB_X31_Y26_N2
\Add5~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\LessThan2~38_combout\ & (\Add5~10_combout\)) # (!\LessThan2~38_combout\ & ((\Add4~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~10_combout\,
	datac => \Add4~28_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~30_combout\);

-- Location: LCCOMB_X31_Y26_N8
\Add5~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~31_combout\ = (\LessThan2~38_combout\ & ((\Add5~8_combout\))) # (!\LessThan2~38_combout\ & (\Add4~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~29_combout\,
	datac => \Add5~8_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~31_combout\);

-- Location: LCCOMB_X32_Y26_N6
\Add5~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (\LessThan2~38_combout\ & ((\Add5~6_combout\))) # (!\LessThan2~38_combout\ & (\Add4~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => \Add5~6_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~32_combout\);

-- Location: LCCOMB_X31_Y26_N10
\Add5~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~33_combout\ = (\LessThan2~38_combout\ & ((\Add5~4_combout\))) # (!\LessThan2~38_combout\ & (\Add4~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~31_combout\,
	datac => \Add5~4_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~33_combout\);

-- Location: LCCOMB_X31_Y26_N12
\Add5~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (\LessThan2~38_combout\ & ((\Add5~2_combout\))) # (!\LessThan2~38_combout\ & (\Add4~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~32_combout\,
	datac => \Add5~2_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~34_combout\);

-- Location: LCCOMB_X31_Y26_N6
\Add5~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~35_combout\ = (\LessThan2~38_combout\ & ((\Add5~0_combout\))) # (!\LessThan2~38_combout\ & (sum_Hpx(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(7),
	datac => \Add5~0_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~35_combout\);

-- Location: LCCOMB_X35_Y26_N0
\LessThan1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~41_combout\ = (sum_Hpx(5)) # ((sum_Hpx(4)) # (\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(5),
	datab => sum_Hpx(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~41_combout\);

-- Location: LCCOMB_X31_Y26_N14
\LessThan3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~2_cout\ = CARRY(\LessThan1~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~41_combout\,
	datad => VCC,
	cout => \LessThan3~2_cout\);

-- Location: LCCOMB_X31_Y26_N16
\LessThan3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~4_cout\ = CARRY((sum_Hpx(6) & (n_x(0) & !\LessThan3~2_cout\)) # (!sum_Hpx(6) & ((n_x(0)) # (!\LessThan3~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(6),
	datab => n_x(0),
	datad => VCC,
	cin => \LessThan3~2_cout\,
	cout => \LessThan3~4_cout\);

-- Location: LCCOMB_X31_Y26_N18
\LessThan3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~6_cout\ = CARRY((\Add5~35_combout\ & ((!\LessThan3~4_cout\) # (!n_x(1)))) # (!\Add5~35_combout\ & (!n_x(1) & !\LessThan3~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~35_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \LessThan3~4_cout\,
	cout => \LessThan3~6_cout\);

-- Location: LCCOMB_X31_Y26_N20
\LessThan3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~8_cout\ = CARRY((\Add5~34_combout\ & (n_x(2) & !\LessThan3~6_cout\)) # (!\Add5~34_combout\ & ((n_x(2)) # (!\LessThan3~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \LessThan3~6_cout\,
	cout => \LessThan3~8_cout\);

-- Location: LCCOMB_X31_Y26_N22
\LessThan3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~10_cout\ = CARRY((\Add5~33_combout\ & ((!\LessThan3~8_cout\) # (!n_x(3)))) # (!\Add5~33_combout\ & (!n_x(3) & !\LessThan3~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~33_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan3~8_cout\,
	cout => \LessThan3~10_cout\);

-- Location: LCCOMB_X31_Y26_N24
\LessThan3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~12_cout\ = CARRY((\Add5~32_combout\ & (n_x(4) & !\LessThan3~10_cout\)) # (!\Add5~32_combout\ & ((n_x(4)) # (!\LessThan3~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \LessThan3~10_cout\,
	cout => \LessThan3~12_cout\);

-- Location: LCCOMB_X31_Y26_N26
\LessThan3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~14_cout\ = CARRY((n_x(5) & (\Add5~31_combout\ & !\LessThan3~12_cout\)) # (!n_x(5) & ((\Add5~31_combout\) # (!\LessThan3~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add5~31_combout\,
	datad => VCC,
	cin => \LessThan3~12_cout\,
	cout => \LessThan3~14_cout\);

-- Location: LCCOMB_X31_Y26_N28
\LessThan3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~16_cout\ = CARRY((n_x(6) & ((!\LessThan3~14_cout\) # (!\Add5~30_combout\))) # (!n_x(6) & (!\Add5~30_combout\ & !\LessThan3~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \Add5~30_combout\,
	datad => VCC,
	cin => \LessThan3~14_cout\,
	cout => \LessThan3~16_cout\);

-- Location: LCCOMB_X31_Y26_N30
\LessThan3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~18_cout\ = CARRY((n_x(7) & (\Add5~29_combout\ & !\LessThan3~16_cout\)) # (!n_x(7) & ((\Add5~29_combout\) # (!\LessThan3~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \Add5~29_combout\,
	datad => VCC,
	cin => \LessThan3~16_cout\,
	cout => \LessThan3~18_cout\);

-- Location: LCCOMB_X31_Y25_N0
\LessThan3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~20_cout\ = CARRY((\Add5~28_combout\ & (n_x(8) & !\LessThan3~18_cout\)) # (!\Add5~28_combout\ & ((n_x(8)) # (!\LessThan3~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \LessThan3~18_cout\,
	cout => \LessThan3~20_cout\);

-- Location: LCCOMB_X31_Y25_N2
\LessThan3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~22_cout\ = CARRY((\Add5~27_combout\ & ((!\LessThan3~20_cout\) # (!n_x(9)))) # (!\Add5~27_combout\ & (!n_x(9) & !\LessThan3~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~27_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \LessThan3~20_cout\,
	cout => \LessThan3~22_cout\);

-- Location: LCCOMB_X31_Y25_N4
\LessThan3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~24_cout\ = CARRY((n_x(10) & ((!\LessThan3~22_cout\) # (!\Add5~26_combout\))) # (!n_x(10) & (!\Add5~26_combout\ & !\LessThan3~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add5~26_combout\,
	datad => VCC,
	cin => \LessThan3~22_cout\,
	cout => \LessThan3~24_cout\);

-- Location: LCCOMB_X31_Y25_N6
\LessThan3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~26_cout\ = CARRY((n_x(11) & (\Add5~25_combout\ & !\LessThan3~24_cout\)) # (!n_x(11) & ((\Add5~25_combout\) # (!\LessThan3~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => \Add5~25_combout\,
	datad => VCC,
	cin => \LessThan3~24_cout\,
	cout => \LessThan3~26_cout\);

-- Location: LCCOMB_X31_Y25_N8
\LessThan3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~28_cout\ = CARRY((n_x(12) & ((!\LessThan3~26_cout\) # (!\Add5~24_combout\))) # (!n_x(12) & (!\Add5~24_combout\ & !\LessThan3~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datab => \Add5~24_combout\,
	datad => VCC,
	cin => \LessThan3~26_cout\,
	cout => \LessThan3~28_cout\);

-- Location: LCCOMB_X31_Y25_N10
\LessThan3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~30_cout\ = CARRY((n_x(13) & (\Add5~57_combout\ & !\LessThan3~28_cout\)) # (!n_x(13) & ((\Add5~57_combout\) # (!\LessThan3~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \Add5~57_combout\,
	datad => VCC,
	cin => \LessThan3~28_cout\,
	cout => \LessThan3~30_cout\);

-- Location: LCCOMB_X31_Y25_N12
\LessThan3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~32_cout\ = CARRY((n_x(14) & ((!\LessThan3~30_cout\) # (!\Add5~56_combout\))) # (!n_x(14) & (!\Add5~56_combout\ & !\LessThan3~30_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \Add5~56_combout\,
	datad => VCC,
	cin => \LessThan3~30_cout\,
	cout => \LessThan3~32_cout\);

-- Location: LCCOMB_X31_Y25_N14
\LessThan3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~34_cout\ = CARRY((n_x(15) & (\Add5~55_combout\ & !\LessThan3~32_cout\)) # (!n_x(15) & ((\Add5~55_combout\) # (!\LessThan3~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add5~55_combout\,
	datad => VCC,
	cin => \LessThan3~32_cout\,
	cout => \LessThan3~34_cout\);

-- Location: LCCOMB_X31_Y25_N16
\LessThan3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~36_cout\ = CARRY((\Add5~54_combout\ & (n_x(16) & !\LessThan3~34_cout\)) # (!\Add5~54_combout\ & ((n_x(16)) # (!\LessThan3~34_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~54_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \LessThan3~34_cout\,
	cout => \LessThan3~36_cout\);

-- Location: LCCOMB_X31_Y25_N18
\LessThan3~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~37_combout\ = (n_x(17) & (!\LessThan3~36_cout\ & \Add5~53_combout\)) # (!n_x(17) & ((\Add5~53_combout\) # (!\LessThan3~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(17),
	datad => \Add5~53_combout\,
	cin => \LessThan3~36_cout\,
	combout => \LessThan3~37_combout\);

-- Location: LCCOMB_X32_Y24_N6
\LessThan3~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~39_combout\ = (\LessThan3~0_combout\) # ((\LessThan3~37_combout\) # ((\Add5~58_combout\ & \LessThan2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~58_combout\,
	datab => \LessThan3~0_combout\,
	datac => \LessThan2~38_combout\,
	datad => \LessThan3~37_combout\,
	combout => \LessThan3~39_combout\);

-- Location: LCCOMB_X32_Y27_N8
\Selector92~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan3~39_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (x_int(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => x_int(6),
	datad => \LessThan3~39_combout\,
	combout => \Selector92~0_combout\);

-- Location: FF_X32_Y27_N9
\x_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(6));

-- Location: LCCOMB_X31_Y25_N20
\Add5~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = (\Add5~58_combout\ & \LessThan2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~58_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X32_Y23_N26
\Add5~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~61_combout\ = (\Add5~51_combout\ & \LessThan2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~51_combout\,
	datad => \LessThan2~38_combout\,
	combout => \Add5~61_combout\);

-- Location: LCCOMB_X31_Y25_N22
\Add5~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (\LessThan2~38_combout\ & \Add5~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~38_combout\,
	datad => \Add5~49_combout\,
	combout => \Add5~60_combout\);

-- Location: LCCOMB_X32_Y24_N10
\Add6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (sum_Hpx(6) & ((GND) # (!n_x(0)))) # (!sum_Hpx(6) & (n_x(0) $ (GND)))
-- \Add6~1\ = CARRY((sum_Hpx(6)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(6),
	datab => n_x(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X32_Y24_N12
\Add6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add5~35_combout\ & ((n_x(1) & (!\Add6~1\)) # (!n_x(1) & (\Add6~1\ & VCC)))) # (!\Add5~35_combout\ & ((n_x(1) & ((\Add6~1\) # (GND))) # (!n_x(1) & (!\Add6~1\))))
-- \Add6~3\ = CARRY((\Add5~35_combout\ & (n_x(1) & !\Add6~1\)) # (!\Add5~35_combout\ & ((n_x(1)) # (!\Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~35_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X32_Y24_N14
\Add6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add5~34_combout\ $ (n_x(2) $ (\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add5~34_combout\ & ((!\Add6~3\) # (!n_x(2)))) # (!\Add5~34_combout\ & (!n_x(2) & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X32_Y24_N16
\Add6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (n_x(3) & ((\Add5~33_combout\ & (!\Add6~5\)) # (!\Add5~33_combout\ & ((\Add6~5\) # (GND))))) # (!n_x(3) & ((\Add5~33_combout\ & (\Add6~5\ & VCC)) # (!\Add5~33_combout\ & (!\Add6~5\))))
-- \Add6~7\ = CARRY((n_x(3) & ((!\Add6~5\) # (!\Add5~33_combout\))) # (!n_x(3) & (!\Add5~33_combout\ & !\Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(3),
	datab => \Add5~33_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X32_Y24_N18
\Add6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Add5~32_combout\ $ (n_x(4) $ (\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Add5~32_combout\ & ((!\Add6~7\) # (!n_x(4)))) # (!\Add5~32_combout\ & (!n_x(4) & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X32_Y24_N20
\Add6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add5~31_combout\ & ((n_x(5) & (!\Add6~9\)) # (!n_x(5) & (\Add6~9\ & VCC)))) # (!\Add5~31_combout\ & ((n_x(5) & ((\Add6~9\) # (GND))) # (!n_x(5) & (!\Add6~9\))))
-- \Add6~11\ = CARRY((\Add5~31_combout\ & (n_x(5) & !\Add6~9\)) # (!\Add5~31_combout\ & ((n_x(5)) # (!\Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~31_combout\,
	datab => n_x(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X32_Y24_N22
\Add6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((n_x(6) $ (\Add5~30_combout\ $ (\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((n_x(6) & (\Add5~30_combout\ & !\Add6~11\)) # (!n_x(6) & ((\Add5~30_combout\) # (!\Add6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \Add5~30_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X32_Y24_N24
\Add6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Add5~29_combout\ & ((n_x(7) & (!\Add6~13\)) # (!n_x(7) & (\Add6~13\ & VCC)))) # (!\Add5~29_combout\ & ((n_x(7) & ((\Add6~13\) # (GND))) # (!n_x(7) & (!\Add6~13\))))
-- \Add6~15\ = CARRY((\Add5~29_combout\ & (n_x(7) & !\Add6~13\)) # (!\Add5~29_combout\ & ((n_x(7)) # (!\Add6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~29_combout\,
	datab => n_x(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X32_Y24_N26
\Add6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = ((\Add5~28_combout\ $ (n_x(8) $ (\Add6~15\)))) # (GND)
-- \Add6~17\ = CARRY((\Add5~28_combout\ & ((!\Add6~15\) # (!n_x(8)))) # (!\Add5~28_combout\ & (!n_x(8) & !\Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X32_Y24_N28
\Add6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (n_x(9) & ((\Add5~27_combout\ & (!\Add6~17\)) # (!\Add5~27_combout\ & ((\Add6~17\) # (GND))))) # (!n_x(9) & ((\Add5~27_combout\ & (\Add6~17\ & VCC)) # (!\Add5~27_combout\ & (!\Add6~17\))))
-- \Add6~19\ = CARRY((n_x(9) & ((!\Add6~17\) # (!\Add5~27_combout\))) # (!n_x(9) & (!\Add5~27_combout\ & !\Add6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \Add5~27_combout\,
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X32_Y24_N30
\Add6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = ((n_x(10) $ (\Add5~26_combout\ $ (\Add6~19\)))) # (GND)
-- \Add6~21\ = CARRY((n_x(10) & (\Add5~26_combout\ & !\Add6~19\)) # (!n_x(10) & ((\Add5~26_combout\) # (!\Add6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add5~26_combout\,
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X32_Y23_N0
\Add6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (\Add5~25_combout\ & ((n_x(11) & (!\Add6~21\)) # (!n_x(11) & (\Add6~21\ & VCC)))) # (!\Add5~25_combout\ & ((n_x(11) & ((\Add6~21\) # (GND))) # (!n_x(11) & (!\Add6~21\))))
-- \Add6~23\ = CARRY((\Add5~25_combout\ & (n_x(11) & !\Add6~21\)) # (!\Add5~25_combout\ & ((n_x(11)) # (!\Add6~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~25_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X32_Y23_N2
\Add6~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = ((\Add5~24_combout\ $ (n_x(12) $ (\Add6~23\)))) # (GND)
-- \Add6~25\ = CARRY((\Add5~24_combout\ & ((!\Add6~23\) # (!n_x(12)))) # (!\Add5~24_combout\ & (!n_x(12) & !\Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X32_Y23_N4
\Add6~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~39_combout\ = (\Add5~57_combout\ & ((n_x(13) & (!\Add6~25\)) # (!n_x(13) & (\Add6~25\ & VCC)))) # (!\Add5~57_combout\ & ((n_x(13) & ((\Add6~25\) # (GND))) # (!n_x(13) & (!\Add6~25\))))
-- \Add6~40\ = CARRY((\Add5~57_combout\ & (n_x(13) & !\Add6~25\)) # (!\Add5~57_combout\ & ((n_x(13)) # (!\Add6~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~57_combout\,
	datab => n_x(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~39_combout\,
	cout => \Add6~40\);

-- Location: LCCOMB_X32_Y23_N6
\Add6~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~41_combout\ = ((\Add5~56_combout\ $ (n_x(14) $ (\Add6~40\)))) # (GND)
-- \Add6~42\ = CARRY((\Add5~56_combout\ & ((!\Add6~40\) # (!n_x(14)))) # (!\Add5~56_combout\ & (!n_x(14) & !\Add6~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~56_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \Add6~40\,
	combout => \Add6~41_combout\,
	cout => \Add6~42\);

-- Location: LCCOMB_X32_Y23_N8
\Add6~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~43_combout\ = (n_x(15) & ((\Add5~55_combout\ & (!\Add6~42\)) # (!\Add5~55_combout\ & ((\Add6~42\) # (GND))))) # (!n_x(15) & ((\Add5~55_combout\ & (\Add6~42\ & VCC)) # (!\Add5~55_combout\ & (!\Add6~42\))))
-- \Add6~44\ = CARRY((n_x(15) & ((!\Add6~42\) # (!\Add5~55_combout\))) # (!n_x(15) & (!\Add5~55_combout\ & !\Add6~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add5~55_combout\,
	datad => VCC,
	cin => \Add6~42\,
	combout => \Add6~43_combout\,
	cout => \Add6~44\);

-- Location: LCCOMB_X32_Y23_N10
\Add6~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~45_combout\ = ((n_x(16) $ (\Add5~54_combout\ $ (\Add6~44\)))) # (GND)
-- \Add6~46\ = CARRY((n_x(16) & (\Add5~54_combout\ & !\Add6~44\)) # (!n_x(16) & ((\Add5~54_combout\) # (!\Add6~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \Add5~54_combout\,
	datad => VCC,
	cin => \Add6~44\,
	combout => \Add6~45_combout\,
	cout => \Add6~46\);

-- Location: LCCOMB_X32_Y23_N12
\Add6~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~47_combout\ = (\Add5~53_combout\ & ((n_x(17) & (!\Add6~46\)) # (!n_x(17) & (\Add6~46\ & VCC)))) # (!\Add5~53_combout\ & ((n_x(17) & ((\Add6~46\) # (GND))) # (!n_x(17) & (!\Add6~46\))))
-- \Add6~48\ = CARRY((\Add5~53_combout\ & (n_x(17) & !\Add6~46\)) # (!\Add5~53_combout\ & ((n_x(17)) # (!\Add6~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~53_combout\,
	datab => n_x(17),
	datad => VCC,
	cin => \Add6~46\,
	combout => \Add6~47_combout\,
	cout => \Add6~48\);

-- Location: LCCOMB_X32_Y23_N14
\Add6~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (\Add5~48_combout\ & ((GND) # (!\Add6~48\))) # (!\Add5~48_combout\ & (\Add6~48\ $ (GND)))
-- \Add6~51\ = CARRY((\Add5~48_combout\) # (!\Add6~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~48_combout\,
	datad => VCC,
	cin => \Add6~48\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X32_Y23_N16
\Add6~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (\Add5~60_combout\ & (\Add6~51\ & VCC)) # (!\Add5~60_combout\ & (!\Add6~51\))
-- \Add6~53\ = CARRY((!\Add5~60_combout\ & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~60_combout\,
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X32_Y23_N18
\Add6~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (\Add5~61_combout\ & ((GND) # (!\Add6~53\))) # (!\Add5~61_combout\ & (\Add6~53\ $ (GND)))
-- \Add6~59\ = CARRY((\Add5~61_combout\) # (!\Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~61_combout\,
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: LCCOMB_X30_Y23_N26
\Add6~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (\Add6~58_combout\ & ((\Add5~62_combout\) # ((\LessThan3~0_combout\) # (\LessThan3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~62_combout\,
	datab => \LessThan3~0_combout\,
	datac => \LessThan3~37_combout\,
	datad => \Add6~58_combout\,
	combout => \Add6~60_combout\);

-- Location: LCCOMB_X32_Y23_N22
\Add6~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~49_combout\ = (\LessThan3~39_combout\ & (\Add6~47_combout\)) # (!\LessThan3~39_combout\ & ((\Add5~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~47_combout\,
	datab => \Add5~53_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~49_combout\);

-- Location: LCCOMB_X30_Y23_N28
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\Add6~49_combout\) # ((\LessThan3~39_combout\ & ((\Add6~50_combout\) # (\Add6~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~50_combout\,
	datab => \LessThan3~39_combout\,
	datac => \Add6~49_combout\,
	datad => \Add6~52_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y23_N20
\Add6~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~61_combout\ = \Add6~59\ $ (!\Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add5~62_combout\,
	cin => \Add6~59\,
	combout => \Add6~61_combout\);

-- Location: LCCOMB_X31_Y25_N30
\Add6~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~63_combout\ = (\Add6~61_combout\ & ((\LessThan3~0_combout\) # ((\Add5~62_combout\) # (\LessThan3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \Add5~62_combout\,
	datac => \Add6~61_combout\,
	datad => \LessThan3~37_combout\,
	combout => \Add6~63_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Add6~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (\LessThan3~39_combout\ & ((\Add6~45_combout\))) # (!\LessThan3~39_combout\ & (\Add5~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~54_combout\,
	datac => \Add6~45_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~54_combout\);

-- Location: LCCOMB_X30_Y23_N20
\Add6~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~55_combout\ = (\LessThan3~39_combout\ & ((\Add6~43_combout\))) # (!\LessThan3~39_combout\ & (\Add5~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~55_combout\,
	datac => \Add6~43_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~55_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Add6~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (\LessThan3~39_combout\ & (\Add6~41_combout\)) # (!\LessThan3~39_combout\ & ((\Add5~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~41_combout\,
	datab => \Add5~56_combout\,
	datac => \LessThan3~39_combout\,
	combout => \Add6~56_combout\);

-- Location: LCCOMB_X32_Y23_N28
\Add6~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~57_combout\ = (\LessThan3~39_combout\ & ((\Add6~39_combout\))) # (!\LessThan3~39_combout\ & (\Add5~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~57_combout\,
	datac => \Add6~39_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~57_combout\);

-- Location: LCCOMB_X31_Y23_N28
\Add6~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (\LessThan3~39_combout\ & ((\Add6~24_combout\))) # (!\LessThan3~39_combout\ & (\Add5~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datac => \LessThan3~39_combout\,
	datad => \Add6~24_combout\,
	combout => \Add6~26_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Add6~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~27_combout\ = (\LessThan3~39_combout\ & (\Add6~22_combout\)) # (!\LessThan3~39_combout\ & ((\Add5~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~22_combout\,
	datac => \LessThan3~39_combout\,
	datad => \Add5~25_combout\,
	combout => \Add6~27_combout\);

-- Location: LCCOMB_X32_Y24_N4
\Add6~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (\LessThan3~39_combout\ & ((\Add6~20_combout\))) # (!\LessThan3~39_combout\ & (\Add5~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~26_combout\,
	datac => \Add6~20_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~28_combout\);

-- Location: LCCOMB_X31_Y24_N8
\Add6~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~29_combout\ = (\LessThan3~39_combout\ & ((\Add6~18_combout\))) # (!\LessThan3~39_combout\ & (\Add5~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~27_combout\,
	datac => \Add6~18_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~29_combout\);

-- Location: LCCOMB_X31_Y24_N6
\Add6~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (\LessThan3~39_combout\ & ((\Add6~16_combout\))) # (!\LessThan3~39_combout\ & (\Add5~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~28_combout\,
	datac => \Add6~16_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~30_combout\);

-- Location: LCCOMB_X31_Y24_N4
\Add6~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~31_combout\ = (\LessThan3~39_combout\ & ((\Add6~14_combout\))) # (!\LessThan3~39_combout\ & (\Add5~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~29_combout\,
	datac => \Add6~14_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~31_combout\);

-- Location: LCCOMB_X30_Y24_N8
\Add6~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (\LessThan3~39_combout\ & ((\Add6~12_combout\))) # (!\LessThan3~39_combout\ & (\Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datac => \Add6~12_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~32_combout\);

-- Location: LCCOMB_X30_Y24_N6
\Add6~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~33_combout\ = (\LessThan3~39_combout\ & ((\Add6~10_combout\))) # (!\LessThan3~39_combout\ & (\Add5~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~31_combout\,
	datac => \Add6~10_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~33_combout\);

-- Location: LCCOMB_X30_Y24_N0
\Add6~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (\LessThan3~39_combout\ & ((\Add6~8_combout\))) # (!\LessThan3~39_combout\ & (\Add5~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~32_combout\,
	datac => \Add6~8_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~34_combout\);

-- Location: LCCOMB_X30_Y24_N10
\Add6~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~35_combout\ = (\LessThan3~39_combout\ & (\Add6~6_combout\)) # (!\LessThan3~39_combout\ & ((\Add5~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~6_combout\,
	datac => \Add5~33_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~35_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Add6~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (\LessThan3~39_combout\ & ((\Add6~4_combout\))) # (!\LessThan3~39_combout\ & (\Add5~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~34_combout\,
	datac => \Add6~4_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~36_combout\);

-- Location: LCCOMB_X32_Y24_N2
\Add6~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~37_combout\ = (\LessThan3~39_combout\ & (\Add6~2_combout\)) # (!\LessThan3~39_combout\ & ((\Add5~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datac => \Add5~35_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~37_combout\);

-- Location: LCCOMB_X31_Y24_N2
\Add6~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (\LessThan3~39_combout\ & ((\Add6~0_combout\))) # (!\LessThan3~39_combout\ & (sum_Hpx(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(6),
	datac => \Add6~0_combout\,
	datad => \LessThan3~39_combout\,
	combout => \Add6~38_combout\);

-- Location: LCCOMB_X29_Y24_N0
\LessThan1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~42_combout\ = (sum_Hpx(4)) # (\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum_Hpx(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~42_combout\);

-- Location: LCCOMB_X30_Y24_N14
\LessThan4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~2_cout\ = CARRY(\LessThan1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~42_combout\,
	datad => VCC,
	cout => \LessThan4~2_cout\);

-- Location: LCCOMB_X30_Y24_N16
\LessThan4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~4_cout\ = CARRY((n_x(0) & ((!\LessThan4~2_cout\) # (!sum_Hpx(5)))) # (!n_x(0) & (!sum_Hpx(5) & !\LessThan4~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(5),
	datad => VCC,
	cin => \LessThan4~2_cout\,
	cout => \LessThan4~4_cout\);

-- Location: LCCOMB_X30_Y24_N18
\LessThan4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~6_cout\ = CARRY((\Add6~38_combout\ & ((!\LessThan4~4_cout\) # (!n_x(1)))) # (!\Add6~38_combout\ & (!n_x(1) & !\LessThan4~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~38_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \LessThan4~4_cout\,
	cout => \LessThan4~6_cout\);

-- Location: LCCOMB_X30_Y24_N20
\LessThan4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~8_cout\ = CARRY((n_x(2) & ((!\LessThan4~6_cout\) # (!\Add6~37_combout\))) # (!n_x(2) & (!\Add6~37_combout\ & !\LessThan4~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => \Add6~37_combout\,
	datad => VCC,
	cin => \LessThan4~6_cout\,
	cout => \LessThan4~8_cout\);

-- Location: LCCOMB_X30_Y24_N22
\LessThan4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~10_cout\ = CARRY((\Add6~36_combout\ & ((!\LessThan4~8_cout\) # (!n_x(3)))) # (!\Add6~36_combout\ & (!n_x(3) & !\LessThan4~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan4~8_cout\,
	cout => \LessThan4~10_cout\);

-- Location: LCCOMB_X30_Y24_N24
\LessThan4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~12_cout\ = CARRY((\Add6~35_combout\ & (n_x(4) & !\LessThan4~10_cout\)) # (!\Add6~35_combout\ & ((n_x(4)) # (!\LessThan4~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~35_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \LessThan4~10_cout\,
	cout => \LessThan4~12_cout\);

-- Location: LCCOMB_X30_Y24_N26
\LessThan4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~14_cout\ = CARRY((n_x(5) & (\Add6~34_combout\ & !\LessThan4~12_cout\)) # (!n_x(5) & ((\Add6~34_combout\) # (!\LessThan4~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add6~34_combout\,
	datad => VCC,
	cin => \LessThan4~12_cout\,
	cout => \LessThan4~14_cout\);

-- Location: LCCOMB_X30_Y24_N28
\LessThan4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~16_cout\ = CARRY((\Add6~33_combout\ & (n_x(6) & !\LessThan4~14_cout\)) # (!\Add6~33_combout\ & ((n_x(6)) # (!\LessThan4~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~33_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \LessThan4~14_cout\,
	cout => \LessThan4~16_cout\);

-- Location: LCCOMB_X30_Y24_N30
\LessThan4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~18_cout\ = CARRY((n_x(7) & (\Add6~32_combout\ & !\LessThan4~16_cout\)) # (!n_x(7) & ((\Add6~32_combout\) # (!\LessThan4~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \Add6~32_combout\,
	datad => VCC,
	cin => \LessThan4~16_cout\,
	cout => \LessThan4~18_cout\);

-- Location: LCCOMB_X30_Y23_N0
\LessThan4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~20_cout\ = CARRY((n_x(8) & ((!\LessThan4~18_cout\) # (!\Add6~31_combout\))) # (!n_x(8) & (!\Add6~31_combout\ & !\LessThan4~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \Add6~31_combout\,
	datad => VCC,
	cin => \LessThan4~18_cout\,
	cout => \LessThan4~20_cout\);

-- Location: LCCOMB_X30_Y23_N2
\LessThan4~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~22_cout\ = CARRY((n_x(9) & (\Add6~30_combout\ & !\LessThan4~20_cout\)) # (!n_x(9) & ((\Add6~30_combout\) # (!\LessThan4~20_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \Add6~30_combout\,
	datad => VCC,
	cin => \LessThan4~20_cout\,
	cout => \LessThan4~22_cout\);

-- Location: LCCOMB_X30_Y23_N4
\LessThan4~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~24_cout\ = CARRY((n_x(10) & ((!\LessThan4~22_cout\) # (!\Add6~29_combout\))) # (!n_x(10) & (!\Add6~29_combout\ & !\LessThan4~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add6~29_combout\,
	datad => VCC,
	cin => \LessThan4~22_cout\,
	cout => \LessThan4~24_cout\);

-- Location: LCCOMB_X30_Y23_N6
\LessThan4~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~26_cout\ = CARRY((\Add6~28_combout\ & ((!\LessThan4~24_cout\) # (!n_x(11)))) # (!\Add6~28_combout\ & (!n_x(11) & !\LessThan4~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~28_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan4~24_cout\,
	cout => \LessThan4~26_cout\);

-- Location: LCCOMB_X30_Y23_N8
\LessThan4~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~28_cout\ = CARRY((\Add6~27_combout\ & (n_x(12) & !\LessThan4~26_cout\)) # (!\Add6~27_combout\ & ((n_x(12)) # (!\LessThan4~26_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~27_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \LessThan4~26_cout\,
	cout => \LessThan4~28_cout\);

-- Location: LCCOMB_X30_Y23_N10
\LessThan4~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~30_cout\ = CARRY((n_x(13) & (\Add6~26_combout\ & !\LessThan4~28_cout\)) # (!n_x(13) & ((\Add6~26_combout\) # (!\LessThan4~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \Add6~26_combout\,
	datad => VCC,
	cin => \LessThan4~28_cout\,
	cout => \LessThan4~30_cout\);

-- Location: LCCOMB_X30_Y23_N12
\LessThan4~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~32_cout\ = CARRY((n_x(14) & ((!\LessThan4~30_cout\) # (!\Add6~57_combout\))) # (!n_x(14) & (!\Add6~57_combout\ & !\LessThan4~30_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \Add6~57_combout\,
	datad => VCC,
	cin => \LessThan4~30_cout\,
	cout => \LessThan4~32_cout\);

-- Location: LCCOMB_X30_Y23_N14
\LessThan4~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~34_cout\ = CARRY((n_x(15) & (\Add6~56_combout\ & !\LessThan4~32_cout\)) # (!n_x(15) & ((\Add6~56_combout\) # (!\LessThan4~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add6~56_combout\,
	datad => VCC,
	cin => \LessThan4~32_cout\,
	cout => \LessThan4~34_cout\);

-- Location: LCCOMB_X30_Y23_N16
\LessThan4~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~36_cout\ = CARRY((n_x(16) & ((!\LessThan4~34_cout\) # (!\Add6~55_combout\))) # (!n_x(16) & (!\Add6~55_combout\ & !\LessThan4~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \Add6~55_combout\,
	datad => VCC,
	cin => \LessThan4~34_cout\,
	cout => \LessThan4~36_cout\);

-- Location: LCCOMB_X30_Y23_N18
\LessThan4~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~37_combout\ = (n_x(17) & (!\LessThan4~36_cout\ & \Add6~54_combout\)) # (!n_x(17) & ((\Add6~54_combout\) # (!\LessThan4~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(17),
	datad => \Add6~54_combout\,
	cin => \LessThan4~36_cout\,
	combout => \LessThan4~37_combout\);

-- Location: LCCOMB_X30_Y23_N24
\LessThan4~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~39_combout\ = (\Add6~60_combout\) # ((\LessThan4~0_combout\) # ((\Add6~63_combout\) # (\LessThan4~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~60_combout\,
	datab => \LessThan4~0_combout\,
	datac => \Add6~63_combout\,
	datad => \LessThan4~37_combout\,
	combout => \LessThan4~39_combout\);

-- Location: LCCOMB_X32_Y27_N6
\Selector93~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan4~39_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (x_int(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => x_int(5),
	datad => \LessThan4~39_combout\,
	combout => \Selector93~0_combout\);

-- Location: FF_X32_Y27_N7
\x_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(5));

-- Location: LCCOMB_X31_Y24_N10
\Add7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (sum_Hpx(5) & ((GND) # (!n_x(0)))) # (!sum_Hpx(5) & (n_x(0) $ (GND)))
-- \Add7~1\ = CARRY((sum_Hpx(5)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(5),
	datab => n_x(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X31_Y24_N12
\Add7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (n_x(1) & ((\Add6~38_combout\ & (!\Add7~1\)) # (!\Add6~38_combout\ & ((\Add7~1\) # (GND))))) # (!n_x(1) & ((\Add6~38_combout\ & (\Add7~1\ & VCC)) # (!\Add6~38_combout\ & (!\Add7~1\))))
-- \Add7~3\ = CARRY((n_x(1) & ((!\Add7~1\) # (!\Add6~38_combout\))) # (!n_x(1) & (!\Add6~38_combout\ & !\Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(1),
	datab => \Add6~38_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X31_Y24_N14
\Add7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Add6~37_combout\ $ (n_x(2) $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Add6~37_combout\ & ((!\Add7~3\) # (!n_x(2)))) # (!\Add6~37_combout\ & (!n_x(2) & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~37_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X31_Y24_N16
\Add7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~36_combout\ & ((n_x(3) & (!\Add7~5\)) # (!n_x(3) & (\Add7~5\ & VCC)))) # (!\Add6~36_combout\ & ((n_x(3) & ((\Add7~5\) # (GND))) # (!n_x(3) & (!\Add7~5\))))
-- \Add7~7\ = CARRY((\Add6~36_combout\ & (n_x(3) & !\Add7~5\)) # (!\Add6~36_combout\ & ((n_x(3)) # (!\Add7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X31_Y24_N18
\Add7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((\Add6~35_combout\ $ (n_x(4) $ (\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((\Add6~35_combout\ & ((!\Add7~7\) # (!n_x(4)))) # (!\Add6~35_combout\ & (!n_x(4) & !\Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~35_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X31_Y24_N20
\Add7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add6~34_combout\ & ((n_x(5) & (!\Add7~9\)) # (!n_x(5) & (\Add7~9\ & VCC)))) # (!\Add6~34_combout\ & ((n_x(5) & ((\Add7~9\) # (GND))) # (!n_x(5) & (!\Add7~9\))))
-- \Add7~11\ = CARRY((\Add6~34_combout\ & (n_x(5) & !\Add7~9\)) # (!\Add6~34_combout\ & ((n_x(5)) # (!\Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~34_combout\,
	datab => n_x(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X31_Y24_N22
\Add7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = ((n_x(6) $ (\Add6~33_combout\ $ (\Add7~11\)))) # (GND)
-- \Add7~13\ = CARRY((n_x(6) & (\Add6~33_combout\ & !\Add7~11\)) # (!n_x(6) & ((\Add6~33_combout\) # (!\Add7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \Add6~33_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X31_Y24_N24
\Add7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\Add6~32_combout\ & ((n_x(7) & (!\Add7~13\)) # (!n_x(7) & (\Add7~13\ & VCC)))) # (!\Add6~32_combout\ & ((n_x(7) & ((\Add7~13\) # (GND))) # (!n_x(7) & (!\Add7~13\))))
-- \Add7~15\ = CARRY((\Add6~32_combout\ & (n_x(7) & !\Add7~13\)) # (!\Add6~32_combout\ & ((n_x(7)) # (!\Add7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~32_combout\,
	datab => n_x(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X31_Y24_N26
\Add7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = ((n_x(8) $ (\Add6~31_combout\ $ (\Add7~15\)))) # (GND)
-- \Add7~17\ = CARRY((n_x(8) & (\Add6~31_combout\ & !\Add7~15\)) # (!n_x(8) & ((\Add6~31_combout\) # (!\Add7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \Add6~31_combout\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X31_Y24_N28
\Add7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Add6~30_combout\ & ((n_x(9) & (!\Add7~17\)) # (!n_x(9) & (\Add7~17\ & VCC)))) # (!\Add6~30_combout\ & ((n_x(9) & ((\Add7~17\) # (GND))) # (!n_x(9) & (!\Add7~17\))))
-- \Add7~19\ = CARRY((\Add6~30_combout\ & (n_x(9) & !\Add7~17\)) # (!\Add6~30_combout\ & ((n_x(9)) # (!\Add7~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~30_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X31_Y24_N30
\Add7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = ((n_x(10) $ (\Add6~29_combout\ $ (\Add7~19\)))) # (GND)
-- \Add7~21\ = CARRY((n_x(10) & (\Add6~29_combout\ & !\Add7~19\)) # (!n_x(10) & ((\Add6~29_combout\) # (!\Add7~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add6~29_combout\,
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X31_Y23_N0
\Add7~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (n_x(11) & ((\Add6~28_combout\ & (!\Add7~21\)) # (!\Add6~28_combout\ & ((\Add7~21\) # (GND))))) # (!n_x(11) & ((\Add6~28_combout\ & (\Add7~21\ & VCC)) # (!\Add6~28_combout\ & (!\Add7~21\))))
-- \Add7~23\ = CARRY((n_x(11) & ((!\Add7~21\) # (!\Add6~28_combout\))) # (!n_x(11) & (!\Add6~28_combout\ & !\Add7~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => \Add6~28_combout\,
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X31_Y23_N2
\Add7~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = ((\Add6~27_combout\ $ (n_x(12) $ (\Add7~23\)))) # (GND)
-- \Add7~25\ = CARRY((\Add6~27_combout\ & ((!\Add7~23\) # (!n_x(12)))) # (!\Add6~27_combout\ & (!n_x(12) & !\Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~27_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X31_Y23_N4
\Add7~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (n_x(13) & ((\Add6~26_combout\ & (!\Add7~25\)) # (!\Add6~26_combout\ & ((\Add7~25\) # (GND))))) # (!n_x(13) & ((\Add6~26_combout\ & (\Add7~25\ & VCC)) # (!\Add6~26_combout\ & (!\Add7~25\))))
-- \Add7~27\ = CARRY((n_x(13) & ((!\Add7~25\) # (!\Add6~26_combout\))) # (!n_x(13) & (!\Add6~26_combout\ & !\Add7~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \Add6~26_combout\,
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X31_Y23_N6
\Add7~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = ((n_x(14) $ (\Add6~57_combout\ $ (\Add7~27\)))) # (GND)
-- \Add7~29\ = CARRY((n_x(14) & (\Add6~57_combout\ & !\Add7~27\)) # (!n_x(14) & ((\Add6~57_combout\) # (!\Add7~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \Add6~57_combout\,
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X31_Y23_N8
\Add7~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (n_x(15) & ((\Add6~56_combout\ & (!\Add7~29\)) # (!\Add6~56_combout\ & ((\Add7~29\) # (GND))))) # (!n_x(15) & ((\Add6~56_combout\ & (\Add7~29\ & VCC)) # (!\Add6~56_combout\ & (!\Add7~29\))))
-- \Add7~31\ = CARRY((n_x(15) & ((!\Add7~29\) # (!\Add6~56_combout\))) # (!n_x(15) & (!\Add6~56_combout\ & !\Add7~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add6~56_combout\,
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X31_Y23_N10
\Add7~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = ((n_x(16) $ (\Add6~55_combout\ $ (\Add7~31\)))) # (GND)
-- \Add7~33\ = CARRY((n_x(16) & (\Add6~55_combout\ & !\Add7~31\)) # (!n_x(16) & ((\Add6~55_combout\) # (!\Add7~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \Add6~55_combout\,
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X31_Y23_N12
\Add7~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (n_x(17) & ((\Add6~54_combout\ & (!\Add7~33\)) # (!\Add6~54_combout\ & ((\Add7~33\) # (GND))))) # (!n_x(17) & ((\Add6~54_combout\ & (\Add7~33\ & VCC)) # (!\Add6~54_combout\ & (!\Add7~33\))))
-- \Add7~35\ = CARRY((n_x(17) & ((!\Add7~33\) # (!\Add6~54_combout\))) # (!n_x(17) & (!\Add6~54_combout\ & !\Add7~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(17),
	datab => \Add6~54_combout\,
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X31_Y23_N14
\Add7~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (\Add6~49_combout\ & ((GND) # (!\Add7~35\))) # (!\Add6~49_combout\ & (\Add7~35\ $ (GND)))
-- \Add7~37\ = CARRY((\Add6~49_combout\) # (!\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~49_combout\,
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X26_Y23_N4
\LessThan5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\LessThan4~39_combout\ & ((\Add7~36_combout\) # ((\Add7~34_combout\)))) # (!\LessThan4~39_combout\ & (((\Add6~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~36_combout\,
	datab => \Add6~54_combout\,
	datac => \Add7~34_combout\,
	datad => \LessThan4~39_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X32_Y23_N30
\Add6~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~65_combout\ = (\Add6~52_combout\ & ((\Add5~62_combout\) # ((\LessThan3~37_combout\) # (\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~62_combout\,
	datab => \LessThan3~37_combout\,
	datac => \LessThan3~0_combout\,
	datad => \Add6~52_combout\,
	combout => \Add6~65_combout\);

-- Location: LCCOMB_X31_Y23_N26
\Add6~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~64_combout\ = (\Add6~50_combout\ & ((\Add5~62_combout\) # ((\LessThan3~37_combout\) # (\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~62_combout\,
	datab => \LessThan3~37_combout\,
	datac => \Add6~50_combout\,
	datad => \LessThan3~0_combout\,
	combout => \Add6~64_combout\);

-- Location: LCCOMB_X31_Y23_N16
\Add7~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (\Add6~64_combout\ & (\Add7~37\ & VCC)) # (!\Add6~64_combout\ & (!\Add7~37\))
-- \Add7~39\ = CARRY((!\Add6~64_combout\ & !\Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~64_combout\,
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X31_Y23_N18
\Add7~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (\Add6~65_combout\ & ((GND) # (!\Add7~39\))) # (!\Add6~65_combout\ & (\Add7~39\ $ (GND)))
-- \Add7~41\ = CARRY((\Add6~65_combout\) # (!\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~65_combout\,
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X31_Y23_N20
\Add7~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (\Add6~60_combout\ & (\Add7~41\ & VCC)) # (!\Add6~60_combout\ & (!\Add7~41\))
-- \Add7~43\ = CARRY((!\Add6~60_combout\ & !\Add7~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~60_combout\,
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X31_Y23_N22
\Add7~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = \Add7~43\ $ (\Add6~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add6~63_combout\,
	cin => \Add7~43\,
	combout => \Add7~44_combout\);

-- Location: LCCOMB_X26_Y23_N30
\temp1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~17_combout\ = (\Add7~44_combout\) # ((\Add7~38_combout\) # ((\Add7~40_combout\) # (\Add7~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datab => \Add7~38_combout\,
	datac => \Add7~40_combout\,
	datad => \Add7~42_combout\,
	combout => \temp1~17_combout\);

-- Location: LCCOMB_X29_Y23_N30
\temp1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~14_combout\ = (\LessThan4~39_combout\ & ((\Add7~32_combout\))) # (!\LessThan4~39_combout\ & (\Add6~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~55_combout\,
	datac => \Add7~32_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~14_combout\);

-- Location: LCCOMB_X29_Y23_N20
\temp1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~15_combout\ = (\LessThan4~39_combout\ & ((\Add7~30_combout\))) # (!\LessThan4~39_combout\ & (\Add6~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~56_combout\,
	datac => \Add7~30_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~15_combout\);

-- Location: LCCOMB_X29_Y23_N22
\temp1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~16_combout\ = (\LessThan4~39_combout\ & (\Add7~28_combout\)) # (!\LessThan4~39_combout\ & ((\Add6~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~28_combout\,
	datac => \Add6~57_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~16_combout\);

-- Location: LCCOMB_X30_Y23_N22
\temp1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~0_combout\ = (\LessThan4~39_combout\ & (\Add7~26_combout\)) # (!\LessThan4~39_combout\ & ((\Add6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~26_combout\,
	datab => \Add6~26_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~0_combout\);

-- Location: LCCOMB_X28_Y23_N28
\temp1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~1_combout\ = (\LessThan4~39_combout\ & ((\Add7~24_combout\))) # (!\LessThan4~39_combout\ & (\Add6~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~27_combout\,
	datac => \Add7~24_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~1_combout\);

-- Location: LCCOMB_X32_Y23_N24
\temp1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~2_combout\ = (\LessThan4~39_combout\ & ((\Add7~22_combout\))) # (!\LessThan4~39_combout\ & (\Add6~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~28_combout\,
	datac => \Add7~22_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~2_combout\);

-- Location: LCCOMB_X29_Y23_N28
\temp1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~3_combout\ = (\LessThan4~39_combout\ & ((\Add7~20_combout\))) # (!\LessThan4~39_combout\ & (\Add6~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~29_combout\,
	datac => \Add7~20_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~3_combout\);

-- Location: LCCOMB_X29_Y23_N26
\temp1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~4_combout\ = (\LessThan4~39_combout\ & ((\Add7~18_combout\))) # (!\LessThan4~39_combout\ & (\Add6~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~30_combout\,
	datac => \Add7~18_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~4_combout\);

-- Location: LCCOMB_X31_Y24_N0
\temp1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~5_combout\ = (\LessThan4~39_combout\ & ((\Add7~16_combout\))) # (!\LessThan4~39_combout\ & (\Add6~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~31_combout\,
	datac => \Add7~16_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~5_combout\);

-- Location: LCCOMB_X29_Y23_N24
\temp1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~6_combout\ = (\LessThan4~39_combout\ & ((\Add7~14_combout\))) # (!\LessThan4~39_combout\ & (\Add6~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~32_combout\,
	datac => \Add7~14_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~6_combout\);

-- Location: LCCOMB_X29_Y24_N2
\temp1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~7_combout\ = (\LessThan4~39_combout\ & ((\Add7~12_combout\))) # (!\LessThan4~39_combout\ & (\Add6~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~33_combout\,
	datab => \Add7~12_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~7_combout\);

-- Location: LCCOMB_X29_Y24_N12
\temp1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~8_combout\ = (\LessThan4~39_combout\ & ((\Add7~10_combout\))) # (!\LessThan4~39_combout\ & (\Add6~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~34_combout\,
	datac => \Add7~10_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~8_combout\);

-- Location: LCCOMB_X29_Y24_N10
\temp1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~9_combout\ = (\LessThan4~39_combout\ & ((\Add7~8_combout\))) # (!\LessThan4~39_combout\ & (\Add6~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~35_combout\,
	datac => \Add7~8_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~9_combout\);

-- Location: LCCOMB_X29_Y24_N4
\temp1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~10_combout\ = (\LessThan4~39_combout\ & (\Add7~6_combout\)) # (!\LessThan4~39_combout\ & ((\Add6~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add6~36_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~10_combout\);

-- Location: LCCOMB_X32_Y24_N8
\temp1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~11_combout\ = (\LessThan4~39_combout\ & (\Add7~4_combout\)) # (!\LessThan4~39_combout\ & ((\Add6~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add6~37_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~11_combout\);

-- Location: LCCOMB_X29_Y24_N6
\temp1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~12_combout\ = (\LessThan4~39_combout\ & (\Add7~2_combout\)) # (!\LessThan4~39_combout\ & ((\Add6~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~2_combout\,
	datac => \Add6~38_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~12_combout\);

-- Location: LCCOMB_X27_Y24_N8
\temp1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~13_combout\ = (\LessThan4~39_combout\ & (\Add7~0_combout\)) # (!\LessThan4~39_combout\ & ((sum_Hpx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~0_combout\,
	datac => sum_Hpx(5),
	datad => \LessThan4~39_combout\,
	combout => \temp1~13_combout\);

-- Location: LCCOMB_X29_Y24_N14
\LessThan5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~2_cout\ = CARRY(\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datad => VCC,
	cout => \LessThan5~2_cout\);

-- Location: LCCOMB_X29_Y24_N16
\LessThan5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~4_cout\ = CARRY((sum_Hpx(4) & (n_x(0) & !\LessThan5~2_cout\)) # (!sum_Hpx(4) & ((n_x(0)) # (!\LessThan5~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(4),
	datab => n_x(0),
	datad => VCC,
	cin => \LessThan5~2_cout\,
	cout => \LessThan5~4_cout\);

-- Location: LCCOMB_X29_Y24_N18
\LessThan5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~6_cout\ = CARRY((n_x(1) & (\temp1~13_combout\ & !\LessThan5~4_cout\)) # (!n_x(1) & ((\temp1~13_combout\) # (!\LessThan5~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(1),
	datab => \temp1~13_combout\,
	datad => VCC,
	cin => \LessThan5~4_cout\,
	cout => \LessThan5~6_cout\);

-- Location: LCCOMB_X29_Y24_N20
\LessThan5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~8_cout\ = CARRY((\temp1~12_combout\ & (n_x(2) & !\LessThan5~6_cout\)) # (!\temp1~12_combout\ & ((n_x(2)) # (!\LessThan5~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~12_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \LessThan5~6_cout\,
	cout => \LessThan5~8_cout\);

-- Location: LCCOMB_X29_Y24_N22
\LessThan5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~10_cout\ = CARRY((\temp1~11_combout\ & ((!\LessThan5~8_cout\) # (!n_x(3)))) # (!\temp1~11_combout\ & (!n_x(3) & !\LessThan5~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~11_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan5~8_cout\,
	cout => \LessThan5~10_cout\);

-- Location: LCCOMB_X29_Y24_N24
\LessThan5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~12_cout\ = CARRY((n_x(4) & ((!\LessThan5~10_cout\) # (!\temp1~10_combout\))) # (!n_x(4) & (!\temp1~10_combout\ & !\LessThan5~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \temp1~10_combout\,
	datad => VCC,
	cin => \LessThan5~10_cout\,
	cout => \LessThan5~12_cout\);

-- Location: LCCOMB_X29_Y24_N26
\LessThan5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~14_cout\ = CARRY((\temp1~9_combout\ & ((!\LessThan5~12_cout\) # (!n_x(5)))) # (!\temp1~9_combout\ & (!n_x(5) & !\LessThan5~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~9_combout\,
	datab => n_x(5),
	datad => VCC,
	cin => \LessThan5~12_cout\,
	cout => \LessThan5~14_cout\);

-- Location: LCCOMB_X29_Y24_N28
\LessThan5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~16_cout\ = CARRY((\temp1~8_combout\ & (n_x(6) & !\LessThan5~14_cout\)) # (!\temp1~8_combout\ & ((n_x(6)) # (!\LessThan5~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~8_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \LessThan5~14_cout\,
	cout => \LessThan5~16_cout\);

-- Location: LCCOMB_X29_Y24_N30
\LessThan5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~18_cout\ = CARRY((n_x(7) & (\temp1~7_combout\ & !\LessThan5~16_cout\)) # (!n_x(7) & ((\temp1~7_combout\) # (!\LessThan5~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \temp1~7_combout\,
	datad => VCC,
	cin => \LessThan5~16_cout\,
	cout => \LessThan5~18_cout\);

-- Location: LCCOMB_X29_Y23_N0
\LessThan5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~20_cout\ = CARRY((n_x(8) & ((!\LessThan5~18_cout\) # (!\temp1~6_combout\))) # (!n_x(8) & (!\temp1~6_combout\ & !\LessThan5~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \temp1~6_combout\,
	datad => VCC,
	cin => \LessThan5~18_cout\,
	cout => \LessThan5~20_cout\);

-- Location: LCCOMB_X29_Y23_N2
\LessThan5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~22_cout\ = CARRY((\temp1~5_combout\ & ((!\LessThan5~20_cout\) # (!n_x(9)))) # (!\temp1~5_combout\ & (!n_x(9) & !\LessThan5~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~5_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \LessThan5~20_cout\,
	cout => \LessThan5~22_cout\);

-- Location: LCCOMB_X29_Y23_N4
\LessThan5~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~24_cout\ = CARRY((\temp1~4_combout\ & (n_x(10) & !\LessThan5~22_cout\)) # (!\temp1~4_combout\ & ((n_x(10)) # (!\LessThan5~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~4_combout\,
	datab => n_x(10),
	datad => VCC,
	cin => \LessThan5~22_cout\,
	cout => \LessThan5~24_cout\);

-- Location: LCCOMB_X29_Y23_N6
\LessThan5~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~26_cout\ = CARRY((n_x(11) & (\temp1~3_combout\ & !\LessThan5~24_cout\)) # (!n_x(11) & ((\temp1~3_combout\) # (!\LessThan5~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => \temp1~3_combout\,
	datad => VCC,
	cin => \LessThan5~24_cout\,
	cout => \LessThan5~26_cout\);

-- Location: LCCOMB_X29_Y23_N8
\LessThan5~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~28_cout\ = CARRY((n_x(12) & ((!\LessThan5~26_cout\) # (!\temp1~2_combout\))) # (!n_x(12) & (!\temp1~2_combout\ & !\LessThan5~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datab => \temp1~2_combout\,
	datad => VCC,
	cin => \LessThan5~26_cout\,
	cout => \LessThan5~28_cout\);

-- Location: LCCOMB_X29_Y23_N10
\LessThan5~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~30_cout\ = CARRY((n_x(13) & (\temp1~1_combout\ & !\LessThan5~28_cout\)) # (!n_x(13) & ((\temp1~1_combout\) # (!\LessThan5~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \temp1~1_combout\,
	datad => VCC,
	cin => \LessThan5~28_cout\,
	cout => \LessThan5~30_cout\);

-- Location: LCCOMB_X29_Y23_N12
\LessThan5~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~32_cout\ = CARRY((n_x(14) & ((!\LessThan5~30_cout\) # (!\temp1~0_combout\))) # (!n_x(14) & (!\temp1~0_combout\ & !\LessThan5~30_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \temp1~0_combout\,
	datad => VCC,
	cin => \LessThan5~30_cout\,
	cout => \LessThan5~32_cout\);

-- Location: LCCOMB_X29_Y23_N14
\LessThan5~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~34_cout\ = CARRY((\temp1~16_combout\ & ((!\LessThan5~32_cout\) # (!n_x(15)))) # (!\temp1~16_combout\ & (!n_x(15) & !\LessThan5~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~16_combout\,
	datab => n_x(15),
	datad => VCC,
	cin => \LessThan5~32_cout\,
	cout => \LessThan5~34_cout\);

-- Location: LCCOMB_X29_Y23_N16
\LessThan5~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~36_cout\ = CARRY((n_x(16) & ((!\LessThan5~34_cout\) # (!\temp1~15_combout\))) # (!n_x(16) & (!\temp1~15_combout\ & !\LessThan5~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \temp1~15_combout\,
	datad => VCC,
	cin => \LessThan5~34_cout\,
	cout => \LessThan5~36_cout\);

-- Location: LCCOMB_X29_Y23_N18
\LessThan5~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~37_combout\ = (\temp1~14_combout\ & ((!n_x(17)) # (!\LessThan5~36_cout\))) # (!\temp1~14_combout\ & (!\LessThan5~36_cout\ & !n_x(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~14_combout\,
	datad => n_x(17),
	cin => \LessThan5~36_cout\,
	combout => \LessThan5~37_combout\);

-- Location: LCCOMB_X26_Y23_N0
\LessThan5~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~39_combout\ = (\LessThan5~0_combout\) # ((\LessThan5~37_combout\) # ((\LessThan4~39_combout\ & \temp1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~39_combout\,
	datab => \LessThan5~0_combout\,
	datac => \temp1~17_combout\,
	datad => \LessThan5~37_combout\,
	combout => \LessThan5~39_combout\);

-- Location: LCCOMB_X32_Y27_N4
\Selector94~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan5~39_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (x_int(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => x_int(4),
	datad => \LessThan5~39_combout\,
	combout => \Selector94~0_combout\);

-- Location: FF_X32_Y27_N5
\x_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(4));

-- Location: LCCOMB_X28_Y23_N26
\temp1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~35_combout\ = (\Add7~36_combout\ & \LessThan4~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~36_combout\,
	datad => \LessThan4~39_combout\,
	combout => \temp1~35_combout\);

-- Location: LCCOMB_X28_Y23_N24
\temp1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~34_combout\ = (\LessThan4~39_combout\ & ((\Add7~34_combout\))) # (!\LessThan4~39_combout\ & (\Add6~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~39_combout\,
	datac => \Add6~54_combout\,
	datad => \Add7~34_combout\,
	combout => \temp1~34_combout\);

-- Location: LCCOMB_X28_Y24_N8
\Add8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (n_x(0) & (sum_Hpx(4) $ (VCC))) # (!n_x(0) & ((sum_Hpx(4)) # (GND)))
-- \Add8~1\ = CARRY((sum_Hpx(4)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(4),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X28_Y24_N10
\Add8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\temp1~13_combout\ & ((n_x(1) & (!\Add8~1\)) # (!n_x(1) & (\Add8~1\ & VCC)))) # (!\temp1~13_combout\ & ((n_x(1) & ((\Add8~1\) # (GND))) # (!n_x(1) & (!\Add8~1\))))
-- \Add8~3\ = CARRY((\temp1~13_combout\ & (n_x(1) & !\Add8~1\)) # (!\temp1~13_combout\ & ((n_x(1)) # (!\Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~13_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X28_Y24_N12
\Add8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\temp1~12_combout\ $ (n_x(2) $ (\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\temp1~12_combout\ & ((!\Add8~3\) # (!n_x(2)))) # (!\temp1~12_combout\ & (!n_x(2) & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~12_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X28_Y24_N14
\Add8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (n_x(3) & ((\temp1~11_combout\ & (!\Add8~5\)) # (!\temp1~11_combout\ & ((\Add8~5\) # (GND))))) # (!n_x(3) & ((\temp1~11_combout\ & (\Add8~5\ & VCC)) # (!\temp1~11_combout\ & (!\Add8~5\))))
-- \Add8~7\ = CARRY((n_x(3) & ((!\Add8~5\) # (!\temp1~11_combout\))) # (!n_x(3) & (!\temp1~11_combout\ & !\Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(3),
	datab => \temp1~11_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X28_Y24_N16
\Add8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\temp1~10_combout\ $ (n_x(4) $ (\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\temp1~10_combout\ & ((!\Add8~7\) # (!n_x(4)))) # (!\temp1~10_combout\ & (!n_x(4) & !\Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~10_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X28_Y24_N18
\Add8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (n_x(5) & ((\temp1~9_combout\ & (!\Add8~9\)) # (!\temp1~9_combout\ & ((\Add8~9\) # (GND))))) # (!n_x(5) & ((\temp1~9_combout\ & (\Add8~9\ & VCC)) # (!\temp1~9_combout\ & (!\Add8~9\))))
-- \Add8~11\ = CARRY((n_x(5) & ((!\Add8~9\) # (!\temp1~9_combout\))) # (!n_x(5) & (!\temp1~9_combout\ & !\Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \temp1~9_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X28_Y24_N20
\Add8~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = ((n_x(6) $ (\temp1~8_combout\ $ (\Add8~11\)))) # (GND)
-- \Add8~13\ = CARRY((n_x(6) & (\temp1~8_combout\ & !\Add8~11\)) # (!n_x(6) & ((\temp1~8_combout\) # (!\Add8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \temp1~8_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X28_Y24_N22
\Add8~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\temp1~7_combout\ & ((n_x(7) & (!\Add8~13\)) # (!n_x(7) & (\Add8~13\ & VCC)))) # (!\temp1~7_combout\ & ((n_x(7) & ((\Add8~13\) # (GND))) # (!n_x(7) & (!\Add8~13\))))
-- \Add8~15\ = CARRY((\temp1~7_combout\ & (n_x(7) & !\Add8~13\)) # (!\temp1~7_combout\ & ((n_x(7)) # (!\Add8~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~7_combout\,
	datab => n_x(7),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X28_Y24_N24
\Add8~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = ((\temp1~6_combout\ $ (n_x(8) $ (\Add8~15\)))) # (GND)
-- \Add8~17\ = CARRY((\temp1~6_combout\ & ((!\Add8~15\) # (!n_x(8)))) # (!\temp1~6_combout\ & (!n_x(8) & !\Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~6_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X28_Y24_N26
\Add8~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (n_x(9) & ((\temp1~5_combout\ & (!\Add8~17\)) # (!\temp1~5_combout\ & ((\Add8~17\) # (GND))))) # (!n_x(9) & ((\temp1~5_combout\ & (\Add8~17\ & VCC)) # (!\temp1~5_combout\ & (!\Add8~17\))))
-- \Add8~19\ = CARRY((n_x(9) & ((!\Add8~17\) # (!\temp1~5_combout\))) # (!n_x(9) & (!\temp1~5_combout\ & !\Add8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \temp1~5_combout\,
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X28_Y24_N28
\Add8~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = ((n_x(10) $ (\temp1~4_combout\ $ (\Add8~19\)))) # (GND)
-- \Add8~21\ = CARRY((n_x(10) & (\temp1~4_combout\ & !\Add8~19\)) # (!n_x(10) & ((\temp1~4_combout\) # (!\Add8~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \temp1~4_combout\,
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X28_Y24_N30
\Add8~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (n_x(11) & ((\temp1~3_combout\ & (!\Add8~21\)) # (!\temp1~3_combout\ & ((\Add8~21\) # (GND))))) # (!n_x(11) & ((\temp1~3_combout\ & (\Add8~21\ & VCC)) # (!\temp1~3_combout\ & (!\Add8~21\))))
-- \Add8~23\ = CARRY((n_x(11) & ((!\Add8~21\) # (!\temp1~3_combout\))) # (!n_x(11) & (!\temp1~3_combout\ & !\Add8~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => \temp1~3_combout\,
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X28_Y23_N0
\Add8~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = ((\temp1~2_combout\ $ (n_x(12) $ (\Add8~23\)))) # (GND)
-- \Add8~25\ = CARRY((\temp1~2_combout\ & ((!\Add8~23\) # (!n_x(12)))) # (!\temp1~2_combout\ & (!n_x(12) & !\Add8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~2_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X28_Y23_N2
\Add8~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (n_x(13) & ((\temp1~1_combout\ & (!\Add8~25\)) # (!\temp1~1_combout\ & ((\Add8~25\) # (GND))))) # (!n_x(13) & ((\temp1~1_combout\ & (\Add8~25\ & VCC)) # (!\temp1~1_combout\ & (!\Add8~25\))))
-- \Add8~27\ = CARRY((n_x(13) & ((!\Add8~25\) # (!\temp1~1_combout\))) # (!n_x(13) & (!\temp1~1_combout\ & !\Add8~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \temp1~1_combout\,
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X28_Y23_N4
\Add8~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = ((\temp1~0_combout\ $ (n_x(14) $ (\Add8~27\)))) # (GND)
-- \Add8~29\ = CARRY((\temp1~0_combout\ & ((!\Add8~27\) # (!n_x(14)))) # (!\temp1~0_combout\ & (!n_x(14) & !\Add8~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~0_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X28_Y23_N6
\Add8~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (n_x(15) & ((\temp1~16_combout\ & (!\Add8~29\)) # (!\temp1~16_combout\ & ((\Add8~29\) # (GND))))) # (!n_x(15) & ((\temp1~16_combout\ & (\Add8~29\ & VCC)) # (!\temp1~16_combout\ & (!\Add8~29\))))
-- \Add8~31\ = CARRY((n_x(15) & ((!\Add8~29\) # (!\temp1~16_combout\))) # (!n_x(15) & (!\temp1~16_combout\ & !\Add8~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \temp1~16_combout\,
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X28_Y23_N8
\Add8~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = ((\temp1~15_combout\ $ (n_x(16) $ (\Add8~31\)))) # (GND)
-- \Add8~33\ = CARRY((\temp1~15_combout\ & ((!\Add8~31\) # (!n_x(16)))) # (!\temp1~15_combout\ & (!n_x(16) & !\Add8~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~15_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X28_Y23_N10
\Add8~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (\temp1~14_combout\ & ((n_x(17) & (!\Add8~33\)) # (!n_x(17) & (\Add8~33\ & VCC)))) # (!\temp1~14_combout\ & ((n_x(17) & ((\Add8~33\) # (GND))) # (!n_x(17) & (!\Add8~33\))))
-- \Add8~35\ = CARRY((\temp1~14_combout\ & (n_x(17) & !\Add8~33\)) # (!\temp1~14_combout\ & ((n_x(17)) # (!\Add8~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~14_combout\,
	datab => n_x(17),
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X28_Y23_N12
\Add8~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (\temp1~34_combout\ & ((GND) # (!\Add8~35\))) # (!\temp1~34_combout\ & (\Add8~35\ $ (GND)))
-- \Add8~37\ = CARRY((\temp1~34_combout\) # (!\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp1~34_combout\,
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: LCCOMB_X28_Y23_N14
\Add8~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (\temp1~35_combout\ & (\Add8~37\ & VCC)) # (!\temp1~35_combout\ & (!\Add8~37\))
-- \Add8~39\ = CARRY((!\temp1~35_combout\ & !\Add8~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~35_combout\,
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X27_Y23_N22
\temp1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~38_combout\ = (\Add8~38_combout\ & \LessThan5~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~38_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~38_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Add8~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (\Add8~39\ & ((((\Add7~38_combout\ & \LessThan4~39_combout\))))) # (!\Add8~39\ & (((\Add7~38_combout\ & \LessThan4~39_combout\)) # (GND)))
-- \Add8~41\ = CARRY(((\Add7~38_combout\ & \LessThan4~39_combout\)) # (!\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~38_combout\,
	datab => \LessThan4~39_combout\,
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X28_Y23_N18
\Add8~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (\Add7~40_combout\ & ((\LessThan4~39_combout\ & (\Add8~41\ & VCC)) # (!\LessThan4~39_combout\ & (!\Add8~41\)))) # (!\Add7~40_combout\ & (((!\Add8~41\))))
-- \Add8~43\ = CARRY((!\Add8~41\ & ((!\LessThan4~39_combout\) # (!\Add7~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~40_combout\,
	datab => \LessThan4~39_combout\,
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X28_Y23_N20
\Add8~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (\Add8~43\ & ((((\Add7~42_combout\ & \LessThan4~39_combout\))))) # (!\Add8~43\ & (((\Add7~42_combout\ & \LessThan4~39_combout\)) # (GND)))
-- \Add8~45\ = CARRY(((\Add7~42_combout\ & \LessThan4~39_combout\)) # (!\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => \LessThan4~39_combout\,
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X27_Y23_N24
\LessThan6~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~39_combout\ = (\LessThan5~39_combout\ & ((\Add8~42_combout\) # ((\Add8~44_combout\) # (\Add8~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~39_combout\,
	datab => \Add8~42_combout\,
	datac => \Add8~44_combout\,
	datad => \Add8~40_combout\,
	combout => \LessThan6~39_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Add8~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = \Add8~45\ $ (((!\Add7~44_combout\) # (!\LessThan4~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~39_combout\,
	datad => \Add7~44_combout\,
	cin => \Add8~45\,
	combout => \Add8~46_combout\);

-- Location: LCCOMB_X28_Y23_N30
\temp1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~33_combout\ = (\LessThan5~39_combout\ & ((\Add8~34_combout\))) # (!\LessThan5~39_combout\ & (\temp1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~14_combout\,
	datac => \LessThan5~39_combout\,
	datad => \Add8~34_combout\,
	combout => \temp1~33_combout\);

-- Location: LCCOMB_X27_Y23_N30
\LessThan6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\temp1~33_combout\) # ((\LessThan5~39_combout\ & ((\Add8~46_combout\) # (\Add8~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~39_combout\,
	datab => \Add8~46_combout\,
	datac => \Add8~36_combout\,
	datad => \temp1~33_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X26_Y23_N20
\temp1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~36_combout\ = (\LessThan5~39_combout\ & ((\Add8~32_combout\))) # (!\LessThan5~39_combout\ & (\temp1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~15_combout\,
	datac => \Add8~32_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~36_combout\);

-- Location: LCCOMB_X27_Y23_N20
\temp1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~37_combout\ = (\LessThan5~39_combout\ & ((\Add8~30_combout\))) # (!\LessThan5~39_combout\ & (\temp1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~16_combout\,
	datac => \Add8~30_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~37_combout\);

-- Location: LCCOMB_X26_Y23_N18
\temp1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~18_combout\ = (\LessThan5~39_combout\ & ((\Add8~28_combout\))) # (!\LessThan5~39_combout\ & (\temp1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~0_combout\,
	datac => \Add8~28_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~18_combout\);

-- Location: LCCOMB_X26_Y23_N16
\temp1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~19_combout\ = (\LessThan5~39_combout\ & ((\Add8~26_combout\))) # (!\LessThan5~39_combout\ & (\temp1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~1_combout\,
	datac => \Add8~26_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~19_combout\);

-- Location: LCCOMB_X26_Y23_N26
\temp1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~20_combout\ = (\LessThan5~39_combout\ & ((\Add8~24_combout\))) # (!\LessThan5~39_combout\ & (\temp1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~2_combout\,
	datac => \Add8~24_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~20_combout\);

-- Location: LCCOMB_X28_Y24_N0
\temp1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~21_combout\ = (\LessThan5~39_combout\ & ((\Add8~22_combout\))) # (!\LessThan5~39_combout\ & (\temp1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~3_combout\,
	datac => \Add8~22_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~21_combout\);

-- Location: LCCOMB_X28_Y24_N6
\temp1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~22_combout\ = (\LessThan5~39_combout\ & (\Add8~20_combout\)) # (!\LessThan5~39_combout\ & ((\temp1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~20_combout\,
	datac => \temp1~4_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~22_combout\);

-- Location: LCCOMB_X27_Y26_N0
\temp1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~23_combout\ = (\LessThan5~39_combout\ & (\Add8~18_combout\)) # (!\LessThan5~39_combout\ & ((\temp1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~18_combout\,
	datac => \LessThan5~39_combout\,
	datad => \temp1~5_combout\,
	combout => \temp1~23_combout\);

-- Location: LCCOMB_X26_Y23_N8
\temp1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~24_combout\ = (\LessThan5~39_combout\ & ((\Add8~16_combout\))) # (!\LessThan5~39_combout\ & (\temp1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~6_combout\,
	datac => \Add8~16_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~24_combout\);

-- Location: LCCOMB_X27_Y23_N28
\temp1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~25_combout\ = (\LessThan5~39_combout\ & ((\Add8~14_combout\))) # (!\LessThan5~39_combout\ & (\temp1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~7_combout\,
	datac => \Add8~14_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~25_combout\);

-- Location: LCCOMB_X27_Y24_N2
\temp1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~26_combout\ = (\LessThan5~39_combout\ & ((\Add8~12_combout\))) # (!\LessThan5~39_combout\ & (\temp1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~8_combout\,
	datac => \Add8~12_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~26_combout\);

-- Location: LCCOMB_X27_Y24_N12
\temp1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~27_combout\ = (\LessThan5~39_combout\ & (\Add8~10_combout\)) # (!\LessThan5~39_combout\ & ((\temp1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datac => \temp1~9_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~27_combout\);

-- Location: LCCOMB_X26_Y23_N2
\temp1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~28_combout\ = (\LessThan5~39_combout\ & ((\Add8~8_combout\))) # (!\LessThan5~39_combout\ & (\temp1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~10_combout\,
	datac => \Add8~8_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~28_combout\);

-- Location: LCCOMB_X26_Y23_N24
\temp1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~29_combout\ = (\LessThan5~39_combout\ & ((\Add8~6_combout\))) # (!\LessThan5~39_combout\ & (\temp1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~11_combout\,
	datac => \Add8~6_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~29_combout\);

-- Location: LCCOMB_X27_Y24_N10
\temp1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~30_combout\ = (\LessThan5~39_combout\ & ((\Add8~4_combout\))) # (!\LessThan5~39_combout\ & (\temp1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~12_combout\,
	datac => \Add8~4_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~30_combout\);

-- Location: LCCOMB_X27_Y24_N4
\temp1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~31_combout\ = (\LessThan5~39_combout\ & ((\Add8~2_combout\))) # (!\LessThan5~39_combout\ & (\temp1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~13_combout\,
	datac => \Add8~2_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~31_combout\);

-- Location: LCCOMB_X26_Y23_N6
\temp1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~32_combout\ = (\LessThan5~39_combout\ & (\Add8~0_combout\)) # (!\LessThan5~39_combout\ & ((sum_Hpx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => sum_Hpx(4),
	datad => \LessThan5~39_combout\,
	combout => \temp1~32_combout\);

-- Location: LCCOMB_X27_Y28_N16
\LessThan1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~43_combout\ = (sum_Hpx(2)) # ((sum_Hpx(0)) # (sum_Hpx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum_Hpx(2),
	datac => sum_Hpx(0),
	datad => sum_Hpx(1),
	combout => \LessThan1~43_combout\);

-- Location: LCCOMB_X27_Y24_N14
\LessThan6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~2_cout\ = CARRY(\LessThan1~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~43_combout\,
	datad => VCC,
	cout => \LessThan6~2_cout\);

-- Location: LCCOMB_X27_Y24_N16
\LessThan6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~4_cout\ = CARRY((n_x(0) & ((!\LessThan6~2_cout\) # (!sum_Hpx(3)))) # (!n_x(0) & (!sum_Hpx(3) & !\LessThan6~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(3),
	datad => VCC,
	cin => \LessThan6~2_cout\,
	cout => \LessThan6~4_cout\);

-- Location: LCCOMB_X27_Y24_N18
\LessThan6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~6_cout\ = CARRY((\temp1~32_combout\ & ((!\LessThan6~4_cout\) # (!n_x(1)))) # (!\temp1~32_combout\ & (!n_x(1) & !\LessThan6~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~32_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \LessThan6~4_cout\,
	cout => \LessThan6~6_cout\);

-- Location: LCCOMB_X27_Y24_N20
\LessThan6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~8_cout\ = CARRY((n_x(2) & ((!\LessThan6~6_cout\) # (!\temp1~31_combout\))) # (!n_x(2) & (!\temp1~31_combout\ & !\LessThan6~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => \temp1~31_combout\,
	datad => VCC,
	cin => \LessThan6~6_cout\,
	cout => \LessThan6~8_cout\);

-- Location: LCCOMB_X27_Y24_N22
\LessThan6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~10_cout\ = CARRY((\temp1~30_combout\ & ((!\LessThan6~8_cout\) # (!n_x(3)))) # (!\temp1~30_combout\ & (!n_x(3) & !\LessThan6~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~30_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan6~8_cout\,
	cout => \LessThan6~10_cout\);

-- Location: LCCOMB_X27_Y24_N24
\LessThan6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~12_cout\ = CARRY((n_x(4) & ((!\LessThan6~10_cout\) # (!\temp1~29_combout\))) # (!n_x(4) & (!\temp1~29_combout\ & !\LessThan6~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \temp1~29_combout\,
	datad => VCC,
	cin => \LessThan6~10_cout\,
	cout => \LessThan6~12_cout\);

-- Location: LCCOMB_X27_Y24_N26
\LessThan6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~14_cout\ = CARRY((\temp1~28_combout\ & ((!\LessThan6~12_cout\) # (!n_x(5)))) # (!\temp1~28_combout\ & (!n_x(5) & !\LessThan6~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~28_combout\,
	datab => n_x(5),
	datad => VCC,
	cin => \LessThan6~12_cout\,
	cout => \LessThan6~14_cout\);

-- Location: LCCOMB_X27_Y24_N28
\LessThan6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~16_cout\ = CARRY((\temp1~27_combout\ & (n_x(6) & !\LessThan6~14_cout\)) # (!\temp1~27_combout\ & ((n_x(6)) # (!\LessThan6~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~27_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \LessThan6~14_cout\,
	cout => \LessThan6~16_cout\);

-- Location: LCCOMB_X27_Y24_N30
\LessThan6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~18_cout\ = CARRY((n_x(7) & (\temp1~26_combout\ & !\LessThan6~16_cout\)) # (!n_x(7) & ((\temp1~26_combout\) # (!\LessThan6~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \temp1~26_combout\,
	datad => VCC,
	cin => \LessThan6~16_cout\,
	cout => \LessThan6~18_cout\);

-- Location: LCCOMB_X27_Y23_N0
\LessThan6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~20_cout\ = CARRY((n_x(8) & ((!\LessThan6~18_cout\) # (!\temp1~25_combout\))) # (!n_x(8) & (!\temp1~25_combout\ & !\LessThan6~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \temp1~25_combout\,
	datad => VCC,
	cin => \LessThan6~18_cout\,
	cout => \LessThan6~20_cout\);

-- Location: LCCOMB_X27_Y23_N2
\LessThan6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~22_cout\ = CARRY((\temp1~24_combout\ & ((!\LessThan6~20_cout\) # (!n_x(9)))) # (!\temp1~24_combout\ & (!n_x(9) & !\LessThan6~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~24_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \LessThan6~20_cout\,
	cout => \LessThan6~22_cout\);

-- Location: LCCOMB_X27_Y23_N4
\LessThan6~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~24_cout\ = CARRY((n_x(10) & ((!\LessThan6~22_cout\) # (!\temp1~23_combout\))) # (!n_x(10) & (!\temp1~23_combout\ & !\LessThan6~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \temp1~23_combout\,
	datad => VCC,
	cin => \LessThan6~22_cout\,
	cout => \LessThan6~24_cout\);

-- Location: LCCOMB_X27_Y23_N6
\LessThan6~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~26_cout\ = CARRY((\temp1~22_combout\ & ((!\LessThan6~24_cout\) # (!n_x(11)))) # (!\temp1~22_combout\ & (!n_x(11) & !\LessThan6~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~22_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan6~24_cout\,
	cout => \LessThan6~26_cout\);

-- Location: LCCOMB_X27_Y23_N8
\LessThan6~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~28_cout\ = CARRY((n_x(12) & ((!\LessThan6~26_cout\) # (!\temp1~21_combout\))) # (!n_x(12) & (!\temp1~21_combout\ & !\LessThan6~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datab => \temp1~21_combout\,
	datad => VCC,
	cin => \LessThan6~26_cout\,
	cout => \LessThan6~28_cout\);

-- Location: LCCOMB_X27_Y23_N10
\LessThan6~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~30_cout\ = CARRY((\temp1~20_combout\ & ((!\LessThan6~28_cout\) # (!n_x(13)))) # (!\temp1~20_combout\ & (!n_x(13) & !\LessThan6~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~20_combout\,
	datab => n_x(13),
	datad => VCC,
	cin => \LessThan6~28_cout\,
	cout => \LessThan6~30_cout\);

-- Location: LCCOMB_X27_Y23_N12
\LessThan6~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~32_cout\ = CARRY((\temp1~19_combout\ & (n_x(14) & !\LessThan6~30_cout\)) # (!\temp1~19_combout\ & ((n_x(14)) # (!\LessThan6~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~19_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \LessThan6~30_cout\,
	cout => \LessThan6~32_cout\);

-- Location: LCCOMB_X27_Y23_N14
\LessThan6~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~34_cout\ = CARRY((\temp1~18_combout\ & ((!\LessThan6~32_cout\) # (!n_x(15)))) # (!\temp1~18_combout\ & (!n_x(15) & !\LessThan6~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~18_combout\,
	datab => n_x(15),
	datad => VCC,
	cin => \LessThan6~32_cout\,
	cout => \LessThan6~34_cout\);

-- Location: LCCOMB_X27_Y23_N16
\LessThan6~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~36_cout\ = CARRY((n_x(16) & ((!\LessThan6~34_cout\) # (!\temp1~37_combout\))) # (!n_x(16) & (!\temp1~37_combout\ & !\LessThan6~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \temp1~37_combout\,
	datad => VCC,
	cin => \LessThan6~34_cout\,
	cout => \LessThan6~36_cout\);

-- Location: LCCOMB_X27_Y23_N18
\LessThan6~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~37_combout\ = (n_x(17) & (!\LessThan6~36_cout\ & \temp1~36_combout\)) # (!n_x(17) & ((\temp1~36_combout\) # (!\LessThan6~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(17),
	datad => \temp1~36_combout\,
	cin => \LessThan6~36_cout\,
	combout => \LessThan6~37_combout\);

-- Location: LCCOMB_X27_Y23_N26
\LessThan6~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~40_combout\ = (\temp1~38_combout\) # ((\LessThan6~39_combout\) # ((\LessThan6~0_combout\) # (\LessThan6~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~38_combout\,
	datab => \LessThan6~39_combout\,
	datac => \LessThan6~0_combout\,
	datad => \LessThan6~37_combout\,
	combout => \LessThan6~40_combout\);

-- Location: LCCOMB_X32_Y27_N14
\Selector95~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\state.calcul_barycentre~q\ & (\LessThan6~40_combout\)) # (!\state.calcul_barycentre~q\ & (((\state.init~q\ & x_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~40_combout\,
	datab => \state.init~q\,
	datac => x_int(3),
	datad => \state.calcul_barycentre~q\,
	combout => \Selector95~0_combout\);

-- Location: FF_X32_Y27_N15
\x_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(3));

-- Location: LCCOMB_X27_Y26_N8
\Add9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (n_x(0) & (sum_Hpx(3) $ (VCC))) # (!n_x(0) & ((sum_Hpx(3)) # (GND)))
-- \Add9~1\ = CARRY((sum_Hpx(3)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(3),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X27_Y26_N10
\Add9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (n_x(1) & ((\temp1~32_combout\ & (!\Add9~1\)) # (!\temp1~32_combout\ & ((\Add9~1\) # (GND))))) # (!n_x(1) & ((\temp1~32_combout\ & (\Add9~1\ & VCC)) # (!\temp1~32_combout\ & (!\Add9~1\))))
-- \Add9~3\ = CARRY((n_x(1) & ((!\Add9~1\) # (!\temp1~32_combout\))) # (!n_x(1) & (!\temp1~32_combout\ & !\Add9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(1),
	datab => \temp1~32_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X27_Y26_N12
\Add9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((n_x(2) $ (\temp1~31_combout\ $ (\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((n_x(2) & (\temp1~31_combout\ & !\Add9~3\)) # (!n_x(2) & ((\temp1~31_combout\) # (!\Add9~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => \temp1~31_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X27_Y26_N14
\Add9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (n_x(3) & ((\temp1~30_combout\ & (!\Add9~5\)) # (!\temp1~30_combout\ & ((\Add9~5\) # (GND))))) # (!n_x(3) & ((\temp1~30_combout\ & (\Add9~5\ & VCC)) # (!\temp1~30_combout\ & (!\Add9~5\))))
-- \Add9~7\ = CARRY((n_x(3) & ((!\Add9~5\) # (!\temp1~30_combout\))) # (!n_x(3) & (!\temp1~30_combout\ & !\Add9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(3),
	datab => \temp1~30_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X27_Y26_N16
\Add9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((n_x(4) $ (\temp1~29_combout\ $ (\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((n_x(4) & (\temp1~29_combout\ & !\Add9~7\)) # (!n_x(4) & ((\temp1~29_combout\) # (!\Add9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \temp1~29_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X27_Y26_N18
\Add9~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (n_x(5) & ((\temp1~28_combout\ & (!\Add9~9\)) # (!\temp1~28_combout\ & ((\Add9~9\) # (GND))))) # (!n_x(5) & ((\temp1~28_combout\ & (\Add9~9\ & VCC)) # (!\temp1~28_combout\ & (!\Add9~9\))))
-- \Add9~11\ = CARRY((n_x(5) & ((!\Add9~9\) # (!\temp1~28_combout\))) # (!n_x(5) & (!\temp1~28_combout\ & !\Add9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \temp1~28_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X27_Y26_N20
\Add9~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((n_x(6) $ (\temp1~27_combout\ $ (\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((n_x(6) & (\temp1~27_combout\ & !\Add9~11\)) # (!n_x(6) & ((\temp1~27_combout\) # (!\Add9~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \temp1~27_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X27_Y26_N22
\Add9~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (n_x(7) & ((\temp1~26_combout\ & (!\Add9~13\)) # (!\temp1~26_combout\ & ((\Add9~13\) # (GND))))) # (!n_x(7) & ((\temp1~26_combout\ & (\Add9~13\ & VCC)) # (!\temp1~26_combout\ & (!\Add9~13\))))
-- \Add9~15\ = CARRY((n_x(7) & ((!\Add9~13\) # (!\temp1~26_combout\))) # (!n_x(7) & (!\temp1~26_combout\ & !\Add9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \temp1~26_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X27_Y26_N24
\Add9~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = ((\temp1~25_combout\ $ (n_x(8) $ (\Add9~15\)))) # (GND)
-- \Add9~17\ = CARRY((\temp1~25_combout\ & ((!\Add9~15\) # (!n_x(8)))) # (!\temp1~25_combout\ & (!n_x(8) & !\Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~25_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X27_Y26_N26
\Add9~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (n_x(9) & ((\temp1~24_combout\ & (!\Add9~17\)) # (!\temp1~24_combout\ & ((\Add9~17\) # (GND))))) # (!n_x(9) & ((\temp1~24_combout\ & (\Add9~17\ & VCC)) # (!\temp1~24_combout\ & (!\Add9~17\))))
-- \Add9~19\ = CARRY((n_x(9) & ((!\Add9~17\) # (!\temp1~24_combout\))) # (!n_x(9) & (!\temp1~24_combout\ & !\Add9~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \temp1~24_combout\,
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X27_Y26_N28
\Add9~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = ((n_x(10) $ (\temp1~23_combout\ $ (\Add9~19\)))) # (GND)
-- \Add9~21\ = CARRY((n_x(10) & (\temp1~23_combout\ & !\Add9~19\)) # (!n_x(10) & ((\temp1~23_combout\) # (!\Add9~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \temp1~23_combout\,
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X27_Y26_N30
\Add9~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (n_x(11) & ((\temp1~22_combout\ & (!\Add9~21\)) # (!\temp1~22_combout\ & ((\Add9~21\) # (GND))))) # (!n_x(11) & ((\temp1~22_combout\ & (\Add9~21\ & VCC)) # (!\temp1~22_combout\ & (!\Add9~21\))))
-- \Add9~23\ = CARRY((n_x(11) & ((!\Add9~21\) # (!\temp1~22_combout\))) # (!n_x(11) & (!\temp1~22_combout\ & !\Add9~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => \temp1~22_combout\,
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X27_Y25_N0
\Add9~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = ((\temp1~21_combout\ $ (n_x(12) $ (\Add9~23\)))) # (GND)
-- \Add9~25\ = CARRY((\temp1~21_combout\ & ((!\Add9~23\) # (!n_x(12)))) # (!\temp1~21_combout\ & (!n_x(12) & !\Add9~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~21_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X27_Y25_N2
\Add9~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (n_x(13) & ((\temp1~20_combout\ & (!\Add9~25\)) # (!\temp1~20_combout\ & ((\Add9~25\) # (GND))))) # (!n_x(13) & ((\temp1~20_combout\ & (\Add9~25\ & VCC)) # (!\temp1~20_combout\ & (!\Add9~25\))))
-- \Add9~27\ = CARRY((n_x(13) & ((!\Add9~25\) # (!\temp1~20_combout\))) # (!n_x(13) & (!\temp1~20_combout\ & !\Add9~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \temp1~20_combout\,
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X27_Y25_N4
\Add9~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = ((n_x(14) $ (\temp1~19_combout\ $ (\Add9~27\)))) # (GND)
-- \Add9~29\ = CARRY((n_x(14) & (\temp1~19_combout\ & !\Add9~27\)) # (!n_x(14) & ((\temp1~19_combout\) # (!\Add9~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \temp1~19_combout\,
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X27_Y25_N6
\Add9~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (n_x(15) & ((\temp1~18_combout\ & (!\Add9~29\)) # (!\temp1~18_combout\ & ((\Add9~29\) # (GND))))) # (!n_x(15) & ((\temp1~18_combout\ & (\Add9~29\ & VCC)) # (!\temp1~18_combout\ & (!\Add9~29\))))
-- \Add9~31\ = CARRY((n_x(15) & ((!\Add9~29\) # (!\temp1~18_combout\))) # (!n_x(15) & (!\temp1~18_combout\ & !\Add9~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \temp1~18_combout\,
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X27_Y25_N8
\Add9~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = ((\temp1~37_combout\ $ (n_x(16) $ (\Add9~31\)))) # (GND)
-- \Add9~49\ = CARRY((\temp1~37_combout\ & ((!\Add9~31\) # (!n_x(16)))) # (!\temp1~37_combout\ & (!n_x(16) & !\Add9~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~37_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X27_Y25_N10
\Add9~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (\temp1~36_combout\ & ((n_x(17) & (!\Add9~49\)) # (!n_x(17) & (\Add9~49\ & VCC)))) # (!\temp1~36_combout\ & ((n_x(17) & ((\Add9~49\) # (GND))) # (!n_x(17) & (!\Add9~49\))))
-- \Add9~51\ = CARRY((\temp1~36_combout\ & (n_x(17) & !\Add9~49\)) # (!\temp1~36_combout\ & ((n_x(17)) # (!\Add9~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~36_combout\,
	datab => n_x(17),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X27_Y25_N12
\Add9~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~53_combout\ = (\temp1~33_combout\ & ((GND) # (!\Add9~51\))) # (!\temp1~33_combout\ & (\Add9~51\ $ (GND)))
-- \Add9~54\ = CARRY((\temp1~33_combout\) # (!\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp1~33_combout\,
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~53_combout\,
	cout => \Add9~54\);

-- Location: LCCOMB_X26_Y23_N12
\temp1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~39_combout\ = (\Add8~36_combout\ & \LessThan5~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~36_combout\,
	datad => \LessThan5~39_combout\,
	combout => \temp1~39_combout\);

-- Location: LCCOMB_X27_Y25_N14
\Add9~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~55_combout\ = (\temp1~39_combout\ & (\Add9~54\ & VCC)) # (!\temp1~39_combout\ & (!\Add9~54\))
-- \Add9~56\ = CARRY((!\temp1~39_combout\ & !\Add9~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~39_combout\,
	datad => VCC,
	cin => \Add9~54\,
	combout => \Add9~55_combout\,
	cout => \Add9~56\);

-- Location: LCCOMB_X27_Y25_N16
\Add9~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~57_combout\ = (\temp1~38_combout\ & ((GND) # (!\Add9~56\))) # (!\temp1~38_combout\ & (\Add9~56\ $ (GND)))
-- \Add9~58\ = CARRY((\temp1~38_combout\) # (!\Add9~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~38_combout\,
	datad => VCC,
	cin => \Add9~56\,
	combout => \Add9~57_combout\,
	cout => \Add9~58\);

-- Location: LCCOMB_X27_Y25_N30
\LessThan7~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~40_combout\ = (\LessThan6~40_combout\ & ((\Add9~53_combout\) # ((\Add9~57_combout\) # (\Add9~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~53_combout\,
	datab => \Add9~57_combout\,
	datac => \Add9~55_combout\,
	datad => \LessThan6~40_combout\,
	combout => \LessThan7~40_combout\);

-- Location: LCCOMB_X27_Y25_N18
\Add9~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~59_combout\ = (\LessThan5~39_combout\ & ((\Add8~40_combout\ & (\Add9~58\ & VCC)) # (!\Add8~40_combout\ & (!\Add9~58\)))) # (!\LessThan5~39_combout\ & (((!\Add9~58\))))
-- \Add9~60\ = CARRY((!\Add9~58\ & ((!\Add8~40_combout\) # (!\LessThan5~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~39_combout\,
	datab => \Add8~40_combout\,
	datad => VCC,
	cin => \Add9~58\,
	combout => \Add9~59_combout\,
	cout => \Add9~60\);

-- Location: LCCOMB_X26_Y23_N10
\Add9~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (\LessThan6~40_combout\ & ((\Add9~50_combout\))) # (!\LessThan6~40_combout\ & (\temp1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~36_combout\,
	datac => \LessThan6~40_combout\,
	datad => \Add9~50_combout\,
	combout => \Add9~52_combout\);

-- Location: LCCOMB_X27_Y25_N20
\Add9~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~61_combout\ = (\Add9~60\ & ((((\LessThan5~39_combout\ & \Add8~42_combout\))))) # (!\Add9~60\ & (((\LessThan5~39_combout\ & \Add8~42_combout\)) # (GND)))
-- \Add9~62\ = CARRY(((\LessThan5~39_combout\ & \Add8~42_combout\)) # (!\Add9~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~39_combout\,
	datab => \Add8~42_combout\,
	datad => VCC,
	cin => \Add9~60\,
	combout => \Add9~61_combout\,
	cout => \Add9~62\);

-- Location: LCCOMB_X27_Y25_N22
\Add9~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~63_combout\ = (\LessThan5~39_combout\ & ((\Add8~44_combout\ & (\Add9~62\ & VCC)) # (!\Add8~44_combout\ & (!\Add9~62\)))) # (!\LessThan5~39_combout\ & (((!\Add9~62\))))
-- \Add9~64\ = CARRY((!\Add9~62\ & ((!\Add8~44_combout\) # (!\LessThan5~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~39_combout\,
	datab => \Add8~44_combout\,
	datad => VCC,
	cin => \Add9~62\,
	combout => \Add9~63_combout\,
	cout => \Add9~64\);

-- Location: LCCOMB_X27_Y25_N24
\Add9~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~65_combout\ = \Add9~64\ $ (((\Add8~46_combout\ & \LessThan5~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~46_combout\,
	datad => \LessThan5~39_combout\,
	cin => \Add9~64\,
	combout => \Add9~65_combout\);

-- Location: LCCOMB_X23_Y25_N16
\LessThan7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\LessThan6~40_combout\ & ((\Add9~63_combout\) # ((\Add9~61_combout\) # (\Add9~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~40_combout\,
	datab => \Add9~63_combout\,
	datac => \Add9~61_combout\,
	datad => \Add9~65_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y25_N26
\LessThan7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\Add9~52_combout\) # ((\LessThan7~0_combout\) # ((\LessThan6~40_combout\ & \Add9~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~40_combout\,
	datab => \Add9~59_combout\,
	datac => \Add9~52_combout\,
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X27_Y25_N28
\Add9~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~67_combout\ = (\LessThan6~40_combout\ & ((\Add9~48_combout\))) # (!\LessThan6~40_combout\ & (\temp1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~37_combout\,
	datac => \Add9~48_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~67_combout\);

-- Location: LCCOMB_X26_Y25_N20
\Add9~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (\LessThan6~40_combout\ & ((\Add9~30_combout\))) # (!\LessThan6~40_combout\ & (\temp1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~18_combout\,
	datac => \LessThan6~40_combout\,
	datad => \Add9~30_combout\,
	combout => \Add9~32_combout\);

-- Location: LCCOMB_X27_Y25_N26
\Add9~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~33_combout\ = (\LessThan6~40_combout\ & ((\Add9~28_combout\))) # (!\LessThan6~40_combout\ & (\temp1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~19_combout\,
	datac => \Add9~28_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~33_combout\);

-- Location: LCCOMB_X26_Y23_N22
\Add9~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (\LessThan6~40_combout\ & ((\Add9~26_combout\))) # (!\LessThan6~40_combout\ & (\temp1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~20_combout\,
	datac => \LessThan6~40_combout\,
	datad => \Add9~26_combout\,
	combout => \Add9~34_combout\);

-- Location: LCCOMB_X24_Y25_N26
\Add9~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~35_combout\ = (\LessThan6~40_combout\ & ((\Add9~24_combout\))) # (!\LessThan6~40_combout\ & (\temp1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~21_combout\,
	datac => \Add9~24_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~35_combout\);

-- Location: LCCOMB_X25_Y23_N0
\Add9~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (\LessThan6~40_combout\ & ((\Add9~22_combout\))) # (!\LessThan6~40_combout\ & (\temp1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~22_combout\,
	datac => \LessThan6~40_combout\,
	datad => \Add9~22_combout\,
	combout => \Add9~36_combout\);

-- Location: LCCOMB_X27_Y26_N6
\Add9~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~37_combout\ = (\LessThan6~40_combout\ & ((\Add9~20_combout\))) # (!\LessThan6~40_combout\ & (\temp1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~23_combout\,
	datac => \Add9~20_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~37_combout\);

-- Location: LCCOMB_X26_Y23_N28
\Add9~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (\LessThan6~40_combout\ & ((\Add9~18_combout\))) # (!\LessThan6~40_combout\ & (\temp1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~24_combout\,
	datac => \LessThan6~40_combout\,
	datad => \Add9~18_combout\,
	combout => \Add9~38_combout\);

-- Location: LCCOMB_X27_Y26_N4
\Add9~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~39_combout\ = (\LessThan6~40_combout\ & (\Add9~16_combout\)) # (!\LessThan6~40_combout\ & ((\temp1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~16_combout\,
	datac => \temp1~25_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~39_combout\);

-- Location: LCCOMB_X27_Y24_N6
\Add9~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (\LessThan6~40_combout\ & ((\Add9~14_combout\))) # (!\LessThan6~40_combout\ & (\temp1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~26_combout\,
	datac => \Add9~14_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~40_combout\);

-- Location: LCCOMB_X26_Y26_N12
\Add9~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~41_combout\ = (\LessThan6~40_combout\ & ((\Add9~12_combout\))) # (!\LessThan6~40_combout\ & (\temp1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~27_combout\,
	datac => \Add9~12_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~41_combout\);

-- Location: LCCOMB_X27_Y26_N2
\Add9~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (\LessThan6~40_combout\ & (\Add9~10_combout\)) # (!\LessThan6~40_combout\ & ((\temp1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~10_combout\,
	datac => \temp1~28_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~42_combout\);

-- Location: LCCOMB_X26_Y26_N2
\Add9~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~43_combout\ = (\LessThan6~40_combout\ & (\Add9~8_combout\)) # (!\LessThan6~40_combout\ & ((\temp1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~8_combout\,
	datac => \temp1~29_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~43_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Add9~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (\LessThan6~40_combout\ & ((\Add9~6_combout\))) # (!\LessThan6~40_combout\ & (\temp1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~30_combout\,
	datac => \Add9~6_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~44_combout\);

-- Location: LCCOMB_X26_Y26_N10
\Add9~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~45_combout\ = (\LessThan6~40_combout\ & ((\Add9~4_combout\))) # (!\LessThan6~40_combout\ & (\temp1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp1~31_combout\,
	datac => \Add9~4_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~45_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Add9~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (\LessThan6~40_combout\ & ((\Add9~2_combout\))) # (!\LessThan6~40_combout\ & (\temp1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~32_combout\,
	datac => \Add9~2_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~46_combout\);

-- Location: LCCOMB_X26_Y26_N6
\Add9~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~47_combout\ = (\LessThan6~40_combout\ & (\Add9~0_combout\)) # (!\LessThan6~40_combout\ & ((sum_Hpx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~0_combout\,
	datac => sum_Hpx(3),
	datad => \LessThan6~40_combout\,
	combout => \Add9~47_combout\);

-- Location: LCCOMB_X26_Y28_N20
\LessThan1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~44_combout\ = (sum_Hpx(0)) # (sum_Hpx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(0),
	datad => sum_Hpx(1),
	combout => \LessThan1~44_combout\);

-- Location: LCCOMB_X26_Y26_N14
\LessThan7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY(\LessThan1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~44_combout\,
	datad => VCC,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X26_Y26_N16
\LessThan7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((sum_Hpx(2) & (n_x(0) & !\LessThan7~3_cout\)) # (!sum_Hpx(2) & ((n_x(0)) # (!\LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(2),
	datab => n_x(0),
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X26_Y26_N18
\LessThan7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((\Add9~47_combout\ & ((!\LessThan7~5_cout\) # (!n_x(1)))) # (!\Add9~47_combout\ & (!n_x(1) & !\LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~47_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X26_Y26_N20
\LessThan7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((n_x(2) & ((!\LessThan7~7_cout\) # (!\Add9~46_combout\))) # (!n_x(2) & (!\Add9~46_combout\ & !\LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => \Add9~46_combout\,
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X26_Y26_N22
\LessThan7~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((\Add9~45_combout\ & ((!\LessThan7~9_cout\) # (!n_x(3)))) # (!\Add9~45_combout\ & (!n_x(3) & !\LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~45_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X26_Y26_N24
\LessThan7~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((n_x(4) & ((!\LessThan7~11_cout\) # (!\Add9~44_combout\))) # (!n_x(4) & (!\Add9~44_combout\ & !\LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \Add9~44_combout\,
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X26_Y26_N26
\LessThan7~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((n_x(5) & (\Add9~43_combout\ & !\LessThan7~13_cout\)) # (!n_x(5) & ((\Add9~43_combout\) # (!\LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add9~43_combout\,
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X26_Y26_N28
\LessThan7~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~17_cout\ = CARRY((\Add9~42_combout\ & (n_x(6) & !\LessThan7~15_cout\)) # (!\Add9~42_combout\ & ((n_x(6)) # (!\LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~42_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \LessThan7~15_cout\,
	cout => \LessThan7~17_cout\);

-- Location: LCCOMB_X26_Y26_N30
\LessThan7~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~19_cout\ = CARRY((\Add9~41_combout\ & ((!\LessThan7~17_cout\) # (!n_x(7)))) # (!\Add9~41_combout\ & (!n_x(7) & !\LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~41_combout\,
	datab => n_x(7),
	datad => VCC,
	cin => \LessThan7~17_cout\,
	cout => \LessThan7~19_cout\);

-- Location: LCCOMB_X26_Y25_N0
\LessThan7~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~21_cout\ = CARRY((n_x(8) & ((!\LessThan7~19_cout\) # (!\Add9~40_combout\))) # (!n_x(8) & (!\Add9~40_combout\ & !\LessThan7~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \Add9~40_combout\,
	datad => VCC,
	cin => \LessThan7~19_cout\,
	cout => \LessThan7~21_cout\);

-- Location: LCCOMB_X26_Y25_N2
\LessThan7~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~23_cout\ = CARRY((\Add9~39_combout\ & ((!\LessThan7~21_cout\) # (!n_x(9)))) # (!\Add9~39_combout\ & (!n_x(9) & !\LessThan7~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~39_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \LessThan7~21_cout\,
	cout => \LessThan7~23_cout\);

-- Location: LCCOMB_X26_Y25_N4
\LessThan7~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~25_cout\ = CARRY((n_x(10) & ((!\LessThan7~23_cout\) # (!\Add9~38_combout\))) # (!n_x(10) & (!\Add9~38_combout\ & !\LessThan7~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add9~38_combout\,
	datad => VCC,
	cin => \LessThan7~23_cout\,
	cout => \LessThan7~25_cout\);

-- Location: LCCOMB_X26_Y25_N6
\LessThan7~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~27_cout\ = CARRY((\Add9~37_combout\ & ((!\LessThan7~25_cout\) # (!n_x(11)))) # (!\Add9~37_combout\ & (!n_x(11) & !\LessThan7~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~37_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan7~25_cout\,
	cout => \LessThan7~27_cout\);

-- Location: LCCOMB_X26_Y25_N8
\LessThan7~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~29_cout\ = CARRY((\Add9~36_combout\ & (n_x(12) & !\LessThan7~27_cout\)) # (!\Add9~36_combout\ & ((n_x(12)) # (!\LessThan7~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~36_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \LessThan7~27_cout\,
	cout => \LessThan7~29_cout\);

-- Location: LCCOMB_X26_Y25_N10
\LessThan7~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~31_cout\ = CARRY((n_x(13) & (\Add9~35_combout\ & !\LessThan7~29_cout\)) # (!n_x(13) & ((\Add9~35_combout\) # (!\LessThan7~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \Add9~35_combout\,
	datad => VCC,
	cin => \LessThan7~29_cout\,
	cout => \LessThan7~31_cout\);

-- Location: LCCOMB_X26_Y25_N12
\LessThan7~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~33_cout\ = CARRY((\Add9~34_combout\ & (n_x(14) & !\LessThan7~31_cout\)) # (!\Add9~34_combout\ & ((n_x(14)) # (!\LessThan7~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~34_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \LessThan7~31_cout\,
	cout => \LessThan7~33_cout\);

-- Location: LCCOMB_X26_Y25_N14
\LessThan7~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~35_cout\ = CARRY((n_x(15) & (\Add9~33_combout\ & !\LessThan7~33_cout\)) # (!n_x(15) & ((\Add9~33_combout\) # (!\LessThan7~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add9~33_combout\,
	datad => VCC,
	cin => \LessThan7~33_cout\,
	cout => \LessThan7~35_cout\);

-- Location: LCCOMB_X26_Y25_N16
\LessThan7~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~37_cout\ = CARRY((n_x(16) & ((!\LessThan7~35_cout\) # (!\Add9~32_combout\))) # (!n_x(16) & (!\Add9~32_combout\ & !\LessThan7~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(16),
	datab => \Add9~32_combout\,
	datad => VCC,
	cin => \LessThan7~35_cout\,
	cout => \LessThan7~37_cout\);

-- Location: LCCOMB_X26_Y25_N18
\LessThan7~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~38_combout\ = (n_x(17) & (!\LessThan7~37_cout\ & \Add9~67_combout\)) # (!n_x(17) & ((\Add9~67_combout\) # (!\LessThan7~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(17),
	datad => \Add9~67_combout\,
	cin => \LessThan7~37_cout\,
	combout => \LessThan7~38_combout\);

-- Location: LCCOMB_X26_Y25_N28
\LessThan7~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~41_combout\ = (\LessThan7~40_combout\) # ((\LessThan7~1_combout\) # (\LessThan7~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~38_combout\,
	combout => \LessThan7~41_combout\);

-- Location: LCCOMB_X32_Y27_N0
\Selector96~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan7~41_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (x_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => x_int(2),
	datad => \LessThan7~41_combout\,
	combout => \Selector96~0_combout\);

-- Location: FF_X32_Y27_N1
\x_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(2));

-- Location: LCCOMB_X24_Y26_N6
\Add10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (n_x(0) & (sum_Hpx(2) $ (VCC))) # (!n_x(0) & ((sum_Hpx(2)) # (GND)))
-- \Add10~1\ = CARRY((sum_Hpx(2)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(2),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X24_Y26_N8
\Add10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Add9~47_combout\ & ((n_x(1) & (!\Add10~1\)) # (!n_x(1) & (\Add10~1\ & VCC)))) # (!\Add9~47_combout\ & ((n_x(1) & ((\Add10~1\) # (GND))) # (!n_x(1) & (!\Add10~1\))))
-- \Add10~3\ = CARRY((\Add9~47_combout\ & (n_x(1) & !\Add10~1\)) # (!\Add9~47_combout\ & ((n_x(1)) # (!\Add10~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~47_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X24_Y26_N10
\Add10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = ((\Add9~46_combout\ $ (n_x(2) $ (\Add10~3\)))) # (GND)
-- \Add10~5\ = CARRY((\Add9~46_combout\ & ((!\Add10~3\) # (!n_x(2)))) # (!\Add9~46_combout\ & (!n_x(2) & !\Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X24_Y26_N12
\Add10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add9~45_combout\ & ((n_x(3) & (!\Add10~5\)) # (!n_x(3) & (\Add10~5\ & VCC)))) # (!\Add9~45_combout\ & ((n_x(3) & ((\Add10~5\) # (GND))) # (!n_x(3) & (!\Add10~5\))))
-- \Add10~7\ = CARRY((\Add9~45_combout\ & (n_x(3) & !\Add10~5\)) # (!\Add9~45_combout\ & ((n_x(3)) # (!\Add10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~45_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X24_Y26_N14
\Add10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = ((n_x(4) $ (\Add9~44_combout\ $ (\Add10~7\)))) # (GND)
-- \Add10~9\ = CARRY((n_x(4) & (\Add9~44_combout\ & !\Add10~7\)) # (!n_x(4) & ((\Add9~44_combout\) # (!\Add10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \Add9~44_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X24_Y26_N16
\Add10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (n_x(5) & ((\Add9~43_combout\ & (!\Add10~9\)) # (!\Add9~43_combout\ & ((\Add10~9\) # (GND))))) # (!n_x(5) & ((\Add9~43_combout\ & (\Add10~9\ & VCC)) # (!\Add9~43_combout\ & (!\Add10~9\))))
-- \Add10~11\ = CARRY((n_x(5) & ((!\Add10~9\) # (!\Add9~43_combout\))) # (!n_x(5) & (!\Add9~43_combout\ & !\Add10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add9~43_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X24_Y26_N18
\Add10~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = ((n_x(6) $ (\Add9~42_combout\ $ (\Add10~11\)))) # (GND)
-- \Add10~13\ = CARRY((n_x(6) & (\Add9~42_combout\ & !\Add10~11\)) # (!n_x(6) & ((\Add9~42_combout\) # (!\Add10~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(6),
	datab => \Add9~42_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X24_Y26_N20
\Add10~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (n_x(7) & ((\Add9~41_combout\ & (!\Add10~13\)) # (!\Add9~41_combout\ & ((\Add10~13\) # (GND))))) # (!n_x(7) & ((\Add9~41_combout\ & (\Add10~13\ & VCC)) # (!\Add9~41_combout\ & (!\Add10~13\))))
-- \Add10~15\ = CARRY((n_x(7) & ((!\Add10~13\) # (!\Add9~41_combout\))) # (!n_x(7) & (!\Add9~41_combout\ & !\Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \Add9~41_combout\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X24_Y26_N22
\Add10~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = ((n_x(8) $ (\Add9~40_combout\ $ (\Add10~15\)))) # (GND)
-- \Add10~17\ = CARRY((n_x(8) & (\Add9~40_combout\ & !\Add10~15\)) # (!n_x(8) & ((\Add9~40_combout\) # (!\Add10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \Add9~40_combout\,
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X24_Y26_N24
\Add10~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (n_x(9) & ((\Add9~39_combout\ & (!\Add10~17\)) # (!\Add9~39_combout\ & ((\Add10~17\) # (GND))))) # (!n_x(9) & ((\Add9~39_combout\ & (\Add10~17\ & VCC)) # (!\Add9~39_combout\ & (!\Add10~17\))))
-- \Add10~19\ = CARRY((n_x(9) & ((!\Add10~17\) # (!\Add9~39_combout\))) # (!n_x(9) & (!\Add9~39_combout\ & !\Add10~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \Add9~39_combout\,
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X24_Y26_N26
\Add10~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = ((\Add9~38_combout\ $ (n_x(10) $ (\Add10~19\)))) # (GND)
-- \Add10~21\ = CARRY((\Add9~38_combout\ & ((!\Add10~19\) # (!n_x(10)))) # (!\Add9~38_combout\ & (!n_x(10) & !\Add10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~38_combout\,
	datab => n_x(10),
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X24_Y26_N28
\Add10~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (\Add9~37_combout\ & ((n_x(11) & (!\Add10~21\)) # (!n_x(11) & (\Add10~21\ & VCC)))) # (!\Add9~37_combout\ & ((n_x(11) & ((\Add10~21\) # (GND))) # (!n_x(11) & (!\Add10~21\))))
-- \Add10~23\ = CARRY((\Add9~37_combout\ & (n_x(11) & !\Add10~21\)) # (!\Add9~37_combout\ & ((n_x(11)) # (!\Add10~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~37_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \Add10~21\,
	combout => \Add10~22_combout\,
	cout => \Add10~23\);

-- Location: LCCOMB_X24_Y26_N30
\Add10~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = ((\Add9~36_combout\ $ (n_x(12) $ (\Add10~23\)))) # (GND)
-- \Add10~25\ = CARRY((\Add9~36_combout\ & ((!\Add10~23\) # (!n_x(12)))) # (!\Add9~36_combout\ & (!n_x(12) & !\Add10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~36_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \Add10~23\,
	combout => \Add10~24_combout\,
	cout => \Add10~25\);

-- Location: LCCOMB_X24_Y25_N0
\Add10~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~26_combout\ = (\Add9~35_combout\ & ((n_x(13) & (!\Add10~25\)) # (!n_x(13) & (\Add10~25\ & VCC)))) # (!\Add9~35_combout\ & ((n_x(13) & ((\Add10~25\) # (GND))) # (!n_x(13) & (!\Add10~25\))))
-- \Add10~27\ = CARRY((\Add9~35_combout\ & (n_x(13) & !\Add10~25\)) # (!\Add9~35_combout\ & ((n_x(13)) # (!\Add10~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~35_combout\,
	datab => n_x(13),
	datad => VCC,
	cin => \Add10~25\,
	combout => \Add10~26_combout\,
	cout => \Add10~27\);

-- Location: LCCOMB_X24_Y25_N2
\Add10~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~28_combout\ = ((n_x(14) $ (\Add9~34_combout\ $ (\Add10~27\)))) # (GND)
-- \Add10~29\ = CARRY((n_x(14) & (\Add9~34_combout\ & !\Add10~27\)) # (!n_x(14) & ((\Add9~34_combout\) # (!\Add10~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \Add9~34_combout\,
	datad => VCC,
	cin => \Add10~27\,
	combout => \Add10~28_combout\,
	cout => \Add10~29\);

-- Location: LCCOMB_X24_Y25_N4
\Add10~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~30_combout\ = (\Add9~33_combout\ & ((n_x(15) & (!\Add10~29\)) # (!n_x(15) & (\Add10~29\ & VCC)))) # (!\Add9~33_combout\ & ((n_x(15) & ((\Add10~29\) # (GND))) # (!n_x(15) & (!\Add10~29\))))
-- \Add10~31\ = CARRY((\Add9~33_combout\ & (n_x(15) & !\Add10~29\)) # (!\Add9~33_combout\ & ((n_x(15)) # (!\Add10~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~33_combout\,
	datab => n_x(15),
	datad => VCC,
	cin => \Add10~29\,
	combout => \Add10~30_combout\,
	cout => \Add10~31\);

-- Location: LCCOMB_X24_Y25_N6
\Add10~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~32_combout\ = ((\Add9~32_combout\ $ (n_x(16) $ (\Add10~31\)))) # (GND)
-- \Add10~33\ = CARRY((\Add9~32_combout\ & ((!\Add10~31\) # (!n_x(16)))) # (!\Add9~32_combout\ & (!n_x(16) & !\Add10~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~32_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \Add10~31\,
	combout => \Add10~32_combout\,
	cout => \Add10~33\);

-- Location: LCCOMB_X25_Y25_N28
\Add10~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~34_combout\ = (\LessThan7~41_combout\ & ((\Add10~32_combout\))) # (!\LessThan7~41_combout\ & (\Add9~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~32_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~32_combout\,
	combout => \Add10~34_combout\);

-- Location: LCCOMB_X25_Y25_N26
\Add10~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~56_combout\ = (\LessThan7~41_combout\ & ((\Add10~30_combout\))) # (!\LessThan7~41_combout\ & (\Add9~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~41_combout\,
	datab => \Add9~33_combout\,
	datac => \Add10~30_combout\,
	combout => \Add10~56_combout\);

-- Location: LCCOMB_X25_Y25_N24
\Add10~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~57_combout\ = (\LessThan7~41_combout\ & ((\Add10~28_combout\))) # (!\LessThan7~41_combout\ & (\Add9~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~34_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~28_combout\,
	combout => \Add10~57_combout\);

-- Location: LCCOMB_X25_Y25_N22
\Add10~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~58_combout\ = (\LessThan7~41_combout\ & (\Add10~26_combout\)) # (!\LessThan7~41_combout\ & ((\Add9~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~41_combout\,
	datac => \Add10~26_combout\,
	datad => \Add9~35_combout\,
	combout => \Add10~58_combout\);

-- Location: LCCOMB_X25_Y23_N16
\Add10~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~59_combout\ = (\LessThan7~41_combout\ & ((\Add10~24_combout\))) # (!\LessThan7~41_combout\ & (\Add9~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~36_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~24_combout\,
	combout => \Add10~59_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Add10~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~60_combout\ = (\LessThan7~41_combout\ & ((\Add10~22_combout\))) # (!\LessThan7~41_combout\ & (\Add9~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~37_combout\,
	datab => \Add10~22_combout\,
	datad => \LessThan7~41_combout\,
	combout => \Add10~60_combout\);

-- Location: LCCOMB_X26_Y23_N14
\Add10~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~61_combout\ = (\LessThan7~41_combout\ & ((\Add10~20_combout\))) # (!\LessThan7~41_combout\ & (\Add9~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~38_combout\,
	datac => \Add10~20_combout\,
	datad => \LessThan7~41_combout\,
	combout => \Add10~61_combout\);

-- Location: LCCOMB_X24_Y26_N2
\Add10~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~62_combout\ = (\LessThan7~41_combout\ & (\Add10~18_combout\)) # (!\LessThan7~41_combout\ & ((\Add9~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~18_combout\,
	datac => \Add9~39_combout\,
	datad => \LessThan7~41_combout\,
	combout => \Add10~62_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Add10~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~63_combout\ = (\LessThan7~41_combout\ & ((\Add10~16_combout\))) # (!\LessThan7~41_combout\ & (\Add9~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~40_combout\,
	datac => \Add10~16_combout\,
	datad => \LessThan7~41_combout\,
	combout => \Add10~63_combout\);

-- Location: LCCOMB_X26_Y26_N4
\Add10~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~64_combout\ = (\LessThan7~41_combout\ & ((\Add10~14_combout\))) # (!\LessThan7~41_combout\ & (\Add9~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~41_combout\,
	datac => \Add10~14_combout\,
	datad => \LessThan7~41_combout\,
	combout => \Add10~64_combout\);

-- Location: LCCOMB_X25_Y26_N8
\Add10~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~65_combout\ = (\LessThan7~41_combout\ & (\Add10~12_combout\)) # (!\LessThan7~41_combout\ & ((\Add9~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => \Add9~42_combout\,
	datac => \LessThan7~41_combout\,
	combout => \Add10~65_combout\);

-- Location: LCCOMB_X25_Y26_N10
\Add10~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~66_combout\ = (\LessThan7~41_combout\ & ((\Add10~10_combout\))) # (!\LessThan7~41_combout\ & (\Add9~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~43_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~10_combout\,
	combout => \Add10~66_combout\);

-- Location: LCCOMB_X25_Y26_N0
\Add10~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~67_combout\ = (\LessThan7~41_combout\ & ((\Add10~8_combout\))) # (!\LessThan7~41_combout\ & (\Add9~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~44_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~8_combout\,
	combout => \Add10~67_combout\);

-- Location: LCCOMB_X25_Y26_N2
\Add10~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~68_combout\ = (\LessThan7~41_combout\ & ((\Add10~6_combout\))) # (!\LessThan7~41_combout\ & (\Add9~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~45_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~6_combout\,
	combout => \Add10~68_combout\);

-- Location: LCCOMB_X25_Y26_N12
\Add10~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~69_combout\ = (\LessThan7~41_combout\ & ((\Add10~4_combout\))) # (!\LessThan7~41_combout\ & (\Add9~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datab => \Add10~4_combout\,
	datac => \LessThan7~41_combout\,
	combout => \Add10~69_combout\);

-- Location: LCCOMB_X25_Y26_N6
\Add10~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~70_combout\ = (\LessThan7~41_combout\ & ((\Add10~2_combout\))) # (!\LessThan7~41_combout\ & (\Add9~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~47_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~2_combout\,
	combout => \Add10~70_combout\);

-- Location: LCCOMB_X25_Y26_N4
\Add10~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~71_combout\ = (\LessThan7~41_combout\ & (\Add10~0_combout\)) # (!\LessThan7~41_combout\ & ((sum_Hpx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => sum_Hpx(2),
	datac => \LessThan7~41_combout\,
	combout => \Add10~71_combout\);

-- Location: LCCOMB_X25_Y26_N14
\LessThan8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~3_cout\ = CARRY(sum_Hpx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(0),
	datad => VCC,
	cout => \LessThan8~3_cout\);

-- Location: LCCOMB_X25_Y26_N16
\LessThan8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~5_cout\ = CARRY((sum_Hpx(1) & (n_x(0) & !\LessThan8~3_cout\)) # (!sum_Hpx(1) & ((n_x(0)) # (!\LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(1),
	datab => n_x(0),
	datad => VCC,
	cin => \LessThan8~3_cout\,
	cout => \LessThan8~5_cout\);

-- Location: LCCOMB_X25_Y26_N18
\LessThan8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~7_cout\ = CARRY((n_x(1) & (\Add10~71_combout\ & !\LessThan8~5_cout\)) # (!n_x(1) & ((\Add10~71_combout\) # (!\LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(1),
	datab => \Add10~71_combout\,
	datad => VCC,
	cin => \LessThan8~5_cout\,
	cout => \LessThan8~7_cout\);

-- Location: LCCOMB_X25_Y26_N20
\LessThan8~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~9_cout\ = CARRY((\Add10~70_combout\ & (n_x(2) & !\LessThan8~7_cout\)) # (!\Add10~70_combout\ & ((n_x(2)) # (!\LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~70_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \LessThan8~7_cout\,
	cout => \LessThan8~9_cout\);

-- Location: LCCOMB_X25_Y26_N22
\LessThan8~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~11_cout\ = CARRY((\Add10~69_combout\ & ((!\LessThan8~9_cout\) # (!n_x(3)))) # (!\Add10~69_combout\ & (!n_x(3) & !\LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~69_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan8~9_cout\,
	cout => \LessThan8~11_cout\);

-- Location: LCCOMB_X25_Y26_N24
\LessThan8~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~13_cout\ = CARRY((n_x(4) & ((!\LessThan8~11_cout\) # (!\Add10~68_combout\))) # (!n_x(4) & (!\Add10~68_combout\ & !\LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \Add10~68_combout\,
	datad => VCC,
	cin => \LessThan8~11_cout\,
	cout => \LessThan8~13_cout\);

-- Location: LCCOMB_X25_Y26_N26
\LessThan8~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~15_cout\ = CARRY((n_x(5) & (\Add10~67_combout\ & !\LessThan8~13_cout\)) # (!n_x(5) & ((\Add10~67_combout\) # (!\LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \Add10~67_combout\,
	datad => VCC,
	cin => \LessThan8~13_cout\,
	cout => \LessThan8~15_cout\);

-- Location: LCCOMB_X25_Y26_N28
\LessThan8~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~17_cout\ = CARRY((\Add10~66_combout\ & (n_x(6) & !\LessThan8~15_cout\)) # (!\Add10~66_combout\ & ((n_x(6)) # (!\LessThan8~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~66_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \LessThan8~15_cout\,
	cout => \LessThan8~17_cout\);

-- Location: LCCOMB_X25_Y26_N30
\LessThan8~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~19_cout\ = CARRY((n_x(7) & (\Add10~65_combout\ & !\LessThan8~17_cout\)) # (!n_x(7) & ((\Add10~65_combout\) # (!\LessThan8~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \Add10~65_combout\,
	datad => VCC,
	cin => \LessThan8~17_cout\,
	cout => \LessThan8~19_cout\);

-- Location: LCCOMB_X25_Y25_N0
\LessThan8~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~21_cout\ = CARRY((\Add10~64_combout\ & (n_x(8) & !\LessThan8~19_cout\)) # (!\Add10~64_combout\ & ((n_x(8)) # (!\LessThan8~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~64_combout\,
	datab => n_x(8),
	datad => VCC,
	cin => \LessThan8~19_cout\,
	cout => \LessThan8~21_cout\);

-- Location: LCCOMB_X25_Y25_N2
\LessThan8~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~23_cout\ = CARRY((\Add10~63_combout\ & ((!\LessThan8~21_cout\) # (!n_x(9)))) # (!\Add10~63_combout\ & (!n_x(9) & !\LessThan8~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~63_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \LessThan8~21_cout\,
	cout => \LessThan8~23_cout\);

-- Location: LCCOMB_X25_Y25_N4
\LessThan8~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~25_cout\ = CARRY((n_x(10) & ((!\LessThan8~23_cout\) # (!\Add10~62_combout\))) # (!n_x(10) & (!\Add10~62_combout\ & !\LessThan8~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add10~62_combout\,
	datad => VCC,
	cin => \LessThan8~23_cout\,
	cout => \LessThan8~25_cout\);

-- Location: LCCOMB_X25_Y25_N6
\LessThan8~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~27_cout\ = CARRY((\Add10~61_combout\ & ((!\LessThan8~25_cout\) # (!n_x(11)))) # (!\Add10~61_combout\ & (!n_x(11) & !\LessThan8~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~61_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan8~25_cout\,
	cout => \LessThan8~27_cout\);

-- Location: LCCOMB_X25_Y25_N8
\LessThan8~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~29_cout\ = CARRY((n_x(12) & ((!\LessThan8~27_cout\) # (!\Add10~60_combout\))) # (!n_x(12) & (!\Add10~60_combout\ & !\LessThan8~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datab => \Add10~60_combout\,
	datad => VCC,
	cin => \LessThan8~27_cout\,
	cout => \LessThan8~29_cout\);

-- Location: LCCOMB_X25_Y25_N10
\LessThan8~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~31_cout\ = CARRY((n_x(13) & (\Add10~59_combout\ & !\LessThan8~29_cout\)) # (!n_x(13) & ((\Add10~59_combout\) # (!\LessThan8~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \Add10~59_combout\,
	datad => VCC,
	cin => \LessThan8~29_cout\,
	cout => \LessThan8~31_cout\);

-- Location: LCCOMB_X25_Y25_N12
\LessThan8~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~33_cout\ = CARRY((\Add10~58_combout\ & (n_x(14) & !\LessThan8~31_cout\)) # (!\Add10~58_combout\ & ((n_x(14)) # (!\LessThan8~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~58_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \LessThan8~31_cout\,
	cout => \LessThan8~33_cout\);

-- Location: LCCOMB_X25_Y25_N14
\LessThan8~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~35_cout\ = CARRY((n_x(15) & (\Add10~57_combout\ & !\LessThan8~33_cout\)) # (!n_x(15) & ((\Add10~57_combout\) # (!\LessThan8~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add10~57_combout\,
	datad => VCC,
	cin => \LessThan8~33_cout\,
	cout => \LessThan8~35_cout\);

-- Location: LCCOMB_X25_Y25_N16
\LessThan8~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~37_cout\ = CARRY((\Add10~56_combout\ & (n_x(16) & !\LessThan8~35_cout\)) # (!\Add10~56_combout\ & ((n_x(16)) # (!\LessThan8~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~56_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \LessThan8~35_cout\,
	cout => \LessThan8~37_cout\);

-- Location: LCCOMB_X25_Y25_N18
\LessThan8~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~38_combout\ = (n_x(17) & (!\LessThan8~37_cout\ & \Add10~34_combout\)) # (!n_x(17) & ((\Add10~34_combout\) # (!\LessThan8~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(17),
	datad => \Add10~34_combout\,
	cin => \LessThan8~37_cout\,
	combout => \LessThan8~38_combout\);

-- Location: LCCOMB_X24_Y25_N8
\Add10~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~35_combout\ = (\Add9~67_combout\ & ((n_x(17) & (!\Add10~33\)) # (!n_x(17) & (\Add10~33\ & VCC)))) # (!\Add9~67_combout\ & ((n_x(17) & ((\Add10~33\) # (GND))) # (!n_x(17) & (!\Add10~33\))))
-- \Add10~36\ = CARRY((\Add9~67_combout\ & (n_x(17) & !\Add10~33\)) # (!\Add9~67_combout\ & ((n_x(17)) # (!\Add10~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~67_combout\,
	datab => n_x(17),
	datad => VCC,
	cin => \Add10~33\,
	combout => \Add10~35_combout\,
	cout => \Add10~36\);

-- Location: LCCOMB_X28_Y25_N30
\Add10~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~54_combout\ = (\LessThan7~41_combout\ & ((\Add10~35_combout\))) # (!\LessThan7~41_combout\ & (\Add9~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~67_combout\,
	datac => \LessThan7~41_combout\,
	datad => \Add10~35_combout\,
	combout => \Add10~54_combout\);

-- Location: LCCOMB_X24_Y25_N30
\Add9~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~74_combout\ = (\Add9~57_combout\ & \LessThan6~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~57_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~74_combout\);

-- Location: LCCOMB_X23_Y25_N2
\Add9~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~69_combout\ = (\Add9~55_combout\ & \LessThan6~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~55_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~69_combout\);

-- Location: LCCOMB_X24_Y25_N28
\Add9~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~68_combout\ = (\Add9~53_combout\ & \LessThan6~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~53_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~68_combout\);

-- Location: LCCOMB_X24_Y25_N10
\Add10~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~37_combout\ = (\Add9~52_combout\ & ((GND) # (!\Add10~36\))) # (!\Add9~52_combout\ & (\Add10~36\ $ (GND)))
-- \Add10~38\ = CARRY((\Add9~52_combout\) # (!\Add10~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~52_combout\,
	datad => VCC,
	cin => \Add10~36\,
	combout => \Add10~37_combout\,
	cout => \Add10~38\);

-- Location: LCCOMB_X24_Y25_N12
\Add10~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~39_combout\ = (\Add9~68_combout\ & (\Add10~38\ & VCC)) # (!\Add9~68_combout\ & (!\Add10~38\))
-- \Add10~40\ = CARRY((!\Add9~68_combout\ & !\Add10~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~68_combout\,
	datad => VCC,
	cin => \Add10~38\,
	combout => \Add10~39_combout\,
	cout => \Add10~40\);

-- Location: LCCOMB_X24_Y25_N14
\Add10~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~41_combout\ = (\Add9~69_combout\ & ((GND) # (!\Add10~40\))) # (!\Add9~69_combout\ & (\Add10~40\ $ (GND)))
-- \Add10~42\ = CARRY((\Add9~69_combout\) # (!\Add10~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~69_combout\,
	datad => VCC,
	cin => \Add10~40\,
	combout => \Add10~41_combout\,
	cout => \Add10~42\);

-- Location: LCCOMB_X24_Y25_N16
\Add10~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~43_combout\ = (\Add9~74_combout\ & (\Add10~42\ & VCC)) # (!\Add9~74_combout\ & (!\Add10~42\))
-- \Add10~44\ = CARRY((!\Add9~74_combout\ & !\Add10~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~74_combout\,
	datad => VCC,
	cin => \Add10~42\,
	combout => \Add10~43_combout\,
	cout => \Add10~44\);

-- Location: LCCOMB_X28_Y25_N28
\Add10~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~55_combout\ = (\Add10~43_combout\ & ((\LessThan7~1_combout\) # ((\LessThan7~40_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~38_combout\,
	datad => \Add10~43_combout\,
	combout => \Add10~55_combout\);

-- Location: LCCOMB_X23_Y25_N12
\Add9~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~70_combout\ = (\LessThan6~40_combout\ & \Add9~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~40_combout\,
	datad => \Add9~65_combout\,
	combout => \Add9~70_combout\);

-- Location: LCCOMB_X23_Y25_N14
\Add9~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~71_combout\ = (\Add9~63_combout\ & \LessThan6~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~63_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~71_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Add9~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~72_combout\ = (\Add9~61_combout\ & \LessThan6~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~61_combout\,
	datad => \LessThan6~40_combout\,
	combout => \Add9~72_combout\);

-- Location: LCCOMB_X25_Y23_N22
\Add9~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~73_combout\ = (\LessThan6~40_combout\ & \Add9~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan6~40_combout\,
	datad => \Add9~59_combout\,
	combout => \Add9~73_combout\);

-- Location: LCCOMB_X24_Y25_N18
\Add10~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~45_combout\ = (\Add9~73_combout\ & ((GND) # (!\Add10~44\))) # (!\Add9~73_combout\ & (\Add10~44\ $ (GND)))
-- \Add10~46\ = CARRY((\Add9~73_combout\) # (!\Add10~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~73_combout\,
	datad => VCC,
	cin => \Add10~44\,
	combout => \Add10~45_combout\,
	cout => \Add10~46\);

-- Location: LCCOMB_X24_Y25_N20
\Add10~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~47_combout\ = (\Add9~72_combout\ & (\Add10~46\ & VCC)) # (!\Add9~72_combout\ & (!\Add10~46\))
-- \Add10~48\ = CARRY((!\Add9~72_combout\ & !\Add10~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~72_combout\,
	datad => VCC,
	cin => \Add10~46\,
	combout => \Add10~47_combout\,
	cout => \Add10~48\);

-- Location: LCCOMB_X24_Y25_N22
\Add10~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~49_combout\ = (\Add9~71_combout\ & ((GND) # (!\Add10~48\))) # (!\Add9~71_combout\ & (\Add10~48\ $ (GND)))
-- \Add10~50\ = CARRY((\Add9~71_combout\) # (!\Add10~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~71_combout\,
	datad => VCC,
	cin => \Add10~48\,
	combout => \Add10~49_combout\,
	cout => \Add10~50\);

-- Location: LCCOMB_X24_Y25_N24
\Add10~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~51_combout\ = \Add10~50\ $ (!\Add9~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add9~70_combout\,
	cin => \Add10~50\,
	combout => \Add10~51_combout\);

-- Location: LCCOMB_X28_Y25_N8
\Add10~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~53_combout\ = (\Add10~51_combout\ & ((\LessThan7~1_combout\) # ((\LessThan7~40_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~38_combout\,
	datad => \Add10~51_combout\,
	combout => \Add10~53_combout\);

-- Location: LCCOMB_X28_Y25_N10
\LessThan8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ((!\Add10~39_combout\ & (!\Add10~41_combout\ & !\Add10~37_combout\))) # (!\LessThan7~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~41_combout\,
	datab => \Add10~39_combout\,
	datac => \Add10~41_combout\,
	datad => \Add10~37_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X28_Y25_N22
\LessThan8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (!\Add10~54_combout\ & (!\Add10~55_combout\ & (!\Add10~53_combout\ & \LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~54_combout\,
	datab => \Add10~55_combout\,
	datac => \Add10~53_combout\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X28_Y25_N2
\Add10~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~72_combout\ = (\Add10~45_combout\ & ((\LessThan7~1_combout\) # ((\LessThan7~40_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~38_combout\,
	datad => \Add10~45_combout\,
	combout => \Add10~72_combout\);

-- Location: LCCOMB_X28_Y25_N26
\Add10~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~74_combout\ = (\Add10~49_combout\ & ((\LessThan7~1_combout\) # ((\LessThan7~40_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~38_combout\,
	datad => \Add10~49_combout\,
	combout => \Add10~74_combout\);

-- Location: LCCOMB_X28_Y25_N20
\Add10~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~73_combout\ = (\Add10~47_combout\ & ((\LessThan7~1_combout\) # ((\LessThan7~40_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~38_combout\,
	datad => \Add10~47_combout\,
	combout => \Add10~73_combout\);

-- Location: LCCOMB_X28_Y25_N0
\LessThan8~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~40_combout\ = ((\Add10~72_combout\) # ((\Add10~74_combout\) # (\Add10~73_combout\))) # (!\LessThan8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \Add10~72_combout\,
	datac => \Add10~74_combout\,
	datad => \Add10~73_combout\,
	combout => \LessThan8~40_combout\);

-- Location: LCCOMB_X28_Y25_N18
\Selector97~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\state.calcul_barycentre~q\ & ((\LessThan8~38_combout\) # (\LessThan8~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.calcul_barycentre~q\,
	datac => \LessThan8~38_combout\,
	datad => \LessThan8~40_combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X28_Y25_N24
\Selector97~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector97~1_combout\ = (\Selector97~0_combout\) # ((\state.init~q\ & (!\state.calcul_barycentre~q\ & x_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.calcul_barycentre~q\,
	datac => x_int(1),
	datad => \Selector97~0_combout\,
	combout => \Selector97~1_combout\);

-- Location: FF_X28_Y25_N25
\x_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector97~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(1));

-- Location: LCCOMB_X32_Y27_N16
\Add20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~1_cout\ = CARRY(x_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_int(1),
	datad => VCC,
	cout => \Add20~1_cout\);

-- Location: LCCOMB_X32_Y27_N18
\Add20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~2_combout\ = (x_int(2) & (\Add20~1_cout\ & VCC)) # (!x_int(2) & (!\Add20~1_cout\))
-- \Add20~3\ = CARRY((!x_int(2) & !\Add20~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(2),
	datad => VCC,
	cin => \Add20~1_cout\,
	combout => \Add20~2_combout\,
	cout => \Add20~3\);

-- Location: LCCOMB_X32_Y27_N20
\Add20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~4_combout\ = (x_int(3) & (\Add20~3\ $ (GND))) # (!x_int(3) & (!\Add20~3\ & VCC))
-- \Add20~5\ = CARRY((x_int(3) & !\Add20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(3),
	datad => VCC,
	cin => \Add20~3\,
	combout => \Add20~4_combout\,
	cout => \Add20~5\);

-- Location: LCCOMB_X32_Y27_N22
\Add20~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~6_combout\ = (x_int(4) & (\Add20~5\ & VCC)) # (!x_int(4) & (!\Add20~5\))
-- \Add20~7\ = CARRY((!x_int(4) & !\Add20~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(4),
	datad => VCC,
	cin => \Add20~5\,
	combout => \Add20~6_combout\,
	cout => \Add20~7\);

-- Location: LCCOMB_X32_Y27_N24
\Add20~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~8_combout\ = (x_int(5) & ((GND) # (!\Add20~7\))) # (!x_int(5) & (\Add20~7\ $ (GND)))
-- \Add20~9\ = CARRY((x_int(5)) # (!\Add20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_int(5),
	datad => VCC,
	cin => \Add20~7\,
	combout => \Add20~8_combout\,
	cout => \Add20~9\);

-- Location: LCCOMB_X32_Y27_N26
\Add20~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~10_combout\ = (x_int(6) & (\Add20~9\ & VCC)) # (!x_int(6) & (!\Add20~9\))
-- \Add20~11\ = CARRY((!x_int(6) & !\Add20~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(6),
	datad => VCC,
	cin => \Add20~9\,
	combout => \Add20~10_combout\,
	cout => \Add20~11\);

-- Location: LCCOMB_X32_Y27_N28
\Add20~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~12_combout\ = (x_int(7) & ((GND) # (!\Add20~11\))) # (!x_int(7) & (\Add20~11\ $ (GND)))
-- \Add20~13\ = CARRY((x_int(7)) # (!\Add20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(7),
	datad => VCC,
	cin => \Add20~11\,
	combout => \Add20~12_combout\,
	cout => \Add20~13\);

-- Location: LCCOMB_X32_Y27_N30
\Add20~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add20~14_combout\ = \Add20~13\ $ (!x_int(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x_int(8),
	cin => \Add20~13\,
	combout => \Add20~14_combout\);

-- Location: LCCOMB_X28_Y25_N4
\Selector98~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state.calcul_barycentre~q\ & ((\Add10~34_combout\) # (!\LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.calcul_barycentre~q\,
	datac => \LessThan8~1_combout\,
	datad => \Add10~34_combout\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X28_Y25_N14
\Selector98~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~1_combout\ = (!\LessThan8~40_combout\ & (\Selector98~0_combout\ & !\LessThan8~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan8~40_combout\,
	datac => \Selector98~0_combout\,
	datad => \LessThan8~38_combout\,
	combout => \Selector98~1_combout\);

-- Location: LCCOMB_X26_Y25_N22
\Add10~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~77_combout\ = (\Add10~41_combout\ & ((\LessThan7~40_combout\) # ((\LessThan7~1_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~41_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~38_combout\,
	combout => \Add10~77_combout\);

-- Location: LCCOMB_X26_Y25_N24
\Add10~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~76_combout\ = (\Add10~39_combout\ & ((\LessThan7~1_combout\) # ((\LessThan7~40_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \LessThan7~40_combout\,
	datac => \Add10~39_combout\,
	datad => \LessThan7~38_combout\,
	combout => \Add10~76_combout\);

-- Location: LCCOMB_X26_Y25_N30
\Add10~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~75_combout\ = (\Add10~37_combout\ & ((\LessThan7~40_combout\) # ((\LessThan7~1_combout\) # (\LessThan7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~37_combout\,
	datab => \LessThan7~40_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~38_combout\,
	combout => \Add10~75_combout\);

-- Location: LCCOMB_X30_Y26_N6
\Add11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (sum_Hpx(1) & ((GND) # (!n_x(0)))) # (!sum_Hpx(1) & (n_x(0) $ (GND)))
-- \Add11~1\ = CARRY((sum_Hpx(1)) # (!n_x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Hpx(1),
	datab => n_x(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X30_Y26_N8
\Add11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Add10~71_combout\ & ((n_x(1) & (!\Add11~1\)) # (!n_x(1) & (\Add11~1\ & VCC)))) # (!\Add10~71_combout\ & ((n_x(1) & ((\Add11~1\) # (GND))) # (!n_x(1) & (!\Add11~1\))))
-- \Add11~3\ = CARRY((\Add10~71_combout\ & (n_x(1) & !\Add11~1\)) # (!\Add10~71_combout\ & ((n_x(1)) # (!\Add11~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~71_combout\,
	datab => n_x(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X30_Y26_N10
\Add11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((\Add10~70_combout\ $ (n_x(2) $ (\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((\Add10~70_combout\ & ((!\Add11~3\) # (!n_x(2)))) # (!\Add10~70_combout\ & (!n_x(2) & !\Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~70_combout\,
	datab => n_x(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X30_Y26_N12
\Add11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Add10~69_combout\ & ((n_x(3) & (!\Add11~5\)) # (!n_x(3) & (\Add11~5\ & VCC)))) # (!\Add10~69_combout\ & ((n_x(3) & ((\Add11~5\) # (GND))) # (!n_x(3) & (!\Add11~5\))))
-- \Add11~7\ = CARRY((\Add10~69_combout\ & (n_x(3) & !\Add11~5\)) # (!\Add10~69_combout\ & ((n_x(3)) # (!\Add11~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~69_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X30_Y26_N14
\Add11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = ((n_x(4) $ (\Add10~68_combout\ $ (\Add11~7\)))) # (GND)
-- \Add11~9\ = CARRY((n_x(4) & (\Add10~68_combout\ & !\Add11~7\)) # (!n_x(4) & ((\Add10~68_combout\) # (!\Add11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(4),
	datab => \Add10~68_combout\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X30_Y26_N16
\Add11~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Add10~67_combout\ & ((n_x(5) & (!\Add11~9\)) # (!n_x(5) & (\Add11~9\ & VCC)))) # (!\Add10~67_combout\ & ((n_x(5) & ((\Add11~9\) # (GND))) # (!n_x(5) & (!\Add11~9\))))
-- \Add11~11\ = CARRY((\Add10~67_combout\ & (n_x(5) & !\Add11~9\)) # (!\Add10~67_combout\ & ((n_x(5)) # (!\Add11~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~67_combout\,
	datab => n_x(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X30_Y26_N18
\Add11~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = ((\Add10~66_combout\ $ (n_x(6) $ (\Add11~11\)))) # (GND)
-- \Add11~13\ = CARRY((\Add10~66_combout\ & ((!\Add11~11\) # (!n_x(6)))) # (!\Add10~66_combout\ & (!n_x(6) & !\Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~66_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X30_Y26_N20
\Add11~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (\Add10~65_combout\ & ((n_x(7) & (!\Add11~13\)) # (!n_x(7) & (\Add11~13\ & VCC)))) # (!\Add10~65_combout\ & ((n_x(7) & ((\Add11~13\) # (GND))) # (!n_x(7) & (!\Add11~13\))))
-- \Add11~15\ = CARRY((\Add10~65_combout\ & (n_x(7) & !\Add11~13\)) # (!\Add10~65_combout\ & ((n_x(7)) # (!\Add11~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~65_combout\,
	datab => n_x(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X30_Y26_N22
\Add11~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = ((n_x(8) $ (\Add10~64_combout\ $ (\Add11~15\)))) # (GND)
-- \Add11~17\ = CARRY((n_x(8) & (\Add10~64_combout\ & !\Add11~15\)) # (!n_x(8) & ((\Add10~64_combout\) # (!\Add11~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \Add10~64_combout\,
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X30_Y26_N24
\Add11~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (\Add10~63_combout\ & ((n_x(9) & (!\Add11~17\)) # (!n_x(9) & (\Add11~17\ & VCC)))) # (!\Add10~63_combout\ & ((n_x(9) & ((\Add11~17\) # (GND))) # (!n_x(9) & (!\Add11~17\))))
-- \Add11~19\ = CARRY((\Add10~63_combout\ & (n_x(9) & !\Add11~17\)) # (!\Add10~63_combout\ & ((n_x(9)) # (!\Add11~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~63_combout\,
	datab => n_x(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCCOMB_X30_Y26_N26
\Add11~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = ((n_x(10) $ (\Add10~62_combout\ $ (\Add11~19\)))) # (GND)
-- \Add11~21\ = CARRY((n_x(10) & (\Add10~62_combout\ & !\Add11~19\)) # (!n_x(10) & ((\Add10~62_combout\) # (!\Add11~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \Add10~62_combout\,
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X30_Y26_N28
\Add11~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (n_x(11) & ((\Add10~61_combout\ & (!\Add11~21\)) # (!\Add10~61_combout\ & ((\Add11~21\) # (GND))))) # (!n_x(11) & ((\Add10~61_combout\ & (\Add11~21\ & VCC)) # (!\Add10~61_combout\ & (!\Add11~21\))))
-- \Add11~23\ = CARRY((n_x(11) & ((!\Add11~21\) # (!\Add10~61_combout\))) # (!n_x(11) & (!\Add10~61_combout\ & !\Add11~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(11),
	datab => \Add10~61_combout\,
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCCOMB_X30_Y26_N30
\Add11~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = ((n_x(12) $ (\Add10~60_combout\ $ (\Add11~23\)))) # (GND)
-- \Add11~25\ = CARRY((n_x(12) & (\Add10~60_combout\ & !\Add11~23\)) # (!n_x(12) & ((\Add10~60_combout\) # (!\Add11~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(12),
	datab => \Add10~60_combout\,
	datad => VCC,
	cin => \Add11~23\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCCOMB_X30_Y25_N0
\Add11~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (\Add10~59_combout\ & ((n_x(13) & (!\Add11~25\)) # (!n_x(13) & (\Add11~25\ & VCC)))) # (!\Add10~59_combout\ & ((n_x(13) & ((\Add11~25\) # (GND))) # (!n_x(13) & (!\Add11~25\))))
-- \Add11~27\ = CARRY((\Add10~59_combout\ & (n_x(13) & !\Add11~25\)) # (!\Add10~59_combout\ & ((n_x(13)) # (!\Add11~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~59_combout\,
	datab => n_x(13),
	datad => VCC,
	cin => \Add11~25\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X30_Y25_N2
\Add11~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = ((\Add10~58_combout\ $ (n_x(14) $ (\Add11~27\)))) # (GND)
-- \Add11~29\ = CARRY((\Add10~58_combout\ & ((!\Add11~27\) # (!n_x(14)))) # (!\Add10~58_combout\ & (!n_x(14) & !\Add11~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~58_combout\,
	datab => n_x(14),
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~28_combout\,
	cout => \Add11~29\);

-- Location: LCCOMB_X30_Y25_N4
\Add11~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = (n_x(15) & ((\Add10~57_combout\ & (!\Add11~29\)) # (!\Add10~57_combout\ & ((\Add11~29\) # (GND))))) # (!n_x(15) & ((\Add10~57_combout\ & (\Add11~29\ & VCC)) # (!\Add10~57_combout\ & (!\Add11~29\))))
-- \Add11~31\ = CARRY((n_x(15) & ((!\Add11~29\) # (!\Add10~57_combout\))) # (!n_x(15) & (!\Add10~57_combout\ & !\Add11~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(15),
	datab => \Add10~57_combout\,
	datad => VCC,
	cin => \Add11~29\,
	combout => \Add11~30_combout\,
	cout => \Add11~31\);

-- Location: LCCOMB_X30_Y25_N6
\Add11~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~32_combout\ = ((\Add10~56_combout\ $ (n_x(16) $ (\Add11~31\)))) # (GND)
-- \Add11~33\ = CARRY((\Add10~56_combout\ & ((!\Add11~31\) # (!n_x(16)))) # (!\Add10~56_combout\ & (!n_x(16) & !\Add11~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~56_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \Add11~31\,
	combout => \Add11~32_combout\,
	cout => \Add11~33\);

-- Location: LCCOMB_X30_Y25_N8
\Add11~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~34_combout\ = (\Add10~34_combout\ & ((n_x(17) & (!\Add11~33\)) # (!n_x(17) & (\Add11~33\ & VCC)))) # (!\Add10~34_combout\ & ((n_x(17) & ((\Add11~33\) # (GND))) # (!n_x(17) & (!\Add11~33\))))
-- \Add11~35\ = CARRY((\Add10~34_combout\ & (n_x(17) & !\Add11~33\)) # (!\Add10~34_combout\ & ((n_x(17)) # (!\Add11~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~34_combout\,
	datab => n_x(17),
	datad => VCC,
	cin => \Add11~33\,
	combout => \Add11~34_combout\,
	cout => \Add11~35\);

-- Location: LCCOMB_X30_Y25_N10
\Add11~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~36_combout\ = (\Add10~54_combout\ & ((GND) # (!\Add11~35\))) # (!\Add10~54_combout\ & (\Add11~35\ $ (GND)))
-- \Add11~37\ = CARRY((\Add10~54_combout\) # (!\Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~54_combout\,
	datad => VCC,
	cin => \Add11~35\,
	combout => \Add11~36_combout\,
	cout => \Add11~37\);

-- Location: LCCOMB_X30_Y25_N12
\Add11~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~38_combout\ = (\Add10~75_combout\ & (\Add11~37\ & VCC)) # (!\Add10~75_combout\ & (!\Add11~37\))
-- \Add11~39\ = CARRY((!\Add10~75_combout\ & !\Add11~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~75_combout\,
	datad => VCC,
	cin => \Add11~37\,
	combout => \Add11~38_combout\,
	cout => \Add11~39\);

-- Location: LCCOMB_X30_Y25_N14
\Add11~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~40_combout\ = (\Add10~76_combout\ & ((GND) # (!\Add11~39\))) # (!\Add10~76_combout\ & (\Add11~39\ $ (GND)))
-- \Add11~41\ = CARRY((\Add10~76_combout\) # (!\Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~76_combout\,
	datad => VCC,
	cin => \Add11~39\,
	combout => \Add11~40_combout\,
	cout => \Add11~41\);

-- Location: LCCOMB_X30_Y25_N16
\Add11~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~42_combout\ = (\Add10~77_combout\ & (\Add11~41\ & VCC)) # (!\Add10~77_combout\ & (!\Add11~41\))
-- \Add11~43\ = CARRY((!\Add10~77_combout\ & !\Add11~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~77_combout\,
	datad => VCC,
	cin => \Add11~41\,
	combout => \Add11~42_combout\,
	cout => \Add11~43\);

-- Location: LCCOMB_X30_Y25_N18
\Add11~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~44_combout\ = (\Add10~55_combout\ & ((GND) # (!\Add11~43\))) # (!\Add10~55_combout\ & (\Add11~43\ $ (GND)))
-- \Add11~45\ = CARRY((\Add10~55_combout\) # (!\Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~55_combout\,
	datad => VCC,
	cin => \Add11~43\,
	combout => \Add11~44_combout\,
	cout => \Add11~45\);

-- Location: LCCOMB_X30_Y25_N20
\Add11~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~46_combout\ = (\Add10~72_combout\ & (\Add11~45\ & VCC)) # (!\Add10~72_combout\ & (!\Add11~45\))
-- \Add11~47\ = CARRY((!\Add10~72_combout\ & !\Add11~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~72_combout\,
	datad => VCC,
	cin => \Add11~45\,
	combout => \Add11~46_combout\,
	cout => \Add11~47\);

-- Location: LCCOMB_X30_Y25_N22
\Add11~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~48_combout\ = (\Add10~73_combout\ & ((GND) # (!\Add11~47\))) # (!\Add10~73_combout\ & (\Add11~47\ $ (GND)))
-- \Add11~49\ = CARRY((\Add10~73_combout\) # (!\Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~73_combout\,
	datad => VCC,
	cin => \Add11~47\,
	combout => \Add11~48_combout\,
	cout => \Add11~49\);

-- Location: LCCOMB_X30_Y25_N24
\Add11~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~50_combout\ = (\Add10~74_combout\ & (\Add11~49\ & VCC)) # (!\Add10~74_combout\ & (!\Add11~49\))
-- \Add11~51\ = CARRY((!\Add10~74_combout\ & !\Add11~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~74_combout\,
	datad => VCC,
	cin => \Add11~49\,
	combout => \Add11~50_combout\,
	cout => \Add11~51\);

-- Location: LCCOMB_X30_Y25_N26
\Add11~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~52_combout\ = \Add11~51\ $ (\Add10~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add10~53_combout\,
	cin => \Add11~51\,
	combout => \Add11~52_combout\);

-- Location: LCCOMB_X30_Y25_N30
\Selector98~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~4_combout\ = (\Add11~44_combout\) # ((\Add11~42_combout\) # ((\Add11~48_combout\) # (\Add11~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~44_combout\,
	datab => \Add11~42_combout\,
	datac => \Add11~48_combout\,
	datad => \Add11~46_combout\,
	combout => \Selector98~4_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Selector98~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~3_combout\ = (\Add11~38_combout\) # ((\Add11~40_combout\) # ((\Add11~34_combout\) # (\Add11~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~38_combout\,
	datab => \Add11~40_combout\,
	datac => \Add11~34_combout\,
	datad => \Add11~36_combout\,
	combout => \Selector98~3_combout\);

-- Location: LCCOMB_X29_Y25_N30
\Selector98~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~5_combout\ = (\Add11~52_combout\) # ((\Add11~50_combout\) # ((\Selector98~4_combout\) # (\Selector98~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~52_combout\,
	datab => \Add11~50_combout\,
	datac => \Selector98~4_combout\,
	datad => \Selector98~3_combout\,
	combout => \Selector98~5_combout\);

-- Location: LCCOMB_X28_Y25_N12
\temp1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~40_combout\ = (\LessThan8~40_combout\ & (((\Add11~32_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~32_combout\))) # (!\LessThan8~38_combout\ & (\Add10~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~56_combout\,
	datab => \LessThan8~40_combout\,
	datac => \Add11~32_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~40_combout\);

-- Location: LCCOMB_X25_Y25_N20
\temp1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~41_combout\ = (\LessThan8~40_combout\ & (((\Add11~30_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~30_combout\))) # (!\LessThan8~38_combout\ & (\Add10~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~57_combout\,
	datab => \LessThan8~40_combout\,
	datac => \Add11~30_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~41_combout\);

-- Location: LCCOMB_X25_Y25_N30
\temp1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~42_combout\ = (\LessThan8~38_combout\ & (((\Add11~28_combout\)))) # (!\LessThan8~38_combout\ & ((\LessThan8~40_combout\ & ((\Add11~28_combout\))) # (!\LessThan8~40_combout\ & (\Add10~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~58_combout\,
	datab => \LessThan8~38_combout\,
	datac => \LessThan8~40_combout\,
	datad => \Add11~28_combout\,
	combout => \temp1~42_combout\);

-- Location: LCCOMB_X29_Y25_N24
\temp1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~43_combout\ = (\LessThan8~40_combout\ & (((\Add11~26_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~26_combout\))) # (!\LessThan8~38_combout\ & (\Add10~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~40_combout\,
	datab => \Add10~59_combout\,
	datac => \Add11~26_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~43_combout\);

-- Location: LCCOMB_X28_Y25_N6
\temp1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~44_combout\ = (\LessThan8~40_combout\ & (((\Add11~24_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~24_combout\))) # (!\LessThan8~38_combout\ & (\Add10~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~60_combout\,
	datab => \LessThan8~40_combout\,
	datac => \LessThan8~38_combout\,
	datad => \Add11~24_combout\,
	combout => \temp1~44_combout\);

-- Location: LCCOMB_X29_Y25_N22
\temp1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~45_combout\ = (\LessThan8~40_combout\ & (\Add11~22_combout\)) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & (\Add11~22_combout\)) # (!\LessThan8~38_combout\ & ((\Add10~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~40_combout\,
	datab => \Add11~22_combout\,
	datac => \Add10~61_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~45_combout\);

-- Location: LCCOMB_X28_Y25_N16
\temp1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~46_combout\ = (\LessThan8~40_combout\ & (((\Add11~20_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~20_combout\))) # (!\LessThan8~38_combout\ & (\Add10~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~62_combout\,
	datab => \LessThan8~40_combout\,
	datac => \Add11~20_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~46_combout\);

-- Location: LCCOMB_X29_Y25_N20
\temp1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~47_combout\ = (\LessThan8~40_combout\ & (((\Add11~18_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~18_combout\))) # (!\LessThan8~38_combout\ & (\Add10~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~40_combout\,
	datab => \Add10~63_combout\,
	datac => \LessThan8~38_combout\,
	datad => \Add11~18_combout\,
	combout => \temp1~47_combout\);

-- Location: LCCOMB_X29_Y25_N18
\temp1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~48_combout\ = (\LessThan8~40_combout\ & (((\Add11~16_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~16_combout\))) # (!\LessThan8~38_combout\ & (\Add10~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~40_combout\,
	datab => \Add10~64_combout\,
	datac => \LessThan8~38_combout\,
	datad => \Add11~16_combout\,
	combout => \temp1~48_combout\);

-- Location: LCCOMB_X29_Y26_N4
\temp1~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~49_combout\ = (\LessThan8~40_combout\ & (((\Add11~14_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~14_combout\))) # (!\LessThan8~38_combout\ & (\Add10~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~65_combout\,
	datab => \LessThan8~40_combout\,
	datac => \Add11~14_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~49_combout\);

-- Location: LCCOMB_X30_Y26_N0
\temp1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~50_combout\ = (\LessThan8~40_combout\ & (((\Add11~12_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~12_combout\))) # (!\LessThan8~38_combout\ & (\Add10~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~66_combout\,
	datab => \Add11~12_combout\,
	datac => \LessThan8~40_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~50_combout\);

-- Location: LCCOMB_X29_Y26_N10
\temp1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~51_combout\ = (\LessThan8~40_combout\ & (((\Add11~10_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~10_combout\))) # (!\LessThan8~38_combout\ & (\Add10~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~67_combout\,
	datab => \Add11~10_combout\,
	datac => \LessThan8~40_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~51_combout\);

-- Location: LCCOMB_X29_Y26_N0
\temp1~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~52_combout\ = (\LessThan8~40_combout\ & (((\Add11~8_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~8_combout\))) # (!\LessThan8~38_combout\ & (\Add10~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~68_combout\,
	datab => \LessThan8~40_combout\,
	datac => \Add11~8_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~52_combout\);

-- Location: LCCOMB_X29_Y26_N6
\temp1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~53_combout\ = (\LessThan8~40_combout\ & (((\Add11~6_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~6_combout\))) # (!\LessThan8~38_combout\ & (\Add10~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~40_combout\,
	datab => \Add10~69_combout\,
	datac => \Add11~6_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~53_combout\);

-- Location: LCCOMB_X29_Y26_N12
\temp1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~54_combout\ = (\LessThan8~40_combout\ & (((\Add11~4_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~4_combout\))) # (!\LessThan8~38_combout\ & (\Add10~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~40_combout\,
	datab => \Add10~70_combout\,
	datac => \Add11~4_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~54_combout\);

-- Location: LCCOMB_X29_Y26_N2
\temp1~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~55_combout\ = (\LessThan8~40_combout\ & (((\Add11~2_combout\)))) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & ((\Add11~2_combout\))) # (!\LessThan8~38_combout\ & (\Add10~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~71_combout\,
	datab => \Add11~2_combout\,
	datac => \LessThan8~40_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~55_combout\);

-- Location: LCCOMB_X29_Y26_N8
\temp1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp1~56_combout\ = (\LessThan8~40_combout\ & (\Add11~0_combout\)) # (!\LessThan8~40_combout\ & ((\LessThan8~38_combout\ & (\Add11~0_combout\)) # (!\LessThan8~38_combout\ & ((sum_Hpx(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => sum_Hpx(1),
	datac => \LessThan8~40_combout\,
	datad => \LessThan8~38_combout\,
	combout => \temp1~56_combout\);

-- Location: LCCOMB_X29_Y26_N14
\LessThan9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~1_cout\ = CARRY((!n_x(0) & sum_Hpx(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(0),
	datab => sum_Hpx(0),
	datad => VCC,
	cout => \LessThan9~1_cout\);

-- Location: LCCOMB_X29_Y26_N16
\LessThan9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~3_cout\ = CARRY((n_x(1) & ((!\LessThan9~1_cout\) # (!\temp1~56_combout\))) # (!n_x(1) & (!\temp1~56_combout\ & !\LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(1),
	datab => \temp1~56_combout\,
	datad => VCC,
	cin => \LessThan9~1_cout\,
	cout => \LessThan9~3_cout\);

-- Location: LCCOMB_X29_Y26_N18
\LessThan9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~5_cout\ = CARRY((n_x(2) & (\temp1~55_combout\ & !\LessThan9~3_cout\)) # (!n_x(2) & ((\temp1~55_combout\) # (!\LessThan9~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(2),
	datab => \temp1~55_combout\,
	datad => VCC,
	cin => \LessThan9~3_cout\,
	cout => \LessThan9~5_cout\);

-- Location: LCCOMB_X29_Y26_N20
\LessThan9~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~7_cout\ = CARRY((\temp1~54_combout\ & (n_x(3) & !\LessThan9~5_cout\)) # (!\temp1~54_combout\ & ((n_x(3)) # (!\LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~54_combout\,
	datab => n_x(3),
	datad => VCC,
	cin => \LessThan9~5_cout\,
	cout => \LessThan9~7_cout\);

-- Location: LCCOMB_X29_Y26_N22
\LessThan9~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~9_cout\ = CARRY((\temp1~53_combout\ & ((!\LessThan9~7_cout\) # (!n_x(4)))) # (!\temp1~53_combout\ & (!n_x(4) & !\LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~53_combout\,
	datab => n_x(4),
	datad => VCC,
	cin => \LessThan9~7_cout\,
	cout => \LessThan9~9_cout\);

-- Location: LCCOMB_X29_Y26_N24
\LessThan9~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~11_cout\ = CARRY((n_x(5) & ((!\LessThan9~9_cout\) # (!\temp1~52_combout\))) # (!n_x(5) & (!\temp1~52_combout\ & !\LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(5),
	datab => \temp1~52_combout\,
	datad => VCC,
	cin => \LessThan9~9_cout\,
	cout => \LessThan9~11_cout\);

-- Location: LCCOMB_X29_Y26_N26
\LessThan9~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~13_cout\ = CARRY((\temp1~51_combout\ & ((!\LessThan9~11_cout\) # (!n_x(6)))) # (!\temp1~51_combout\ & (!n_x(6) & !\LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~51_combout\,
	datab => n_x(6),
	datad => VCC,
	cin => \LessThan9~11_cout\,
	cout => \LessThan9~13_cout\);

-- Location: LCCOMB_X29_Y26_N28
\LessThan9~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~15_cout\ = CARRY((n_x(7) & ((!\LessThan9~13_cout\) # (!\temp1~50_combout\))) # (!n_x(7) & (!\temp1~50_combout\ & !\LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(7),
	datab => \temp1~50_combout\,
	datad => VCC,
	cin => \LessThan9~13_cout\,
	cout => \LessThan9~15_cout\);

-- Location: LCCOMB_X29_Y26_N30
\LessThan9~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~17_cout\ = CARRY((n_x(8) & (\temp1~49_combout\ & !\LessThan9~15_cout\)) # (!n_x(8) & ((\temp1~49_combout\) # (!\LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(8),
	datab => \temp1~49_combout\,
	datad => VCC,
	cin => \LessThan9~15_cout\,
	cout => \LessThan9~17_cout\);

-- Location: LCCOMB_X29_Y25_N0
\LessThan9~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~19_cout\ = CARRY((n_x(9) & ((!\LessThan9~17_cout\) # (!\temp1~48_combout\))) # (!n_x(9) & (!\temp1~48_combout\ & !\LessThan9~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(9),
	datab => \temp1~48_combout\,
	datad => VCC,
	cin => \LessThan9~17_cout\,
	cout => \LessThan9~19_cout\);

-- Location: LCCOMB_X29_Y25_N2
\LessThan9~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~21_cout\ = CARRY((n_x(10) & (\temp1~47_combout\ & !\LessThan9~19_cout\)) # (!n_x(10) & ((\temp1~47_combout\) # (!\LessThan9~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(10),
	datab => \temp1~47_combout\,
	datad => VCC,
	cin => \LessThan9~19_cout\,
	cout => \LessThan9~21_cout\);

-- Location: LCCOMB_X29_Y25_N4
\LessThan9~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~23_cout\ = CARRY((\temp1~46_combout\ & (n_x(11) & !\LessThan9~21_cout\)) # (!\temp1~46_combout\ & ((n_x(11)) # (!\LessThan9~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~46_combout\,
	datab => n_x(11),
	datad => VCC,
	cin => \LessThan9~21_cout\,
	cout => \LessThan9~23_cout\);

-- Location: LCCOMB_X29_Y25_N6
\LessThan9~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~25_cout\ = CARRY((\temp1~45_combout\ & ((!\LessThan9~23_cout\) # (!n_x(12)))) # (!\temp1~45_combout\ & (!n_x(12) & !\LessThan9~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~45_combout\,
	datab => n_x(12),
	datad => VCC,
	cin => \LessThan9~23_cout\,
	cout => \LessThan9~25_cout\);

-- Location: LCCOMB_X29_Y25_N8
\LessThan9~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~27_cout\ = CARRY((n_x(13) & ((!\LessThan9~25_cout\) # (!\temp1~44_combout\))) # (!n_x(13) & (!\temp1~44_combout\ & !\LessThan9~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(13),
	datab => \temp1~44_combout\,
	datad => VCC,
	cin => \LessThan9~25_cout\,
	cout => \LessThan9~27_cout\);

-- Location: LCCOMB_X29_Y25_N10
\LessThan9~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~29_cout\ = CARRY((n_x(14) & (\temp1~43_combout\ & !\LessThan9~27_cout\)) # (!n_x(14) & ((\temp1~43_combout\) # (!\LessThan9~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_x(14),
	datab => \temp1~43_combout\,
	datad => VCC,
	cin => \LessThan9~27_cout\,
	cout => \LessThan9~29_cout\);

-- Location: LCCOMB_X29_Y25_N12
\LessThan9~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~31_cout\ = CARRY((\temp1~42_combout\ & (n_x(15) & !\LessThan9~29_cout\)) # (!\temp1~42_combout\ & ((n_x(15)) # (!\LessThan9~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~42_combout\,
	datab => n_x(15),
	datad => VCC,
	cin => \LessThan9~29_cout\,
	cout => \LessThan9~31_cout\);

-- Location: LCCOMB_X29_Y25_N14
\LessThan9~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~33_cout\ = CARRY((\temp1~41_combout\ & ((!\LessThan9~31_cout\) # (!n_x(16)))) # (!\temp1~41_combout\ & (!n_x(16) & !\LessThan9~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~41_combout\,
	datab => n_x(16),
	datad => VCC,
	cin => \LessThan9~31_cout\,
	cout => \LessThan9~33_cout\);

-- Location: LCCOMB_X29_Y25_N16
\LessThan9~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan9~34_combout\ = (n_x(17) & (\LessThan9~33_cout\ & \temp1~40_combout\)) # (!n_x(17) & ((\LessThan9~33_cout\) # (\temp1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_x(17),
	datad => \temp1~40_combout\,
	cin => \LessThan9~33_cout\,
	combout => \LessThan9~34_combout\);

-- Location: LCCOMB_X29_Y25_N28
\Selector98~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~2_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan9~34_combout\)))) # (!\state.calcul_barycentre~q\ & (x_int(0) & (\state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_int(0),
	datab => \state.init~q\,
	datac => \state.calcul_barycentre~q\,
	datad => \LessThan9~34_combout\,
	combout => \Selector98~2_combout\);

-- Location: LCCOMB_X29_Y25_N26
\Selector98~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~6_combout\ = (\Selector98~1_combout\) # ((\Selector98~2_combout\) # ((\Selector97~0_combout\ & \Selector98~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector98~1_combout\,
	datab => \Selector97~0_combout\,
	datac => \Selector98~5_combout\,
	datad => \Selector98~2_combout\,
	combout => \Selector98~6_combout\);

-- Location: FF_X29_Y25_N27
\x_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector98~6_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_int(0));

-- Location: LCCOMB_X36_Y27_N6
\LessThan19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~1_cout\ = CARRY((!\X_Cont[0]~input_o\ & x_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[0]~input_o\,
	datab => x_int(0),
	datad => VCC,
	cout => \LessThan19~1_cout\);

-- Location: LCCOMB_X36_Y27_N8
\LessThan19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~3_cout\ = CARRY((\X_Cont[1]~input_o\ & ((x_int(1)) # (!\LessThan19~1_cout\))) # (!\X_Cont[1]~input_o\ & (x_int(1) & !\LessThan19~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[1]~input_o\,
	datab => x_int(1),
	datad => VCC,
	cin => \LessThan19~1_cout\,
	cout => \LessThan19~3_cout\);

-- Location: LCCOMB_X36_Y27_N10
\LessThan19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~5_cout\ = CARRY((\X_Cont[2]~input_o\ & (\Add20~2_combout\ & !\LessThan19~3_cout\)) # (!\X_Cont[2]~input_o\ & ((\Add20~2_combout\) # (!\LessThan19~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[2]~input_o\,
	datab => \Add20~2_combout\,
	datad => VCC,
	cin => \LessThan19~3_cout\,
	cout => \LessThan19~5_cout\);

-- Location: LCCOMB_X36_Y27_N12
\LessThan19~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~7_cout\ = CARRY((\X_Cont[3]~input_o\ & ((!\LessThan19~5_cout\) # (!\Add20~4_combout\))) # (!\X_Cont[3]~input_o\ & (!\Add20~4_combout\ & !\LessThan19~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[3]~input_o\,
	datab => \Add20~4_combout\,
	datad => VCC,
	cin => \LessThan19~5_cout\,
	cout => \LessThan19~7_cout\);

-- Location: LCCOMB_X36_Y27_N14
\LessThan19~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~9_cout\ = CARRY((\Add20~6_combout\ & ((!\LessThan19~7_cout\) # (!\X_Cont[4]~input_o\))) # (!\Add20~6_combout\ & (!\X_Cont[4]~input_o\ & !\LessThan19~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \X_Cont[4]~input_o\,
	datad => VCC,
	cin => \LessThan19~7_cout\,
	cout => \LessThan19~9_cout\);

-- Location: LCCOMB_X36_Y27_N16
\LessThan19~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~11_cout\ = CARRY((\Add20~8_combout\ & (\X_Cont[5]~input_o\ & !\LessThan19~9_cout\)) # (!\Add20~8_combout\ & ((\X_Cont[5]~input_o\) # (!\LessThan19~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \X_Cont[5]~input_o\,
	datad => VCC,
	cin => \LessThan19~9_cout\,
	cout => \LessThan19~11_cout\);

-- Location: LCCOMB_X36_Y27_N18
\LessThan19~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~13_cout\ = CARRY((\X_Cont[6]~input_o\ & (\Add20~10_combout\ & !\LessThan19~11_cout\)) # (!\X_Cont[6]~input_o\ & ((\Add20~10_combout\) # (!\LessThan19~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[6]~input_o\,
	datab => \Add20~10_combout\,
	datad => VCC,
	cin => \LessThan19~11_cout\,
	cout => \LessThan19~13_cout\);

-- Location: LCCOMB_X36_Y27_N20
\LessThan19~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~15_cout\ = CARRY((\X_Cont[7]~input_o\ & ((!\LessThan19~13_cout\) # (!\Add20~12_combout\))) # (!\X_Cont[7]~input_o\ & (!\Add20~12_combout\ & !\LessThan19~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[7]~input_o\,
	datab => \Add20~12_combout\,
	datad => VCC,
	cin => \LessThan19~13_cout\,
	cout => \LessThan19~15_cout\);

-- Location: LCCOMB_X36_Y27_N22
\LessThan19~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan19~16_combout\ = (\Add20~14_combout\ & ((!\LessThan19~15_cout\) # (!\X_Cont[8]~input_o\))) # (!\Add20~14_combout\ & (!\X_Cont[8]~input_o\ & !\LessThan19~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~14_combout\,
	datab => \X_Cont[8]~input_o\,
	cin => \LessThan19~15_cout\,
	combout => \LessThan19~16_combout\);

-- Location: LCCOMB_X43_Y24_N12
\Selector99~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (!\state.calcul_barycentre~q\ & (\state.init~q\ & y_int(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.calcul_barycentre~q\,
	datac => \state.init~q\,
	datad => y_int(8),
	combout => \Selector99~0_combout\);

-- Location: LCCOMB_X38_Y26_N0
\Selector126~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\state.colonne~q\ & ((\test~q\) # (!\next_sum_Hpx~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.colonne~q\,
	datac => \test~q\,
	datad => \next_sum_Hpx~2_combout\,
	combout => \Selector126~0_combout\);

-- Location: FF_X38_Y26_N1
test : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector126~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test~q\);

-- Location: LCCOMB_X41_Y24_N18
\Add3~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\test~q\ & \state.ligne~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test~q\,
	datad => \state.ligne~q\,
	combout => \Add3~38_combout\);

-- Location: LCCOMB_X41_Y24_N8
\Add3~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~39_combout\ = (\state.ligne~q\ & (!\test~q\)) # (!\state.ligne~q\ & ((\state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test~q\,
	datab => \state.init~q\,
	datad => \state.ligne~q\,
	combout => \Add3~39_combout\);

-- Location: LCCOMB_X42_Y24_N6
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Y_Cont[0]~input_o\ & (sum_Vpx(0) $ (VCC))) # (!\Y_Cont[0]~input_o\ & (sum_Vpx(0) & VCC))
-- \Add3~1\ = CARRY((\Y_Cont[0]~input_o\ & sum_Vpx(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[0]~input_o\,
	datab => sum_Vpx(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X43_Y24_N18
\Add3~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~75_combout\ = (\Add3~39_combout\ & ((sum_Vpx(0)) # ((\Add3~0_combout\ & \Add3~38_combout\)))) # (!\Add3~39_combout\ & (\Add3~0_combout\ & ((\Add3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~39_combout\,
	datab => \Add3~0_combout\,
	datac => sum_Vpx(0),
	datad => \Add3~38_combout\,
	combout => \Add3~75_combout\);

-- Location: FF_X43_Y24_N19
\sum_Vpx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~75_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(0));

-- Location: LCCOMB_X42_Y24_N8
\Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (sum_Vpx(1) & ((\Y_Cont[1]~input_o\ & (\Add3~1\ & VCC)) # (!\Y_Cont[1]~input_o\ & (!\Add3~1\)))) # (!sum_Vpx(1) & ((\Y_Cont[1]~input_o\ & (!\Add3~1\)) # (!\Y_Cont[1]~input_o\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((sum_Vpx(1) & (!\Y_Cont[1]~input_o\ & !\Add3~1\)) # (!sum_Vpx(1) & ((!\Add3~1\) # (!\Y_Cont[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(1),
	datab => \Y_Cont[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X43_Y22_N12
\Add3~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~76_combout\ = (\Add3~2_combout\ & ((\Add3~38_combout\) # ((\Add3~39_combout\ & sum_Vpx(1))))) # (!\Add3~2_combout\ & (\Add3~39_combout\ & (sum_Vpx(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(1),
	datad => \Add3~38_combout\,
	combout => \Add3~76_combout\);

-- Location: FF_X43_Y22_N13
\sum_Vpx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~76_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(1));

-- Location: LCCOMB_X42_Y24_N10
\Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Y_Cont[2]~input_o\ $ (sum_Vpx(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Y_Cont[2]~input_o\ & ((sum_Vpx(2)) # (!\Add3~3\))) # (!\Y_Cont[2]~input_o\ & (sum_Vpx(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[2]~input_o\,
	datab => sum_Vpx(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X43_Y22_N6
\Add3~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~77_combout\ = (\Add3~38_combout\ & ((\Add3~4_combout\) # ((sum_Vpx(2) & \Add3~39_combout\)))) # (!\Add3~38_combout\ & (((sum_Vpx(2) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~4_combout\,
	datac => sum_Vpx(2),
	datad => \Add3~39_combout\,
	combout => \Add3~77_combout\);

-- Location: FF_X43_Y22_N7
\sum_Vpx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~77_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(2));

-- Location: LCCOMB_X42_Y24_N12
\Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (sum_Vpx(3) & ((\Y_Cont[3]~input_o\ & (\Add3~5\ & VCC)) # (!\Y_Cont[3]~input_o\ & (!\Add3~5\)))) # (!sum_Vpx(3) & ((\Y_Cont[3]~input_o\ & (!\Add3~5\)) # (!\Y_Cont[3]~input_o\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((sum_Vpx(3) & (!\Y_Cont[3]~input_o\ & !\Add3~5\)) # (!sum_Vpx(3) & ((!\Add3~5\) # (!\Y_Cont[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(3),
	datab => \Y_Cont[3]~input_o\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X42_Y22_N8
\Add3~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~78_combout\ = (\Add3~39_combout\ & ((sum_Vpx(3)) # ((\Add3~38_combout\ & \Add3~6_combout\)))) # (!\Add3~39_combout\ & (\Add3~38_combout\ & (\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~39_combout\,
	datab => \Add3~38_combout\,
	datac => \Add3~6_combout\,
	datad => sum_Vpx(3),
	combout => \Add3~78_combout\);

-- Location: FF_X42_Y22_N1
\sum_Vpx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~78_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(3));

-- Location: LCCOMB_X42_Y24_N14
\Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\Y_Cont[4]~input_o\ $ (sum_Vpx(4) $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\Y_Cont[4]~input_o\ & ((sum_Vpx(4)) # (!\Add3~7\))) # (!\Y_Cont[4]~input_o\ & (sum_Vpx(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[4]~input_o\,
	datab => sum_Vpx(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X41_Y24_N22
\Add3~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~79_combout\ = (sum_Vpx(4) & ((\Add3~39_combout\) # ((\Add3~8_combout\ & \Add3~38_combout\)))) # (!sum_Vpx(4) & (\Add3~8_combout\ & (\Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(4),
	datab => \Add3~8_combout\,
	datac => \Add3~38_combout\,
	datad => \Add3~39_combout\,
	combout => \Add3~79_combout\);

-- Location: FF_X42_Y22_N7
\sum_Vpx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~79_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(4));

-- Location: LCCOMB_X42_Y24_N16
\Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (sum_Vpx(5) & ((\Y_Cont[5]~input_o\ & (\Add3~9\ & VCC)) # (!\Y_Cont[5]~input_o\ & (!\Add3~9\)))) # (!sum_Vpx(5) & ((\Y_Cont[5]~input_o\ & (!\Add3~9\)) # (!\Y_Cont[5]~input_o\ & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((sum_Vpx(5) & (!\Y_Cont[5]~input_o\ & !\Add3~9\)) # (!sum_Vpx(5) & ((!\Add3~9\) # (!\Y_Cont[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(5),
	datab => \Y_Cont[5]~input_o\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X42_Y24_N0
\Add3~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~80_combout\ = (\Add3~38_combout\ & ((\Add3~10_combout\) # ((sum_Vpx(5) & \Add3~39_combout\)))) # (!\Add3~38_combout\ & (sum_Vpx(5) & (\Add3~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => sum_Vpx(5),
	datac => \Add3~39_combout\,
	datad => \Add3~10_combout\,
	combout => \Add3~80_combout\);

-- Location: FF_X42_Y22_N13
\sum_Vpx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~80_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(5));

-- Location: LCCOMB_X42_Y24_N18
\Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((sum_Vpx(6) $ (\Y_Cont[6]~input_o\ $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((sum_Vpx(6) & ((\Y_Cont[6]~input_o\) # (!\Add3~11\))) # (!sum_Vpx(6) & (\Y_Cont[6]~input_o\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(6),
	datab => \Y_Cont[6]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X41_Y24_N28
\Add3~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~81_combout\ = (\Add3~39_combout\ & ((sum_Vpx(6)) # ((\Add3~38_combout\ & \Add3~12_combout\)))) # (!\Add3~39_combout\ & (((\Add3~38_combout\ & \Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~39_combout\,
	datab => sum_Vpx(6),
	datac => \Add3~38_combout\,
	datad => \Add3~12_combout\,
	combout => \Add3~81_combout\);

-- Location: FF_X42_Y22_N11
\sum_Vpx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~81_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(6));

-- Location: LCCOMB_X42_Y24_N20
\Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (sum_Vpx(7) & ((\Y_Cont[7]~input_o\ & (\Add3~13\ & VCC)) # (!\Y_Cont[7]~input_o\ & (!\Add3~13\)))) # (!sum_Vpx(7) & ((\Y_Cont[7]~input_o\ & (!\Add3~13\)) # (!\Y_Cont[7]~input_o\ & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((sum_Vpx(7) & (!\Y_Cont[7]~input_o\ & !\Add3~13\)) # (!sum_Vpx(7) & ((!\Add3~13\) # (!\Y_Cont[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(7),
	datab => \Y_Cont[7]~input_o\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X39_Y22_N2
\Add3~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~82_combout\ = (\Add3~38_combout\ & ((\Add3~14_combout\) # ((sum_Vpx(7) & \Add3~39_combout\)))) # (!\Add3~38_combout\ & (((sum_Vpx(7) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~14_combout\,
	datac => sum_Vpx(7),
	datad => \Add3~39_combout\,
	combout => \Add3~82_combout\);

-- Location: FF_X42_Y22_N25
\sum_Vpx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~82_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(7));

-- Location: LCCOMB_X42_Y24_N22
\Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((sum_Vpx(8) $ (\Y_Cont[8]~input_o\ $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((sum_Vpx(8) & ((\Y_Cont[8]~input_o\) # (!\Add3~15\))) # (!sum_Vpx(8) & (\Y_Cont[8]~input_o\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(8),
	datab => \Y_Cont[8]~input_o\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X41_Y24_N4
\Add3~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\Add3~39_combout\ & ((sum_Vpx(8)) # ((\Add3~38_combout\ & \Add3~16_combout\)))) # (!\Add3~39_combout\ & (\Add3~38_combout\ & ((\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~39_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(8),
	datad => \Add3~16_combout\,
	combout => \Add3~50_combout\);

-- Location: FF_X41_Y24_N5
\sum_Vpx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~50_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(8));

-- Location: LCCOMB_X42_Y24_N24
\Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (sum_Vpx(9) & (!\Add3~17\)) # (!sum_Vpx(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!sum_Vpx(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X41_Y22_N8
\Add3~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~49_combout\ = (\Add3~38_combout\ & ((\Add3~18_combout\) # ((\Add3~39_combout\ & sum_Vpx(9))))) # (!\Add3~38_combout\ & (\Add3~39_combout\ & (sum_Vpx(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(9),
	datad => \Add3~18_combout\,
	combout => \Add3~49_combout\);

-- Location: FF_X41_Y22_N9
\sum_Vpx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~49_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(9));

-- Location: LCCOMB_X42_Y24_N26
\Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (sum_Vpx(10) & (\Add3~19\ $ (GND))) # (!sum_Vpx(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((sum_Vpx(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X41_Y24_N24
\Add3~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (sum_Vpx(10) & ((\Add3~39_combout\) # ((\Add3~38_combout\ & \Add3~20_combout\)))) # (!sum_Vpx(10) & (((\Add3~38_combout\ & \Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(10),
	datab => \Add3~39_combout\,
	datac => \Add3~38_combout\,
	datad => \Add3~20_combout\,
	combout => \Add3~48_combout\);

-- Location: FF_X42_Y22_N29
\sum_Vpx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~48_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(10));

-- Location: LCCOMB_X42_Y24_N28
\Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (sum_Vpx(11) & (!\Add3~21\)) # (!sum_Vpx(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!sum_Vpx(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X41_Y24_N26
\Add3~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~47_combout\ = (\Add3~22_combout\ & ((\Add3~38_combout\) # ((\Add3~39_combout\ & sum_Vpx(11))))) # (!\Add3~22_combout\ & (\Add3~39_combout\ & ((sum_Vpx(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Add3~39_combout\,
	datac => \Add3~38_combout\,
	datad => sum_Vpx(11),
	combout => \Add3~47_combout\);

-- Location: FF_X42_Y22_N31
\sum_Vpx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~47_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(11));

-- Location: LCCOMB_X42_Y24_N30
\Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (sum_Vpx(12) & (\Add3~23\ $ (GND))) # (!sum_Vpx(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((sum_Vpx(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X42_Y24_N4
\Add3~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\Add3~39_combout\ & ((sum_Vpx(12)) # ((\Add3~24_combout\ & \Add3~38_combout\)))) # (!\Add3~39_combout\ & (((\Add3~24_combout\ & \Add3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~39_combout\,
	datab => sum_Vpx(12),
	datac => \Add3~24_combout\,
	datad => \Add3~38_combout\,
	combout => \Add3~46_combout\);

-- Location: FF_X42_Y22_N21
\sum_Vpx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~46_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(12));

-- Location: LCCOMB_X42_Y23_N0
\Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (sum_Vpx(13) & (!\Add3~25\)) # (!sum_Vpx(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!sum_Vpx(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X41_Y24_N30
\Add3~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~45_combout\ = (\Add3~26_combout\ & ((\Add3~38_combout\) # ((sum_Vpx(13) & \Add3~39_combout\)))) # (!\Add3~26_combout\ & (((sum_Vpx(13) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(13),
	datad => \Add3~39_combout\,
	combout => \Add3~45_combout\);

-- Location: FF_X41_Y24_N31
\sum_Vpx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~45_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(13));

-- Location: LCCOMB_X42_Y23_N2
\Add3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (sum_Vpx(14) & (\Add3~27\ $ (GND))) # (!sum_Vpx(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((sum_Vpx(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X41_Y24_N20
\Add3~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (\Add3~28_combout\ & ((\Add3~38_combout\) # ((sum_Vpx(14) & \Add3~39_combout\)))) # (!\Add3~28_combout\ & (((sum_Vpx(14) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(14),
	datad => \Add3~39_combout\,
	combout => \Add3~44_combout\);

-- Location: FF_X41_Y24_N21
\sum_Vpx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~44_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(14));

-- Location: LCCOMB_X42_Y23_N4
\Add3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (sum_Vpx(15) & (!\Add3~29\)) # (!sum_Vpx(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!sum_Vpx(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X39_Y22_N4
\Add3~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~43_combout\ = (\Add3~38_combout\ & ((\Add3~30_combout\) # ((\Add3~39_combout\ & sum_Vpx(15))))) # (!\Add3~38_combout\ & (\Add3~39_combout\ & (sum_Vpx(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(15),
	datad => \Add3~30_combout\,
	combout => \Add3~43_combout\);

-- Location: FF_X39_Y22_N5
\sum_Vpx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~43_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(15));

-- Location: LCCOMB_X42_Y23_N6
\Add3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (sum_Vpx(16) & (\Add3~31\ $ (GND))) # (!sum_Vpx(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((sum_Vpx(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X43_Y22_N8
\Add3~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\Add3~32_combout\ & ((\Add3~38_combout\) # ((\Add3~39_combout\ & sum_Vpx(16))))) # (!\Add3~32_combout\ & (\Add3~39_combout\ & (sum_Vpx(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(16),
	datad => \Add3~38_combout\,
	combout => \Add3~42_combout\);

-- Location: FF_X43_Y22_N9
\sum_Vpx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~42_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(16));

-- Location: LCCOMB_X42_Y23_N8
\Add3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (sum_Vpx(17) & (!\Add3~33\)) # (!sum_Vpx(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!sum_Vpx(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X41_Y22_N4
\Add3~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~41_combout\ = (\Add3~38_combout\ & ((\Add3~34_combout\) # ((\Add3~39_combout\ & sum_Vpx(17))))) # (!\Add3~38_combout\ & (\Add3~39_combout\ & (sum_Vpx(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(17),
	datad => \Add3~34_combout\,
	combout => \Add3~41_combout\);

-- Location: FF_X41_Y22_N5
\sum_Vpx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~41_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(17));

-- Location: LCCOMB_X42_Y23_N10
\Add3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (sum_Vpx(18) & (\Add3~35\ $ (GND))) # (!sum_Vpx(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((sum_Vpx(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X42_Y23_N28
\Add3~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\Add3~38_combout\ & ((\Add3~36_combout\) # ((\Add3~39_combout\ & sum_Vpx(18))))) # (!\Add3~38_combout\ & (\Add3~39_combout\ & (sum_Vpx(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(18),
	datad => \Add3~36_combout\,
	combout => \Add3~40_combout\);

-- Location: FF_X41_Y21_N25
\sum_Vpx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~40_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(18));

-- Location: LCCOMB_X42_Y23_N12
\Add3~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~51_combout\ = (sum_Vpx(19) & (!\Add3~37\)) # (!sum_Vpx(19) & ((\Add3~37\) # (GND)))
-- \Add3~52\ = CARRY((!\Add3~37\) # (!sum_Vpx(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~51_combout\,
	cout => \Add3~52\);

-- Location: LCCOMB_X42_Y24_N2
\Add3~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~74_combout\ = (\Add3~38_combout\ & ((\Add3~51_combout\) # ((sum_Vpx(19) & \Add3~39_combout\)))) # (!\Add3~38_combout\ & (sum_Vpx(19) & (\Add3~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => sum_Vpx(19),
	datac => \Add3~39_combout\,
	datad => \Add3~51_combout\,
	combout => \Add3~74_combout\);

-- Location: FF_X39_Y21_N29
\sum_Vpx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~74_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(19));

-- Location: LCCOMB_X42_Y23_N14
\Add3~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~53_combout\ = (sum_Vpx(20) & (\Add3~52\ $ (GND))) # (!sum_Vpx(20) & (!\Add3~52\ & VCC))
-- \Add3~54\ = CARRY((sum_Vpx(20) & !\Add3~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(20),
	datad => VCC,
	cin => \Add3~52\,
	combout => \Add3~53_combout\,
	cout => \Add3~54\);

-- Location: LCCOMB_X43_Y21_N30
\Add3~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~73_combout\ = (\Add3~53_combout\ & ((\Add3~38_combout\) # ((sum_Vpx(20) & \Add3~39_combout\)))) # (!\Add3~53_combout\ & (((sum_Vpx(20) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~53_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(20),
	datad => \Add3~39_combout\,
	combout => \Add3~73_combout\);

-- Location: FF_X43_Y21_N31
\sum_Vpx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~73_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(20));

-- Location: LCCOMB_X42_Y23_N16
\Add3~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~55_combout\ = (sum_Vpx(21) & (!\Add3~54\)) # (!sum_Vpx(21) & ((\Add3~54\) # (GND)))
-- \Add3~56\ = CARRY((!\Add3~54\) # (!sum_Vpx(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(21),
	datad => VCC,
	cin => \Add3~54\,
	combout => \Add3~55_combout\,
	cout => \Add3~56\);

-- Location: LCCOMB_X42_Y23_N30
\Add3~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~72_combout\ = (sum_Vpx(21) & ((\Add3~39_combout\) # ((\Add3~38_combout\ & \Add3~55_combout\)))) # (!sum_Vpx(21) & (\Add3~38_combout\ & (\Add3~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(21),
	datab => \Add3~38_combout\,
	datac => \Add3~55_combout\,
	datad => \Add3~39_combout\,
	combout => \Add3~72_combout\);

-- Location: FF_X39_Y21_N31
\sum_Vpx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add3~72_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(21));

-- Location: LCCOMB_X42_Y23_N18
\Add3~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~57_combout\ = (sum_Vpx(22) & (\Add3~56\ $ (GND))) # (!sum_Vpx(22) & (!\Add3~56\ & VCC))
-- \Add3~58\ = CARRY((sum_Vpx(22) & !\Add3~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(22),
	datad => VCC,
	cin => \Add3~56\,
	combout => \Add3~57_combout\,
	cout => \Add3~58\);

-- Location: LCCOMB_X42_Y21_N22
\Add3~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~71_combout\ = (\Add3~38_combout\ & ((\Add3~57_combout\) # ((sum_Vpx(22) & \Add3~39_combout\)))) # (!\Add3~38_combout\ & (((sum_Vpx(22) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~57_combout\,
	datac => sum_Vpx(22),
	datad => \Add3~39_combout\,
	combout => \Add3~71_combout\);

-- Location: FF_X42_Y21_N23
\sum_Vpx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~71_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(22));

-- Location: LCCOMB_X42_Y23_N20
\Add3~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~59_combout\ = (sum_Vpx(23) & (!\Add3~58\)) # (!sum_Vpx(23) & ((\Add3~58\) # (GND)))
-- \Add3~60\ = CARRY((!\Add3~58\) # (!sum_Vpx(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(23),
	datad => VCC,
	cin => \Add3~58\,
	combout => \Add3~59_combout\,
	cout => \Add3~60\);

-- Location: LCCOMB_X41_Y24_N14
\Add3~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~70_combout\ = (\Add3~59_combout\ & ((\Add3~38_combout\) # ((sum_Vpx(23) & \Add3~39_combout\)))) # (!\Add3~59_combout\ & (((sum_Vpx(23) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~59_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(23),
	datad => \Add3~39_combout\,
	combout => \Add3~70_combout\);

-- Location: FF_X41_Y24_N15
\sum_Vpx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~70_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(23));

-- Location: LCCOMB_X42_Y23_N22
\Add3~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~61_combout\ = (sum_Vpx(24) & (\Add3~60\ $ (GND))) # (!sum_Vpx(24) & (!\Add3~60\ & VCC))
-- \Add3~62\ = CARRY((sum_Vpx(24) & !\Add3~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(24),
	datad => VCC,
	cin => \Add3~60\,
	combout => \Add3~61_combout\,
	cout => \Add3~62\);

-- Location: LCCOMB_X42_Y21_N26
\Add3~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~69_combout\ = (\Add3~61_combout\ & ((\Add3~38_combout\) # ((sum_Vpx(24) & \Add3~39_combout\)))) # (!\Add3~61_combout\ & (((sum_Vpx(24) & \Add3~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~61_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(24),
	datad => \Add3~39_combout\,
	combout => \Add3~69_combout\);

-- Location: FF_X42_Y21_N27
\sum_Vpx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~69_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(24));

-- Location: LCCOMB_X42_Y23_N24
\Add3~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~63_combout\ = (sum_Vpx(25) & (!\Add3~62\)) # (!sum_Vpx(25) & ((\Add3~62\) # (GND)))
-- \Add3~64\ = CARRY((!\Add3~62\) # (!sum_Vpx(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(25),
	datad => VCC,
	cin => \Add3~62\,
	combout => \Add3~63_combout\,
	cout => \Add3~64\);

-- Location: LCCOMB_X42_Y21_N30
\Add3~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~68_combout\ = (\Add3~39_combout\ & ((sum_Vpx(25)) # ((\Add3~38_combout\ & \Add3~63_combout\)))) # (!\Add3~39_combout\ & (\Add3~38_combout\ & ((\Add3~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~39_combout\,
	datab => \Add3~38_combout\,
	datac => sum_Vpx(25),
	datad => \Add3~63_combout\,
	combout => \Add3~68_combout\);

-- Location: FF_X42_Y21_N31
\sum_Vpx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~68_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(25));

-- Location: LCCOMB_X42_Y23_N26
\Add3~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~65_combout\ = \Add3~64\ $ (!sum_Vpx(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sum_Vpx(26),
	cin => \Add3~64\,
	combout => \Add3~65_combout\);

-- Location: LCCOMB_X41_Y22_N6
\Add3~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~67_combout\ = (\Add3~38_combout\ & ((\Add3~65_combout\) # ((\Add3~39_combout\ & sum_Vpx(26))))) # (!\Add3~38_combout\ & (\Add3~39_combout\ & (sum_Vpx(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add3~39_combout\,
	datac => sum_Vpx(26),
	datad => \Add3~65_combout\,
	combout => \Add3~67_combout\);

-- Location: FF_X41_Y22_N7
\sum_Vpx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add3~67_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum_Vpx(26));

-- Location: LCCOMB_X43_Y22_N14
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\test~q\ & (n_y(0) $ (VCC))) # (!\test~q\ & (n_y(0) & VCC))
-- \Add2~1\ = CARRY((\test~q\ & n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test~q\,
	datab => n_y(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X42_Y22_N2
\Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\state.ligne~q\ & (((\Add2~0_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & ((n_y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.ligne~q\,
	datac => \Add2~0_combout\,
	datad => n_y(0),
	combout => \Add2~32_combout\);

-- Location: FF_X42_Y22_N17
\n_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add2~32_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(0));

-- Location: LCCOMB_X43_Y22_N16
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (n_y(1) & (!\Add2~1\)) # (!n_y(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!n_y(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X43_Y24_N8
\Add2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~31_combout\ = (\state.ligne~q\ & (((\Add2~2_combout\)))) # (!\state.ligne~q\ & (n_y(1) & ((\state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add2~2_combout\,
	datac => \state.init~q\,
	datad => \state.ligne~q\,
	combout => \Add2~31_combout\);

-- Location: FF_X42_Y22_N19
\n_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add2~31_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(1));

-- Location: LCCOMB_X43_Y22_N18
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (n_y(2) & (\Add2~3\ $ (GND))) # (!n_y(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((n_y(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X43_Y22_N2
\Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\state.ligne~q\ & (((\Add2~4_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & (n_y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.ligne~q\,
	datac => n_y(2),
	datad => \Add2~4_combout\,
	combout => \Add2~30_combout\);

-- Location: FF_X43_Y22_N3
\n_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(2));

-- Location: LCCOMB_X43_Y22_N20
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (n_y(3) & (!\Add2~5\)) # (!n_y(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!n_y(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X43_Y22_N0
\Add2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\state.ligne~q\ & (((\Add2~6_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & (n_y(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => n_y(3),
	datac => \state.ligne~q\,
	datad => \Add2~6_combout\,
	combout => \Add2~29_combout\);

-- Location: FF_X42_Y22_N23
\n_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add2~29_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(3));

-- Location: LCCOMB_X43_Y22_N22
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (n_y(4) & (\Add2~7\ $ (GND))) # (!n_y(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((n_y(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X38_Y22_N12
\Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\state.ligne~q\ & (((\Add2~8_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & ((n_y(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \Add2~8_combout\,
	datac => n_y(4),
	datad => \state.ligne~q\,
	combout => \Add2~28_combout\);

-- Location: FF_X38_Y22_N13
\n_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(4));

-- Location: LCCOMB_X43_Y22_N24
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (n_y(5) & (!\Add2~9\)) # (!n_y(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!n_y(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X41_Y22_N10
\Add2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (\state.ligne~q\ & (\Add2~10_combout\)) # (!\state.ligne~q\ & (((\state.init~q\ & n_y(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \state.init~q\,
	datac => n_y(5),
	datad => \state.ligne~q\,
	combout => \Add2~27_combout\);

-- Location: FF_X41_Y22_N11
\n_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~27_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(5));

-- Location: LCCOMB_X43_Y22_N26
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (n_y(6) & (\Add2~11\ $ (GND))) # (!n_y(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((n_y(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X42_Y22_N4
\Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\state.ligne~q\ & (((\Add2~12_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & ((n_y(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \Add2~12_combout\,
	datac => n_y(6),
	datad => \state.ligne~q\,
	combout => \Add2~26_combout\);

-- Location: FF_X42_Y22_N27
\n_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(6));

-- Location: LCCOMB_X43_Y22_N28
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (n_y(7) & (!\Add2~13\)) # (!n_y(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!n_y(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X43_Y22_N4
\Add2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = (\state.ligne~q\ & (((\Add2~14_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & (n_y(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.ligne~q\,
	datac => n_y(7),
	datad => \Add2~14_combout\,
	combout => \Add2~25_combout\);

-- Location: FF_X43_Y22_N5
\n_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~25_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(7));

-- Location: LCCOMB_X43_Y22_N30
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (n_y(8) & (\Add2~15\ $ (GND))) # (!n_y(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((n_y(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X43_Y22_N10
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\state.ligne~q\ & (\Add2~16_combout\)) # (!\state.ligne~q\ & (((n_y(8) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \state.ligne~q\,
	datac => n_y(8),
	datad => \state.init~q\,
	combout => \Add2~24_combout\);

-- Location: FF_X43_Y22_N11
\n_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(8));

-- Location: LCCOMB_X43_Y21_N0
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (n_y(9) & (!\Add2~17\)) # (!n_y(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!n_y(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X43_Y21_N24
\Add2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\state.ligne~q\ & (((\Add2~18_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & (n_y(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \state.init~q\,
	datac => n_y(9),
	datad => \Add2~18_combout\,
	combout => \Add2~23_combout\);

-- Location: FF_X43_Y21_N25
\n_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~23_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(9));

-- Location: LCCOMB_X43_Y21_N2
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (n_y(10) & (\Add2~19\ $ (GND))) # (!n_y(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((n_y(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X43_Y21_N22
\Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\state.ligne~q\ & (\Add2~20_combout\)) # (!\state.ligne~q\ & (((n_y(10) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \Add2~20_combout\,
	datac => n_y(10),
	datad => \state.init~q\,
	combout => \Add2~22_combout\);

-- Location: FF_X43_Y21_N23
\n_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(10));

-- Location: LCCOMB_X43_Y21_N4
\Add2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = (n_y(11) & (!\Add2~21\)) # (!n_y(11) & ((\Add2~21\) # (GND)))
-- \Add2~34\ = CARRY((!\Add2~21\) # (!n_y(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~33_combout\,
	cout => \Add2~34\);

-- Location: LCCOMB_X43_Y21_N20
\Add2~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~53_combout\ = (\state.ligne~q\ & (\Add2~33_combout\)) # (!\state.ligne~q\ & (((n_y(11) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \Add2~33_combout\,
	datac => n_y(11),
	datad => \state.init~q\,
	combout => \Add2~53_combout\);

-- Location: FF_X43_Y21_N21
\n_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~53_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(11));

-- Location: LCCOMB_X43_Y21_N6
\Add2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (n_y(12) & (\Add2~34\ $ (GND))) # (!n_y(12) & (!\Add2~34\ & VCC))
-- \Add2~36\ = CARRY((n_y(12) & !\Add2~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datad => VCC,
	cin => \Add2~34\,
	combout => \Add2~35_combout\,
	cout => \Add2~36\);

-- Location: LCCOMB_X43_Y21_N18
\Add2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\state.ligne~q\ & (((\Add2~35_combout\)))) # (!\state.ligne~q\ & (n_y(12) & (\state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \state.init~q\,
	datac => \state.ligne~q\,
	datad => \Add2~35_combout\,
	combout => \Add2~52_combout\);

-- Location: FF_X41_Y21_N27
\n_y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	asdata => \Add2~52_combout\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(12));

-- Location: LCCOMB_X43_Y21_N8
\Add2~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~37_combout\ = (n_y(13) & (!\Add2~36\)) # (!n_y(13) & ((\Add2~36\) # (GND)))
-- \Add2~38\ = CARRY((!\Add2~36\) # (!n_y(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(13),
	datad => VCC,
	cin => \Add2~36\,
	combout => \Add2~37_combout\,
	cout => \Add2~38\);

-- Location: LCCOMB_X43_Y21_N28
\Add2~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~51_combout\ = (\state.ligne~q\ & (\Add2~37_combout\)) # (!\state.ligne~q\ & (((n_y(13) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \Add2~37_combout\,
	datac => n_y(13),
	datad => \state.init~q\,
	combout => \Add2~51_combout\);

-- Location: FF_X43_Y21_N29
\n_y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~51_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(13));

-- Location: LCCOMB_X43_Y21_N10
\Add2~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (n_y(14) & (\Add2~38\ $ (GND))) # (!n_y(14) & (!\Add2~38\ & VCC))
-- \Add2~40\ = CARRY((n_y(14) & !\Add2~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(14),
	datad => VCC,
	cin => \Add2~38\,
	combout => \Add2~39_combout\,
	cout => \Add2~40\);

-- Location: LCCOMB_X42_Y21_N20
\Add2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\state.ligne~q\ & (\Add2~39_combout\)) # (!\state.ligne~q\ & (((n_y(14) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \Add2~39_combout\,
	datac => n_y(14),
	datad => \state.init~q\,
	combout => \Add2~50_combout\);

-- Location: FF_X42_Y21_N21
\n_y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(14));

-- Location: LCCOMB_X43_Y21_N12
\Add2~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~41_combout\ = (n_y(15) & (!\Add2~40\)) # (!n_y(15) & ((\Add2~40\) # (GND)))
-- \Add2~42\ = CARRY((!\Add2~40\) # (!n_y(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datad => VCC,
	cin => \Add2~40\,
	combout => \Add2~41_combout\,
	cout => \Add2~42\);

-- Location: LCCOMB_X43_Y21_N26
\Add2~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~49_combout\ = (\state.ligne~q\ & (((\Add2~41_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & (n_y(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \state.init~q\,
	datac => n_y(15),
	datad => \Add2~41_combout\,
	combout => \Add2~49_combout\);

-- Location: FF_X43_Y21_N27
\n_y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~49_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(15));

-- Location: LCCOMB_X43_Y21_N14
\Add2~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~43_combout\ = (n_y(16) & (\Add2~42\ $ (GND))) # (!n_y(16) & (!\Add2~42\ & VCC))
-- \Add2~44\ = CARRY((n_y(16) & !\Add2~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(16),
	datad => VCC,
	cin => \Add2~42\,
	combout => \Add2~43_combout\,
	cout => \Add2~44\);

-- Location: LCCOMB_X42_Y21_N28
\Add2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\state.ligne~q\ & (\Add2~43_combout\)) # (!\state.ligne~q\ & (((n_y(16) & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \Add2~43_combout\,
	datac => n_y(16),
	datad => \state.init~q\,
	combout => \Add2~48_combout\);

-- Location: FF_X42_Y21_N29
\n_y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(16));

-- Location: LCCOMB_X43_Y21_N16
\Add2~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~45_combout\ = \Add2~44\ $ (n_y(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => n_y(17),
	cin => \Add2~44\,
	combout => \Add2~45_combout\);

-- Location: LCCOMB_X42_Y21_N24
\Add2~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~47_combout\ = (\state.ligne~q\ & (((\Add2~45_combout\)))) # (!\state.ligne~q\ & (\state.init~q\ & (n_y(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ligne~q\,
	datab => \state.init~q\,
	datac => n_y(17),
	datad => \Add2~45_combout\,
	combout => \Add2~47_combout\);

-- Location: FF_X42_Y21_N25
\n_y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Add2~47_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_y(17));

-- Location: LCCOMB_X42_Y22_N0
\LessThan10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (sum_Vpx(2)) # ((sum_Vpx(1)) # ((sum_Vpx(3)) # (sum_Vpx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(2),
	datab => sum_Vpx(1),
	datac => sum_Vpx(3),
	datad => sum_Vpx(0),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X42_Y22_N6
\LessThan10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (sum_Vpx(6)) # ((sum_Vpx(5)) # ((sum_Vpx(4)) # (\LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(6),
	datab => sum_Vpx(5),
	datac => sum_Vpx(4),
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X42_Y22_N12
\LessThan10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (sum_Vpx(7)) # (\LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum_Vpx(7),
	datad => \LessThan10~1_combout\,
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X42_Y22_N14
\LessThan10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~4_cout\ = CARRY(\LessThan10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~2_combout\,
	datad => VCC,
	cout => \LessThan10~4_cout\);

-- Location: LCCOMB_X42_Y22_N16
\LessThan10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~6_cout\ = CARRY((sum_Vpx(8) & (n_y(0) & !\LessThan10~4_cout\)) # (!sum_Vpx(8) & ((n_y(0)) # (!\LessThan10~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(8),
	datab => n_y(0),
	datad => VCC,
	cin => \LessThan10~4_cout\,
	cout => \LessThan10~6_cout\);

-- Location: LCCOMB_X42_Y22_N18
\LessThan10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~8_cout\ = CARRY((sum_Vpx(9) & ((!\LessThan10~6_cout\) # (!n_y(1)))) # (!sum_Vpx(9) & (!n_y(1) & !\LessThan10~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(9),
	datab => n_y(1),
	datad => VCC,
	cin => \LessThan10~6_cout\,
	cout => \LessThan10~8_cout\);

-- Location: LCCOMB_X42_Y22_N20
\LessThan10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~10_cout\ = CARRY((n_y(2) & ((!\LessThan10~8_cout\) # (!sum_Vpx(10)))) # (!n_y(2) & (!sum_Vpx(10) & !\LessThan10~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => sum_Vpx(10),
	datad => VCC,
	cin => \LessThan10~8_cout\,
	cout => \LessThan10~10_cout\);

-- Location: LCCOMB_X42_Y22_N22
\LessThan10~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~12_cout\ = CARRY((n_y(3) & (sum_Vpx(11) & !\LessThan10~10_cout\)) # (!n_y(3) & ((sum_Vpx(11)) # (!\LessThan10~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => sum_Vpx(11),
	datad => VCC,
	cin => \LessThan10~10_cout\,
	cout => \LessThan10~12_cout\);

-- Location: LCCOMB_X42_Y22_N24
\LessThan10~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~14_cout\ = CARRY((n_y(4) & ((!\LessThan10~12_cout\) # (!sum_Vpx(12)))) # (!n_y(4) & (!sum_Vpx(12) & !\LessThan10~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => sum_Vpx(12),
	datad => VCC,
	cin => \LessThan10~12_cout\,
	cout => \LessThan10~14_cout\);

-- Location: LCCOMB_X42_Y22_N26
\LessThan10~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~16_cout\ = CARRY((n_y(5) & (sum_Vpx(13) & !\LessThan10~14_cout\)) # (!n_y(5) & ((sum_Vpx(13)) # (!\LessThan10~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => sum_Vpx(13),
	datad => VCC,
	cin => \LessThan10~14_cout\,
	cout => \LessThan10~16_cout\);

-- Location: LCCOMB_X42_Y22_N28
\LessThan10~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~18_cout\ = CARRY((n_y(6) & ((!\LessThan10~16_cout\) # (!sum_Vpx(14)))) # (!n_y(6) & (!sum_Vpx(14) & !\LessThan10~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => sum_Vpx(14),
	datad => VCC,
	cin => \LessThan10~16_cout\,
	cout => \LessThan10~18_cout\);

-- Location: LCCOMB_X42_Y22_N30
\LessThan10~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~20_cout\ = CARRY((sum_Vpx(15) & ((!\LessThan10~18_cout\) # (!n_y(7)))) # (!sum_Vpx(15) & (!n_y(7) & !\LessThan10~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(15),
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan10~18_cout\,
	cout => \LessThan10~20_cout\);

-- Location: LCCOMB_X42_Y21_N0
\LessThan10~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~22_cout\ = CARRY((n_y(8) & ((!\LessThan10~20_cout\) # (!sum_Vpx(16)))) # (!n_y(8) & (!sum_Vpx(16) & !\LessThan10~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => sum_Vpx(16),
	datad => VCC,
	cin => \LessThan10~20_cout\,
	cout => \LessThan10~22_cout\);

-- Location: LCCOMB_X42_Y21_N2
\LessThan10~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~24_cout\ = CARRY((n_y(9) & (sum_Vpx(17) & !\LessThan10~22_cout\)) # (!n_y(9) & ((sum_Vpx(17)) # (!\LessThan10~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => sum_Vpx(17),
	datad => VCC,
	cin => \LessThan10~22_cout\,
	cout => \LessThan10~24_cout\);

-- Location: LCCOMB_X42_Y21_N4
\LessThan10~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~26_cout\ = CARRY((n_y(10) & ((!\LessThan10~24_cout\) # (!sum_Vpx(18)))) # (!n_y(10) & (!sum_Vpx(18) & !\LessThan10~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => sum_Vpx(18),
	datad => VCC,
	cin => \LessThan10~24_cout\,
	cout => \LessThan10~26_cout\);

-- Location: LCCOMB_X42_Y21_N6
\LessThan10~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~28_cout\ = CARRY((sum_Vpx(19) & ((!\LessThan10~26_cout\) # (!n_y(11)))) # (!sum_Vpx(19) & (!n_y(11) & !\LessThan10~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(19),
	datab => n_y(11),
	datad => VCC,
	cin => \LessThan10~26_cout\,
	cout => \LessThan10~28_cout\);

-- Location: LCCOMB_X42_Y21_N8
\LessThan10~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~30_cout\ = CARRY((n_y(12) & ((!\LessThan10~28_cout\) # (!sum_Vpx(20)))) # (!n_y(12) & (!sum_Vpx(20) & !\LessThan10~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => sum_Vpx(20),
	datad => VCC,
	cin => \LessThan10~28_cout\,
	cout => \LessThan10~30_cout\);

-- Location: LCCOMB_X42_Y21_N10
\LessThan10~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~32_cout\ = CARRY((n_y(13) & (sum_Vpx(21) & !\LessThan10~30_cout\)) # (!n_y(13) & ((sum_Vpx(21)) # (!\LessThan10~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => sum_Vpx(21),
	datad => VCC,
	cin => \LessThan10~30_cout\,
	cout => \LessThan10~32_cout\);

-- Location: LCCOMB_X42_Y21_N12
\LessThan10~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~34_cout\ = CARRY((sum_Vpx(22) & (n_y(14) & !\LessThan10~32_cout\)) # (!sum_Vpx(22) & ((n_y(14)) # (!\LessThan10~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(22),
	datab => n_y(14),
	datad => VCC,
	cin => \LessThan10~32_cout\,
	cout => \LessThan10~34_cout\);

-- Location: LCCOMB_X42_Y21_N14
\LessThan10~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~36_cout\ = CARRY((sum_Vpx(23) & ((!\LessThan10~34_cout\) # (!n_y(15)))) # (!sum_Vpx(23) & (!n_y(15) & !\LessThan10~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(23),
	datab => n_y(15),
	datad => VCC,
	cin => \LessThan10~34_cout\,
	cout => \LessThan10~36_cout\);

-- Location: LCCOMB_X42_Y21_N16
\LessThan10~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~38_cout\ = CARRY((sum_Vpx(24) & (n_y(16) & !\LessThan10~36_cout\)) # (!sum_Vpx(24) & ((n_y(16)) # (!\LessThan10~36_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(24),
	datab => n_y(16),
	datad => VCC,
	cin => \LessThan10~36_cout\,
	cout => \LessThan10~38_cout\);

-- Location: LCCOMB_X42_Y21_N18
\LessThan10~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~39_combout\ = (sum_Vpx(25) & ((!n_y(17)) # (!\LessThan10~38_cout\))) # (!sum_Vpx(25) & (!\LessThan10~38_cout\ & !n_y(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(25),
	datad => n_y(17),
	cin => \LessThan10~38_cout\,
	combout => \LessThan10~39_combout\);

-- Location: LCCOMB_X43_Y24_N16
\Selector99~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector99~1_combout\ = (\Selector99~0_combout\) # ((\state.calcul_barycentre~q\ & ((sum_Vpx(26)) # (\LessThan10~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector99~0_combout\,
	datab => \state.calcul_barycentre~q\,
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Selector99~1_combout\);

-- Location: FF_X43_Y24_N17
\y_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector99~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(8));

-- Location: LCCOMB_X41_Y22_N12
\Add12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (sum_Vpx(8) & ((GND) # (!n_y(0)))) # (!sum_Vpx(8) & (n_y(0) $ (GND)))
-- \Add12~1\ = CARRY((sum_Vpx(8)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(8),
	datab => n_y(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X41_Y22_N14
\Add12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (sum_Vpx(9) & ((n_y(1) & (!\Add12~1\)) # (!n_y(1) & (\Add12~1\ & VCC)))) # (!sum_Vpx(9) & ((n_y(1) & ((\Add12~1\) # (GND))) # (!n_y(1) & (!\Add12~1\))))
-- \Add12~3\ = CARRY((sum_Vpx(9) & (n_y(1) & !\Add12~1\)) # (!sum_Vpx(9) & ((n_y(1)) # (!\Add12~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(9),
	datab => n_y(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X41_Y22_N16
\Add12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((sum_Vpx(10) $ (n_y(2) $ (\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((sum_Vpx(10) & ((!\Add12~3\) # (!n_y(2)))) # (!sum_Vpx(10) & (!n_y(2) & !\Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(10),
	datab => n_y(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X41_Y22_N18
\Add12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (sum_Vpx(11) & ((n_y(3) & (!\Add12~5\)) # (!n_y(3) & (\Add12~5\ & VCC)))) # (!sum_Vpx(11) & ((n_y(3) & ((\Add12~5\) # (GND))) # (!n_y(3) & (!\Add12~5\))))
-- \Add12~7\ = CARRY((sum_Vpx(11) & (n_y(3) & !\Add12~5\)) # (!sum_Vpx(11) & ((n_y(3)) # (!\Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(11),
	datab => n_y(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X41_Y22_N20
\Add12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((sum_Vpx(12) $ (n_y(4) $ (\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((sum_Vpx(12) & ((!\Add12~7\) # (!n_y(4)))) # (!sum_Vpx(12) & (!n_y(4) & !\Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(12),
	datab => n_y(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X41_Y22_N22
\Add12~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (n_y(5) & ((sum_Vpx(13) & (!\Add12~9\)) # (!sum_Vpx(13) & ((\Add12~9\) # (GND))))) # (!n_y(5) & ((sum_Vpx(13) & (\Add12~9\ & VCC)) # (!sum_Vpx(13) & (!\Add12~9\))))
-- \Add12~11\ = CARRY((n_y(5) & ((!\Add12~9\) # (!sum_Vpx(13)))) # (!n_y(5) & (!sum_Vpx(13) & !\Add12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => sum_Vpx(13),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X41_Y22_N24
\Add12~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = ((sum_Vpx(14) $ (n_y(6) $ (\Add12~11\)))) # (GND)
-- \Add12~13\ = CARRY((sum_Vpx(14) & ((!\Add12~11\) # (!n_y(6)))) # (!sum_Vpx(14) & (!n_y(6) & !\Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(14),
	datab => n_y(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X41_Y22_N26
\Add12~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (n_y(7) & ((sum_Vpx(15) & (!\Add12~13\)) # (!sum_Vpx(15) & ((\Add12~13\) # (GND))))) # (!n_y(7) & ((sum_Vpx(15) & (\Add12~13\ & VCC)) # (!sum_Vpx(15) & (!\Add12~13\))))
-- \Add12~15\ = CARRY((n_y(7) & ((!\Add12~13\) # (!sum_Vpx(15)))) # (!n_y(7) & (!sum_Vpx(15) & !\Add12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(7),
	datab => sum_Vpx(15),
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X41_Y22_N28
\Add12~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = ((n_y(8) $ (sum_Vpx(16) $ (\Add12~15\)))) # (GND)
-- \Add12~17\ = CARRY((n_y(8) & (sum_Vpx(16) & !\Add12~15\)) # (!n_y(8) & ((sum_Vpx(16)) # (!\Add12~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => sum_Vpx(16),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X41_Y22_N30
\Add12~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (n_y(9) & ((sum_Vpx(17) & (!\Add12~17\)) # (!sum_Vpx(17) & ((\Add12~17\) # (GND))))) # (!n_y(9) & ((sum_Vpx(17) & (\Add12~17\ & VCC)) # (!sum_Vpx(17) & (!\Add12~17\))))
-- \Add12~19\ = CARRY((n_y(9) & ((!\Add12~17\) # (!sum_Vpx(17)))) # (!n_y(9) & (!sum_Vpx(17) & !\Add12~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => sum_Vpx(17),
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: LCCOMB_X41_Y21_N0
\Add12~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = ((n_y(10) $ (sum_Vpx(18) $ (\Add12~19\)))) # (GND)
-- \Add12~21\ = CARRY((n_y(10) & (sum_Vpx(18) & !\Add12~19\)) # (!n_y(10) & ((sum_Vpx(18)) # (!\Add12~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => sum_Vpx(18),
	datad => VCC,
	cin => \Add12~19\,
	combout => \Add12~20_combout\,
	cout => \Add12~21\);

-- Location: LCCOMB_X41_Y21_N2
\Add12~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~33_combout\ = (sum_Vpx(19) & ((n_y(11) & (!\Add12~21\)) # (!n_y(11) & (\Add12~21\ & VCC)))) # (!sum_Vpx(19) & ((n_y(11) & ((\Add12~21\) # (GND))) # (!n_y(11) & (!\Add12~21\))))
-- \Add12~34\ = CARRY((sum_Vpx(19) & (n_y(11) & !\Add12~21\)) # (!sum_Vpx(19) & ((n_y(11)) # (!\Add12~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(19),
	datab => n_y(11),
	datad => VCC,
	cin => \Add12~21\,
	combout => \Add12~33_combout\,
	cout => \Add12~34\);

-- Location: LCCOMB_X41_Y21_N4
\Add12~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~35_combout\ = ((n_y(12) $ (sum_Vpx(20) $ (\Add12~34\)))) # (GND)
-- \Add12~36\ = CARRY((n_y(12) & (sum_Vpx(20) & !\Add12~34\)) # (!n_y(12) & ((sum_Vpx(20)) # (!\Add12~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => sum_Vpx(20),
	datad => VCC,
	cin => \Add12~34\,
	combout => \Add12~35_combout\,
	cout => \Add12~36\);

-- Location: LCCOMB_X41_Y21_N6
\Add12~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~37_combout\ = (sum_Vpx(21) & ((n_y(13) & (!\Add12~36\)) # (!n_y(13) & (\Add12~36\ & VCC)))) # (!sum_Vpx(21) & ((n_y(13) & ((\Add12~36\) # (GND))) # (!n_y(13) & (!\Add12~36\))))
-- \Add12~38\ = CARRY((sum_Vpx(21) & (n_y(13) & !\Add12~36\)) # (!sum_Vpx(21) & ((n_y(13)) # (!\Add12~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(21),
	datab => n_y(13),
	datad => VCC,
	cin => \Add12~36\,
	combout => \Add12~37_combout\,
	cout => \Add12~38\);

-- Location: LCCOMB_X41_Y21_N8
\Add12~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~39_combout\ = ((n_y(14) $ (sum_Vpx(22) $ (\Add12~38\)))) # (GND)
-- \Add12~40\ = CARRY((n_y(14) & (sum_Vpx(22) & !\Add12~38\)) # (!n_y(14) & ((sum_Vpx(22)) # (!\Add12~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => sum_Vpx(22),
	datad => VCC,
	cin => \Add12~38\,
	combout => \Add12~39_combout\,
	cout => \Add12~40\);

-- Location: LCCOMB_X41_Y21_N10
\Add12~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~41_combout\ = (sum_Vpx(23) & ((n_y(15) & (!\Add12~40\)) # (!n_y(15) & (\Add12~40\ & VCC)))) # (!sum_Vpx(23) & ((n_y(15) & ((\Add12~40\) # (GND))) # (!n_y(15) & (!\Add12~40\))))
-- \Add12~42\ = CARRY((sum_Vpx(23) & (n_y(15) & !\Add12~40\)) # (!sum_Vpx(23) & ((n_y(15)) # (!\Add12~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(23),
	datab => n_y(15),
	datad => VCC,
	cin => \Add12~40\,
	combout => \Add12~41_combout\,
	cout => \Add12~42\);

-- Location: LCCOMB_X41_Y21_N12
\Add12~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~43_combout\ = ((n_y(16) $ (sum_Vpx(24) $ (\Add12~42\)))) # (GND)
-- \Add12~44\ = CARRY((n_y(16) & (sum_Vpx(24) & !\Add12~42\)) # (!n_y(16) & ((sum_Vpx(24)) # (!\Add12~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => sum_Vpx(24),
	datad => VCC,
	cin => \Add12~42\,
	combout => \Add12~43_combout\,
	cout => \Add12~44\);

-- Location: LCCOMB_X41_Y21_N14
\Add12~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~45_combout\ = (sum_Vpx(25) & ((n_y(17) & (!\Add12~44\)) # (!n_y(17) & (\Add12~44\ & VCC)))) # (!sum_Vpx(25) & ((n_y(17) & ((\Add12~44\) # (GND))) # (!n_y(17) & (!\Add12~44\))))
-- \Add12~46\ = CARRY((sum_Vpx(25) & (n_y(17) & !\Add12~44\)) # (!sum_Vpx(25) & ((n_y(17)) # (!\Add12~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(25),
	datab => n_y(17),
	datad => VCC,
	cin => \Add12~44\,
	combout => \Add12~45_combout\,
	cout => \Add12~46\);

-- Location: LCCOMB_X41_Y21_N16
\Add12~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~54_combout\ = (sum_Vpx(26) & ((GND) # (!\Add12~46\))) # (!sum_Vpx(26) & (\Add12~46\ $ (GND)))
-- \Add12~55\ = CARRY((sum_Vpx(26)) # (!\Add12~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datad => VCC,
	cin => \Add12~46\,
	combout => \Add12~54_combout\,
	cout => \Add12~55\);

-- Location: LCCOMB_X38_Y21_N22
\Add12~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~56_combout\ = (\Add12~54_combout\ & ((sum_Vpx(26)) # (\LessThan10~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datac => \Add12~54_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~56_combout\);

-- Location: LCCOMB_X38_Y21_N28
\Add12~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~47_combout\ = (sum_Vpx(26) & (((\Add12~45_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~45_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => sum_Vpx(25),
	datac => \Add12~45_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~47_combout\);

-- Location: LCCOMB_X41_Y21_N18
\Add12~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~57_combout\ = !\Add12~55\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add12~55\,
	combout => \Add12~57_combout\);

-- Location: LCCOMB_X41_Y21_N26
\Add12~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~59_combout\ = (\Add12~57_combout\ & ((sum_Vpx(26)) # (\LessThan10~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => \Add12~57_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~59_combout\);

-- Location: LCCOMB_X41_Y21_N28
\Add12~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~48_combout\ = (sum_Vpx(26) & (\Add12~43_combout\)) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & (\Add12~43_combout\)) # (!\LessThan10~39_combout\ & ((sum_Vpx(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~43_combout\,
	datab => sum_Vpx(24),
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Add12~48_combout\);

-- Location: LCCOMB_X41_Y21_N22
\Add12~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~49_combout\ = (sum_Vpx(26) & (\Add12~41_combout\)) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & (\Add12~41_combout\)) # (!\LessThan10~39_combout\ & ((sum_Vpx(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~41_combout\,
	datab => sum_Vpx(23),
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Add12~49_combout\);

-- Location: LCCOMB_X41_Y21_N20
\Add12~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~50_combout\ = (sum_Vpx(26) & (((\Add12~39_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~39_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => sum_Vpx(22),
	datac => \Add12~39_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~50_combout\);

-- Location: LCCOMB_X39_Y21_N26
\Add12~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~51_combout\ = (sum_Vpx(26) & (\Add12~37_combout\)) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & (\Add12~37_combout\)) # (!\LessThan10~39_combout\ & ((sum_Vpx(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~37_combout\,
	datab => sum_Vpx(26),
	datac => sum_Vpx(21),
	datad => \LessThan10~39_combout\,
	combout => \Add12~51_combout\);

-- Location: LCCOMB_X41_Y21_N30
\Add12~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~52_combout\ = (sum_Vpx(26) & (((\Add12~35_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~35_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => sum_Vpx(20),
	datac => \Add12~35_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~52_combout\);

-- Location: LCCOMB_X39_Y21_N28
\Add12~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~53_combout\ = (sum_Vpx(26) & (\Add12~33_combout\)) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & (\Add12~33_combout\)) # (!\LessThan10~39_combout\ & ((sum_Vpx(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => \Add12~33_combout\,
	datac => sum_Vpx(19),
	datad => \LessThan10~39_combout\,
	combout => \Add12~53_combout\);

-- Location: LCCOMB_X41_Y21_N24
\Add12~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~22_combout\ = (sum_Vpx(26) & (\Add12~20_combout\)) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & (\Add12~20_combout\)) # (!\LessThan10~39_combout\ & ((sum_Vpx(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => \Add12~20_combout\,
	datac => sum_Vpx(18),
	datad => \LessThan10~39_combout\,
	combout => \Add12~22_combout\);

-- Location: LCCOMB_X41_Y22_N0
\Add12~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~23_combout\ = (sum_Vpx(26) & (((\Add12~18_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~18_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => sum_Vpx(17),
	datac => \Add12~18_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~23_combout\);

-- Location: LCCOMB_X39_Y22_N6
\Add12~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (sum_Vpx(26) & (((\Add12~16_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~16_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(16),
	datab => sum_Vpx(26),
	datac => \Add12~16_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~24_combout\);

-- Location: LCCOMB_X39_Y22_N8
\Add12~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~25_combout\ = (sum_Vpx(26) & (((\Add12~14_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~14_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(15),
	datab => sum_Vpx(26),
	datac => \Add12~14_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~25_combout\);

-- Location: LCCOMB_X38_Y22_N10
\Add12~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (sum_Vpx(26) & (((\Add12~12_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~12_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(14),
	datab => \Add12~12_combout\,
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Add12~26_combout\);

-- Location: LCCOMB_X38_Y22_N0
\Add12~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~27_combout\ = (sum_Vpx(26) & (((\Add12~10_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~10_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(13),
	datab => \Add12~10_combout\,
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Add12~27_combout\);

-- Location: LCCOMB_X38_Y22_N2
\Add12~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (sum_Vpx(26) & (((\Add12~8_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~8_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(12),
	datab => sum_Vpx(26),
	datac => \Add12~8_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~28_combout\);

-- Location: LCCOMB_X38_Y22_N4
\Add12~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~29_combout\ = (sum_Vpx(26) & (\Add12~6_combout\)) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & (\Add12~6_combout\)) # (!\LessThan10~39_combout\ & ((sum_Vpx(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => sum_Vpx(11),
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Add12~29_combout\);

-- Location: LCCOMB_X38_Y22_N6
\Add12~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (sum_Vpx(26) & (((\Add12~4_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~4_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(10),
	datab => \Add12~4_combout\,
	datac => sum_Vpx(26),
	datad => \LessThan10~39_combout\,
	combout => \Add12~30_combout\);

-- Location: LCCOMB_X41_Y22_N2
\Add12~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~31_combout\ = (sum_Vpx(26) & (((\Add12~2_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~2_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(26),
	datab => sum_Vpx(9),
	datac => \Add12~2_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~31_combout\);

-- Location: LCCOMB_X38_Y22_N8
\Add12~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~32_combout\ = (sum_Vpx(26) & (((\Add12~0_combout\)))) # (!sum_Vpx(26) & ((\LessThan10~39_combout\ & ((\Add12~0_combout\))) # (!\LessThan10~39_combout\ & (sum_Vpx(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(8),
	datab => sum_Vpx(26),
	datac => \Add12~0_combout\,
	datad => \LessThan10~39_combout\,
	combout => \Add12~32_combout\);

-- Location: LCCOMB_X38_Y22_N14
\LessThan11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~1_cout\ = CARRY(\LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~1_combout\,
	datad => VCC,
	cout => \LessThan11~1_cout\);

-- Location: LCCOMB_X38_Y22_N16
\LessThan11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~3_cout\ = CARRY((n_y(0) & ((!\LessThan11~1_cout\) # (!sum_Vpx(7)))) # (!n_y(0) & (!sum_Vpx(7) & !\LessThan11~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(7),
	datad => VCC,
	cin => \LessThan11~1_cout\,
	cout => \LessThan11~3_cout\);

-- Location: LCCOMB_X38_Y22_N18
\LessThan11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~5_cout\ = CARRY((n_y(1) & (\Add12~32_combout\ & !\LessThan11~3_cout\)) # (!n_y(1) & ((\Add12~32_combout\) # (!\LessThan11~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add12~32_combout\,
	datad => VCC,
	cin => \LessThan11~3_cout\,
	cout => \LessThan11~5_cout\);

-- Location: LCCOMB_X38_Y22_N20
\LessThan11~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~7_cout\ = CARRY((n_y(2) & ((!\LessThan11~5_cout\) # (!\Add12~31_combout\))) # (!n_y(2) & (!\Add12~31_combout\ & !\LessThan11~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \Add12~31_combout\,
	datad => VCC,
	cin => \LessThan11~5_cout\,
	cout => \LessThan11~7_cout\);

-- Location: LCCOMB_X38_Y22_N22
\LessThan11~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~9_cout\ = CARRY((\Add12~30_combout\ & ((!\LessThan11~7_cout\) # (!n_y(3)))) # (!\Add12~30_combout\ & (!n_y(3) & !\LessThan11~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~30_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \LessThan11~7_cout\,
	cout => \LessThan11~9_cout\);

-- Location: LCCOMB_X38_Y22_N24
\LessThan11~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~11_cout\ = CARRY((n_y(4) & ((!\LessThan11~9_cout\) # (!\Add12~29_combout\))) # (!n_y(4) & (!\Add12~29_combout\ & !\LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add12~29_combout\,
	datad => VCC,
	cin => \LessThan11~9_cout\,
	cout => \LessThan11~11_cout\);

-- Location: LCCOMB_X38_Y22_N26
\LessThan11~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~13_cout\ = CARRY((n_y(5) & (\Add12~28_combout\ & !\LessThan11~11_cout\)) # (!n_y(5) & ((\Add12~28_combout\) # (!\LessThan11~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add12~28_combout\,
	datad => VCC,
	cin => \LessThan11~11_cout\,
	cout => \LessThan11~13_cout\);

-- Location: LCCOMB_X38_Y22_N28
\LessThan11~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~15_cout\ = CARRY((n_y(6) & ((!\LessThan11~13_cout\) # (!\Add12~27_combout\))) # (!n_y(6) & (!\Add12~27_combout\ & !\LessThan11~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \Add12~27_combout\,
	datad => VCC,
	cin => \LessThan11~13_cout\,
	cout => \LessThan11~15_cout\);

-- Location: LCCOMB_X38_Y22_N30
\LessThan11~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~17_cout\ = CARRY((\Add12~26_combout\ & ((!\LessThan11~15_cout\) # (!n_y(7)))) # (!\Add12~26_combout\ & (!n_y(7) & !\LessThan11~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan11~15_cout\,
	cout => \LessThan11~17_cout\);

-- Location: LCCOMB_X38_Y21_N0
\LessThan11~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~19_cout\ = CARRY((n_y(8) & ((!\LessThan11~17_cout\) # (!\Add12~25_combout\))) # (!n_y(8) & (!\Add12~25_combout\ & !\LessThan11~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add12~25_combout\,
	datad => VCC,
	cin => \LessThan11~17_cout\,
	cout => \LessThan11~19_cout\);

-- Location: LCCOMB_X38_Y21_N2
\LessThan11~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~21_cout\ = CARRY((n_y(9) & (\Add12~24_combout\ & !\LessThan11~19_cout\)) # (!n_y(9) & ((\Add12~24_combout\) # (!\LessThan11~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add12~24_combout\,
	datad => VCC,
	cin => \LessThan11~19_cout\,
	cout => \LessThan11~21_cout\);

-- Location: LCCOMB_X38_Y21_N4
\LessThan11~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~23_cout\ = CARRY((n_y(10) & ((!\LessThan11~21_cout\) # (!\Add12~23_combout\))) # (!n_y(10) & (!\Add12~23_combout\ & !\LessThan11~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \Add12~23_combout\,
	datad => VCC,
	cin => \LessThan11~21_cout\,
	cout => \LessThan11~23_cout\);

-- Location: LCCOMB_X38_Y21_N6
\LessThan11~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~25_cout\ = CARRY((\Add12~22_combout\ & ((!\LessThan11~23_cout\) # (!n_y(11)))) # (!\Add12~22_combout\ & (!n_y(11) & !\LessThan11~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~22_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \LessThan11~23_cout\,
	cout => \LessThan11~25_cout\);

-- Location: LCCOMB_X38_Y21_N8
\LessThan11~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~27_cout\ = CARRY((n_y(12) & ((!\LessThan11~25_cout\) # (!\Add12~53_combout\))) # (!n_y(12) & (!\Add12~53_combout\ & !\LessThan11~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \Add12~53_combout\,
	datad => VCC,
	cin => \LessThan11~25_cout\,
	cout => \LessThan11~27_cout\);

-- Location: LCCOMB_X38_Y21_N10
\LessThan11~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~29_cout\ = CARRY((\Add12~52_combout\ & ((!\LessThan11~27_cout\) # (!n_y(13)))) # (!\Add12~52_combout\ & (!n_y(13) & !\LessThan11~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~52_combout\,
	datab => n_y(13),
	datad => VCC,
	cin => \LessThan11~27_cout\,
	cout => \LessThan11~29_cout\);

-- Location: LCCOMB_X38_Y21_N12
\LessThan11~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~31_cout\ = CARRY((n_y(14) & ((!\LessThan11~29_cout\) # (!\Add12~51_combout\))) # (!n_y(14) & (!\Add12~51_combout\ & !\LessThan11~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \Add12~51_combout\,
	datad => VCC,
	cin => \LessThan11~29_cout\,
	cout => \LessThan11~31_cout\);

-- Location: LCCOMB_X38_Y21_N14
\LessThan11~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~33_cout\ = CARRY((\Add12~50_combout\ & ((!\LessThan11~31_cout\) # (!n_y(15)))) # (!\Add12~50_combout\ & (!n_y(15) & !\LessThan11~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~50_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \LessThan11~31_cout\,
	cout => \LessThan11~33_cout\);

-- Location: LCCOMB_X38_Y21_N16
\LessThan11~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~35_cout\ = CARRY((\Add12~49_combout\ & (n_y(16) & !\LessThan11~33_cout\)) # (!\Add12~49_combout\ & ((n_y(16)) # (!\LessThan11~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~49_combout\,
	datab => n_y(16),
	datad => VCC,
	cin => \LessThan11~33_cout\,
	cout => \LessThan11~35_cout\);

-- Location: LCCOMB_X38_Y21_N18
\LessThan11~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~36_combout\ = (n_y(17) & (!\LessThan11~35_cout\ & \Add12~48_combout\)) # (!n_y(17) & ((\Add12~48_combout\) # (!\LessThan11~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datad => \Add12~48_combout\,
	cin => \LessThan11~35_cout\,
	combout => \LessThan11~36_combout\);

-- Location: LCCOMB_X38_Y21_N24
\LessThan11~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan11~38_combout\ = (\Add12~56_combout\) # ((\Add12~47_combout\) # ((\Add12~59_combout\) # (\LessThan11~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~56_combout\,
	datab => \Add12~47_combout\,
	datac => \Add12~59_combout\,
	datad => \LessThan11~36_combout\,
	combout => \LessThan11~38_combout\);

-- Location: LCCOMB_X44_Y25_N10
\Selector100~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\state.calcul_barycentre~q\ & (\LessThan11~38_combout\)) # (!\state.calcul_barycentre~q\ & (((\state.init~q\ & y_int(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~38_combout\,
	datab => \state.init~q\,
	datac => y_int(7),
	datad => \state.calcul_barycentre~q\,
	combout => \Selector100~0_combout\);

-- Location: FF_X44_Y25_N11
\y_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(7));

-- Location: LCCOMB_X39_Y22_N12
\Add13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (sum_Vpx(7) & ((GND) # (!n_y(0)))) # (!sum_Vpx(7) & (n_y(0) $ (GND)))
-- \Add13~1\ = CARRY((sum_Vpx(7)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(7),
	datab => n_y(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X39_Y22_N14
\Add13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\Add12~32_combout\ & ((n_y(1) & (!\Add13~1\)) # (!n_y(1) & (\Add13~1\ & VCC)))) # (!\Add12~32_combout\ & ((n_y(1) & ((\Add13~1\) # (GND))) # (!n_y(1) & (!\Add13~1\))))
-- \Add13~3\ = CARRY((\Add12~32_combout\ & (n_y(1) & !\Add13~1\)) # (!\Add12~32_combout\ & ((n_y(1)) # (!\Add13~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~32_combout\,
	datab => n_y(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X39_Y22_N16
\Add13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = ((\Add12~31_combout\ $ (n_y(2) $ (\Add13~3\)))) # (GND)
-- \Add13~5\ = CARRY((\Add12~31_combout\ & ((!\Add13~3\) # (!n_y(2)))) # (!\Add12~31_combout\ & (!n_y(2) & !\Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~31_combout\,
	datab => n_y(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X39_Y22_N18
\Add13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (n_y(3) & ((\Add12~30_combout\ & (!\Add13~5\)) # (!\Add12~30_combout\ & ((\Add13~5\) # (GND))))) # (!n_y(3) & ((\Add12~30_combout\ & (\Add13~5\ & VCC)) # (!\Add12~30_combout\ & (!\Add13~5\))))
-- \Add13~7\ = CARRY((n_y(3) & ((!\Add13~5\) # (!\Add12~30_combout\))) # (!n_y(3) & (!\Add12~30_combout\ & !\Add13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => \Add12~30_combout\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X39_Y22_N20
\Add13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = ((n_y(4) $ (\Add12~29_combout\ $ (\Add13~7\)))) # (GND)
-- \Add13~9\ = CARRY((n_y(4) & (\Add12~29_combout\ & !\Add13~7\)) # (!n_y(4) & ((\Add12~29_combout\) # (!\Add13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add12~29_combout\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X39_Y22_N22
\Add13~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\Add12~28_combout\ & ((n_y(5) & (!\Add13~9\)) # (!n_y(5) & (\Add13~9\ & VCC)))) # (!\Add12~28_combout\ & ((n_y(5) & ((\Add13~9\) # (GND))) # (!n_y(5) & (!\Add13~9\))))
-- \Add13~11\ = CARRY((\Add12~28_combout\ & (n_y(5) & !\Add13~9\)) # (!\Add12~28_combout\ & ((n_y(5)) # (!\Add13~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~28_combout\,
	datab => n_y(5),
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X39_Y22_N24
\Add13~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = ((\Add12~27_combout\ $ (n_y(6) $ (\Add13~11\)))) # (GND)
-- \Add13~13\ = CARRY((\Add12~27_combout\ & ((!\Add13~11\) # (!n_y(6)))) # (!\Add12~27_combout\ & (!n_y(6) & !\Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~27_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X39_Y22_N26
\Add13~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (\Add12~26_combout\ & ((n_y(7) & (!\Add13~13\)) # (!n_y(7) & (\Add13~13\ & VCC)))) # (!\Add12~26_combout\ & ((n_y(7) & ((\Add13~13\) # (GND))) # (!n_y(7) & (!\Add13~13\))))
-- \Add13~15\ = CARRY((\Add12~26_combout\ & (n_y(7) & !\Add13~13\)) # (!\Add12~26_combout\ & ((n_y(7)) # (!\Add13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X39_Y22_N28
\Add13~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = ((n_y(8) $ (\Add12~25_combout\ $ (\Add13~15\)))) # (GND)
-- \Add13~17\ = CARRY((n_y(8) & (\Add12~25_combout\ & !\Add13~15\)) # (!n_y(8) & ((\Add12~25_combout\) # (!\Add13~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add12~25_combout\,
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X39_Y22_N30
\Add13~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = (\Add12~24_combout\ & ((n_y(9) & (!\Add13~17\)) # (!n_y(9) & (\Add13~17\ & VCC)))) # (!\Add12~24_combout\ & ((n_y(9) & ((\Add13~17\) # (GND))) # (!n_y(9) & (!\Add13~17\))))
-- \Add13~19\ = CARRY((\Add12~24_combout\ & (n_y(9) & !\Add13~17\)) # (!\Add12~24_combout\ & ((n_y(9)) # (!\Add13~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~24_combout\,
	datab => n_y(9),
	datad => VCC,
	cin => \Add13~17\,
	combout => \Add13~18_combout\,
	cout => \Add13~19\);

-- Location: LCCOMB_X39_Y21_N0
\Add13~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~20_combout\ = ((n_y(10) $ (\Add12~23_combout\ $ (\Add13~19\)))) # (GND)
-- \Add13~21\ = CARRY((n_y(10) & (\Add12~23_combout\ & !\Add13~19\)) # (!n_y(10) & ((\Add12~23_combout\) # (!\Add13~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \Add12~23_combout\,
	datad => VCC,
	cin => \Add13~19\,
	combout => \Add13~20_combout\,
	cout => \Add13~21\);

-- Location: LCCOMB_X39_Y21_N2
\Add13~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~22_combout\ = (n_y(11) & ((\Add12~22_combout\ & (!\Add13~21\)) # (!\Add12~22_combout\ & ((\Add13~21\) # (GND))))) # (!n_y(11) & ((\Add12~22_combout\ & (\Add13~21\ & VCC)) # (!\Add12~22_combout\ & (!\Add13~21\))))
-- \Add13~23\ = CARRY((n_y(11) & ((!\Add13~21\) # (!\Add12~22_combout\))) # (!n_y(11) & (!\Add12~22_combout\ & !\Add13~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \Add12~22_combout\,
	datad => VCC,
	cin => \Add13~21\,
	combout => \Add13~22_combout\,
	cout => \Add13~23\);

-- Location: LCCOMB_X39_Y21_N4
\Add13~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~38_combout\ = ((n_y(12) $ (\Add12~53_combout\ $ (\Add13~23\)))) # (GND)
-- \Add13~39\ = CARRY((n_y(12) & (\Add12~53_combout\ & !\Add13~23\)) # (!n_y(12) & ((\Add12~53_combout\) # (!\Add13~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \Add12~53_combout\,
	datad => VCC,
	cin => \Add13~23\,
	combout => \Add13~38_combout\,
	cout => \Add13~39\);

-- Location: LCCOMB_X39_Y21_N6
\Add13~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~40_combout\ = (n_y(13) & ((\Add12~52_combout\ & (!\Add13~39\)) # (!\Add12~52_combout\ & ((\Add13~39\) # (GND))))) # (!n_y(13) & ((\Add12~52_combout\ & (\Add13~39\ & VCC)) # (!\Add12~52_combout\ & (!\Add13~39\))))
-- \Add13~41\ = CARRY((n_y(13) & ((!\Add13~39\) # (!\Add12~52_combout\))) # (!n_y(13) & (!\Add12~52_combout\ & !\Add13~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \Add12~52_combout\,
	datad => VCC,
	cin => \Add13~39\,
	combout => \Add13~40_combout\,
	cout => \Add13~41\);

-- Location: LCCOMB_X39_Y21_N8
\Add13~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~42_combout\ = ((\Add12~51_combout\ $ (n_y(14) $ (\Add13~41\)))) # (GND)
-- \Add13~43\ = CARRY((\Add12~51_combout\ & ((!\Add13~41\) # (!n_y(14)))) # (!\Add12~51_combout\ & (!n_y(14) & !\Add13~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~51_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \Add13~41\,
	combout => \Add13~42_combout\,
	cout => \Add13~43\);

-- Location: LCCOMB_X39_Y21_N10
\Add13~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~44_combout\ = (n_y(15) & ((\Add12~50_combout\ & (!\Add13~43\)) # (!\Add12~50_combout\ & ((\Add13~43\) # (GND))))) # (!n_y(15) & ((\Add12~50_combout\ & (\Add13~43\ & VCC)) # (!\Add12~50_combout\ & (!\Add13~43\))))
-- \Add13~45\ = CARRY((n_y(15) & ((!\Add13~43\) # (!\Add12~50_combout\))) # (!n_y(15) & (!\Add12~50_combout\ & !\Add13~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datab => \Add12~50_combout\,
	datad => VCC,
	cin => \Add13~43\,
	combout => \Add13~44_combout\,
	cout => \Add13~45\);

-- Location: LCCOMB_X39_Y21_N12
\Add13~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~46_combout\ = ((n_y(16) $ (\Add12~49_combout\ $ (\Add13~45\)))) # (GND)
-- \Add13~47\ = CARRY((n_y(16) & (\Add12~49_combout\ & !\Add13~45\)) # (!n_y(16) & ((\Add12~49_combout\) # (!\Add13~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \Add12~49_combout\,
	datad => VCC,
	cin => \Add13~45\,
	combout => \Add13~46_combout\,
	cout => \Add13~47\);

-- Location: LCCOMB_X39_Y21_N14
\Add13~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~48_combout\ = (\Add12~48_combout\ & ((n_y(17) & (!\Add13~47\)) # (!n_y(17) & (\Add13~47\ & VCC)))) # (!\Add12~48_combout\ & ((n_y(17) & ((\Add13~47\) # (GND))) # (!n_y(17) & (!\Add13~47\))))
-- \Add13~49\ = CARRY((\Add12~48_combout\ & (n_y(17) & !\Add13~47\)) # (!\Add12~48_combout\ & ((n_y(17)) # (!\Add13~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~48_combout\,
	datab => n_y(17),
	datad => VCC,
	cin => \Add13~47\,
	combout => \Add13~48_combout\,
	cout => \Add13~49\);

-- Location: LCCOMB_X39_Y21_N16
\Add13~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~51_combout\ = (\Add12~47_combout\ & ((GND) # (!\Add13~49\))) # (!\Add12~47_combout\ & (\Add13~49\ $ (GND)))
-- \Add13~52\ = CARRY((\Add12~47_combout\) # (!\Add13~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~47_combout\,
	datad => VCC,
	cin => \Add13~49\,
	combout => \Add13~51_combout\,
	cout => \Add13~52\);

-- Location: LCCOMB_X39_Y21_N18
\Add13~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~53_combout\ = (\Add12~56_combout\ & (\Add13~52\ & VCC)) # (!\Add12~56_combout\ & (!\Add13~52\))
-- \Add13~54\ = CARRY((!\Add12~56_combout\ & !\Add13~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~56_combout\,
	datad => VCC,
	cin => \Add13~52\,
	combout => \Add13~53_combout\,
	cout => \Add13~54\);

-- Location: LCCOMB_X39_Y21_N20
\Add13~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~60_combout\ = \Add13~54\ $ (\Add12~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add12~59_combout\,
	cin => \Add13~54\,
	combout => \Add13~60_combout\);

-- Location: LCCOMB_X39_Y21_N24
\Add13~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~50_combout\ = (\LessThan11~38_combout\ & ((\Add13~48_combout\))) # (!\LessThan11~38_combout\ & (\Add12~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~48_combout\,
	datac => \Add13~48_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~50_combout\);

-- Location: LCCOMB_X39_Y21_N22
\LessThan12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (\Add13~50_combout\) # ((\LessThan11~38_combout\ & ((\Add13~53_combout\) # (\Add13~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~53_combout\,
	datab => \LessThan11~38_combout\,
	datac => \Add13~51_combout\,
	datad => \Add13~50_combout\,
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X38_Y21_N20
\Add13~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~55_combout\ = (\LessThan11~38_combout\ & ((\Add13~46_combout\))) # (!\LessThan11~38_combout\ & (\Add12~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~49_combout\,
	datac => \Add13~46_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~55_combout\);

-- Location: LCCOMB_X38_Y21_N30
\Add13~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~56_combout\ = (\LessThan11~38_combout\ & ((\Add13~44_combout\))) # (!\LessThan11~38_combout\ & (\Add12~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~50_combout\,
	datac => \Add13~44_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~56_combout\);

-- Location: LCCOMB_X39_Y23_N30
\Add13~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~57_combout\ = (\LessThan11~38_combout\ & (\Add13~42_combout\)) # (!\LessThan11~38_combout\ & ((\Add12~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~42_combout\,
	datac => \LessThan11~38_combout\,
	datad => \Add12~51_combout\,
	combout => \Add13~57_combout\);

-- Location: LCCOMB_X39_Y23_N28
\Add13~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~58_combout\ = (\LessThan11~38_combout\ & ((\Add13~40_combout\))) # (!\LessThan11~38_combout\ & (\Add12~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~52_combout\,
	datab => \Add13~40_combout\,
	datac => \LessThan11~38_combout\,
	combout => \Add13~58_combout\);

-- Location: LCCOMB_X39_Y21_N30
\Add13~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~59_combout\ = (\LessThan11~38_combout\ & (\Add13~38_combout\)) # (!\LessThan11~38_combout\ & ((\Add12~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~38_combout\,
	datab => \Add12~53_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~59_combout\);

-- Location: LCCOMB_X41_Y23_N20
\Add13~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~24_combout\ = (\LessThan11~38_combout\ & ((\Add13~22_combout\))) # (!\LessThan11~38_combout\ & (\Add12~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~22_combout\,
	datac => \Add13~22_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~24_combout\);

-- Location: LCCOMB_X39_Y23_N20
\Add13~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~25_combout\ = (\LessThan11~38_combout\ & (\Add13~20_combout\)) # (!\LessThan11~38_combout\ & ((\Add12~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~20_combout\,
	datab => \Add12~23_combout\,
	datac => \LessThan11~38_combout\,
	combout => \Add13~25_combout\);

-- Location: LCCOMB_X39_Y22_N10
\Add13~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~26_combout\ = (\LessThan11~38_combout\ & ((\Add13~18_combout\))) # (!\LessThan11~38_combout\ & (\Add12~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~24_combout\,
	datac => \Add13~18_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~26_combout\);

-- Location: LCCOMB_X39_Y22_N0
\Add13~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~27_combout\ = (\LessThan11~38_combout\ & (\Add13~16_combout\)) # (!\LessThan11~38_combout\ & ((\Add12~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~16_combout\,
	datac => \Add12~25_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~27_combout\);

-- Location: LCCOMB_X37_Y21_N0
\Add13~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~28_combout\ = (\LessThan11~38_combout\ & ((\Add13~14_combout\))) # (!\LessThan11~38_combout\ & (\Add12~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datac => \Add13~14_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~28_combout\);

-- Location: LCCOMB_X39_Y24_N8
\Add13~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~29_combout\ = (\LessThan11~38_combout\ & (\Add13~12_combout\)) # (!\LessThan11~38_combout\ & ((\Add12~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datac => \Add12~27_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~29_combout\);

-- Location: LCCOMB_X39_Y24_N10
\Add13~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~30_combout\ = (\LessThan11~38_combout\ & ((\Add13~10_combout\))) # (!\LessThan11~38_combout\ & (\Add12~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~28_combout\,
	datac => \Add13~10_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~30_combout\);

-- Location: LCCOMB_X39_Y24_N0
\Add13~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~31_combout\ = (\LessThan11~38_combout\ & ((\Add13~8_combout\))) # (!\LessThan11~38_combout\ & (\Add12~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~29_combout\,
	datac => \Add13~8_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~31_combout\);

-- Location: LCCOMB_X39_Y24_N2
\Add13~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~32_combout\ = (\LessThan11~38_combout\ & ((\Add13~6_combout\))) # (!\LessThan11~38_combout\ & (\Add12~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~30_combout\,
	datac => \Add13~6_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~32_combout\);

-- Location: LCCOMB_X39_Y24_N4
\Add13~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~33_combout\ = (\Add12~59_combout\) # ((\Add12~47_combout\) # (\Add12~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~59_combout\,
	datac => \Add12~47_combout\,
	datad => \Add12~56_combout\,
	combout => \Add13~33_combout\);

-- Location: LCCOMB_X39_Y24_N6
\Add13~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~34_combout\ = (\Add13~33_combout\ & (((\Add13~4_combout\)))) # (!\Add13~33_combout\ & ((\LessThan11~36_combout\ & ((\Add13~4_combout\))) # (!\LessThan11~36_combout\ & (\Add12~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~31_combout\,
	datab => \Add13~33_combout\,
	datac => \LessThan11~36_combout\,
	datad => \Add13~4_combout\,
	combout => \Add13~34_combout\);

-- Location: LCCOMB_X39_Y24_N12
\Add13~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~35_combout\ = (\Add13~33_combout\ & (((\Add13~2_combout\)))) # (!\Add13~33_combout\ & ((\LessThan11~36_combout\ & ((\Add13~2_combout\))) # (!\LessThan11~36_combout\ & (\Add12~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~32_combout\,
	datab => \Add13~33_combout\,
	datac => \LessThan11~36_combout\,
	datad => \Add13~2_combout\,
	combout => \Add13~35_combout\);

-- Location: LCCOMB_X37_Y21_N6
\Add13~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~36_combout\ = (\Add12~56_combout\ & (((\Add13~0_combout\)))) # (!\Add12~56_combout\ & ((\Add12~59_combout\ & ((\Add13~0_combout\))) # (!\Add12~59_combout\ & (sum_Vpx(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(7),
	datab => \Add12~56_combout\,
	datac => \Add13~0_combout\,
	datad => \Add12~59_combout\,
	combout => \Add13~36_combout\);

-- Location: LCCOMB_X38_Y21_N26
\Add13~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~37_combout\ = (\Add12~47_combout\ & (\Add13~0_combout\)) # (!\Add12~47_combout\ & ((\LessThan11~36_combout\ & (\Add13~0_combout\)) # (!\LessThan11~36_combout\ & ((\Add13~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => \Add12~47_combout\,
	datac => \Add13~36_combout\,
	datad => \LessThan11~36_combout\,
	combout => \Add13~37_combout\);

-- Location: LCCOMB_X42_Y22_N10
\LessThan10~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~41_combout\ = (sum_Vpx(5)) # ((sum_Vpx(4)) # (\LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(5),
	datab => sum_Vpx(4),
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~41_combout\);

-- Location: LCCOMB_X39_Y24_N14
\LessThan12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~2_cout\ = CARRY(\LessThan10~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~41_combout\,
	datad => VCC,
	cout => \LessThan12~2_cout\);

-- Location: LCCOMB_X39_Y24_N16
\LessThan12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~4_cout\ = CARRY((sum_Vpx(6) & (n_y(0) & !\LessThan12~2_cout\)) # (!sum_Vpx(6) & ((n_y(0)) # (!\LessThan12~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(6),
	datab => n_y(0),
	datad => VCC,
	cin => \LessThan12~2_cout\,
	cout => \LessThan12~4_cout\);

-- Location: LCCOMB_X39_Y24_N18
\LessThan12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~6_cout\ = CARRY((\Add13~37_combout\ & ((!\LessThan12~4_cout\) # (!n_y(1)))) # (!\Add13~37_combout\ & (!n_y(1) & !\LessThan12~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~37_combout\,
	datab => n_y(1),
	datad => VCC,
	cin => \LessThan12~4_cout\,
	cout => \LessThan12~6_cout\);

-- Location: LCCOMB_X39_Y24_N20
\LessThan12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~8_cout\ = CARRY((\Add13~35_combout\ & (n_y(2) & !\LessThan12~6_cout\)) # (!\Add13~35_combout\ & ((n_y(2)) # (!\LessThan12~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~35_combout\,
	datab => n_y(2),
	datad => VCC,
	cin => \LessThan12~6_cout\,
	cout => \LessThan12~8_cout\);

-- Location: LCCOMB_X39_Y24_N22
\LessThan12~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~10_cout\ = CARRY((\Add13~34_combout\ & ((!\LessThan12~8_cout\) # (!n_y(3)))) # (!\Add13~34_combout\ & (!n_y(3) & !\LessThan12~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~34_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \LessThan12~8_cout\,
	cout => \LessThan12~10_cout\);

-- Location: LCCOMB_X39_Y24_N24
\LessThan12~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~12_cout\ = CARRY((n_y(4) & ((!\LessThan12~10_cout\) # (!\Add13~32_combout\))) # (!n_y(4) & (!\Add13~32_combout\ & !\LessThan12~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add13~32_combout\,
	datad => VCC,
	cin => \LessThan12~10_cout\,
	cout => \LessThan12~12_cout\);

-- Location: LCCOMB_X39_Y24_N26
\LessThan12~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~14_cout\ = CARRY((n_y(5) & (\Add13~31_combout\ & !\LessThan12~12_cout\)) # (!n_y(5) & ((\Add13~31_combout\) # (!\LessThan12~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add13~31_combout\,
	datad => VCC,
	cin => \LessThan12~12_cout\,
	cout => \LessThan12~14_cout\);

-- Location: LCCOMB_X39_Y24_N28
\LessThan12~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~16_cout\ = CARRY((\Add13~30_combout\ & (n_y(6) & !\LessThan12~14_cout\)) # (!\Add13~30_combout\ & ((n_y(6)) # (!\LessThan12~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~30_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \LessThan12~14_cout\,
	cout => \LessThan12~16_cout\);

-- Location: LCCOMB_X39_Y24_N30
\LessThan12~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~18_cout\ = CARRY((n_y(7) & (\Add13~29_combout\ & !\LessThan12~16_cout\)) # (!n_y(7) & ((\Add13~29_combout\) # (!\LessThan12~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(7),
	datab => \Add13~29_combout\,
	datad => VCC,
	cin => \LessThan12~16_cout\,
	cout => \LessThan12~18_cout\);

-- Location: LCCOMB_X39_Y23_N0
\LessThan12~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~20_cout\ = CARRY((n_y(8) & ((!\LessThan12~18_cout\) # (!\Add13~28_combout\))) # (!n_y(8) & (!\Add13~28_combout\ & !\LessThan12~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add13~28_combout\,
	datad => VCC,
	cin => \LessThan12~18_cout\,
	cout => \LessThan12~20_cout\);

-- Location: LCCOMB_X39_Y23_N2
\LessThan12~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~22_cout\ = CARRY((n_y(9) & (\Add13~27_combout\ & !\LessThan12~20_cout\)) # (!n_y(9) & ((\Add13~27_combout\) # (!\LessThan12~20_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add13~27_combout\,
	datad => VCC,
	cin => \LessThan12~20_cout\,
	cout => \LessThan12~22_cout\);

-- Location: LCCOMB_X39_Y23_N4
\LessThan12~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~24_cout\ = CARRY((n_y(10) & ((!\LessThan12~22_cout\) # (!\Add13~26_combout\))) # (!n_y(10) & (!\Add13~26_combout\ & !\LessThan12~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \Add13~26_combout\,
	datad => VCC,
	cin => \LessThan12~22_cout\,
	cout => \LessThan12~24_cout\);

-- Location: LCCOMB_X39_Y23_N6
\LessThan12~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~26_cout\ = CARRY((n_y(11) & (\Add13~25_combout\ & !\LessThan12~24_cout\)) # (!n_y(11) & ((\Add13~25_combout\) # (!\LessThan12~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \Add13~25_combout\,
	datad => VCC,
	cin => \LessThan12~24_cout\,
	cout => \LessThan12~26_cout\);

-- Location: LCCOMB_X39_Y23_N8
\LessThan12~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~28_cout\ = CARRY((\Add13~24_combout\ & (n_y(12) & !\LessThan12~26_cout\)) # (!\Add13~24_combout\ & ((n_y(12)) # (!\LessThan12~26_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~24_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \LessThan12~26_cout\,
	cout => \LessThan12~28_cout\);

-- Location: LCCOMB_X39_Y23_N10
\LessThan12~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~30_cout\ = CARRY((n_y(13) & (\Add13~59_combout\ & !\LessThan12~28_cout\)) # (!n_y(13) & ((\Add13~59_combout\) # (!\LessThan12~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \Add13~59_combout\,
	datad => VCC,
	cin => \LessThan12~28_cout\,
	cout => \LessThan12~30_cout\);

-- Location: LCCOMB_X39_Y23_N12
\LessThan12~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~32_cout\ = CARRY((n_y(14) & ((!\LessThan12~30_cout\) # (!\Add13~58_combout\))) # (!n_y(14) & (!\Add13~58_combout\ & !\LessThan12~30_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \Add13~58_combout\,
	datad => VCC,
	cin => \LessThan12~30_cout\,
	cout => \LessThan12~32_cout\);

-- Location: LCCOMB_X39_Y23_N14
\LessThan12~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~34_cout\ = CARRY((\Add13~57_combout\ & ((!\LessThan12~32_cout\) # (!n_y(15)))) # (!\Add13~57_combout\ & (!n_y(15) & !\LessThan12~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~57_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \LessThan12~32_cout\,
	cout => \LessThan12~34_cout\);

-- Location: LCCOMB_X39_Y23_N16
\LessThan12~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~36_cout\ = CARRY((\Add13~56_combout\ & (n_y(16) & !\LessThan12~34_cout\)) # (!\Add13~56_combout\ & ((n_y(16)) # (!\LessThan12~34_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~56_combout\,
	datab => n_y(16),
	datad => VCC,
	cin => \LessThan12~34_cout\,
	cout => \LessThan12~36_cout\);

-- Location: LCCOMB_X39_Y23_N18
\LessThan12~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~37_combout\ = (n_y(17) & (!\LessThan12~36_cout\ & \Add13~55_combout\)) # (!n_y(17) & ((\Add13~55_combout\) # (!\LessThan12~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datad => \Add13~55_combout\,
	cin => \LessThan12~36_cout\,
	combout => \LessThan12~37_combout\);

-- Location: LCCOMB_X39_Y23_N22
\LessThan12~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~39_combout\ = (\LessThan12~0_combout\) # ((\LessThan12~37_combout\) # ((\Add13~60_combout\ & \LessThan11~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~60_combout\,
	datab => \LessThan11~38_combout\,
	datac => \LessThan12~0_combout\,
	datad => \LessThan12~37_combout\,
	combout => \LessThan12~39_combout\);

-- Location: LCCOMB_X44_Y25_N0
\Selector101~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\state.calcul_barycentre~q\ & (\LessThan12~39_combout\)) # (!\state.calcul_barycentre~q\ & (((\state.init~q\ & y_int(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~39_combout\,
	datab => \state.init~q\,
	datac => y_int(6),
	datad => \state.calcul_barycentre~q\,
	combout => \Selector101~0_combout\);

-- Location: FF_X44_Y25_N1
\y_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector101~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(6));

-- Location: LCCOMB_X38_Y24_N4
\Add13~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~64_combout\ = (\Add13~60_combout\ & \LessThan11~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add13~60_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~64_combout\);

-- Location: LCCOMB_X37_Y21_N2
\Add13~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~63_combout\ = (\Add13~53_combout\ & \LessThan11~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add13~53_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~63_combout\);

-- Location: LCCOMB_X37_Y21_N12
\Add13~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add13~62_combout\ = (\Add13~51_combout\ & \LessThan11~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~51_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add13~62_combout\);

-- Location: LCCOMB_X38_Y24_N10
\Add14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = (n_y(0) & (sum_Vpx(6) $ (VCC))) # (!n_y(0) & ((sum_Vpx(6)) # (GND)))
-- \Add14~1\ = CARRY((sum_Vpx(6)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(6),
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X38_Y24_N12
\Add14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (n_y(1) & ((\Add13~37_combout\ & (!\Add14~1\)) # (!\Add13~37_combout\ & ((\Add14~1\) # (GND))))) # (!n_y(1) & ((\Add13~37_combout\ & (\Add14~1\ & VCC)) # (!\Add13~37_combout\ & (!\Add14~1\))))
-- \Add14~3\ = CARRY((n_y(1) & ((!\Add14~1\) # (!\Add13~37_combout\))) # (!n_y(1) & (!\Add13~37_combout\ & !\Add14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add13~37_combout\,
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X38_Y24_N14
\Add14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = ((n_y(2) $ (\Add13~35_combout\ $ (\Add14~3\)))) # (GND)
-- \Add14~5\ = CARRY((n_y(2) & (\Add13~35_combout\ & !\Add14~3\)) # (!n_y(2) & ((\Add13~35_combout\) # (!\Add14~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \Add13~35_combout\,
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X38_Y24_N16
\Add14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (\Add13~34_combout\ & ((n_y(3) & (!\Add14~5\)) # (!n_y(3) & (\Add14~5\ & VCC)))) # (!\Add13~34_combout\ & ((n_y(3) & ((\Add14~5\) # (GND))) # (!n_y(3) & (!\Add14~5\))))
-- \Add14~7\ = CARRY((\Add13~34_combout\ & (n_y(3) & !\Add14~5\)) # (!\Add13~34_combout\ & ((n_y(3)) # (!\Add14~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~34_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X38_Y24_N18
\Add14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = ((n_y(4) $ (\Add13~32_combout\ $ (\Add14~7\)))) # (GND)
-- \Add14~9\ = CARRY((n_y(4) & (\Add13~32_combout\ & !\Add14~7\)) # (!n_y(4) & ((\Add13~32_combout\) # (!\Add14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add13~32_combout\,
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X38_Y24_N20
\Add14~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (n_y(5) & ((\Add13~31_combout\ & (!\Add14~9\)) # (!\Add13~31_combout\ & ((\Add14~9\) # (GND))))) # (!n_y(5) & ((\Add13~31_combout\ & (\Add14~9\ & VCC)) # (!\Add13~31_combout\ & (!\Add14~9\))))
-- \Add14~11\ = CARRY((n_y(5) & ((!\Add14~9\) # (!\Add13~31_combout\))) # (!n_y(5) & (!\Add13~31_combout\ & !\Add14~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add13~31_combout\,
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X38_Y24_N22
\Add14~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = ((n_y(6) $ (\Add13~30_combout\ $ (\Add14~11\)))) # (GND)
-- \Add14~13\ = CARRY((n_y(6) & (\Add13~30_combout\ & !\Add14~11\)) # (!n_y(6) & ((\Add13~30_combout\) # (!\Add14~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \Add13~30_combout\,
	datad => VCC,
	cin => \Add14~11\,
	combout => \Add14~12_combout\,
	cout => \Add14~13\);

-- Location: LCCOMB_X38_Y24_N24
\Add14~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = (n_y(7) & ((\Add13~29_combout\ & (!\Add14~13\)) # (!\Add13~29_combout\ & ((\Add14~13\) # (GND))))) # (!n_y(7) & ((\Add13~29_combout\ & (\Add14~13\ & VCC)) # (!\Add13~29_combout\ & (!\Add14~13\))))
-- \Add14~15\ = CARRY((n_y(7) & ((!\Add14~13\) # (!\Add13~29_combout\))) # (!n_y(7) & (!\Add13~29_combout\ & !\Add14~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(7),
	datab => \Add13~29_combout\,
	datad => VCC,
	cin => \Add14~13\,
	combout => \Add14~14_combout\,
	cout => \Add14~15\);

-- Location: LCCOMB_X38_Y24_N26
\Add14~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~16_combout\ = ((\Add13~28_combout\ $ (n_y(8) $ (\Add14~15\)))) # (GND)
-- \Add14~17\ = CARRY((\Add13~28_combout\ & ((!\Add14~15\) # (!n_y(8)))) # (!\Add13~28_combout\ & (!n_y(8) & !\Add14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~28_combout\,
	datab => n_y(8),
	datad => VCC,
	cin => \Add14~15\,
	combout => \Add14~16_combout\,
	cout => \Add14~17\);

-- Location: LCCOMB_X38_Y24_N28
\Add14~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~18_combout\ = (\Add13~27_combout\ & ((n_y(9) & (!\Add14~17\)) # (!n_y(9) & (\Add14~17\ & VCC)))) # (!\Add13~27_combout\ & ((n_y(9) & ((\Add14~17\) # (GND))) # (!n_y(9) & (!\Add14~17\))))
-- \Add14~19\ = CARRY((\Add13~27_combout\ & (n_y(9) & !\Add14~17\)) # (!\Add13~27_combout\ & ((n_y(9)) # (!\Add14~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~27_combout\,
	datab => n_y(9),
	datad => VCC,
	cin => \Add14~17\,
	combout => \Add14~18_combout\,
	cout => \Add14~19\);

-- Location: LCCOMB_X38_Y24_N30
\Add14~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~20_combout\ = ((n_y(10) $ (\Add13~26_combout\ $ (\Add14~19\)))) # (GND)
-- \Add14~21\ = CARRY((n_y(10) & (\Add13~26_combout\ & !\Add14~19\)) # (!n_y(10) & ((\Add13~26_combout\) # (!\Add14~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \Add13~26_combout\,
	datad => VCC,
	cin => \Add14~19\,
	combout => \Add14~20_combout\,
	cout => \Add14~21\);

-- Location: LCCOMB_X38_Y23_N0
\Add14~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~22_combout\ = (\Add13~25_combout\ & ((n_y(11) & (!\Add14~21\)) # (!n_y(11) & (\Add14~21\ & VCC)))) # (!\Add13~25_combout\ & ((n_y(11) & ((\Add14~21\) # (GND))) # (!n_y(11) & (!\Add14~21\))))
-- \Add14~23\ = CARRY((\Add13~25_combout\ & (n_y(11) & !\Add14~21\)) # (!\Add13~25_combout\ & ((n_y(11)) # (!\Add14~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~25_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \Add14~21\,
	combout => \Add14~22_combout\,
	cout => \Add14~23\);

-- Location: LCCOMB_X38_Y23_N2
\Add14~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~24_combout\ = ((\Add13~24_combout\ $ (n_y(12) $ (\Add14~23\)))) # (GND)
-- \Add14~25\ = CARRY((\Add13~24_combout\ & ((!\Add14~23\) # (!n_y(12)))) # (!\Add13~24_combout\ & (!n_y(12) & !\Add14~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~24_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \Add14~23\,
	combout => \Add14~24_combout\,
	cout => \Add14~25\);

-- Location: LCCOMB_X38_Y23_N4
\Add14~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~40_combout\ = (\Add13~59_combout\ & ((n_y(13) & (!\Add14~25\)) # (!n_y(13) & (\Add14~25\ & VCC)))) # (!\Add13~59_combout\ & ((n_y(13) & ((\Add14~25\) # (GND))) # (!n_y(13) & (!\Add14~25\))))
-- \Add14~41\ = CARRY((\Add13~59_combout\ & (n_y(13) & !\Add14~25\)) # (!\Add13~59_combout\ & ((n_y(13)) # (!\Add14~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~59_combout\,
	datab => n_y(13),
	datad => VCC,
	cin => \Add14~25\,
	combout => \Add14~40_combout\,
	cout => \Add14~41\);

-- Location: LCCOMB_X38_Y23_N6
\Add14~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~42_combout\ = ((n_y(14) $ (\Add13~58_combout\ $ (\Add14~41\)))) # (GND)
-- \Add14~43\ = CARRY((n_y(14) & (\Add13~58_combout\ & !\Add14~41\)) # (!n_y(14) & ((\Add13~58_combout\) # (!\Add14~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \Add13~58_combout\,
	datad => VCC,
	cin => \Add14~41\,
	combout => \Add14~42_combout\,
	cout => \Add14~43\);

-- Location: LCCOMB_X38_Y23_N8
\Add14~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~44_combout\ = (\Add13~57_combout\ & ((n_y(15) & (!\Add14~43\)) # (!n_y(15) & (\Add14~43\ & VCC)))) # (!\Add13~57_combout\ & ((n_y(15) & ((\Add14~43\) # (GND))) # (!n_y(15) & (!\Add14~43\))))
-- \Add14~45\ = CARRY((\Add13~57_combout\ & (n_y(15) & !\Add14~43\)) # (!\Add13~57_combout\ & ((n_y(15)) # (!\Add14~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~57_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \Add14~43\,
	combout => \Add14~44_combout\,
	cout => \Add14~45\);

-- Location: LCCOMB_X38_Y23_N10
\Add14~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~46_combout\ = ((n_y(16) $ (\Add13~56_combout\ $ (\Add14~45\)))) # (GND)
-- \Add14~47\ = CARRY((n_y(16) & (\Add13~56_combout\ & !\Add14~45\)) # (!n_y(16) & ((\Add13~56_combout\) # (!\Add14~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \Add13~56_combout\,
	datad => VCC,
	cin => \Add14~45\,
	combout => \Add14~46_combout\,
	cout => \Add14~47\);

-- Location: LCCOMB_X38_Y23_N12
\Add14~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~48_combout\ = (n_y(17) & ((\Add13~55_combout\ & (!\Add14~47\)) # (!\Add13~55_combout\ & ((\Add14~47\) # (GND))))) # (!n_y(17) & ((\Add13~55_combout\ & (\Add14~47\ & VCC)) # (!\Add13~55_combout\ & (!\Add14~47\))))
-- \Add14~49\ = CARRY((n_y(17) & ((!\Add14~47\) # (!\Add13~55_combout\))) # (!n_y(17) & (!\Add13~55_combout\ & !\Add14~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datab => \Add13~55_combout\,
	datad => VCC,
	cin => \Add14~47\,
	combout => \Add14~48_combout\,
	cout => \Add14~49\);

-- Location: LCCOMB_X38_Y23_N14
\Add14~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~51_combout\ = (\Add13~50_combout\ & ((GND) # (!\Add14~49\))) # (!\Add13~50_combout\ & (\Add14~49\ $ (GND)))
-- \Add14~52\ = CARRY((\Add13~50_combout\) # (!\Add14~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~50_combout\,
	datad => VCC,
	cin => \Add14~49\,
	combout => \Add14~51_combout\,
	cout => \Add14~52\);

-- Location: LCCOMB_X38_Y23_N16
\Add14~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~53_combout\ = (\Add13~62_combout\ & (\Add14~52\ & VCC)) # (!\Add13~62_combout\ & (!\Add14~52\))
-- \Add14~54\ = CARRY((!\Add13~62_combout\ & !\Add14~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~62_combout\,
	datad => VCC,
	cin => \Add14~52\,
	combout => \Add14~53_combout\,
	cout => \Add14~54\);

-- Location: LCCOMB_X38_Y23_N18
\Add14~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~59_combout\ = (\Add13~63_combout\ & ((GND) # (!\Add14~54\))) # (!\Add13~63_combout\ & (\Add14~54\ $ (GND)))
-- \Add14~60\ = CARRY((\Add13~63_combout\) # (!\Add14~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~63_combout\,
	datad => VCC,
	cin => \Add14~54\,
	combout => \Add14~59_combout\,
	cout => \Add14~60\);

-- Location: LCCOMB_X37_Y23_N30
\Add14~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~61_combout\ = (\Add14~59_combout\ & ((\Add13~64_combout\) # ((\LessThan12~37_combout\) # (\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~64_combout\,
	datab => \LessThan12~37_combout\,
	datac => \LessThan12~0_combout\,
	datad => \Add14~59_combout\,
	combout => \Add14~61_combout\);

-- Location: LCCOMB_X38_Y23_N28
\Add14~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~50_combout\ = (\LessThan12~39_combout\ & (\Add14~48_combout\)) # (!\LessThan12~39_combout\ & ((\Add13~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~48_combout\,
	datac => \Add13~55_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~50_combout\);

-- Location: LCCOMB_X37_Y23_N28
\LessThan13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (\Add14~50_combout\) # ((\LessThan12~39_combout\ & ((\Add14~53_combout\) # (\Add14~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~53_combout\,
	datab => \LessThan12~39_combout\,
	datac => \Add14~51_combout\,
	datad => \Add14~50_combout\,
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X38_Y23_N20
\Add14~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~62_combout\ = \Add14~60\ $ (!\Add13~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add13~64_combout\,
	cin => \Add14~60\,
	combout => \Add14~62_combout\);

-- Location: LCCOMB_X38_Y23_N30
\Add14~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~64_combout\ = (\Add14~62_combout\ & ((\LessThan12~37_combout\) # ((\Add13~64_combout\) # (\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~37_combout\,
	datab => \Add13~64_combout\,
	datac => \LessThan12~0_combout\,
	datad => \Add14~62_combout\,
	combout => \Add14~64_combout\);

-- Location: LCCOMB_X38_Y23_N26
\Add14~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~55_combout\ = (\LessThan12~39_combout\ & (\Add14~46_combout\)) # (!\LessThan12~39_combout\ & ((\Add13~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~46_combout\,
	datac => \Add13~56_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~55_combout\);

-- Location: LCCOMB_X37_Y23_N26
\Add14~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~56_combout\ = (\LessThan12~39_combout\ & ((\Add14~44_combout\))) # (!\LessThan12~39_combout\ & (\Add13~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~57_combout\,
	datac => \Add14~44_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~56_combout\);

-- Location: LCCOMB_X37_Y23_N20
\Add14~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~57_combout\ = (\LessThan12~39_combout\ & (\Add14~42_combout\)) # (!\LessThan12~39_combout\ & ((\Add13~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~42_combout\,
	datac => \Add13~58_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~57_combout\);

-- Location: LCCOMB_X38_Y23_N24
\Add14~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~58_combout\ = (\LessThan12~39_combout\ & ((\Add14~40_combout\))) # (!\LessThan12~39_combout\ & (\Add13~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~59_combout\,
	datac => \Add14~40_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~58_combout\);

-- Location: LCCOMB_X38_Y23_N22
\Add14~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~26_combout\ = (\LessThan12~39_combout\ & (\Add14~24_combout\)) # (!\LessThan12~39_combout\ & ((\Add13~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~24_combout\,
	datac => \Add13~24_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~26_combout\);

-- Location: LCCOMB_X36_Y23_N24
\Add14~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~27_combout\ = (\LessThan12~39_combout\ & ((\Add14~22_combout\))) # (!\LessThan12~39_combout\ & (\Add13~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~25_combout\,
	datac => \Add14~22_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~27_combout\);

-- Location: LCCOMB_X37_Y21_N24
\Add14~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~28_combout\ = (\LessThan12~39_combout\ & ((\Add14~20_combout\))) # (!\LessThan12~39_combout\ & (\Add13~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~26_combout\,
	datac => \Add14~20_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~28_combout\);

-- Location: LCCOMB_X36_Y24_N0
\Add14~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~29_combout\ = (\LessThan12~39_combout\ & ((\Add14~18_combout\))) # (!\LessThan12~39_combout\ & (\Add13~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~27_combout\,
	datac => \Add14~18_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~29_combout\);

-- Location: LCCOMB_X37_Y21_N26
\Add14~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~30_combout\ = (\LessThan12~39_combout\ & ((\Add14~16_combout\))) # (!\LessThan12~39_combout\ & (\Add13~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~28_combout\,
	datac => \Add14~16_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~30_combout\);

-- Location: LCCOMB_X38_Y24_N8
\Add14~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~31_combout\ = (\LessThan12~39_combout\ & ((\Add14~14_combout\))) # (!\LessThan12~39_combout\ & (\Add13~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~29_combout\,
	datac => \LessThan12~39_combout\,
	datad => \Add14~14_combout\,
	combout => \Add14~31_combout\);

-- Location: LCCOMB_X38_Y24_N2
\Add14~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~32_combout\ = (\LessThan12~39_combout\ & (\Add14~12_combout\)) # (!\LessThan12~39_combout\ & ((\Add13~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~12_combout\,
	datab => \Add13~30_combout\,
	datac => \LessThan12~39_combout\,
	combout => \Add14~32_combout\);

-- Location: LCCOMB_X37_Y24_N12
\Add14~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~33_combout\ = (\LessThan12~39_combout\ & ((\Add14~10_combout\))) # (!\LessThan12~39_combout\ & (\Add13~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~31_combout\,
	datac => \Add14~10_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~33_combout\);

-- Location: LCCOMB_X38_Y24_N0
\Add14~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~34_combout\ = (\LessThan12~39_combout\ & (\Add14~8_combout\)) # (!\LessThan12~39_combout\ & ((\Add13~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~8_combout\,
	datac => \LessThan12~39_combout\,
	datad => \Add13~32_combout\,
	combout => \Add14~34_combout\);

-- Location: LCCOMB_X37_Y24_N2
\Add14~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~35_combout\ = (\LessThan12~39_combout\ & ((\Add14~6_combout\))) # (!\LessThan12~39_combout\ & (\Add13~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~34_combout\,
	datab => \Add14~6_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~35_combout\);

-- Location: LCCOMB_X37_Y24_N4
\Add14~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~36_combout\ = (\LessThan12~39_combout\ & ((\Add14~4_combout\))) # (!\LessThan12~39_combout\ & (\Add13~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~35_combout\,
	datac => \Add14~4_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~36_combout\);

-- Location: LCCOMB_X37_Y24_N10
\Add14~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~37_combout\ = (\LessThan12~39_combout\ & ((\Add14~2_combout\))) # (!\LessThan12~39_combout\ & (\Add13~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~37_combout\,
	datac => \Add14~2_combout\,
	datad => \LessThan12~39_combout\,
	combout => \Add14~37_combout\);

-- Location: LCCOMB_X38_Y24_N6
\Add14~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~38_combout\ = (\Add13~60_combout\ & ((\LessThan11~38_combout\ & (\Add14~0_combout\)) # (!\LessThan11~38_combout\ & ((sum_Vpx(6)))))) # (!\Add13~60_combout\ & (((sum_Vpx(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datab => sum_Vpx(6),
	datac => \Add13~60_combout\,
	datad => \LessThan11~38_combout\,
	combout => \Add14~38_combout\);

-- Location: LCCOMB_X39_Y23_N24
\Add14~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~39_combout\ = (\LessThan12~0_combout\ & (\Add14~0_combout\)) # (!\LessThan12~0_combout\ & ((\LessThan12~37_combout\ & (\Add14~0_combout\)) # (!\LessThan12~37_combout\ & ((\Add14~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datab => \Add14~38_combout\,
	datac => \LessThan12~0_combout\,
	datad => \LessThan12~37_combout\,
	combout => \Add14~39_combout\);

-- Location: LCCOMB_X36_Y22_N4
\LessThan10~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~42_combout\ = (\LessThan10~0_combout\) # (sum_Vpx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan10~0_combout\,
	datad => sum_Vpx(4),
	combout => \LessThan10~42_combout\);

-- Location: LCCOMB_X37_Y24_N14
\LessThan13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~2_cout\ = CARRY(\LessThan10~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~42_combout\,
	datad => VCC,
	cout => \LessThan13~2_cout\);

-- Location: LCCOMB_X37_Y24_N16
\LessThan13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~4_cout\ = CARRY((n_y(0) & ((!\LessThan13~2_cout\) # (!sum_Vpx(5)))) # (!n_y(0) & (!sum_Vpx(5) & !\LessThan13~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(5),
	datad => VCC,
	cin => \LessThan13~2_cout\,
	cout => \LessThan13~4_cout\);

-- Location: LCCOMB_X37_Y24_N18
\LessThan13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~6_cout\ = CARRY((n_y(1) & (\Add14~39_combout\ & !\LessThan13~4_cout\)) # (!n_y(1) & ((\Add14~39_combout\) # (!\LessThan13~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add14~39_combout\,
	datad => VCC,
	cin => \LessThan13~4_cout\,
	cout => \LessThan13~6_cout\);

-- Location: LCCOMB_X37_Y24_N20
\LessThan13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~8_cout\ = CARRY((\Add14~37_combout\ & (n_y(2) & !\LessThan13~6_cout\)) # (!\Add14~37_combout\ & ((n_y(2)) # (!\LessThan13~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~37_combout\,
	datab => n_y(2),
	datad => VCC,
	cin => \LessThan13~6_cout\,
	cout => \LessThan13~8_cout\);

-- Location: LCCOMB_X37_Y24_N22
\LessThan13~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~10_cout\ = CARRY((n_y(3) & (\Add14~36_combout\ & !\LessThan13~8_cout\)) # (!n_y(3) & ((\Add14~36_combout\) # (!\LessThan13~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => \Add14~36_combout\,
	datad => VCC,
	cin => \LessThan13~8_cout\,
	cout => \LessThan13~10_cout\);

-- Location: LCCOMB_X37_Y24_N24
\LessThan13~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~12_cout\ = CARRY((n_y(4) & ((!\LessThan13~10_cout\) # (!\Add14~35_combout\))) # (!n_y(4) & (!\Add14~35_combout\ & !\LessThan13~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add14~35_combout\,
	datad => VCC,
	cin => \LessThan13~10_cout\,
	cout => \LessThan13~12_cout\);

-- Location: LCCOMB_X37_Y24_N26
\LessThan13~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~14_cout\ = CARRY((n_y(5) & (\Add14~34_combout\ & !\LessThan13~12_cout\)) # (!n_y(5) & ((\Add14~34_combout\) # (!\LessThan13~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add14~34_combout\,
	datad => VCC,
	cin => \LessThan13~12_cout\,
	cout => \LessThan13~14_cout\);

-- Location: LCCOMB_X37_Y24_N28
\LessThan13~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~16_cout\ = CARRY((\Add14~33_combout\ & (n_y(6) & !\LessThan13~14_cout\)) # (!\Add14~33_combout\ & ((n_y(6)) # (!\LessThan13~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~33_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \LessThan13~14_cout\,
	cout => \LessThan13~16_cout\);

-- Location: LCCOMB_X37_Y24_N30
\LessThan13~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~18_cout\ = CARRY((\Add14~32_combout\ & ((!\LessThan13~16_cout\) # (!n_y(7)))) # (!\Add14~32_combout\ & (!n_y(7) & !\LessThan13~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~32_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan13~16_cout\,
	cout => \LessThan13~18_cout\);

-- Location: LCCOMB_X37_Y23_N0
\LessThan13~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~20_cout\ = CARRY((n_y(8) & ((!\LessThan13~18_cout\) # (!\Add14~31_combout\))) # (!n_y(8) & (!\Add14~31_combout\ & !\LessThan13~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add14~31_combout\,
	datad => VCC,
	cin => \LessThan13~18_cout\,
	cout => \LessThan13~20_cout\);

-- Location: LCCOMB_X37_Y23_N2
\LessThan13~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~22_cout\ = CARRY((\Add14~30_combout\ & ((!\LessThan13~20_cout\) # (!n_y(9)))) # (!\Add14~30_combout\ & (!n_y(9) & !\LessThan13~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~30_combout\,
	datab => n_y(9),
	datad => VCC,
	cin => \LessThan13~20_cout\,
	cout => \LessThan13~22_cout\);

-- Location: LCCOMB_X37_Y23_N4
\LessThan13~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~24_cout\ = CARRY((\Add14~29_combout\ & (n_y(10) & !\LessThan13~22_cout\)) # (!\Add14~29_combout\ & ((n_y(10)) # (!\LessThan13~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~29_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \LessThan13~22_cout\,
	cout => \LessThan13~24_cout\);

-- Location: LCCOMB_X37_Y23_N6
\LessThan13~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~26_cout\ = CARRY((n_y(11) & (\Add14~28_combout\ & !\LessThan13~24_cout\)) # (!n_y(11) & ((\Add14~28_combout\) # (!\LessThan13~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \Add14~28_combout\,
	datad => VCC,
	cin => \LessThan13~24_cout\,
	cout => \LessThan13~26_cout\);

-- Location: LCCOMB_X37_Y23_N8
\LessThan13~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~28_cout\ = CARRY((n_y(12) & ((!\LessThan13~26_cout\) # (!\Add14~27_combout\))) # (!n_y(12) & (!\Add14~27_combout\ & !\LessThan13~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \Add14~27_combout\,
	datad => VCC,
	cin => \LessThan13~26_cout\,
	cout => \LessThan13~28_cout\);

-- Location: LCCOMB_X37_Y23_N10
\LessThan13~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~30_cout\ = CARRY((n_y(13) & (\Add14~26_combout\ & !\LessThan13~28_cout\)) # (!n_y(13) & ((\Add14~26_combout\) # (!\LessThan13~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \Add14~26_combout\,
	datad => VCC,
	cin => \LessThan13~28_cout\,
	cout => \LessThan13~30_cout\);

-- Location: LCCOMB_X37_Y23_N12
\LessThan13~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~32_cout\ = CARRY((\Add14~58_combout\ & (n_y(14) & !\LessThan13~30_cout\)) # (!\Add14~58_combout\ & ((n_y(14)) # (!\LessThan13~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~58_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \LessThan13~30_cout\,
	cout => \LessThan13~32_cout\);

-- Location: LCCOMB_X37_Y23_N14
\LessThan13~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~34_cout\ = CARRY((n_y(15) & (\Add14~57_combout\ & !\LessThan13~32_cout\)) # (!n_y(15) & ((\Add14~57_combout\) # (!\LessThan13~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datab => \Add14~57_combout\,
	datad => VCC,
	cin => \LessThan13~32_cout\,
	cout => \LessThan13~34_cout\);

-- Location: LCCOMB_X37_Y23_N16
\LessThan13~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~36_cout\ = CARRY((\Add14~56_combout\ & (n_y(16) & !\LessThan13~34_cout\)) # (!\Add14~56_combout\ & ((n_y(16)) # (!\LessThan13~34_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~56_combout\,
	datab => n_y(16),
	datad => VCC,
	cin => \LessThan13~34_cout\,
	cout => \LessThan13~36_cout\);

-- Location: LCCOMB_X37_Y23_N18
\LessThan13~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~37_combout\ = (n_y(17) & (!\LessThan13~36_cout\ & \Add14~55_combout\)) # (!n_y(17) & ((\Add14~55_combout\) # (!\LessThan13~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datad => \Add14~55_combout\,
	cin => \LessThan13~36_cout\,
	combout => \LessThan13~37_combout\);

-- Location: LCCOMB_X37_Y23_N24
\LessThan13~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan13~39_combout\ = (\Add14~61_combout\) # ((\LessThan13~0_combout\) # ((\Add14~64_combout\) # (\LessThan13~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~61_combout\,
	datab => \LessThan13~0_combout\,
	datac => \Add14~64_combout\,
	datad => \LessThan13~37_combout\,
	combout => \LessThan13~39_combout\);

-- Location: LCCOMB_X44_Y25_N2
\Selector102~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\state.calcul_barycentre~q\ & (\LessThan13~39_combout\)) # (!\state.calcul_barycentre~q\ & (((\state.init~q\ & y_int(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~39_combout\,
	datab => \state.init~q\,
	datac => y_int(5),
	datad => \state.calcul_barycentre~q\,
	combout => \Selector102~0_combout\);

-- Location: FF_X44_Y25_N3
\y_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(5));

-- Location: LCCOMB_X39_Y23_N26
\Add14~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~66_combout\ = (\Add14~53_combout\ & ((\Add13~64_combout\) # ((\LessThan12~0_combout\) # (\LessThan12~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~64_combout\,
	datab => \LessThan12~0_combout\,
	datac => \Add14~53_combout\,
	datad => \LessThan12~37_combout\,
	combout => \Add14~66_combout\);

-- Location: LCCOMB_X36_Y23_N28
\Add14~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add14~65_combout\ = (\Add14~51_combout\ & ((\Add13~64_combout\) # ((\LessThan12~0_combout\) # (\LessThan12~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~64_combout\,
	datab => \LessThan12~0_combout\,
	datac => \Add14~51_combout\,
	datad => \LessThan12~37_combout\,
	combout => \Add14~65_combout\);

-- Location: LCCOMB_X36_Y24_N10
\Add15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = (n_y(0) & (sum_Vpx(5) $ (VCC))) # (!n_y(0) & ((sum_Vpx(5)) # (GND)))
-- \Add15~1\ = CARRY((sum_Vpx(5)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(5),
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X36_Y24_N12
\Add15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (n_y(1) & ((\Add14~39_combout\ & (!\Add15~1\)) # (!\Add14~39_combout\ & ((\Add15~1\) # (GND))))) # (!n_y(1) & ((\Add14~39_combout\ & (\Add15~1\ & VCC)) # (!\Add14~39_combout\ & (!\Add15~1\))))
-- \Add15~3\ = CARRY((n_y(1) & ((!\Add15~1\) # (!\Add14~39_combout\))) # (!n_y(1) & (!\Add14~39_combout\ & !\Add15~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add14~39_combout\,
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X36_Y24_N14
\Add15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = ((n_y(2) $ (\Add14~37_combout\ $ (\Add15~3\)))) # (GND)
-- \Add15~5\ = CARRY((n_y(2) & (\Add14~37_combout\ & !\Add15~3\)) # (!n_y(2) & ((\Add14~37_combout\) # (!\Add15~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \Add14~37_combout\,
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X36_Y24_N16
\Add15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (\Add14~36_combout\ & ((n_y(3) & (!\Add15~5\)) # (!n_y(3) & (\Add15~5\ & VCC)))) # (!\Add14~36_combout\ & ((n_y(3) & ((\Add15~5\) # (GND))) # (!n_y(3) & (!\Add15~5\))))
-- \Add15~7\ = CARRY((\Add14~36_combout\ & (n_y(3) & !\Add15~5\)) # (!\Add14~36_combout\ & ((n_y(3)) # (!\Add15~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~36_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X36_Y24_N18
\Add15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = ((\Add14~35_combout\ $ (n_y(4) $ (\Add15~7\)))) # (GND)
-- \Add15~9\ = CARRY((\Add14~35_combout\ & ((!\Add15~7\) # (!n_y(4)))) # (!\Add14~35_combout\ & (!n_y(4) & !\Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~35_combout\,
	datab => n_y(4),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X36_Y24_N20
\Add15~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (n_y(5) & ((\Add14~34_combout\ & (!\Add15~9\)) # (!\Add14~34_combout\ & ((\Add15~9\) # (GND))))) # (!n_y(5) & ((\Add14~34_combout\ & (\Add15~9\ & VCC)) # (!\Add14~34_combout\ & (!\Add15~9\))))
-- \Add15~11\ = CARRY((n_y(5) & ((!\Add15~9\) # (!\Add14~34_combout\))) # (!n_y(5) & (!\Add14~34_combout\ & !\Add15~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add14~34_combout\,
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X36_Y24_N22
\Add15~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = ((n_y(6) $ (\Add14~33_combout\ $ (\Add15~11\)))) # (GND)
-- \Add15~13\ = CARRY((n_y(6) & (\Add14~33_combout\ & !\Add15~11\)) # (!n_y(6) & ((\Add14~33_combout\) # (!\Add15~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \Add14~33_combout\,
	datad => VCC,
	cin => \Add15~11\,
	combout => \Add15~12_combout\,
	cout => \Add15~13\);

-- Location: LCCOMB_X36_Y24_N24
\Add15~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = (\Add14~32_combout\ & ((n_y(7) & (!\Add15~13\)) # (!n_y(7) & (\Add15~13\ & VCC)))) # (!\Add14~32_combout\ & ((n_y(7) & ((\Add15~13\) # (GND))) # (!n_y(7) & (!\Add15~13\))))
-- \Add15~15\ = CARRY((\Add14~32_combout\ & (n_y(7) & !\Add15~13\)) # (!\Add14~32_combout\ & ((n_y(7)) # (!\Add15~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~32_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \Add15~13\,
	combout => \Add15~14_combout\,
	cout => \Add15~15\);

-- Location: LCCOMB_X36_Y24_N26
\Add15~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~16_combout\ = ((n_y(8) $ (\Add14~31_combout\ $ (\Add15~15\)))) # (GND)
-- \Add15~17\ = CARRY((n_y(8) & (\Add14~31_combout\ & !\Add15~15\)) # (!n_y(8) & ((\Add14~31_combout\) # (!\Add15~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add14~31_combout\,
	datad => VCC,
	cin => \Add15~15\,
	combout => \Add15~16_combout\,
	cout => \Add15~17\);

-- Location: LCCOMB_X36_Y24_N28
\Add15~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~18_combout\ = (n_y(9) & ((\Add14~30_combout\ & (!\Add15~17\)) # (!\Add14~30_combout\ & ((\Add15~17\) # (GND))))) # (!n_y(9) & ((\Add14~30_combout\ & (\Add15~17\ & VCC)) # (!\Add14~30_combout\ & (!\Add15~17\))))
-- \Add15~19\ = CARRY((n_y(9) & ((!\Add15~17\) # (!\Add14~30_combout\))) # (!n_y(9) & (!\Add14~30_combout\ & !\Add15~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add14~30_combout\,
	datad => VCC,
	cin => \Add15~17\,
	combout => \Add15~18_combout\,
	cout => \Add15~19\);

-- Location: LCCOMB_X36_Y24_N30
\Add15~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~20_combout\ = ((n_y(10) $ (\Add14~29_combout\ $ (\Add15~19\)))) # (GND)
-- \Add15~21\ = CARRY((n_y(10) & (\Add14~29_combout\ & !\Add15~19\)) # (!n_y(10) & ((\Add14~29_combout\) # (!\Add15~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \Add14~29_combout\,
	datad => VCC,
	cin => \Add15~19\,
	combout => \Add15~20_combout\,
	cout => \Add15~21\);

-- Location: LCCOMB_X36_Y23_N0
\Add15~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~22_combout\ = (n_y(11) & ((\Add14~28_combout\ & (!\Add15~21\)) # (!\Add14~28_combout\ & ((\Add15~21\) # (GND))))) # (!n_y(11) & ((\Add14~28_combout\ & (\Add15~21\ & VCC)) # (!\Add14~28_combout\ & (!\Add15~21\))))
-- \Add15~23\ = CARRY((n_y(11) & ((!\Add15~21\) # (!\Add14~28_combout\))) # (!n_y(11) & (!\Add14~28_combout\ & !\Add15~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \Add14~28_combout\,
	datad => VCC,
	cin => \Add15~21\,
	combout => \Add15~22_combout\,
	cout => \Add15~23\);

-- Location: LCCOMB_X36_Y23_N2
\Add15~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~24_combout\ = ((n_y(12) $ (\Add14~27_combout\ $ (\Add15~23\)))) # (GND)
-- \Add15~25\ = CARRY((n_y(12) & (\Add14~27_combout\ & !\Add15~23\)) # (!n_y(12) & ((\Add14~27_combout\) # (!\Add15~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \Add14~27_combout\,
	datad => VCC,
	cin => \Add15~23\,
	combout => \Add15~24_combout\,
	cout => \Add15~25\);

-- Location: LCCOMB_X36_Y23_N4
\Add15~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~26_combout\ = (n_y(13) & ((\Add14~26_combout\ & (!\Add15~25\)) # (!\Add14~26_combout\ & ((\Add15~25\) # (GND))))) # (!n_y(13) & ((\Add14~26_combout\ & (\Add15~25\ & VCC)) # (!\Add14~26_combout\ & (!\Add15~25\))))
-- \Add15~27\ = CARRY((n_y(13) & ((!\Add15~25\) # (!\Add14~26_combout\))) # (!n_y(13) & (!\Add14~26_combout\ & !\Add15~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \Add14~26_combout\,
	datad => VCC,
	cin => \Add15~25\,
	combout => \Add15~26_combout\,
	cout => \Add15~27\);

-- Location: LCCOMB_X36_Y23_N6
\Add15~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~28_combout\ = ((\Add14~58_combout\ $ (n_y(14) $ (\Add15~27\)))) # (GND)
-- \Add15~29\ = CARRY((\Add14~58_combout\ & ((!\Add15~27\) # (!n_y(14)))) # (!\Add14~58_combout\ & (!n_y(14) & !\Add15~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~58_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \Add15~27\,
	combout => \Add15~28_combout\,
	cout => \Add15~29\);

-- Location: LCCOMB_X36_Y23_N8
\Add15~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~30_combout\ = (\Add14~57_combout\ & ((n_y(15) & (!\Add15~29\)) # (!n_y(15) & (\Add15~29\ & VCC)))) # (!\Add14~57_combout\ & ((n_y(15) & ((\Add15~29\) # (GND))) # (!n_y(15) & (!\Add15~29\))))
-- \Add15~31\ = CARRY((\Add14~57_combout\ & (n_y(15) & !\Add15~29\)) # (!\Add14~57_combout\ & ((n_y(15)) # (!\Add15~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~57_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \Add15~29\,
	combout => \Add15~30_combout\,
	cout => \Add15~31\);

-- Location: LCCOMB_X36_Y23_N10
\Add15~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~32_combout\ = ((n_y(16) $ (\Add14~56_combout\ $ (\Add15~31\)))) # (GND)
-- \Add15~33\ = CARRY((n_y(16) & (\Add14~56_combout\ & !\Add15~31\)) # (!n_y(16) & ((\Add14~56_combout\) # (!\Add15~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \Add14~56_combout\,
	datad => VCC,
	cin => \Add15~31\,
	combout => \Add15~32_combout\,
	cout => \Add15~33\);

-- Location: LCCOMB_X36_Y23_N12
\Add15~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~34_combout\ = (\Add14~55_combout\ & ((n_y(17) & (!\Add15~33\)) # (!n_y(17) & (\Add15~33\ & VCC)))) # (!\Add14~55_combout\ & ((n_y(17) & ((\Add15~33\) # (GND))) # (!n_y(17) & (!\Add15~33\))))
-- \Add15~35\ = CARRY((\Add14~55_combout\ & (n_y(17) & !\Add15~33\)) # (!\Add14~55_combout\ & ((n_y(17)) # (!\Add15~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~55_combout\,
	datab => n_y(17),
	datad => VCC,
	cin => \Add15~33\,
	combout => \Add15~34_combout\,
	cout => \Add15~35\);

-- Location: LCCOMB_X36_Y23_N14
\Add15~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~36_combout\ = (\Add14~50_combout\ & ((GND) # (!\Add15~35\))) # (!\Add14~50_combout\ & (\Add15~35\ $ (GND)))
-- \Add15~37\ = CARRY((\Add14~50_combout\) # (!\Add15~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add14~50_combout\,
	datad => VCC,
	cin => \Add15~35\,
	combout => \Add15~36_combout\,
	cout => \Add15~37\);

-- Location: LCCOMB_X36_Y23_N16
\Add15~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~38_combout\ = (\Add14~65_combout\ & (\Add15~37\ & VCC)) # (!\Add14~65_combout\ & (!\Add15~37\))
-- \Add15~39\ = CARRY((!\Add14~65_combout\ & !\Add15~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add14~65_combout\,
	datad => VCC,
	cin => \Add15~37\,
	combout => \Add15~38_combout\,
	cout => \Add15~39\);

-- Location: LCCOMB_X36_Y23_N18
\Add15~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~40_combout\ = (\Add14~66_combout\ & ((GND) # (!\Add15~39\))) # (!\Add14~66_combout\ & (\Add15~39\ $ (GND)))
-- \Add15~41\ = CARRY((\Add14~66_combout\) # (!\Add15~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~66_combout\,
	datad => VCC,
	cin => \Add15~39\,
	combout => \Add15~40_combout\,
	cout => \Add15~41\);

-- Location: LCCOMB_X36_Y23_N20
\Add15~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~42_combout\ = (\Add14~61_combout\ & (\Add15~41\ & VCC)) # (!\Add14~61_combout\ & (!\Add15~41\))
-- \Add15~43\ = CARRY((!\Add14~61_combout\ & !\Add15~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~61_combout\,
	datad => VCC,
	cin => \Add15~41\,
	combout => \Add15~42_combout\,
	cout => \Add15~43\);

-- Location: LCCOMB_X36_Y23_N22
\Add15~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add15~44_combout\ = \Add15~43\ $ (\Add14~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add14~64_combout\,
	cin => \Add15~43\,
	combout => \Add15~44_combout\);

-- Location: LCCOMB_X36_Y23_N26
\temp3~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~19_combout\ = (\Add15~44_combout\) # ((\Add15~38_combout\) # ((\Add15~40_combout\) # (\Add15~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~44_combout\,
	datab => \Add15~38_combout\,
	datac => \Add15~40_combout\,
	datad => \Add15~42_combout\,
	combout => \temp3~19_combout\);

-- Location: LCCOMB_X36_Y21_N24
\LessThan14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (\LessThan13~39_combout\ & (((\Add15~36_combout\) # (\Add15~34_combout\)))) # (!\LessThan13~39_combout\ & (\Add14~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~55_combout\,
	datab => \LessThan13~39_combout\,
	datac => \Add15~36_combout\,
	datad => \Add15~34_combout\,
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X36_Y21_N22
\temp3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~16_combout\ = (\LessThan13~39_combout\ & (\Add15~32_combout\)) # (!\LessThan13~39_combout\ & ((\Add14~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~32_combout\,
	datac => \Add14~56_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~16_combout\);

-- Location: LCCOMB_X36_Y21_N20
\temp3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~17_combout\ = (\LessThan13~39_combout\ & ((\Add15~30_combout\))) # (!\LessThan13~39_combout\ & (\Add14~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~57_combout\,
	datac => \Add15~30_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~17_combout\);

-- Location: LCCOMB_X36_Y21_N30
\temp3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~18_combout\ = (\LessThan13~39_combout\ & ((\Add15~28_combout\))) # (!\LessThan13~39_combout\ & (\Add14~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~58_combout\,
	datac => \Add15~28_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~18_combout\);

-- Location: LCCOMB_X35_Y23_N8
\temp3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~0_combout\ = (\LessThan13~39_combout\ & ((\Add15~26_combout\))) # (!\LessThan13~39_combout\ & (\Add14~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~26_combout\,
	datac => \LessThan13~39_combout\,
	datad => \Add15~26_combout\,
	combout => \temp3~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\temp3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~1_combout\ = (\LessThan13~39_combout\ & ((\Add15~24_combout\))) # (!\LessThan13~39_combout\ & (\Add14~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~27_combout\,
	datac => \LessThan13~39_combout\,
	datad => \Add15~24_combout\,
	combout => \temp3~1_combout\);

-- Location: LCCOMB_X37_Y21_N20
\temp3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~2_combout\ = (\LessThan13~39_combout\ & ((\Add15~22_combout\))) # (!\LessThan13~39_combout\ & (\Add14~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~28_combout\,
	datac => \LessThan13~39_combout\,
	datad => \Add15~22_combout\,
	combout => \temp3~2_combout\);

-- Location: LCCOMB_X36_Y24_N6
\temp3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~3_combout\ = (\LessThan13~39_combout\ & ((\Add15~20_combout\))) # (!\LessThan13~39_combout\ & (\Add14~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~29_combout\,
	datac => \Add15~20_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~3_combout\);

-- Location: LCCOMB_X37_Y23_N22
\temp3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~4_combout\ = (\LessThan13~39_combout\ & ((\Add15~18_combout\))) # (!\LessThan13~39_combout\ & (\Add14~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~30_combout\,
	datac => \Add15~18_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~4_combout\);

-- Location: LCCOMB_X36_Y24_N8
\temp3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~5_combout\ = (\LessThan13~39_combout\ & ((\Add15~16_combout\))) # (!\LessThan13~39_combout\ & (\Add14~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~31_combout\,
	datac => \Add15~16_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~5_combout\);

-- Location: LCCOMB_X36_Y24_N2
\temp3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~6_combout\ = (\LessThan13~39_combout\ & (\Add15~14_combout\)) # (!\LessThan13~39_combout\ & ((\Add14~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~14_combout\,
	datac => \Add14~32_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~6_combout\);

-- Location: LCCOMB_X36_Y24_N4
\temp3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~7_combout\ = (\LessThan13~39_combout\ & ((\Add15~12_combout\))) # (!\LessThan13~39_combout\ & (\Add14~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~33_combout\,
	datac => \Add15~12_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~7_combout\);

-- Location: LCCOMB_X37_Y24_N8
\temp3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~8_combout\ = (\LessThan13~39_combout\ & (\Add15~10_combout\)) # (!\LessThan13~39_combout\ & ((\Add14~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~10_combout\,
	datac => \Add14~34_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~8_combout\);

-- Location: LCCOMB_X36_Y20_N0
\temp3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~9_combout\ = (\LessThan13~39_combout\ & ((\Add15~8_combout\))) # (!\LessThan13~39_combout\ & (\Add14~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~35_combout\,
	datac => \Add15~8_combout\,
	datad => \LessThan13~39_combout\,
	combout => \temp3~9_combout\);

-- Location: LCCOMB_X36_Y22_N2
\temp3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~10_combout\ = (\Add14~61_combout\) # ((\Add14~64_combout\) # (\LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~61_combout\,
	datac => \Add14~64_combout\,
	datad => \LessThan13~0_combout\,
	combout => \temp3~10_combout\);

-- Location: LCCOMB_X36_Y22_N12
\temp3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~11_combout\ = (\temp3~10_combout\ & (((\Add15~6_combout\)))) # (!\temp3~10_combout\ & ((\LessThan13~37_combout\ & ((\Add15~6_combout\))) # (!\LessThan13~37_combout\ & (\Add14~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~36_combout\,
	datab => \temp3~10_combout\,
	datac => \LessThan13~37_combout\,
	datad => \Add15~6_combout\,
	combout => \temp3~11_combout\);

-- Location: LCCOMB_X36_Y22_N6
\temp3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~12_combout\ = (\temp3~10_combout\ & (((\Add15~4_combout\)))) # (!\temp3~10_combout\ & ((\LessThan13~37_combout\ & ((\Add15~4_combout\))) # (!\LessThan13~37_combout\ & (\Add14~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~37_combout\,
	datab => \temp3~10_combout\,
	datac => \LessThan13~37_combout\,
	datad => \Add15~4_combout\,
	combout => \temp3~12_combout\);

-- Location: LCCOMB_X36_Y22_N0
\temp3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~13_combout\ = (\LessThan13~37_combout\ & (((\Add15~2_combout\)))) # (!\LessThan13~37_combout\ & ((\temp3~10_combout\ & ((\Add15~2_combout\))) # (!\temp3~10_combout\ & (\Add14~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~39_combout\,
	datab => \Add15~2_combout\,
	datac => \LessThan13~37_combout\,
	datad => \temp3~10_combout\,
	combout => \temp3~13_combout\);

-- Location: LCCOMB_X36_Y22_N10
\temp3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~14_combout\ = (\Add14~61_combout\ & (((\Add15~0_combout\)))) # (!\Add14~61_combout\ & ((\Add14~64_combout\ & ((\Add15~0_combout\))) # (!\Add14~64_combout\ & (sum_Vpx(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(5),
	datab => \Add14~61_combout\,
	datac => \Add14~64_combout\,
	datad => \Add15~0_combout\,
	combout => \temp3~14_combout\);

-- Location: LCCOMB_X36_Y22_N8
\temp3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~15_combout\ = (\LessThan13~0_combout\ & (((\Add15~0_combout\)))) # (!\LessThan13~0_combout\ & ((\LessThan13~37_combout\ & ((\Add15~0_combout\))) # (!\LessThan13~37_combout\ & (\temp3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~14_combout\,
	datab => \LessThan13~0_combout\,
	datac => \LessThan13~37_combout\,
	datad => \Add15~0_combout\,
	combout => \temp3~15_combout\);

-- Location: LCCOMB_X36_Y22_N14
\LessThan14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~2_cout\ = CARRY(\LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~0_combout\,
	datad => VCC,
	cout => \LessThan14~2_cout\);

-- Location: LCCOMB_X36_Y22_N16
\LessThan14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~4_cout\ = CARRY((sum_Vpx(4) & (n_y(0) & !\LessThan14~2_cout\)) # (!sum_Vpx(4) & ((n_y(0)) # (!\LessThan14~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(4),
	datab => n_y(0),
	datad => VCC,
	cin => \LessThan14~2_cout\,
	cout => \LessThan14~4_cout\);

-- Location: LCCOMB_X36_Y22_N18
\LessThan14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~6_cout\ = CARRY((n_y(1) & (\temp3~15_combout\ & !\LessThan14~4_cout\)) # (!n_y(1) & ((\temp3~15_combout\) # (!\LessThan14~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \temp3~15_combout\,
	datad => VCC,
	cin => \LessThan14~4_cout\,
	cout => \LessThan14~6_cout\);

-- Location: LCCOMB_X36_Y22_N20
\LessThan14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~8_cout\ = CARRY((n_y(2) & ((!\LessThan14~6_cout\) # (!\temp3~13_combout\))) # (!n_y(2) & (!\temp3~13_combout\ & !\LessThan14~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \temp3~13_combout\,
	datad => VCC,
	cin => \LessThan14~6_cout\,
	cout => \LessThan14~8_cout\);

-- Location: LCCOMB_X36_Y22_N22
\LessThan14~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~10_cout\ = CARRY((\temp3~12_combout\ & ((!\LessThan14~8_cout\) # (!n_y(3)))) # (!\temp3~12_combout\ & (!n_y(3) & !\LessThan14~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~12_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \LessThan14~8_cout\,
	cout => \LessThan14~10_cout\);

-- Location: LCCOMB_X36_Y22_N24
\LessThan14~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~12_cout\ = CARRY((\temp3~11_combout\ & (n_y(4) & !\LessThan14~10_cout\)) # (!\temp3~11_combout\ & ((n_y(4)) # (!\LessThan14~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~11_combout\,
	datab => n_y(4),
	datad => VCC,
	cin => \LessThan14~10_cout\,
	cout => \LessThan14~12_cout\);

-- Location: LCCOMB_X36_Y22_N26
\LessThan14~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~14_cout\ = CARRY((n_y(5) & (\temp3~9_combout\ & !\LessThan14~12_cout\)) # (!n_y(5) & ((\temp3~9_combout\) # (!\LessThan14~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \temp3~9_combout\,
	datad => VCC,
	cin => \LessThan14~12_cout\,
	cout => \LessThan14~14_cout\);

-- Location: LCCOMB_X36_Y22_N28
\LessThan14~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~16_cout\ = CARRY((n_y(6) & ((!\LessThan14~14_cout\) # (!\temp3~8_combout\))) # (!n_y(6) & (!\temp3~8_combout\ & !\LessThan14~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \temp3~8_combout\,
	datad => VCC,
	cin => \LessThan14~14_cout\,
	cout => \LessThan14~16_cout\);

-- Location: LCCOMB_X36_Y22_N30
\LessThan14~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~18_cout\ = CARRY((\temp3~7_combout\ & ((!\LessThan14~16_cout\) # (!n_y(7)))) # (!\temp3~7_combout\ & (!n_y(7) & !\LessThan14~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~7_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan14~16_cout\,
	cout => \LessThan14~18_cout\);

-- Location: LCCOMB_X36_Y21_N0
\LessThan14~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~20_cout\ = CARRY((n_y(8) & ((!\LessThan14~18_cout\) # (!\temp3~6_combout\))) # (!n_y(8) & (!\temp3~6_combout\ & !\LessThan14~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \temp3~6_combout\,
	datad => VCC,
	cin => \LessThan14~18_cout\,
	cout => \LessThan14~20_cout\);

-- Location: LCCOMB_X36_Y21_N2
\LessThan14~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~22_cout\ = CARRY((n_y(9) & (\temp3~5_combout\ & !\LessThan14~20_cout\)) # (!n_y(9) & ((\temp3~5_combout\) # (!\LessThan14~20_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \temp3~5_combout\,
	datad => VCC,
	cin => \LessThan14~20_cout\,
	cout => \LessThan14~22_cout\);

-- Location: LCCOMB_X36_Y21_N4
\LessThan14~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~24_cout\ = CARRY((\temp3~4_combout\ & (n_y(10) & !\LessThan14~22_cout\)) # (!\temp3~4_combout\ & ((n_y(10)) # (!\LessThan14~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~4_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \LessThan14~22_cout\,
	cout => \LessThan14~24_cout\);

-- Location: LCCOMB_X36_Y21_N6
\LessThan14~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~26_cout\ = CARRY((\temp3~3_combout\ & ((!\LessThan14~24_cout\) # (!n_y(11)))) # (!\temp3~3_combout\ & (!n_y(11) & !\LessThan14~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~3_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \LessThan14~24_cout\,
	cout => \LessThan14~26_cout\);

-- Location: LCCOMB_X36_Y21_N8
\LessThan14~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~28_cout\ = CARRY((\temp3~2_combout\ & (n_y(12) & !\LessThan14~26_cout\)) # (!\temp3~2_combout\ & ((n_y(12)) # (!\LessThan14~26_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~2_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \LessThan14~26_cout\,
	cout => \LessThan14~28_cout\);

-- Location: LCCOMB_X36_Y21_N10
\LessThan14~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~30_cout\ = CARRY((\temp3~1_combout\ & ((!\LessThan14~28_cout\) # (!n_y(13)))) # (!\temp3~1_combout\ & (!n_y(13) & !\LessThan14~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~1_combout\,
	datab => n_y(13),
	datad => VCC,
	cin => \LessThan14~28_cout\,
	cout => \LessThan14~30_cout\);

-- Location: LCCOMB_X36_Y21_N12
\LessThan14~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~32_cout\ = CARRY((\temp3~0_combout\ & (n_y(14) & !\LessThan14~30_cout\)) # (!\temp3~0_combout\ & ((n_y(14)) # (!\LessThan14~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~0_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \LessThan14~30_cout\,
	cout => \LessThan14~32_cout\);

-- Location: LCCOMB_X36_Y21_N14
\LessThan14~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~34_cout\ = CARRY((\temp3~18_combout\ & ((!\LessThan14~32_cout\) # (!n_y(15)))) # (!\temp3~18_combout\ & (!n_y(15) & !\LessThan14~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~18_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \LessThan14~32_cout\,
	cout => \LessThan14~34_cout\);

-- Location: LCCOMB_X36_Y21_N16
\LessThan14~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~36_cout\ = CARRY((n_y(16) & ((!\LessThan14~34_cout\) # (!\temp3~17_combout\))) # (!n_y(16) & (!\temp3~17_combout\ & !\LessThan14~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \temp3~17_combout\,
	datad => VCC,
	cin => \LessThan14~34_cout\,
	cout => \LessThan14~36_cout\);

-- Location: LCCOMB_X36_Y21_N18
\LessThan14~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~37_combout\ = (n_y(17) & (!\LessThan14~36_cout\ & \temp3~16_combout\)) # (!n_y(17) & ((\temp3~16_combout\) # (!\LessThan14~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datad => \temp3~16_combout\,
	cin => \LessThan14~36_cout\,
	combout => \LessThan14~37_combout\);

-- Location: LCCOMB_X36_Y21_N28
\LessThan14~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan14~39_combout\ = (\LessThan14~0_combout\) # ((\LessThan14~37_combout\) # ((\temp3~19_combout\ & \LessThan13~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~19_combout\,
	datab => \LessThan14~0_combout\,
	datac => \LessThan13~39_combout\,
	datad => \LessThan14~37_combout\,
	combout => \LessThan14~39_combout\);

-- Location: LCCOMB_X44_Y25_N8
\Selector103~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan14~39_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (y_int(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => y_int(4),
	datad => \LessThan14~39_combout\,
	combout => \Selector103~0_combout\);

-- Location: FF_X44_Y25_N9
\y_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(4));

-- Location: LCCOMB_X35_Y23_N6
\temp3~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~38_combout\ = (\LessThan13~39_combout\ & \Add15~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~39_combout\,
	datac => \Add15~36_combout\,
	combout => \temp3~38_combout\);

-- Location: LCCOMB_X35_Y19_N16
\temp3~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~37_combout\ = (\LessThan13~39_combout\ & ((\Add15~34_combout\))) # (!\LessThan13~39_combout\ & (\Add14~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~39_combout\,
	datab => \Add14~55_combout\,
	datac => \Add15~34_combout\,
	combout => \temp3~37_combout\);

-- Location: LCCOMB_X36_Y20_N8
\Add16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = (sum_Vpx(4) & ((GND) # (!n_y(0)))) # (!sum_Vpx(4) & (n_y(0) $ (GND)))
-- \Add16~1\ = CARRY((sum_Vpx(4)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(4),
	datab => n_y(0),
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: LCCOMB_X36_Y20_N10
\Add16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (\temp3~15_combout\ & ((n_y(1) & (!\Add16~1\)) # (!n_y(1) & (\Add16~1\ & VCC)))) # (!\temp3~15_combout\ & ((n_y(1) & ((\Add16~1\) # (GND))) # (!n_y(1) & (!\Add16~1\))))
-- \Add16~3\ = CARRY((\temp3~15_combout\ & (n_y(1) & !\Add16~1\)) # (!\temp3~15_combout\ & ((n_y(1)) # (!\Add16~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~15_combout\,
	datab => n_y(1),
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X36_Y20_N12
\Add16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = ((n_y(2) $ (\temp3~13_combout\ $ (\Add16~3\)))) # (GND)
-- \Add16~5\ = CARRY((n_y(2) & (\temp3~13_combout\ & !\Add16~3\)) # (!n_y(2) & ((\temp3~13_combout\) # (!\Add16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \temp3~13_combout\,
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X36_Y20_N14
\Add16~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (\temp3~12_combout\ & ((n_y(3) & (!\Add16~5\)) # (!n_y(3) & (\Add16~5\ & VCC)))) # (!\temp3~12_combout\ & ((n_y(3) & ((\Add16~5\) # (GND))) # (!n_y(3) & (!\Add16~5\))))
-- \Add16~7\ = CARRY((\temp3~12_combout\ & (n_y(3) & !\Add16~5\)) # (!\temp3~12_combout\ & ((n_y(3)) # (!\Add16~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~12_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X36_Y20_N16
\Add16~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = ((n_y(4) $ (\temp3~11_combout\ $ (\Add16~7\)))) # (GND)
-- \Add16~9\ = CARRY((n_y(4) & (\temp3~11_combout\ & !\Add16~7\)) # (!n_y(4) & ((\temp3~11_combout\) # (!\Add16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \temp3~11_combout\,
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X36_Y20_N18
\Add16~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (n_y(5) & ((\temp3~9_combout\ & (!\Add16~9\)) # (!\temp3~9_combout\ & ((\Add16~9\) # (GND))))) # (!n_y(5) & ((\temp3~9_combout\ & (\Add16~9\ & VCC)) # (!\temp3~9_combout\ & (!\Add16~9\))))
-- \Add16~11\ = CARRY((n_y(5) & ((!\Add16~9\) # (!\temp3~9_combout\))) # (!n_y(5) & (!\temp3~9_combout\ & !\Add16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \temp3~9_combout\,
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X36_Y20_N20
\Add16~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = ((n_y(6) $ (\temp3~8_combout\ $ (\Add16~11\)))) # (GND)
-- \Add16~13\ = CARRY((n_y(6) & (\temp3~8_combout\ & !\Add16~11\)) # (!n_y(6) & ((\temp3~8_combout\) # (!\Add16~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \temp3~8_combout\,
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: LCCOMB_X36_Y20_N22
\Add16~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = (\temp3~7_combout\ & ((n_y(7) & (!\Add16~13\)) # (!n_y(7) & (\Add16~13\ & VCC)))) # (!\temp3~7_combout\ & ((n_y(7) & ((\Add16~13\) # (GND))) # (!n_y(7) & (!\Add16~13\))))
-- \Add16~15\ = CARRY((\temp3~7_combout\ & (n_y(7) & !\Add16~13\)) # (!\temp3~7_combout\ & ((n_y(7)) # (!\Add16~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~7_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \Add16~13\,
	combout => \Add16~14_combout\,
	cout => \Add16~15\);

-- Location: LCCOMB_X36_Y20_N24
\Add16~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~16_combout\ = ((n_y(8) $ (\temp3~6_combout\ $ (\Add16~15\)))) # (GND)
-- \Add16~17\ = CARRY((n_y(8) & (\temp3~6_combout\ & !\Add16~15\)) # (!n_y(8) & ((\temp3~6_combout\) # (!\Add16~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \temp3~6_combout\,
	datad => VCC,
	cin => \Add16~15\,
	combout => \Add16~16_combout\,
	cout => \Add16~17\);

-- Location: LCCOMB_X36_Y20_N26
\Add16~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~18_combout\ = (\temp3~5_combout\ & ((n_y(9) & (!\Add16~17\)) # (!n_y(9) & (\Add16~17\ & VCC)))) # (!\temp3~5_combout\ & ((n_y(9) & ((\Add16~17\) # (GND))) # (!n_y(9) & (!\Add16~17\))))
-- \Add16~19\ = CARRY((\temp3~5_combout\ & (n_y(9) & !\Add16~17\)) # (!\temp3~5_combout\ & ((n_y(9)) # (!\Add16~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~5_combout\,
	datab => n_y(9),
	datad => VCC,
	cin => \Add16~17\,
	combout => \Add16~18_combout\,
	cout => \Add16~19\);

-- Location: LCCOMB_X36_Y20_N28
\Add16~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~20_combout\ = ((\temp3~4_combout\ $ (n_y(10) $ (\Add16~19\)))) # (GND)
-- \Add16~21\ = CARRY((\temp3~4_combout\ & ((!\Add16~19\) # (!n_y(10)))) # (!\temp3~4_combout\ & (!n_y(10) & !\Add16~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~4_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \Add16~19\,
	combout => \Add16~20_combout\,
	cout => \Add16~21\);

-- Location: LCCOMB_X36_Y20_N30
\Add16~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~22_combout\ = (\temp3~3_combout\ & ((n_y(11) & (!\Add16~21\)) # (!n_y(11) & (\Add16~21\ & VCC)))) # (!\temp3~3_combout\ & ((n_y(11) & ((\Add16~21\) # (GND))) # (!n_y(11) & (!\Add16~21\))))
-- \Add16~23\ = CARRY((\temp3~3_combout\ & (n_y(11) & !\Add16~21\)) # (!\temp3~3_combout\ & ((n_y(11)) # (!\Add16~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~3_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \Add16~21\,
	combout => \Add16~22_combout\,
	cout => \Add16~23\);

-- Location: LCCOMB_X36_Y19_N0
\Add16~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~24_combout\ = ((\temp3~2_combout\ $ (n_y(12) $ (\Add16~23\)))) # (GND)
-- \Add16~25\ = CARRY((\temp3~2_combout\ & ((!\Add16~23\) # (!n_y(12)))) # (!\temp3~2_combout\ & (!n_y(12) & !\Add16~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~2_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \Add16~23\,
	combout => \Add16~24_combout\,
	cout => \Add16~25\);

-- Location: LCCOMB_X36_Y19_N2
\Add16~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~26_combout\ = (n_y(13) & ((\temp3~1_combout\ & (!\Add16~25\)) # (!\temp3~1_combout\ & ((\Add16~25\) # (GND))))) # (!n_y(13) & ((\temp3~1_combout\ & (\Add16~25\ & VCC)) # (!\temp3~1_combout\ & (!\Add16~25\))))
-- \Add16~27\ = CARRY((n_y(13) & ((!\Add16~25\) # (!\temp3~1_combout\))) # (!n_y(13) & (!\temp3~1_combout\ & !\Add16~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \temp3~1_combout\,
	datad => VCC,
	cin => \Add16~25\,
	combout => \Add16~26_combout\,
	cout => \Add16~27\);

-- Location: LCCOMB_X36_Y19_N4
\Add16~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~28_combout\ = ((\temp3~0_combout\ $ (n_y(14) $ (\Add16~27\)))) # (GND)
-- \Add16~29\ = CARRY((\temp3~0_combout\ & ((!\Add16~27\) # (!n_y(14)))) # (!\temp3~0_combout\ & (!n_y(14) & !\Add16~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~0_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \Add16~27\,
	combout => \Add16~28_combout\,
	cout => \Add16~29\);

-- Location: LCCOMB_X36_Y19_N6
\Add16~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~30_combout\ = (n_y(15) & ((\temp3~18_combout\ & (!\Add16~29\)) # (!\temp3~18_combout\ & ((\Add16~29\) # (GND))))) # (!n_y(15) & ((\temp3~18_combout\ & (\Add16~29\ & VCC)) # (!\temp3~18_combout\ & (!\Add16~29\))))
-- \Add16~31\ = CARRY((n_y(15) & ((!\Add16~29\) # (!\temp3~18_combout\))) # (!n_y(15) & (!\temp3~18_combout\ & !\Add16~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datab => \temp3~18_combout\,
	datad => VCC,
	cin => \Add16~29\,
	combout => \Add16~30_combout\,
	cout => \Add16~31\);

-- Location: LCCOMB_X36_Y19_N8
\Add16~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~32_combout\ = ((n_y(16) $ (\temp3~17_combout\ $ (\Add16~31\)))) # (GND)
-- \Add16~33\ = CARRY((n_y(16) & (\temp3~17_combout\ & !\Add16~31\)) # (!n_y(16) & ((\temp3~17_combout\) # (!\Add16~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \temp3~17_combout\,
	datad => VCC,
	cin => \Add16~31\,
	combout => \Add16~32_combout\,
	cout => \Add16~33\);

-- Location: LCCOMB_X36_Y19_N10
\Add16~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~34_combout\ = (\temp3~16_combout\ & ((n_y(17) & (!\Add16~33\)) # (!n_y(17) & (\Add16~33\ & VCC)))) # (!\temp3~16_combout\ & ((n_y(17) & ((\Add16~33\) # (GND))) # (!n_y(17) & (!\Add16~33\))))
-- \Add16~35\ = CARRY((\temp3~16_combout\ & (n_y(17) & !\Add16~33\)) # (!\temp3~16_combout\ & ((n_y(17)) # (!\Add16~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~16_combout\,
	datab => n_y(17),
	datad => VCC,
	cin => \Add16~33\,
	combout => \Add16~34_combout\,
	cout => \Add16~35\);

-- Location: LCCOMB_X36_Y19_N12
\Add16~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~36_combout\ = (\temp3~37_combout\ & ((GND) # (!\Add16~35\))) # (!\temp3~37_combout\ & (\Add16~35\ $ (GND)))
-- \Add16~37\ = CARRY((\temp3~37_combout\) # (!\Add16~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~37_combout\,
	datad => VCC,
	cin => \Add16~35\,
	combout => \Add16~36_combout\,
	cout => \Add16~37\);

-- Location: LCCOMB_X36_Y19_N14
\Add16~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~38_combout\ = (\temp3~38_combout\ & (\Add16~37\ & VCC)) # (!\temp3~38_combout\ & (!\Add16~37\))
-- \Add16~39\ = CARRY((!\temp3~38_combout\ & !\Add16~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp3~38_combout\,
	datad => VCC,
	cin => \Add16~37\,
	combout => \Add16~38_combout\,
	cout => \Add16~39\);

-- Location: LCCOMB_X37_Y19_N26
\temp3~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~41_combout\ = (\Add16~38_combout\ & \LessThan14~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~38_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~41_combout\);

-- Location: LCCOMB_X36_Y19_N30
\temp3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~36_combout\ = (\LessThan14~39_combout\ & (\Add16~34_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~34_combout\,
	datac => \temp3~16_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~36_combout\);

-- Location: LCCOMB_X36_Y19_N16
\Add16~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~40_combout\ = (\Add16~39\ & ((((\LessThan13~39_combout\ & \Add15~38_combout\))))) # (!\Add16~39\ & (((\LessThan13~39_combout\ & \Add15~38_combout\)) # (GND)))
-- \Add16~41\ = CARRY(((\LessThan13~39_combout\ & \Add15~38_combout\)) # (!\Add16~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~39_combout\,
	datab => \Add15~38_combout\,
	datad => VCC,
	cin => \Add16~39\,
	combout => \Add16~40_combout\,
	cout => \Add16~41\);

-- Location: LCCOMB_X36_Y19_N18
\Add16~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~42_combout\ = (\Add15~40_combout\ & ((\LessThan13~39_combout\ & (\Add16~41\ & VCC)) # (!\LessThan13~39_combout\ & (!\Add16~41\)))) # (!\Add15~40_combout\ & (((!\Add16~41\))))
-- \Add16~43\ = CARRY((!\Add16~41\ & ((!\LessThan13~39_combout\) # (!\Add15~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~40_combout\,
	datab => \LessThan13~39_combout\,
	datad => VCC,
	cin => \Add16~41\,
	combout => \Add16~42_combout\,
	cout => \Add16~43\);

-- Location: LCCOMB_X36_Y19_N20
\Add16~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~44_combout\ = (\Add16~43\ & ((((\Add15~42_combout\ & \LessThan13~39_combout\))))) # (!\Add16~43\ & (((\Add15~42_combout\ & \LessThan13~39_combout\)) # (GND)))
-- \Add16~45\ = CARRY(((\Add15~42_combout\ & \LessThan13~39_combout\)) # (!\Add16~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~42_combout\,
	datab => \LessThan13~39_combout\,
	datad => VCC,
	cin => \Add16~43\,
	combout => \Add16~44_combout\,
	cout => \Add16~45\);

-- Location: LCCOMB_X36_Y19_N22
\Add16~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add16~46_combout\ = \Add16~45\ $ (((!\Add15~44_combout\) # (!\LessThan13~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LessThan13~39_combout\,
	datad => \Add15~44_combout\,
	cin => \Add16~45\,
	combout => \Add16~46_combout\);

-- Location: LCCOMB_X36_Y19_N28
\LessThan15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (\temp3~36_combout\) # ((\LessThan14~39_combout\ & ((\Add16~46_combout\) # (\Add16~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~36_combout\,
	datab => \LessThan14~39_combout\,
	datac => \Add16~46_combout\,
	datad => \Add16~36_combout\,
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X36_Y19_N26
\LessThan15~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~39_combout\ = (\LessThan14~39_combout\ & ((\Add16~42_combout\) # ((\Add16~40_combout\) # (\Add16~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~42_combout\,
	datab => \Add16~40_combout\,
	datac => \LessThan14~39_combout\,
	datad => \Add16~44_combout\,
	combout => \LessThan15~39_combout\);

-- Location: LCCOMB_X37_Y19_N22
\temp3~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~39_combout\ = (\LessThan14~39_combout\ & (\Add16~32_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~32_combout\,
	datac => \temp3~17_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~39_combout\);

-- Location: LCCOMB_X37_Y19_N28
\temp3~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~40_combout\ = (\LessThan14~39_combout\ & ((\Add16~30_combout\))) # (!\LessThan14~39_combout\ & (\temp3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~18_combout\,
	datac => \Add16~30_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~40_combout\);

-- Location: LCCOMB_X36_Y19_N24
\temp3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~20_combout\ = (\LessThan14~39_combout\ & ((\Add16~28_combout\))) # (!\LessThan14~39_combout\ & (\temp3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~0_combout\,
	datac => \Add16~28_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~20_combout\);

-- Location: LCCOMB_X37_Y19_N20
\temp3~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~21_combout\ = (\LessThan14~39_combout\ & ((\Add16~26_combout\))) # (!\LessThan14~39_combout\ & (\temp3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~1_combout\,
	datac => \Add16~26_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~21_combout\);

-- Location: LCCOMB_X37_Y21_N18
\temp3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~22_combout\ = (\LessThan14~39_combout\ & (\Add16~24_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~24_combout\,
	datac => \temp3~2_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~22_combout\);

-- Location: LCCOMB_X39_Y19_N12
\temp3~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~23_combout\ = (\LessThan14~39_combout\ & ((\Add16~22_combout\))) # (!\LessThan14~39_combout\ & (\temp3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~3_combout\,
	datac => \Add16~22_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~23_combout\);

-- Location: LCCOMB_X38_Y20_N0
\temp3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~24_combout\ = (\LessThan14~39_combout\ & ((\Add16~20_combout\))) # (!\LessThan14~39_combout\ & (\temp3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~4_combout\,
	datac => \Add16~20_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~24_combout\);

-- Location: LCCOMB_X37_Y20_N12
\temp3~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~25_combout\ = (\LessThan14~39_combout\ & ((\Add16~18_combout\))) # (!\LessThan14~39_combout\ & (\temp3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~5_combout\,
	datac => \Add16~18_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~25_combout\);

-- Location: LCCOMB_X39_Y19_N26
\temp3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~26_combout\ = (\LessThan14~39_combout\ & ((\Add16~16_combout\))) # (!\LessThan14~39_combout\ & (\temp3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~6_combout\,
	datac => \Add16~16_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~26_combout\);

-- Location: LCCOMB_X37_Y21_N8
\temp3~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~27_combout\ = (\LessThan14~39_combout\ & ((\Add16~14_combout\))) # (!\LessThan14~39_combout\ & (\temp3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~7_combout\,
	datac => \Add16~14_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~27_combout\);

-- Location: LCCOMB_X37_Y20_N10
\temp3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~28_combout\ = (\LessThan14~39_combout\ & (\Add16~12_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~12_combout\,
	datac => \temp3~8_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~28_combout\);

-- Location: LCCOMB_X37_Y20_N4
\temp3~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~29_combout\ = (\LessThan14~39_combout\ & (\Add16~10_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~10_combout\,
	datac => \temp3~9_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~29_combout\);

-- Location: LCCOMB_X37_Y20_N2
\temp3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~30_combout\ = (\LessThan14~39_combout\ & ((\Add16~8_combout\))) # (!\LessThan14~39_combout\ & (\temp3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~11_combout\,
	datac => \Add16~8_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~30_combout\);

-- Location: LCCOMB_X37_Y20_N8
\temp3~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~31_combout\ = (\LessThan14~39_combout\ & (\Add16~6_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~6_combout\,
	datab => \temp3~12_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~31_combout\);

-- Location: LCCOMB_X37_Y20_N6
\temp3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~32_combout\ = (\LessThan14~39_combout\ & (\Add16~4_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~4_combout\,
	datac => \temp3~13_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~32_combout\);

-- Location: LCCOMB_X37_Y20_N0
\temp3~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~33_combout\ = (\LessThan14~39_combout\ & (\Add16~2_combout\)) # (!\LessThan14~39_combout\ & ((\temp3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datac => \temp3~15_combout\,
	datad => \LessThan14~39_combout\,
	combout => \temp3~33_combout\);

-- Location: LCCOMB_X37_Y21_N10
\temp3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~34_combout\ = (\LessThan13~39_combout\ & ((\temp3~19_combout\ & (\Add16~0_combout\)) # (!\temp3~19_combout\ & ((sum_Vpx(4)))))) # (!\LessThan13~39_combout\ & (((sum_Vpx(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~39_combout\,
	datab => \Add16~0_combout\,
	datac => \temp3~19_combout\,
	datad => sum_Vpx(4),
	combout => \temp3~34_combout\);

-- Location: LCCOMB_X36_Y21_N26
\temp3~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~35_combout\ = (\LessThan14~0_combout\ & (\Add16~0_combout\)) # (!\LessThan14~0_combout\ & ((\LessThan14~37_combout\ & (\Add16~0_combout\)) # (!\LessThan14~37_combout\ & ((\temp3~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \LessThan14~0_combout\,
	datac => \temp3~34_combout\,
	datad => \LessThan14~37_combout\,
	combout => \temp3~35_combout\);

-- Location: LCCOMB_X41_Y18_N4
\LessThan10~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~43_combout\ = (sum_Vpx(2)) # ((sum_Vpx(0)) # (sum_Vpx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(2),
	datac => sum_Vpx(0),
	datad => sum_Vpx(1),
	combout => \LessThan10~43_combout\);

-- Location: LCCOMB_X37_Y20_N14
\LessThan15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~2_cout\ = CARRY(\LessThan10~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~43_combout\,
	datad => VCC,
	cout => \LessThan15~2_cout\);

-- Location: LCCOMB_X37_Y20_N16
\LessThan15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~4_cout\ = CARRY((sum_Vpx(3) & (n_y(0) & !\LessThan15~2_cout\)) # (!sum_Vpx(3) & ((n_y(0)) # (!\LessThan15~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(3),
	datab => n_y(0),
	datad => VCC,
	cin => \LessThan15~2_cout\,
	cout => \LessThan15~4_cout\);

-- Location: LCCOMB_X37_Y20_N18
\LessThan15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~6_cout\ = CARRY((n_y(1) & (\temp3~35_combout\ & !\LessThan15~4_cout\)) # (!n_y(1) & ((\temp3~35_combout\) # (!\LessThan15~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \temp3~35_combout\,
	datad => VCC,
	cin => \LessThan15~4_cout\,
	cout => \LessThan15~6_cout\);

-- Location: LCCOMB_X37_Y20_N20
\LessThan15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~8_cout\ = CARRY((n_y(2) & ((!\LessThan15~6_cout\) # (!\temp3~33_combout\))) # (!n_y(2) & (!\temp3~33_combout\ & !\LessThan15~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \temp3~33_combout\,
	datad => VCC,
	cin => \LessThan15~6_cout\,
	cout => \LessThan15~8_cout\);

-- Location: LCCOMB_X37_Y20_N22
\LessThan15~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~10_cout\ = CARRY((\temp3~32_combout\ & ((!\LessThan15~8_cout\) # (!n_y(3)))) # (!\temp3~32_combout\ & (!n_y(3) & !\LessThan15~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~32_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \LessThan15~8_cout\,
	cout => \LessThan15~10_cout\);

-- Location: LCCOMB_X37_Y20_N24
\LessThan15~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~12_cout\ = CARRY((n_y(4) & ((!\LessThan15~10_cout\) # (!\temp3~31_combout\))) # (!n_y(4) & (!\temp3~31_combout\ & !\LessThan15~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \temp3~31_combout\,
	datad => VCC,
	cin => \LessThan15~10_cout\,
	cout => \LessThan15~12_cout\);

-- Location: LCCOMB_X37_Y20_N26
\LessThan15~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~14_cout\ = CARRY((n_y(5) & (\temp3~30_combout\ & !\LessThan15~12_cout\)) # (!n_y(5) & ((\temp3~30_combout\) # (!\LessThan15~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \temp3~30_combout\,
	datad => VCC,
	cin => \LessThan15~12_cout\,
	cout => \LessThan15~14_cout\);

-- Location: LCCOMB_X37_Y20_N28
\LessThan15~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~16_cout\ = CARRY((n_y(6) & ((!\LessThan15~14_cout\) # (!\temp3~29_combout\))) # (!n_y(6) & (!\temp3~29_combout\ & !\LessThan15~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \temp3~29_combout\,
	datad => VCC,
	cin => \LessThan15~14_cout\,
	cout => \LessThan15~16_cout\);

-- Location: LCCOMB_X37_Y20_N30
\LessThan15~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~18_cout\ = CARRY((\temp3~28_combout\ & ((!\LessThan15~16_cout\) # (!n_y(7)))) # (!\temp3~28_combout\ & (!n_y(7) & !\LessThan15~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~28_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan15~16_cout\,
	cout => \LessThan15~18_cout\);

-- Location: LCCOMB_X37_Y19_N0
\LessThan15~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~20_cout\ = CARRY((\temp3~27_combout\ & (n_y(8) & !\LessThan15~18_cout\)) # (!\temp3~27_combout\ & ((n_y(8)) # (!\LessThan15~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~27_combout\,
	datab => n_y(8),
	datad => VCC,
	cin => \LessThan15~18_cout\,
	cout => \LessThan15~20_cout\);

-- Location: LCCOMB_X37_Y19_N2
\LessThan15~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~22_cout\ = CARRY((\temp3~26_combout\ & ((!\LessThan15~20_cout\) # (!n_y(9)))) # (!\temp3~26_combout\ & (!n_y(9) & !\LessThan15~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~26_combout\,
	datab => n_y(9),
	datad => VCC,
	cin => \LessThan15~20_cout\,
	cout => \LessThan15~22_cout\);

-- Location: LCCOMB_X37_Y19_N4
\LessThan15~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~24_cout\ = CARRY((n_y(10) & ((!\LessThan15~22_cout\) # (!\temp3~25_combout\))) # (!n_y(10) & (!\temp3~25_combout\ & !\LessThan15~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \temp3~25_combout\,
	datad => VCC,
	cin => \LessThan15~22_cout\,
	cout => \LessThan15~24_cout\);

-- Location: LCCOMB_X37_Y19_N6
\LessThan15~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~26_cout\ = CARRY((n_y(11) & (\temp3~24_combout\ & !\LessThan15~24_cout\)) # (!n_y(11) & ((\temp3~24_combout\) # (!\LessThan15~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \temp3~24_combout\,
	datad => VCC,
	cin => \LessThan15~24_cout\,
	cout => \LessThan15~26_cout\);

-- Location: LCCOMB_X37_Y19_N8
\LessThan15~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~28_cout\ = CARRY((\temp3~23_combout\ & (n_y(12) & !\LessThan15~26_cout\)) # (!\temp3~23_combout\ & ((n_y(12)) # (!\LessThan15~26_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~23_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \LessThan15~26_cout\,
	cout => \LessThan15~28_cout\);

-- Location: LCCOMB_X37_Y19_N10
\LessThan15~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~30_cout\ = CARRY((n_y(13) & (\temp3~22_combout\ & !\LessThan15~28_cout\)) # (!n_y(13) & ((\temp3~22_combout\) # (!\LessThan15~28_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \temp3~22_combout\,
	datad => VCC,
	cin => \LessThan15~28_cout\,
	cout => \LessThan15~30_cout\);

-- Location: LCCOMB_X37_Y19_N12
\LessThan15~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~32_cout\ = CARRY((n_y(14) & ((!\LessThan15~30_cout\) # (!\temp3~21_combout\))) # (!n_y(14) & (!\temp3~21_combout\ & !\LessThan15~30_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \temp3~21_combout\,
	datad => VCC,
	cin => \LessThan15~30_cout\,
	cout => \LessThan15~32_cout\);

-- Location: LCCOMB_X37_Y19_N14
\LessThan15~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~34_cout\ = CARRY((n_y(15) & (\temp3~20_combout\ & !\LessThan15~32_cout\)) # (!n_y(15) & ((\temp3~20_combout\) # (!\LessThan15~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datab => \temp3~20_combout\,
	datad => VCC,
	cin => \LessThan15~32_cout\,
	cout => \LessThan15~34_cout\);

-- Location: LCCOMB_X37_Y19_N16
\LessThan15~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~36_cout\ = CARRY((n_y(16) & ((!\LessThan15~34_cout\) # (!\temp3~40_combout\))) # (!n_y(16) & (!\temp3~40_combout\ & !\LessThan15~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \temp3~40_combout\,
	datad => VCC,
	cin => \LessThan15~34_cout\,
	cout => \LessThan15~36_cout\);

-- Location: LCCOMB_X37_Y19_N18
\LessThan15~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~37_combout\ = (n_y(17) & (!\LessThan15~36_cout\ & \temp3~39_combout\)) # (!n_y(17) & ((\temp3~39_combout\) # (!\LessThan15~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(17),
	datad => \temp3~39_combout\,
	cin => \LessThan15~36_cout\,
	combout => \LessThan15~37_combout\);

-- Location: LCCOMB_X37_Y19_N24
\LessThan15~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan15~40_combout\ = (\temp3~41_combout\) # ((\LessThan15~0_combout\) # ((\LessThan15~39_combout\) # (\LessThan15~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~41_combout\,
	datab => \LessThan15~0_combout\,
	datac => \LessThan15~39_combout\,
	datad => \LessThan15~37_combout\,
	combout => \LessThan15~40_combout\);

-- Location: LCCOMB_X44_Y25_N6
\Selector104~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan15~40_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (y_int(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => y_int(3),
	datad => \LessThan15~40_combout\,
	combout => \Selector104~0_combout\);

-- Location: FF_X44_Y25_N7
\y_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector104~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(3));

-- Location: LCCOMB_X38_Y20_N8
\Add17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = (n_y(0) & (sum_Vpx(3) $ (VCC))) # (!n_y(0) & ((sum_Vpx(3)) # (GND)))
-- \Add17~5\ = CARRY((sum_Vpx(3)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(3),
	datad => VCC,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X38_Y20_N10
\Add17~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (n_y(1) & ((\temp3~35_combout\ & (!\Add17~5\)) # (!\temp3~35_combout\ & ((\Add17~5\) # (GND))))) # (!n_y(1) & ((\temp3~35_combout\ & (\Add17~5\ & VCC)) # (!\temp3~35_combout\ & (!\Add17~5\))))
-- \Add17~7\ = CARRY((n_y(1) & ((!\Add17~5\) # (!\temp3~35_combout\))) # (!n_y(1) & (!\temp3~35_combout\ & !\Add17~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \temp3~35_combout\,
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X38_Y20_N12
\Add17~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~8_combout\ = ((\temp3~33_combout\ $ (n_y(2) $ (\Add17~7\)))) # (GND)
-- \Add17~9\ = CARRY((\temp3~33_combout\ & ((!\Add17~7\) # (!n_y(2)))) # (!\temp3~33_combout\ & (!n_y(2) & !\Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~33_combout\,
	datab => n_y(2),
	datad => VCC,
	cin => \Add17~7\,
	combout => \Add17~8_combout\,
	cout => \Add17~9\);

-- Location: LCCOMB_X38_Y20_N14
\Add17~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = (n_y(3) & ((\temp3~32_combout\ & (!\Add17~9\)) # (!\temp3~32_combout\ & ((\Add17~9\) # (GND))))) # (!n_y(3) & ((\temp3~32_combout\ & (\Add17~9\ & VCC)) # (!\temp3~32_combout\ & (!\Add17~9\))))
-- \Add17~11\ = CARRY((n_y(3) & ((!\Add17~9\) # (!\temp3~32_combout\))) # (!n_y(3) & (!\temp3~32_combout\ & !\Add17~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => \temp3~32_combout\,
	datad => VCC,
	cin => \Add17~9\,
	combout => \Add17~10_combout\,
	cout => \Add17~11\);

-- Location: LCCOMB_X38_Y20_N16
\Add17~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~12_combout\ = ((\temp3~31_combout\ $ (n_y(4) $ (\Add17~11\)))) # (GND)
-- \Add17~13\ = CARRY((\temp3~31_combout\ & ((!\Add17~11\) # (!n_y(4)))) # (!\temp3~31_combout\ & (!n_y(4) & !\Add17~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~31_combout\,
	datab => n_y(4),
	datad => VCC,
	cin => \Add17~11\,
	combout => \Add17~12_combout\,
	cout => \Add17~13\);

-- Location: LCCOMB_X38_Y20_N18
\Add17~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~14_combout\ = (\temp3~30_combout\ & ((n_y(5) & (!\Add17~13\)) # (!n_y(5) & (\Add17~13\ & VCC)))) # (!\temp3~30_combout\ & ((n_y(5) & ((\Add17~13\) # (GND))) # (!n_y(5) & (!\Add17~13\))))
-- \Add17~15\ = CARRY((\temp3~30_combout\ & (n_y(5) & !\Add17~13\)) # (!\temp3~30_combout\ & ((n_y(5)) # (!\Add17~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~30_combout\,
	datab => n_y(5),
	datad => VCC,
	cin => \Add17~13\,
	combout => \Add17~14_combout\,
	cout => \Add17~15\);

-- Location: LCCOMB_X38_Y20_N20
\Add17~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~16_combout\ = ((n_y(6) $ (\temp3~29_combout\ $ (\Add17~15\)))) # (GND)
-- \Add17~17\ = CARRY((n_y(6) & (\temp3~29_combout\ & !\Add17~15\)) # (!n_y(6) & ((\temp3~29_combout\) # (!\Add17~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \temp3~29_combout\,
	datad => VCC,
	cin => \Add17~15\,
	combout => \Add17~16_combout\,
	cout => \Add17~17\);

-- Location: LCCOMB_X38_Y20_N22
\Add17~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~18_combout\ = (\temp3~28_combout\ & ((n_y(7) & (!\Add17~17\)) # (!n_y(7) & (\Add17~17\ & VCC)))) # (!\temp3~28_combout\ & ((n_y(7) & ((\Add17~17\) # (GND))) # (!n_y(7) & (!\Add17~17\))))
-- \Add17~19\ = CARRY((\temp3~28_combout\ & (n_y(7) & !\Add17~17\)) # (!\temp3~28_combout\ & ((n_y(7)) # (!\Add17~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~28_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \Add17~17\,
	combout => \Add17~18_combout\,
	cout => \Add17~19\);

-- Location: LCCOMB_X38_Y20_N24
\Add17~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~20_combout\ = ((\temp3~27_combout\ $ (n_y(8) $ (\Add17~19\)))) # (GND)
-- \Add17~21\ = CARRY((\temp3~27_combout\ & ((!\Add17~19\) # (!n_y(8)))) # (!\temp3~27_combout\ & (!n_y(8) & !\Add17~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~27_combout\,
	datab => n_y(8),
	datad => VCC,
	cin => \Add17~19\,
	combout => \Add17~20_combout\,
	cout => \Add17~21\);

-- Location: LCCOMB_X38_Y20_N26
\Add17~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~22_combout\ = (n_y(9) & ((\temp3~26_combout\ & (!\Add17~21\)) # (!\temp3~26_combout\ & ((\Add17~21\) # (GND))))) # (!n_y(9) & ((\temp3~26_combout\ & (\Add17~21\ & VCC)) # (!\temp3~26_combout\ & (!\Add17~21\))))
-- \Add17~23\ = CARRY((n_y(9) & ((!\Add17~21\) # (!\temp3~26_combout\))) # (!n_y(9) & (!\temp3~26_combout\ & !\Add17~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \temp3~26_combout\,
	datad => VCC,
	cin => \Add17~21\,
	combout => \Add17~22_combout\,
	cout => \Add17~23\);

-- Location: LCCOMB_X38_Y20_N28
\Add17~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~24_combout\ = ((\temp3~25_combout\ $ (n_y(10) $ (\Add17~23\)))) # (GND)
-- \Add17~25\ = CARRY((\temp3~25_combout\ & ((!\Add17~23\) # (!n_y(10)))) # (!\temp3~25_combout\ & (!n_y(10) & !\Add17~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~25_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \Add17~23\,
	combout => \Add17~24_combout\,
	cout => \Add17~25\);

-- Location: LCCOMB_X38_Y20_N30
\Add17~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~26_combout\ = (n_y(11) & ((\temp3~24_combout\ & (!\Add17~25\)) # (!\temp3~24_combout\ & ((\Add17~25\) # (GND))))) # (!n_y(11) & ((\temp3~24_combout\ & (\Add17~25\ & VCC)) # (!\temp3~24_combout\ & (!\Add17~25\))))
-- \Add17~27\ = CARRY((n_y(11) & ((!\Add17~25\) # (!\temp3~24_combout\))) # (!n_y(11) & (!\temp3~24_combout\ & !\Add17~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \temp3~24_combout\,
	datad => VCC,
	cin => \Add17~25\,
	combout => \Add17~26_combout\,
	cout => \Add17~27\);

-- Location: LCCOMB_X38_Y19_N0
\Add17~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~28_combout\ = ((n_y(12) $ (\temp3~23_combout\ $ (\Add17~27\)))) # (GND)
-- \Add17~29\ = CARRY((n_y(12) & (\temp3~23_combout\ & !\Add17~27\)) # (!n_y(12) & ((\temp3~23_combout\) # (!\Add17~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \temp3~23_combout\,
	datad => VCC,
	cin => \Add17~27\,
	combout => \Add17~28_combout\,
	cout => \Add17~29\);

-- Location: LCCOMB_X38_Y19_N2
\Add17~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~30_combout\ = (n_y(13) & ((\temp3~22_combout\ & (!\Add17~29\)) # (!\temp3~22_combout\ & ((\Add17~29\) # (GND))))) # (!n_y(13) & ((\temp3~22_combout\ & (\Add17~29\ & VCC)) # (!\temp3~22_combout\ & (!\Add17~29\))))
-- \Add17~31\ = CARRY((n_y(13) & ((!\Add17~29\) # (!\temp3~22_combout\))) # (!n_y(13) & (!\temp3~22_combout\ & !\Add17~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \temp3~22_combout\,
	datad => VCC,
	cin => \Add17~29\,
	combout => \Add17~30_combout\,
	cout => \Add17~31\);

-- Location: LCCOMB_X38_Y19_N4
\Add17~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~32_combout\ = ((n_y(14) $ (\temp3~21_combout\ $ (\Add17~31\)))) # (GND)
-- \Add17~33\ = CARRY((n_y(14) & (\temp3~21_combout\ & !\Add17~31\)) # (!n_y(14) & ((\temp3~21_combout\) # (!\Add17~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \temp3~21_combout\,
	datad => VCC,
	cin => \Add17~31\,
	combout => \Add17~32_combout\,
	cout => \Add17~33\);

-- Location: LCCOMB_X38_Y19_N6
\Add17~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~34_combout\ = (\temp3~20_combout\ & ((n_y(15) & (!\Add17~33\)) # (!n_y(15) & (\Add17~33\ & VCC)))) # (!\temp3~20_combout\ & ((n_y(15) & ((\Add17~33\) # (GND))) # (!n_y(15) & (!\Add17~33\))))
-- \Add17~35\ = CARRY((\temp3~20_combout\ & (n_y(15) & !\Add17~33\)) # (!\temp3~20_combout\ & ((n_y(15)) # (!\Add17~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~20_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \Add17~33\,
	combout => \Add17~34_combout\,
	cout => \Add17~35\);

-- Location: LCCOMB_X38_Y19_N8
\Add17~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~53_combout\ = ((n_y(16) $ (\temp3~40_combout\ $ (\Add17~35\)))) # (GND)
-- \Add17~54\ = CARRY((n_y(16) & (\temp3~40_combout\ & !\Add17~35\)) # (!n_y(16) & ((\temp3~40_combout\) # (!\Add17~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \temp3~40_combout\,
	datad => VCC,
	cin => \Add17~35\,
	combout => \Add17~53_combout\,
	cout => \Add17~54\);

-- Location: LCCOMB_X38_Y19_N10
\Add17~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~55_combout\ = (n_y(17) & ((\temp3~39_combout\ & (!\Add17~54\)) # (!\temp3~39_combout\ & ((\Add17~54\) # (GND))))) # (!n_y(17) & ((\temp3~39_combout\ & (\Add17~54\ & VCC)) # (!\temp3~39_combout\ & (!\Add17~54\))))
-- \Add17~56\ = CARRY((n_y(17) & ((!\Add17~54\) # (!\temp3~39_combout\))) # (!n_y(17) & (!\temp3~39_combout\ & !\Add17~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datab => \temp3~39_combout\,
	datad => VCC,
	cin => \Add17~54\,
	combout => \Add17~55_combout\,
	cout => \Add17~56\);

-- Location: LCCOMB_X38_Y19_N12
\Add17~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~58_combout\ = (\temp3~36_combout\ & ((GND) # (!\Add17~56\))) # (!\temp3~36_combout\ & (\Add17~56\ $ (GND)))
-- \Add17~59\ = CARRY((\temp3~36_combout\) # (!\Add17~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~36_combout\,
	datad => VCC,
	cin => \Add17~56\,
	combout => \Add17~58_combout\,
	cout => \Add17~59\);

-- Location: LCCOMB_X37_Y21_N4
\temp3~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~42_combout\ = (\LessThan14~39_combout\ & \Add16~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan14~39_combout\,
	datad => \Add16~36_combout\,
	combout => \temp3~42_combout\);

-- Location: LCCOMB_X38_Y19_N14
\Add17~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~60_combout\ = (\temp3~42_combout\ & (\Add17~59\ & VCC)) # (!\temp3~42_combout\ & (!\Add17~59\))
-- \Add17~61\ = CARRY((!\temp3~42_combout\ & !\Add17~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~42_combout\,
	datad => VCC,
	cin => \Add17~59\,
	combout => \Add17~60_combout\,
	cout => \Add17~61\);

-- Location: LCCOMB_X38_Y19_N16
\Add17~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~62_combout\ = (\temp3~41_combout\ & ((GND) # (!\Add17~61\))) # (!\temp3~41_combout\ & (\Add17~61\ $ (GND)))
-- \Add17~63\ = CARRY((\temp3~41_combout\) # (!\Add17~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~41_combout\,
	datad => VCC,
	cin => \Add17~61\,
	combout => \Add17~62_combout\,
	cout => \Add17~63\);

-- Location: LCCOMB_X38_Y19_N30
\LessThan16~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~40_combout\ = (\LessThan15~40_combout\ & ((\Add17~58_combout\) # ((\Add17~60_combout\) # (\Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~58_combout\,
	datab => \LessThan15~40_combout\,
	datac => \Add17~60_combout\,
	datad => \Add17~62_combout\,
	combout => \LessThan16~40_combout\);

-- Location: LCCOMB_X38_Y19_N18
\Add17~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~64_combout\ = (\LessThan14~39_combout\ & ((\Add16~40_combout\ & (\Add17~63\ & VCC)) # (!\Add16~40_combout\ & (!\Add17~63\)))) # (!\LessThan14~39_combout\ & (((!\Add17~63\))))
-- \Add17~65\ = CARRY((!\Add17~63\ & ((!\Add16~40_combout\) # (!\LessThan14~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~39_combout\,
	datab => \Add16~40_combout\,
	datad => VCC,
	cin => \Add17~63\,
	combout => \Add17~64_combout\,
	cout => \Add17~65\);

-- Location: LCCOMB_X37_Y17_N8
\Add17~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~57_combout\ = (\LessThan15~40_combout\ & ((\Add17~55_combout\))) # (!\LessThan15~40_combout\ & (\temp3~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~39_combout\,
	datac => \Add17~55_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~57_combout\);

-- Location: LCCOMB_X38_Y19_N20
\Add17~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~66_combout\ = (\Add17~65\ & ((((\LessThan14~39_combout\ & \Add16~42_combout\))))) # (!\Add17~65\ & (((\LessThan14~39_combout\ & \Add16~42_combout\)) # (GND)))
-- \Add17~67\ = CARRY(((\LessThan14~39_combout\ & \Add16~42_combout\)) # (!\Add17~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~39_combout\,
	datab => \Add16~42_combout\,
	datad => VCC,
	cin => \Add17~65\,
	combout => \Add17~66_combout\,
	cout => \Add17~67\);

-- Location: LCCOMB_X38_Y19_N22
\Add17~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~68_combout\ = (\LessThan14~39_combout\ & ((\Add16~44_combout\ & (\Add17~67\ & VCC)) # (!\Add16~44_combout\ & (!\Add17~67\)))) # (!\LessThan14~39_combout\ & (((!\Add17~67\))))
-- \Add17~69\ = CARRY((!\Add17~67\ & ((!\Add16~44_combout\) # (!\LessThan14~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~39_combout\,
	datab => \Add16~44_combout\,
	datad => VCC,
	cin => \Add17~67\,
	combout => \Add17~68_combout\,
	cout => \Add17~69\);

-- Location: LCCOMB_X38_Y19_N24
\Add17~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~70_combout\ = \Add17~69\ $ (((\LessThan14~39_combout\ & \Add16~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~39_combout\,
	datad => \Add16~46_combout\,
	cin => \Add17~69\,
	combout => \Add17~70_combout\);

-- Location: LCCOMB_X37_Y17_N18
\LessThan16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (\LessThan15~40_combout\ & ((\Add17~66_combout\) # ((\Add17~70_combout\) # (\Add17~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~66_combout\,
	datab => \LessThan15~40_combout\,
	datac => \Add17~70_combout\,
	datad => \Add17~68_combout\,
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X37_Y17_N0
\LessThan16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (\Add17~57_combout\) # ((\LessThan16~0_combout\) # ((\Add17~64_combout\ & \LessThan15~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~64_combout\,
	datab => \LessThan15~40_combout\,
	datac => \Add17~57_combout\,
	datad => \LessThan16~0_combout\,
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X38_Y19_N28
\Add17~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~72_combout\ = (\LessThan15~40_combout\ & ((\Add17~53_combout\))) # (!\LessThan15~40_combout\ & (\temp3~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~40_combout\,
	datac => \Add17~53_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~72_combout\);

-- Location: LCCOMB_X39_Y19_N24
\Add17~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~36_combout\ = (\LessThan15~40_combout\ & ((\Add17~34_combout\))) # (!\LessThan15~40_combout\ & (\temp3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~20_combout\,
	datac => \Add17~34_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~36_combout\);

-- Location: LCCOMB_X38_Y19_N26
\Add17~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~37_combout\ = (\LessThan15~40_combout\ & ((\Add17~32_combout\))) # (!\LessThan15~40_combout\ & (\temp3~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~21_combout\,
	datac => \Add17~32_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~37_combout\);

-- Location: LCCOMB_X37_Y21_N16
\Add17~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~38_combout\ = (\LessThan15~40_combout\ & ((\Add17~30_combout\))) # (!\LessThan15~40_combout\ & (\temp3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~22_combout\,
	datac => \Add17~30_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~38_combout\);

-- Location: LCCOMB_X39_Y19_N2
\Add17~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~39_combout\ = (\LessThan15~40_combout\ & ((\Add17~28_combout\))) # (!\LessThan15~40_combout\ & (\temp3~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~23_combout\,
	datac => \Add17~28_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~39_combout\);

-- Location: LCCOMB_X39_Y19_N20
\Add17~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~40_combout\ = (\LessThan15~40_combout\ & ((\Add17~26_combout\))) # (!\LessThan15~40_combout\ & (\temp3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~24_combout\,
	datac => \Add17~26_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~40_combout\);

-- Location: LCCOMB_X38_Y20_N6
\Add17~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~41_combout\ = (\LessThan15~40_combout\ & ((\Add17~24_combout\))) # (!\LessThan15~40_combout\ & (\temp3~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~25_combout\,
	datac => \LessThan15~40_combout\,
	datad => \Add17~24_combout\,
	combout => \Add17~41_combout\);

-- Location: LCCOMB_X39_Y19_N18
\Add17~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~42_combout\ = (\LessThan15~40_combout\ & (\Add17~22_combout\)) # (!\LessThan15~40_combout\ & ((\temp3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~22_combout\,
	datac => \temp3~26_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~42_combout\);

-- Location: LCCOMB_X37_Y21_N14
\Add17~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~43_combout\ = (\LessThan15~40_combout\ & ((\Add17~20_combout\))) # (!\LessThan15~40_combout\ & (\temp3~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp3~27_combout\,
	datac => \Add17~20_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~43_combout\);

-- Location: LCCOMB_X38_Y20_N4
\Add17~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~44_combout\ = (\LessThan15~40_combout\ & ((\Add17~18_combout\))) # (!\LessThan15~40_combout\ & (\temp3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~28_combout\,
	datac => \Add17~18_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~44_combout\);

-- Location: LCCOMB_X38_Y18_N12
\Add17~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~45_combout\ = (\LessThan15~40_combout\ & ((\Add17~16_combout\))) # (!\LessThan15~40_combout\ & (\temp3~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~29_combout\,
	datac => \LessThan15~40_combout\,
	datad => \Add17~16_combout\,
	combout => \Add17~45_combout\);

-- Location: LCCOMB_X38_Y18_N10
\Add17~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~46_combout\ = (\LessThan15~40_combout\ & ((\Add17~14_combout\))) # (!\LessThan15~40_combout\ & (\temp3~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~30_combout\,
	datac => \LessThan15~40_combout\,
	datad => \Add17~14_combout\,
	combout => \Add17~46_combout\);

-- Location: LCCOMB_X38_Y18_N4
\Add17~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~47_combout\ = (\LessThan15~40_combout\ & ((\Add17~12_combout\))) # (!\LessThan15~40_combout\ & (\temp3~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~31_combout\,
	datab => \Add17~12_combout\,
	datac => \LessThan15~40_combout\,
	combout => \Add17~47_combout\);

-- Location: LCCOMB_X38_Y18_N6
\Add17~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~48_combout\ = (\LessThan15~40_combout\ & ((\Add17~10_combout\))) # (!\LessThan15~40_combout\ & (\temp3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~32_combout\,
	datac => \LessThan15~40_combout\,
	datad => \Add17~10_combout\,
	combout => \Add17~48_combout\);

-- Location: LCCOMB_X37_Y18_N16
\Add17~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~80_combout\ = (\LessThan15~39_combout\) # ((\LessThan15~0_combout\) # ((\LessThan14~39_combout\ & \Add16~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~39_combout\,
	datab => \LessThan14~39_combout\,
	datac => \Add16~38_combout\,
	datad => \LessThan15~0_combout\,
	combout => \Add17~80_combout\);

-- Location: LCCOMB_X38_Y18_N8
\Add17~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~49_combout\ = (\Add17~80_combout\ & (((\Add17~8_combout\)))) # (!\Add17~80_combout\ & ((\LessThan15~37_combout\ & ((\Add17~8_combout\))) # (!\LessThan15~37_combout\ & (\temp3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~33_combout\,
	datab => \Add17~8_combout\,
	datac => \Add17~80_combout\,
	datad => \LessThan15~37_combout\,
	combout => \Add17~49_combout\);

-- Location: LCCOMB_X38_Y18_N2
\Add17~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~50_combout\ = (\Add17~80_combout\ & (((\Add17~6_combout\)))) # (!\Add17~80_combout\ & ((\LessThan15~37_combout\ & ((\Add17~6_combout\))) # (!\LessThan15~37_combout\ & (\temp3~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~35_combout\,
	datab => \Add17~6_combout\,
	datac => \Add17~80_combout\,
	datad => \LessThan15~37_combout\,
	combout => \Add17~50_combout\);

-- Location: LCCOMB_X35_Y19_N14
\Add17~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~51_combout\ = (\LessThan15~39_combout\ & (((\Add17~4_combout\)))) # (!\LessThan15~39_combout\ & ((\temp3~41_combout\ & ((\Add17~4_combout\))) # (!\temp3~41_combout\ & (sum_Vpx(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(3),
	datab => \LessThan15~39_combout\,
	datac => \Add17~4_combout\,
	datad => \temp3~41_combout\,
	combout => \Add17~51_combout\);

-- Location: LCCOMB_X37_Y19_N30
\Add17~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~52_combout\ = (\LessThan15~0_combout\ & (\Add17~4_combout\)) # (!\LessThan15~0_combout\ & ((\LessThan15~37_combout\ & (\Add17~4_combout\)) # (!\LessThan15~37_combout\ & ((\Add17~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~4_combout\,
	datab => \LessThan15~0_combout\,
	datac => \Add17~51_combout\,
	datad => \LessThan15~37_combout\,
	combout => \Add17~52_combout\);

-- Location: LCCOMB_X41_Y18_N2
\LessThan10~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan10~44_combout\ = (sum_Vpx(0)) # (sum_Vpx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum_Vpx(0),
	datad => sum_Vpx(1),
	combout => \LessThan10~44_combout\);

-- Location: LCCOMB_X38_Y18_N14
\LessThan16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~3_cout\ = CARRY(\LessThan10~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~44_combout\,
	datad => VCC,
	cout => \LessThan16~3_cout\);

-- Location: LCCOMB_X38_Y18_N16
\LessThan16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~5_cout\ = CARRY((sum_Vpx(2) & (n_y(0) & !\LessThan16~3_cout\)) # (!sum_Vpx(2) & ((n_y(0)) # (!\LessThan16~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(2),
	datab => n_y(0),
	datad => VCC,
	cin => \LessThan16~3_cout\,
	cout => \LessThan16~5_cout\);

-- Location: LCCOMB_X38_Y18_N18
\LessThan16~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~7_cout\ = CARRY((n_y(1) & (\Add17~52_combout\ & !\LessThan16~5_cout\)) # (!n_y(1) & ((\Add17~52_combout\) # (!\LessThan16~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add17~52_combout\,
	datad => VCC,
	cin => \LessThan16~5_cout\,
	cout => \LessThan16~7_cout\);

-- Location: LCCOMB_X38_Y18_N20
\LessThan16~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~9_cout\ = CARRY((n_y(2) & ((!\LessThan16~7_cout\) # (!\Add17~50_combout\))) # (!n_y(2) & (!\Add17~50_combout\ & !\LessThan16~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \Add17~50_combout\,
	datad => VCC,
	cin => \LessThan16~7_cout\,
	cout => \LessThan16~9_cout\);

-- Location: LCCOMB_X38_Y18_N22
\LessThan16~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~11_cout\ = CARRY((n_y(3) & (\Add17~49_combout\ & !\LessThan16~9_cout\)) # (!n_y(3) & ((\Add17~49_combout\) # (!\LessThan16~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => \Add17~49_combout\,
	datad => VCC,
	cin => \LessThan16~9_cout\,
	cout => \LessThan16~11_cout\);

-- Location: LCCOMB_X38_Y18_N24
\LessThan16~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~13_cout\ = CARRY((\Add17~48_combout\ & (n_y(4) & !\LessThan16~11_cout\)) # (!\Add17~48_combout\ & ((n_y(4)) # (!\LessThan16~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~48_combout\,
	datab => n_y(4),
	datad => VCC,
	cin => \LessThan16~11_cout\,
	cout => \LessThan16~13_cout\);

-- Location: LCCOMB_X38_Y18_N26
\LessThan16~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~15_cout\ = CARRY((n_y(5) & (\Add17~47_combout\ & !\LessThan16~13_cout\)) # (!n_y(5) & ((\Add17~47_combout\) # (!\LessThan16~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add17~47_combout\,
	datad => VCC,
	cin => \LessThan16~13_cout\,
	cout => \LessThan16~15_cout\);

-- Location: LCCOMB_X38_Y18_N28
\LessThan16~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~17_cout\ = CARRY((\Add17~46_combout\ & (n_y(6) & !\LessThan16~15_cout\)) # (!\Add17~46_combout\ & ((n_y(6)) # (!\LessThan16~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~46_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \LessThan16~15_cout\,
	cout => \LessThan16~17_cout\);

-- Location: LCCOMB_X38_Y18_N30
\LessThan16~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~19_cout\ = CARRY((\Add17~45_combout\ & ((!\LessThan16~17_cout\) # (!n_y(7)))) # (!\Add17~45_combout\ & (!n_y(7) & !\LessThan16~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~45_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan16~17_cout\,
	cout => \LessThan16~19_cout\);

-- Location: LCCOMB_X38_Y17_N0
\LessThan16~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~21_cout\ = CARRY((\Add17~44_combout\ & (n_y(8) & !\LessThan16~19_cout\)) # (!\Add17~44_combout\ & ((n_y(8)) # (!\LessThan16~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~44_combout\,
	datab => n_y(8),
	datad => VCC,
	cin => \LessThan16~19_cout\,
	cout => \LessThan16~21_cout\);

-- Location: LCCOMB_X38_Y17_N2
\LessThan16~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~23_cout\ = CARRY((n_y(9) & (\Add17~43_combout\ & !\LessThan16~21_cout\)) # (!n_y(9) & ((\Add17~43_combout\) # (!\LessThan16~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add17~43_combout\,
	datad => VCC,
	cin => \LessThan16~21_cout\,
	cout => \LessThan16~23_cout\);

-- Location: LCCOMB_X38_Y17_N4
\LessThan16~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~25_cout\ = CARRY((\Add17~42_combout\ & (n_y(10) & !\LessThan16~23_cout\)) # (!\Add17~42_combout\ & ((n_y(10)) # (!\LessThan16~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~42_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \LessThan16~23_cout\,
	cout => \LessThan16~25_cout\);

-- Location: LCCOMB_X38_Y17_N6
\LessThan16~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~27_cout\ = CARRY((\Add17~41_combout\ & ((!\LessThan16~25_cout\) # (!n_y(11)))) # (!\Add17~41_combout\ & (!n_y(11) & !\LessThan16~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~41_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \LessThan16~25_cout\,
	cout => \LessThan16~27_cout\);

-- Location: LCCOMB_X38_Y17_N8
\LessThan16~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~29_cout\ = CARRY((\Add17~40_combout\ & (n_y(12) & !\LessThan16~27_cout\)) # (!\Add17~40_combout\ & ((n_y(12)) # (!\LessThan16~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~40_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \LessThan16~27_cout\,
	cout => \LessThan16~29_cout\);

-- Location: LCCOMB_X38_Y17_N10
\LessThan16~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~31_cout\ = CARRY((n_y(13) & (\Add17~39_combout\ & !\LessThan16~29_cout\)) # (!n_y(13) & ((\Add17~39_combout\) # (!\LessThan16~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \Add17~39_combout\,
	datad => VCC,
	cin => \LessThan16~29_cout\,
	cout => \LessThan16~31_cout\);

-- Location: LCCOMB_X38_Y17_N12
\LessThan16~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~33_cout\ = CARRY((\Add17~38_combout\ & (n_y(14) & !\LessThan16~31_cout\)) # (!\Add17~38_combout\ & ((n_y(14)) # (!\LessThan16~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~38_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \LessThan16~31_cout\,
	cout => \LessThan16~33_cout\);

-- Location: LCCOMB_X38_Y17_N14
\LessThan16~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~35_cout\ = CARRY((n_y(15) & (\Add17~37_combout\ & !\LessThan16~33_cout\)) # (!n_y(15) & ((\Add17~37_combout\) # (!\LessThan16~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datab => \Add17~37_combout\,
	datad => VCC,
	cin => \LessThan16~33_cout\,
	cout => \LessThan16~35_cout\);

-- Location: LCCOMB_X38_Y17_N16
\LessThan16~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~37_cout\ = CARRY((n_y(16) & ((!\LessThan16~35_cout\) # (!\Add17~36_combout\))) # (!n_y(16) & (!\Add17~36_combout\ & !\LessThan16~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \Add17~36_combout\,
	datad => VCC,
	cin => \LessThan16~35_cout\,
	cout => \LessThan16~37_cout\);

-- Location: LCCOMB_X38_Y17_N18
\LessThan16~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~38_combout\ = (n_y(17) & (!\LessThan16~37_cout\ & \Add17~72_combout\)) # (!n_y(17) & ((\Add17~72_combout\) # (!\LessThan16~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datad => \Add17~72_combout\,
	cin => \LessThan16~37_cout\,
	combout => \LessThan16~38_combout\);

-- Location: LCCOMB_X38_Y17_N24
\LessThan16~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan16~41_combout\ = (\LessThan16~40_combout\) # ((\LessThan16~1_combout\) # (\LessThan16~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~40_combout\,
	datac => \LessThan16~1_combout\,
	datad => \LessThan16~38_combout\,
	combout => \LessThan16~41_combout\);

-- Location: LCCOMB_X44_Y25_N12
\Selector105~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan16~41_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (y_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => y_int(2),
	datad => \LessThan16~41_combout\,
	combout => \Selector105~0_combout\);

-- Location: FF_X44_Y25_N13
\y_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(2));

-- Location: LCCOMB_X39_Y19_N10
\Add17~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~77_combout\ = (\LessThan15~40_combout\ & \Add17~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan15~40_combout\,
	datad => \Add17~66_combout\,
	combout => \Add17~77_combout\);

-- Location: LCCOMB_X37_Y17_N24
\Add17~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~78_combout\ = (\LessThan15~40_combout\ & \Add17~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan15~40_combout\,
	datac => \Add17~64_combout\,
	combout => \Add17~78_combout\);

-- Location: LCCOMB_X39_Y19_N28
\Add17~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~79_combout\ = (\Add17~62_combout\ & \LessThan15~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add17~62_combout\,
	datad => \LessThan15~40_combout\,
	combout => \Add17~79_combout\);

-- Location: LCCOMB_X39_Y19_N30
\Add17~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~74_combout\ = (\Add17~60_combout\ & \LessThan15~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~60_combout\,
	datac => \LessThan15~40_combout\,
	combout => \Add17~74_combout\);

-- Location: LCCOMB_X39_Y19_N0
\Add17~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~73_combout\ = (\LessThan15~40_combout\ & \Add17~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan15~40_combout\,
	datad => \Add17~58_combout\,
	combout => \Add17~73_combout\);

-- Location: LCCOMB_X39_Y18_N6
\Add18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = (n_y(0) & (sum_Vpx(2) $ (VCC))) # (!n_y(0) & ((sum_Vpx(2)) # (GND)))
-- \Add18~1\ = CARRY((sum_Vpx(2)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(2),
	datad => VCC,
	combout => \Add18~0_combout\,
	cout => \Add18~1\);

-- Location: LCCOMB_X39_Y18_N8
\Add18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (n_y(1) & ((\Add17~52_combout\ & (!\Add18~1\)) # (!\Add17~52_combout\ & ((\Add18~1\) # (GND))))) # (!n_y(1) & ((\Add17~52_combout\ & (\Add18~1\ & VCC)) # (!\Add17~52_combout\ & (!\Add18~1\))))
-- \Add18~3\ = CARRY((n_y(1) & ((!\Add18~1\) # (!\Add17~52_combout\))) # (!n_y(1) & (!\Add17~52_combout\ & !\Add18~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(1),
	datab => \Add17~52_combout\,
	datad => VCC,
	cin => \Add18~1\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X39_Y18_N10
\Add18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = ((\Add17~50_combout\ $ (n_y(2) $ (\Add18~3\)))) # (GND)
-- \Add18~5\ = CARRY((\Add17~50_combout\ & ((!\Add18~3\) # (!n_y(2)))) # (!\Add17~50_combout\ & (!n_y(2) & !\Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~50_combout\,
	datab => n_y(2),
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X39_Y18_N12
\Add18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (\Add17~49_combout\ & ((n_y(3) & (!\Add18~5\)) # (!n_y(3) & (\Add18~5\ & VCC)))) # (!\Add17~49_combout\ & ((n_y(3) & ((\Add18~5\) # (GND))) # (!n_y(3) & (!\Add18~5\))))
-- \Add18~7\ = CARRY((\Add17~49_combout\ & (n_y(3) & !\Add18~5\)) # (!\Add17~49_combout\ & ((n_y(3)) # (!\Add18~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~49_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X39_Y18_N14
\Add18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = ((n_y(4) $ (\Add17~48_combout\ $ (\Add18~7\)))) # (GND)
-- \Add18~9\ = CARRY((n_y(4) & (\Add17~48_combout\ & !\Add18~7\)) # (!n_y(4) & ((\Add17~48_combout\) # (!\Add18~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add17~48_combout\,
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X39_Y18_N16
\Add18~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (n_y(5) & ((\Add17~47_combout\ & (!\Add18~9\)) # (!\Add17~47_combout\ & ((\Add18~9\) # (GND))))) # (!n_y(5) & ((\Add17~47_combout\ & (\Add18~9\ & VCC)) # (!\Add17~47_combout\ & (!\Add18~9\))))
-- \Add18~11\ = CARRY((n_y(5) & ((!\Add18~9\) # (!\Add17~47_combout\))) # (!n_y(5) & (!\Add17~47_combout\ & !\Add18~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add17~47_combout\,
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X39_Y18_N18
\Add18~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = ((\Add17~46_combout\ $ (n_y(6) $ (\Add18~11\)))) # (GND)
-- \Add18~13\ = CARRY((\Add17~46_combout\ & ((!\Add18~11\) # (!n_y(6)))) # (!\Add17~46_combout\ & (!n_y(6) & !\Add18~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~46_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \Add18~11\,
	combout => \Add18~12_combout\,
	cout => \Add18~13\);

-- Location: LCCOMB_X39_Y18_N20
\Add18~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~14_combout\ = (\Add17~45_combout\ & ((n_y(7) & (!\Add18~13\)) # (!n_y(7) & (\Add18~13\ & VCC)))) # (!\Add17~45_combout\ & ((n_y(7) & ((\Add18~13\) # (GND))) # (!n_y(7) & (!\Add18~13\))))
-- \Add18~15\ = CARRY((\Add17~45_combout\ & (n_y(7) & !\Add18~13\)) # (!\Add17~45_combout\ & ((n_y(7)) # (!\Add18~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~45_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \Add18~13\,
	combout => \Add18~14_combout\,
	cout => \Add18~15\);

-- Location: LCCOMB_X39_Y18_N22
\Add18~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~16_combout\ = ((n_y(8) $ (\Add17~44_combout\ $ (\Add18~15\)))) # (GND)
-- \Add18~17\ = CARRY((n_y(8) & (\Add17~44_combout\ & !\Add18~15\)) # (!n_y(8) & ((\Add17~44_combout\) # (!\Add18~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add17~44_combout\,
	datad => VCC,
	cin => \Add18~15\,
	combout => \Add18~16_combout\,
	cout => \Add18~17\);

-- Location: LCCOMB_X39_Y18_N24
\Add18~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~18_combout\ = (n_y(9) & ((\Add17~43_combout\ & (!\Add18~17\)) # (!\Add17~43_combout\ & ((\Add18~17\) # (GND))))) # (!n_y(9) & ((\Add17~43_combout\ & (\Add18~17\ & VCC)) # (!\Add17~43_combout\ & (!\Add18~17\))))
-- \Add18~19\ = CARRY((n_y(9) & ((!\Add18~17\) # (!\Add17~43_combout\))) # (!n_y(9) & (!\Add17~43_combout\ & !\Add18~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add17~43_combout\,
	datad => VCC,
	cin => \Add18~17\,
	combout => \Add18~18_combout\,
	cout => \Add18~19\);

-- Location: LCCOMB_X39_Y18_N26
\Add18~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~20_combout\ = ((\Add17~42_combout\ $ (n_y(10) $ (\Add18~19\)))) # (GND)
-- \Add18~21\ = CARRY((\Add17~42_combout\ & ((!\Add18~19\) # (!n_y(10)))) # (!\Add17~42_combout\ & (!n_y(10) & !\Add18~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~42_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \Add18~19\,
	combout => \Add18~20_combout\,
	cout => \Add18~21\);

-- Location: LCCOMB_X39_Y18_N28
\Add18~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~22_combout\ = (\Add17~41_combout\ & ((n_y(11) & (!\Add18~21\)) # (!n_y(11) & (\Add18~21\ & VCC)))) # (!\Add17~41_combout\ & ((n_y(11) & ((\Add18~21\) # (GND))) # (!n_y(11) & (!\Add18~21\))))
-- \Add18~23\ = CARRY((\Add17~41_combout\ & (n_y(11) & !\Add18~21\)) # (!\Add17~41_combout\ & ((n_y(11)) # (!\Add18~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~41_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \Add18~21\,
	combout => \Add18~22_combout\,
	cout => \Add18~23\);

-- Location: LCCOMB_X39_Y18_N30
\Add18~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~24_combout\ = ((n_y(12) $ (\Add17~40_combout\ $ (\Add18~23\)))) # (GND)
-- \Add18~25\ = CARRY((n_y(12) & (\Add17~40_combout\ & !\Add18~23\)) # (!n_y(12) & ((\Add17~40_combout\) # (!\Add18~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(12),
	datab => \Add17~40_combout\,
	datad => VCC,
	cin => \Add18~23\,
	combout => \Add18~24_combout\,
	cout => \Add18~25\);

-- Location: LCCOMB_X39_Y17_N0
\Add18~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~26_combout\ = (\Add17~39_combout\ & ((n_y(13) & (!\Add18~25\)) # (!n_y(13) & (\Add18~25\ & VCC)))) # (!\Add17~39_combout\ & ((n_y(13) & ((\Add18~25\) # (GND))) # (!n_y(13) & (!\Add18~25\))))
-- \Add18~27\ = CARRY((\Add17~39_combout\ & (n_y(13) & !\Add18~25\)) # (!\Add17~39_combout\ & ((n_y(13)) # (!\Add18~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~39_combout\,
	datab => n_y(13),
	datad => VCC,
	cin => \Add18~25\,
	combout => \Add18~26_combout\,
	cout => \Add18~27\);

-- Location: LCCOMB_X39_Y17_N2
\Add18~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~28_combout\ = ((n_y(14) $ (\Add17~38_combout\ $ (\Add18~27\)))) # (GND)
-- \Add18~29\ = CARRY((n_y(14) & (\Add17~38_combout\ & !\Add18~27\)) # (!n_y(14) & ((\Add17~38_combout\) # (!\Add18~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \Add17~38_combout\,
	datad => VCC,
	cin => \Add18~27\,
	combout => \Add18~28_combout\,
	cout => \Add18~29\);

-- Location: LCCOMB_X39_Y17_N4
\Add18~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~30_combout\ = (n_y(15) & ((\Add17~37_combout\ & (!\Add18~29\)) # (!\Add17~37_combout\ & ((\Add18~29\) # (GND))))) # (!n_y(15) & ((\Add17~37_combout\ & (\Add18~29\ & VCC)) # (!\Add17~37_combout\ & (!\Add18~29\))))
-- \Add18~31\ = CARRY((n_y(15) & ((!\Add18~29\) # (!\Add17~37_combout\))) # (!n_y(15) & (!\Add17~37_combout\ & !\Add18~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(15),
	datab => \Add17~37_combout\,
	datad => VCC,
	cin => \Add18~29\,
	combout => \Add18~30_combout\,
	cout => \Add18~31\);

-- Location: LCCOMB_X39_Y17_N6
\Add18~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~32_combout\ = ((\Add17~36_combout\ $ (n_y(16) $ (\Add18~31\)))) # (GND)
-- \Add18~33\ = CARRY((\Add17~36_combout\ & ((!\Add18~31\) # (!n_y(16)))) # (!\Add17~36_combout\ & (!n_y(16) & !\Add18~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~36_combout\,
	datab => n_y(16),
	datad => VCC,
	cin => \Add18~31\,
	combout => \Add18~32_combout\,
	cout => \Add18~33\);

-- Location: LCCOMB_X39_Y17_N8
\Add18~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~35_combout\ = (\Add17~72_combout\ & ((n_y(17) & (!\Add18~33\)) # (!n_y(17) & (\Add18~33\ & VCC)))) # (!\Add17~72_combout\ & ((n_y(17) & ((\Add18~33\) # (GND))) # (!n_y(17) & (!\Add18~33\))))
-- \Add18~36\ = CARRY((\Add17~72_combout\ & (n_y(17) & !\Add18~33\)) # (!\Add17~72_combout\ & ((n_y(17)) # (!\Add18~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~72_combout\,
	datab => n_y(17),
	datad => VCC,
	cin => \Add18~33\,
	combout => \Add18~35_combout\,
	cout => \Add18~36\);

-- Location: LCCOMB_X39_Y17_N10
\Add18~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~37_combout\ = (\Add17~57_combout\ & ((GND) # (!\Add18~36\))) # (!\Add17~57_combout\ & (\Add18~36\ $ (GND)))
-- \Add18~38\ = CARRY((\Add17~57_combout\) # (!\Add18~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add17~57_combout\,
	datad => VCC,
	cin => \Add18~36\,
	combout => \Add18~37_combout\,
	cout => \Add18~38\);

-- Location: LCCOMB_X39_Y17_N12
\Add18~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~39_combout\ = (\Add17~73_combout\ & (\Add18~38\ & VCC)) # (!\Add17~73_combout\ & (!\Add18~38\))
-- \Add18~40\ = CARRY((!\Add17~73_combout\ & !\Add18~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~73_combout\,
	datad => VCC,
	cin => \Add18~38\,
	combout => \Add18~39_combout\,
	cout => \Add18~40\);

-- Location: LCCOMB_X39_Y17_N14
\Add18~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~41_combout\ = (\Add17~74_combout\ & ((GND) # (!\Add18~40\))) # (!\Add17~74_combout\ & (\Add18~40\ $ (GND)))
-- \Add18~42\ = CARRY((\Add17~74_combout\) # (!\Add18~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add17~74_combout\,
	datad => VCC,
	cin => \Add18~40\,
	combout => \Add18~41_combout\,
	cout => \Add18~42\);

-- Location: LCCOMB_X39_Y17_N16
\Add18~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~43_combout\ = (\Add17~79_combout\ & (\Add18~42\ & VCC)) # (!\Add17~79_combout\ & (!\Add18~42\))
-- \Add18~44\ = CARRY((!\Add17~79_combout\ & !\Add18~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~79_combout\,
	datad => VCC,
	cin => \Add18~42\,
	combout => \Add18~43_combout\,
	cout => \Add18~44\);

-- Location: LCCOMB_X39_Y17_N18
\Add18~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~45_combout\ = (\Add17~78_combout\ & ((GND) # (!\Add18~44\))) # (!\Add17~78_combout\ & (\Add18~44\ $ (GND)))
-- \Add18~46\ = CARRY((\Add17~78_combout\) # (!\Add18~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add17~78_combout\,
	datad => VCC,
	cin => \Add18~44\,
	combout => \Add18~45_combout\,
	cout => \Add18~46\);

-- Location: LCCOMB_X39_Y17_N20
\Add18~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~47_combout\ = (\Add17~77_combout\ & (\Add18~46\ & VCC)) # (!\Add17~77_combout\ & (!\Add18~46\))
-- \Add18~48\ = CARRY((!\Add17~77_combout\ & !\Add18~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add17~77_combout\,
	datad => VCC,
	cin => \Add18~46\,
	combout => \Add18~47_combout\,
	cout => \Add18~48\);

-- Location: LCCOMB_X38_Y17_N22
\Add18~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~74_combout\ = (\Add18~47_combout\ & ((\LessThan16~40_combout\) # ((\LessThan16~1_combout\) # (\LessThan16~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~40_combout\,
	datab => \LessThan16~1_combout\,
	datac => \Add18~47_combout\,
	datad => \LessThan16~38_combout\,
	combout => \Add18~74_combout\);

-- Location: LCCOMB_X39_Y19_N16
\Add17~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~76_combout\ = (\Add17~68_combout\ & \LessThan15~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~68_combout\,
	datac => \LessThan15~40_combout\,
	combout => \Add17~76_combout\);

-- Location: LCCOMB_X39_Y17_N22
\Add18~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~49_combout\ = (\Add17~76_combout\ & ((GND) # (!\Add18~48\))) # (!\Add17~76_combout\ & (\Add18~48\ $ (GND)))
-- \Add18~50\ = CARRY((\Add17~76_combout\) # (!\Add18~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~76_combout\,
	datad => VCC,
	cin => \Add18~48\,
	combout => \Add18~49_combout\,
	cout => \Add18~50\);

-- Location: LCCOMB_X38_Y17_N28
\Add18~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~75_combout\ = (\Add18~49_combout\ & ((\LessThan16~1_combout\) # ((\LessThan16~38_combout\) # (\LessThan16~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~1_combout\,
	datab => \LessThan16~38_combout\,
	datac => \LessThan16~40_combout\,
	datad => \Add18~49_combout\,
	combout => \Add18~75_combout\);

-- Location: LCCOMB_X37_Y17_N16
\Add18~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~73_combout\ = (\Add18~45_combout\ & ((\LessThan16~1_combout\) # ((\LessThan16~40_combout\) # (\LessThan16~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~1_combout\,
	datab => \LessThan16~40_combout\,
	datac => \Add18~45_combout\,
	datad => \LessThan16~38_combout\,
	combout => \Add18~73_combout\);

-- Location: LCCOMB_X37_Y17_N10
\Add17~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add17~75_combout\ = (\LessThan15~40_combout\ & \Add17~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan15~40_combout\,
	datac => \Add17~70_combout\,
	combout => \Add17~75_combout\);

-- Location: LCCOMB_X39_Y17_N24
\Add18~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~51_combout\ = \Add18~50\ $ (!\Add17~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add17~75_combout\,
	cin => \Add18~50\,
	combout => \Add18~51_combout\);

-- Location: LCCOMB_X38_Y17_N26
\Add18~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~53_combout\ = (\Add18~51_combout\ & ((\LessThan16~1_combout\) # ((\LessThan16~38_combout\) # (\LessThan16~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~1_combout\,
	datab => \LessThan16~38_combout\,
	datac => \LessThan16~40_combout\,
	datad => \Add18~51_combout\,
	combout => \Add18~53_combout\);

-- Location: LCCOMB_X39_Y17_N26
\LessThan17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = ((!\Add18~39_combout\ & (!\Add18~41_combout\ & !\Add18~37_combout\))) # (!\LessThan16~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~39_combout\,
	datab => \LessThan16~41_combout\,
	datac => \Add18~41_combout\,
	datad => \Add18~37_combout\,
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X39_Y17_N28
\Add18~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~54_combout\ = (\LessThan16~41_combout\ & ((\Add18~35_combout\))) # (!\LessThan16~41_combout\ & (\Add17~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~72_combout\,
	datac => \Add18~35_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~54_combout\);

-- Location: LCCOMB_X37_Y17_N14
\Add18~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~55_combout\ = (\Add18~43_combout\ & ((\LessThan16~1_combout\) # ((\LessThan16~40_combout\) # (\LessThan16~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~1_combout\,
	datab => \LessThan16~40_combout\,
	datac => \LessThan16~38_combout\,
	datad => \Add18~43_combout\,
	combout => \Add18~55_combout\);

-- Location: LCCOMB_X38_Y17_N20
\LessThan17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = (!\Add18~53_combout\ & (\LessThan17~0_combout\ & (!\Add18~54_combout\ & !\Add18~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~53_combout\,
	datab => \LessThan17~0_combout\,
	datac => \Add18~54_combout\,
	datad => \Add18~55_combout\,
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X38_Y17_N30
\LessThan17~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~40_combout\ = (\Add18~74_combout\) # ((\Add18~75_combout\) # ((\Add18~73_combout\) # (!\LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~74_combout\,
	datab => \Add18~75_combout\,
	datac => \Add18~73_combout\,
	datad => \LessThan17~1_combout\,
	combout => \LessThan17~40_combout\);

-- Location: LCCOMB_X41_Y17_N24
\Add18~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~34_combout\ = (\LessThan16~41_combout\ & ((\Add18~32_combout\))) # (!\LessThan16~41_combout\ & (\Add17~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~36_combout\,
	datac => \Add18~32_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~34_combout\);

-- Location: LCCOMB_X39_Y17_N30
\Add18~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~56_combout\ = (\LessThan16~41_combout\ & ((\Add18~30_combout\))) # (!\LessThan16~41_combout\ & (\Add17~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~37_combout\,
	datac => \Add18~30_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~56_combout\);

-- Location: LCCOMB_X41_Y17_N26
\Add18~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~57_combout\ = (\LessThan16~41_combout\ & ((\Add18~28_combout\))) # (!\LessThan16~41_combout\ & (\Add17~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~38_combout\,
	datac => \Add18~28_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~57_combout\);

-- Location: LCCOMB_X41_Y17_N28
\Add18~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~58_combout\ = (\LessThan16~41_combout\ & ((\Add18~26_combout\))) # (!\LessThan16~41_combout\ & (\Add17~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~39_combout\,
	datac => \Add18~26_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~58_combout\);

-- Location: LCCOMB_X39_Y19_N14
\Add18~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~59_combout\ = (\LessThan16~41_combout\ & ((\Add18~24_combout\))) # (!\LessThan16~41_combout\ & (\Add17~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~40_combout\,
	datac => \Add18~24_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~59_combout\);

-- Location: LCCOMB_X41_Y17_N30
\Add18~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~60_combout\ = (\LessThan16~41_combout\ & ((\Add18~22_combout\))) # (!\LessThan16~41_combout\ & (\Add17~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~41_combout\,
	datac => \Add18~22_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~60_combout\);

-- Location: LCCOMB_X39_Y19_N8
\Add18~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~61_combout\ = (\LessThan16~41_combout\ & (\Add18~20_combout\)) # (!\LessThan16~41_combout\ & ((\Add17~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~20_combout\,
	datab => \Add17~42_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~61_combout\);

-- Location: LCCOMB_X41_Y17_N20
\Add18~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~62_combout\ = (\LessThan16~41_combout\ & ((\Add18~18_combout\))) # (!\LessThan16~41_combout\ & (\Add17~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~43_combout\,
	datac => \Add18~18_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~62_combout\);

-- Location: LCCOMB_X39_Y18_N4
\Add18~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~63_combout\ = (\LessThan16~41_combout\ & ((\Add18~16_combout\))) # (!\LessThan16~41_combout\ & (\Add17~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~44_combout\,
	datac => \Add18~16_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~63_combout\);

-- Location: LCCOMB_X39_Y18_N2
\Add18~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~64_combout\ = (\LessThan16~41_combout\ & ((\Add18~14_combout\))) # (!\LessThan16~41_combout\ & (\Add17~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~45_combout\,
	datab => \Add18~14_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~64_combout\);

-- Location: LCCOMB_X42_Y18_N4
\Add18~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~65_combout\ = (\LessThan16~41_combout\ & ((\Add18~12_combout\))) # (!\LessThan16~41_combout\ & (\Add17~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~46_combout\,
	datac => \Add18~12_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~65_combout\);

-- Location: LCCOMB_X42_Y18_N2
\Add18~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~66_combout\ = (\LessThan16~41_combout\ & ((\Add18~10_combout\))) # (!\LessThan16~41_combout\ & (\Add17~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~47_combout\,
	datac => \Add18~10_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~66_combout\);

-- Location: LCCOMB_X41_Y18_N8
\Add18~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~67_combout\ = (\LessThan16~41_combout\ & ((\Add18~8_combout\))) # (!\LessThan16~41_combout\ & (\Add17~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~48_combout\,
	datac => \Add18~8_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~67_combout\);

-- Location: LCCOMB_X41_Y18_N6
\Add18~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~68_combout\ = (\LessThan16~41_combout\ & ((\Add18~6_combout\))) # (!\LessThan16~41_combout\ & (\Add17~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~49_combout\,
	datac => \Add18~6_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~68_combout\);

-- Location: LCCOMB_X39_Y18_N0
\Add18~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~69_combout\ = (\LessThan16~41_combout\ & ((\Add18~4_combout\))) # (!\LessThan16~41_combout\ & (\Add17~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~50_combout\,
	datac => \Add18~4_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~69_combout\);

-- Location: LCCOMB_X41_Y18_N0
\Add18~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~70_combout\ = (\LessThan16~41_combout\ & ((\Add18~2_combout\))) # (!\LessThan16~41_combout\ & (\Add17~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add17~52_combout\,
	datac => \Add18~2_combout\,
	datad => \LessThan16~41_combout\,
	combout => \Add18~70_combout\);

-- Location: LCCOMB_X41_Y18_N10
\Add18~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~71_combout\ = (\LessThan16~40_combout\ & (\Add18~0_combout\)) # (!\LessThan16~40_combout\ & ((sum_Vpx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~0_combout\,
	datac => sum_Vpx(2),
	datad => \LessThan16~40_combout\,
	combout => \Add18~71_combout\);

-- Location: LCCOMB_X41_Y18_N12
\Add18~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~72_combout\ = (\LessThan16~38_combout\ & (((\Add18~0_combout\)))) # (!\LessThan16~38_combout\ & ((\LessThan16~1_combout\ & ((\Add18~0_combout\))) # (!\LessThan16~1_combout\ & (\Add18~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~71_combout\,
	datab => \Add18~0_combout\,
	datac => \LessThan16~38_combout\,
	datad => \LessThan16~1_combout\,
	combout => \Add18~72_combout\);

-- Location: LCCOMB_X41_Y18_N14
\LessThan17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~3_cout\ = CARRY(sum_Vpx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(0),
	datad => VCC,
	cout => \LessThan17~3_cout\);

-- Location: LCCOMB_X41_Y18_N16
\LessThan17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~5_cout\ = CARRY((n_y(0) & ((!\LessThan17~3_cout\) # (!sum_Vpx(1)))) # (!n_y(0) & (!sum_Vpx(1) & !\LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(0),
	datab => sum_Vpx(1),
	datad => VCC,
	cin => \LessThan17~3_cout\,
	cout => \LessThan17~5_cout\);

-- Location: LCCOMB_X41_Y18_N18
\LessThan17~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~7_cout\ = CARRY((\Add18~72_combout\ & ((!\LessThan17~5_cout\) # (!n_y(1)))) # (!\Add18~72_combout\ & (!n_y(1) & !\LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~72_combout\,
	datab => n_y(1),
	datad => VCC,
	cin => \LessThan17~5_cout\,
	cout => \LessThan17~7_cout\);

-- Location: LCCOMB_X41_Y18_N20
\LessThan17~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~9_cout\ = CARRY((n_y(2) & ((!\LessThan17~7_cout\) # (!\Add18~70_combout\))) # (!n_y(2) & (!\Add18~70_combout\ & !\LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \Add18~70_combout\,
	datad => VCC,
	cin => \LessThan17~7_cout\,
	cout => \LessThan17~9_cout\);

-- Location: LCCOMB_X41_Y18_N22
\LessThan17~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~11_cout\ = CARRY((n_y(3) & (\Add18~69_combout\ & !\LessThan17~9_cout\)) # (!n_y(3) & ((\Add18~69_combout\) # (!\LessThan17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => \Add18~69_combout\,
	datad => VCC,
	cin => \LessThan17~9_cout\,
	cout => \LessThan17~11_cout\);

-- Location: LCCOMB_X41_Y18_N24
\LessThan17~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~13_cout\ = CARRY((\Add18~68_combout\ & (n_y(4) & !\LessThan17~11_cout\)) # (!\Add18~68_combout\ & ((n_y(4)) # (!\LessThan17~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~68_combout\,
	datab => n_y(4),
	datad => VCC,
	cin => \LessThan17~11_cout\,
	cout => \LessThan17~13_cout\);

-- Location: LCCOMB_X41_Y18_N26
\LessThan17~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~15_cout\ = CARRY((n_y(5) & (\Add18~67_combout\ & !\LessThan17~13_cout\)) # (!n_y(5) & ((\Add18~67_combout\) # (!\LessThan17~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \Add18~67_combout\,
	datad => VCC,
	cin => \LessThan17~13_cout\,
	cout => \LessThan17~15_cout\);

-- Location: LCCOMB_X41_Y18_N28
\LessThan17~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~17_cout\ = CARRY((\Add18~66_combout\ & (n_y(6) & !\LessThan17~15_cout\)) # (!\Add18~66_combout\ & ((n_y(6)) # (!\LessThan17~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~66_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \LessThan17~15_cout\,
	cout => \LessThan17~17_cout\);

-- Location: LCCOMB_X41_Y18_N30
\LessThan17~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~19_cout\ = CARRY((\Add18~65_combout\ & ((!\LessThan17~17_cout\) # (!n_y(7)))) # (!\Add18~65_combout\ & (!n_y(7) & !\LessThan17~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~65_combout\,
	datab => n_y(7),
	datad => VCC,
	cin => \LessThan17~17_cout\,
	cout => \LessThan17~19_cout\);

-- Location: LCCOMB_X41_Y17_N0
\LessThan17~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~21_cout\ = CARRY((\Add18~64_combout\ & (n_y(8) & !\LessThan17~19_cout\)) # (!\Add18~64_combout\ & ((n_y(8)) # (!\LessThan17~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~64_combout\,
	datab => n_y(8),
	datad => VCC,
	cin => \LessThan17~19_cout\,
	cout => \LessThan17~21_cout\);

-- Location: LCCOMB_X41_Y17_N2
\LessThan17~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~23_cout\ = CARRY((n_y(9) & (\Add18~63_combout\ & !\LessThan17~21_cout\)) # (!n_y(9) & ((\Add18~63_combout\) # (!\LessThan17~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add18~63_combout\,
	datad => VCC,
	cin => \LessThan17~21_cout\,
	cout => \LessThan17~23_cout\);

-- Location: LCCOMB_X41_Y17_N4
\LessThan17~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~25_cout\ = CARRY((n_y(10) & ((!\LessThan17~23_cout\) # (!\Add18~62_combout\))) # (!n_y(10) & (!\Add18~62_combout\ & !\LessThan17~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(10),
	datab => \Add18~62_combout\,
	datad => VCC,
	cin => \LessThan17~23_cout\,
	cout => \LessThan17~25_cout\);

-- Location: LCCOMB_X41_Y17_N6
\LessThan17~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~27_cout\ = CARRY((\Add18~61_combout\ & ((!\LessThan17~25_cout\) # (!n_y(11)))) # (!\Add18~61_combout\ & (!n_y(11) & !\LessThan17~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~61_combout\,
	datab => n_y(11),
	datad => VCC,
	cin => \LessThan17~25_cout\,
	cout => \LessThan17~27_cout\);

-- Location: LCCOMB_X41_Y17_N8
\LessThan17~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~29_cout\ = CARRY((\Add18~60_combout\ & (n_y(12) & !\LessThan17~27_cout\)) # (!\Add18~60_combout\ & ((n_y(12)) # (!\LessThan17~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~60_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \LessThan17~27_cout\,
	cout => \LessThan17~29_cout\);

-- Location: LCCOMB_X41_Y17_N10
\LessThan17~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~31_cout\ = CARRY((\Add18~59_combout\ & ((!\LessThan17~29_cout\) # (!n_y(13)))) # (!\Add18~59_combout\ & (!n_y(13) & !\LessThan17~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~59_combout\,
	datab => n_y(13),
	datad => VCC,
	cin => \LessThan17~29_cout\,
	cout => \LessThan17~31_cout\);

-- Location: LCCOMB_X41_Y17_N12
\LessThan17~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~33_cout\ = CARRY((n_y(14) & ((!\LessThan17~31_cout\) # (!\Add18~58_combout\))) # (!n_y(14) & (!\Add18~58_combout\ & !\LessThan17~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \Add18~58_combout\,
	datad => VCC,
	cin => \LessThan17~31_cout\,
	cout => \LessThan17~33_cout\);

-- Location: LCCOMB_X41_Y17_N14
\LessThan17~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~35_cout\ = CARRY((\Add18~57_combout\ & ((!\LessThan17~33_cout\) # (!n_y(15)))) # (!\Add18~57_combout\ & (!n_y(15) & !\LessThan17~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~57_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \LessThan17~33_cout\,
	cout => \LessThan17~35_cout\);

-- Location: LCCOMB_X41_Y17_N16
\LessThan17~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~37_cout\ = CARRY((\Add18~56_combout\ & (n_y(16) & !\LessThan17~35_cout\)) # (!\Add18~56_combout\ & ((n_y(16)) # (!\LessThan17~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~56_combout\,
	datab => n_y(16),
	datad => VCC,
	cin => \LessThan17~35_cout\,
	cout => \LessThan17~37_cout\);

-- Location: LCCOMB_X41_Y17_N18
\LessThan17~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan17~38_combout\ = (n_y(17) & (!\LessThan17~37_cout\ & \Add18~34_combout\)) # (!n_y(17) & ((\Add18~34_combout\) # (!\LessThan17~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(17),
	datad => \Add18~34_combout\,
	cin => \LessThan17~37_cout\,
	combout => \LessThan17~38_combout\);

-- Location: LCCOMB_X44_Y17_N10
\Selector106~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\state.calcul_barycentre~q\ & ((\LessThan17~40_combout\) # (\LessThan17~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.calcul_barycentre~q\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \Selector106~0_combout\);

-- Location: LCCOMB_X44_Y17_N16
\Selector106~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~1_combout\ = (\Selector106~0_combout\) # ((\state.init~q\ & (!\state.calcul_barycentre~q\ & y_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.calcul_barycentre~q\,
	datac => y_int(1),
	datad => \Selector106~0_combout\,
	combout => \Selector106~1_combout\);

-- Location: FF_X44_Y17_N17
\y_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector106~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(1));

-- Location: LCCOMB_X44_Y25_N16
\Add21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~1_cout\ = CARRY(y_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_int(1),
	datad => VCC,
	cout => \Add21~1_cout\);

-- Location: LCCOMB_X44_Y25_N18
\Add21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~2_combout\ = (y_int(2) & (\Add21~1_cout\ & VCC)) # (!y_int(2) & (!\Add21~1_cout\))
-- \Add21~3\ = CARRY((!y_int(2) & !\Add21~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(2),
	datad => VCC,
	cin => \Add21~1_cout\,
	combout => \Add21~2_combout\,
	cout => \Add21~3\);

-- Location: LCCOMB_X44_Y25_N20
\Add21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~4_combout\ = (y_int(3) & (\Add21~3\ $ (GND))) # (!y_int(3) & (!\Add21~3\ & VCC))
-- \Add21~5\ = CARRY((y_int(3) & !\Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(3),
	datad => VCC,
	cin => \Add21~3\,
	combout => \Add21~4_combout\,
	cout => \Add21~5\);

-- Location: LCCOMB_X44_Y25_N22
\Add21~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~6_combout\ = (y_int(4) & (\Add21~5\ & VCC)) # (!y_int(4) & (!\Add21~5\))
-- \Add21~7\ = CARRY((!y_int(4) & !\Add21~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_int(4),
	datad => VCC,
	cin => \Add21~5\,
	combout => \Add21~6_combout\,
	cout => \Add21~7\);

-- Location: LCCOMB_X44_Y25_N24
\Add21~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~8_combout\ = (y_int(5) & ((GND) # (!\Add21~7\))) # (!y_int(5) & (\Add21~7\ $ (GND)))
-- \Add21~9\ = CARRY((y_int(5)) # (!\Add21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_int(5),
	datad => VCC,
	cin => \Add21~7\,
	combout => \Add21~8_combout\,
	cout => \Add21~9\);

-- Location: LCCOMB_X44_Y25_N26
\Add21~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~10_combout\ = (y_int(6) & (\Add21~9\ & VCC)) # (!y_int(6) & (!\Add21~9\))
-- \Add21~11\ = CARRY((!y_int(6) & !\Add21~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_int(6),
	datad => VCC,
	cin => \Add21~9\,
	combout => \Add21~10_combout\,
	cout => \Add21~11\);

-- Location: LCCOMB_X44_Y25_N28
\Add21~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~12_combout\ = (y_int(7) & ((GND) # (!\Add21~11\))) # (!y_int(7) & (\Add21~11\ $ (GND)))
-- \Add21~13\ = CARRY((y_int(7)) # (!\Add21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(7),
	datad => VCC,
	cin => \Add21~11\,
	combout => \Add21~12_combout\,
	cout => \Add21~13\);

-- Location: LCCOMB_X44_Y25_N30
\Add21~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add21~14_combout\ = \Add21~13\ $ (!y_int(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => y_int(8),
	cin => \Add21~13\,
	combout => \Add21~14_combout\);

-- Location: LCCOMB_X44_Y17_N30
\Selector107~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\state.calcul_barycentre~q\ & ((\Add18~34_combout\) # (!\LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.calcul_barycentre~q\,
	datac => \Add18~34_combout\,
	datad => \LessThan17~1_combout\,
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X44_Y17_N12
\Selector107~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~1_combout\ = (!\LessThan17~40_combout\ & (\Selector107~0_combout\ & !\LessThan17~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~40_combout\,
	datac => \Selector107~0_combout\,
	datad => \LessThan17~38_combout\,
	combout => \Selector107~1_combout\);

-- Location: LCCOMB_X37_Y17_N28
\Add18~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~78_combout\ = (\Add18~41_combout\ & ((\LessThan16~40_combout\) # ((\LessThan16~1_combout\) # (\LessThan16~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~41_combout\,
	datab => \LessThan16~40_combout\,
	datac => \LessThan16~1_combout\,
	datad => \LessThan16~38_combout\,
	combout => \Add18~78_combout\);

-- Location: LCCOMB_X37_Y17_N6
\Add18~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~77_combout\ = (\Add18~39_combout\ & ((\LessThan16~40_combout\) # ((\LessThan16~1_combout\) # (\LessThan16~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~39_combout\,
	datab => \LessThan16~40_combout\,
	datac => \LessThan16~1_combout\,
	datad => \LessThan16~38_combout\,
	combout => \Add18~77_combout\);

-- Location: LCCOMB_X41_Y17_N22
\Add18~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add18~76_combout\ = (\Add18~37_combout\ & ((\LessThan16~38_combout\) # ((\LessThan16~40_combout\) # (\LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~38_combout\,
	datab => \LessThan16~40_combout\,
	datac => \LessThan16~1_combout\,
	datad => \Add18~37_combout\,
	combout => \Add18~76_combout\);

-- Location: LCCOMB_X42_Y18_N6
\Add19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = (sum_Vpx(1) & ((GND) # (!n_y(0)))) # (!sum_Vpx(1) & (n_y(0) $ (GND)))
-- \Add19~1\ = CARRY((sum_Vpx(1)) # (!n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(1),
	datab => n_y(0),
	datad => VCC,
	combout => \Add19~0_combout\,
	cout => \Add19~1\);

-- Location: LCCOMB_X42_Y18_N8
\Add19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (\Add18~72_combout\ & ((n_y(1) & (!\Add19~1\)) # (!n_y(1) & (\Add19~1\ & VCC)))) # (!\Add18~72_combout\ & ((n_y(1) & ((\Add19~1\) # (GND))) # (!n_y(1) & (!\Add19~1\))))
-- \Add19~3\ = CARRY((\Add18~72_combout\ & (n_y(1) & !\Add19~1\)) # (!\Add18~72_combout\ & ((n_y(1)) # (!\Add19~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~72_combout\,
	datab => n_y(1),
	datad => VCC,
	cin => \Add19~1\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: LCCOMB_X42_Y18_N10
\Add19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = ((\Add18~70_combout\ $ (n_y(2) $ (\Add19~3\)))) # (GND)
-- \Add19~5\ = CARRY((\Add18~70_combout\ & ((!\Add19~3\) # (!n_y(2)))) # (!\Add18~70_combout\ & (!n_y(2) & !\Add19~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~70_combout\,
	datab => n_y(2),
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: LCCOMB_X42_Y18_N12
\Add19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (\Add18~69_combout\ & ((n_y(3) & (!\Add19~5\)) # (!n_y(3) & (\Add19~5\ & VCC)))) # (!\Add18~69_combout\ & ((n_y(3) & ((\Add19~5\) # (GND))) # (!n_y(3) & (!\Add19~5\))))
-- \Add19~7\ = CARRY((\Add18~69_combout\ & (n_y(3) & !\Add19~5\)) # (!\Add18~69_combout\ & ((n_y(3)) # (!\Add19~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~69_combout\,
	datab => n_y(3),
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: LCCOMB_X42_Y18_N14
\Add19~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~8_combout\ = ((n_y(4) $ (\Add18~68_combout\ $ (\Add19~7\)))) # (GND)
-- \Add19~9\ = CARRY((n_y(4) & (\Add18~68_combout\ & !\Add19~7\)) # (!n_y(4) & ((\Add18~68_combout\) # (!\Add19~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(4),
	datab => \Add18~68_combout\,
	datad => VCC,
	cin => \Add19~7\,
	combout => \Add19~8_combout\,
	cout => \Add19~9\);

-- Location: LCCOMB_X42_Y18_N16
\Add19~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (\Add18~67_combout\ & ((n_y(5) & (!\Add19~9\)) # (!n_y(5) & (\Add19~9\ & VCC)))) # (!\Add18~67_combout\ & ((n_y(5) & ((\Add19~9\) # (GND))) # (!n_y(5) & (!\Add19~9\))))
-- \Add19~11\ = CARRY((\Add18~67_combout\ & (n_y(5) & !\Add19~9\)) # (!\Add18~67_combout\ & ((n_y(5)) # (!\Add19~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~67_combout\,
	datab => n_y(5),
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X42_Y18_N18
\Add19~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = ((n_y(6) $ (\Add18~66_combout\ $ (\Add19~11\)))) # (GND)
-- \Add19~13\ = CARRY((n_y(6) & (\Add18~66_combout\ & !\Add19~11\)) # (!n_y(6) & ((\Add18~66_combout\) # (!\Add19~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(6),
	datab => \Add18~66_combout\,
	datad => VCC,
	cin => \Add19~11\,
	combout => \Add19~12_combout\,
	cout => \Add19~13\);

-- Location: LCCOMB_X42_Y18_N20
\Add19~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~14_combout\ = (n_y(7) & ((\Add18~65_combout\ & (!\Add19~13\)) # (!\Add18~65_combout\ & ((\Add19~13\) # (GND))))) # (!n_y(7) & ((\Add18~65_combout\ & (\Add19~13\ & VCC)) # (!\Add18~65_combout\ & (!\Add19~13\))))
-- \Add19~15\ = CARRY((n_y(7) & ((!\Add19~13\) # (!\Add18~65_combout\))) # (!n_y(7) & (!\Add18~65_combout\ & !\Add19~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(7),
	datab => \Add18~65_combout\,
	datad => VCC,
	cin => \Add19~13\,
	combout => \Add19~14_combout\,
	cout => \Add19~15\);

-- Location: LCCOMB_X42_Y18_N22
\Add19~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~16_combout\ = ((n_y(8) $ (\Add18~64_combout\ $ (\Add19~15\)))) # (GND)
-- \Add19~17\ = CARRY((n_y(8) & (\Add18~64_combout\ & !\Add19~15\)) # (!n_y(8) & ((\Add18~64_combout\) # (!\Add19~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(8),
	datab => \Add18~64_combout\,
	datad => VCC,
	cin => \Add19~15\,
	combout => \Add19~16_combout\,
	cout => \Add19~17\);

-- Location: LCCOMB_X42_Y18_N24
\Add19~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~18_combout\ = (n_y(9) & ((\Add18~63_combout\ & (!\Add19~17\)) # (!\Add18~63_combout\ & ((\Add19~17\) # (GND))))) # (!n_y(9) & ((\Add18~63_combout\ & (\Add19~17\ & VCC)) # (!\Add18~63_combout\ & (!\Add19~17\))))
-- \Add19~19\ = CARRY((n_y(9) & ((!\Add19~17\) # (!\Add18~63_combout\))) # (!n_y(9) & (!\Add18~63_combout\ & !\Add19~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \Add18~63_combout\,
	datad => VCC,
	cin => \Add19~17\,
	combout => \Add19~18_combout\,
	cout => \Add19~19\);

-- Location: LCCOMB_X42_Y18_N26
\Add19~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~20_combout\ = ((\Add18~62_combout\ $ (n_y(10) $ (\Add19~19\)))) # (GND)
-- \Add19~21\ = CARRY((\Add18~62_combout\ & ((!\Add19~19\) # (!n_y(10)))) # (!\Add18~62_combout\ & (!n_y(10) & !\Add19~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~62_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \Add19~19\,
	combout => \Add19~20_combout\,
	cout => \Add19~21\);

-- Location: LCCOMB_X42_Y18_N28
\Add19~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~22_combout\ = (n_y(11) & ((\Add18~61_combout\ & (!\Add19~21\)) # (!\Add18~61_combout\ & ((\Add19~21\) # (GND))))) # (!n_y(11) & ((\Add18~61_combout\ & (\Add19~21\ & VCC)) # (!\Add18~61_combout\ & (!\Add19~21\))))
-- \Add19~23\ = CARRY((n_y(11) & ((!\Add19~21\) # (!\Add18~61_combout\))) # (!n_y(11) & (!\Add18~61_combout\ & !\Add19~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \Add18~61_combout\,
	datad => VCC,
	cin => \Add19~21\,
	combout => \Add19~22_combout\,
	cout => \Add19~23\);

-- Location: LCCOMB_X42_Y18_N30
\Add19~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~24_combout\ = ((\Add18~60_combout\ $ (n_y(12) $ (\Add19~23\)))) # (GND)
-- \Add19~25\ = CARRY((\Add18~60_combout\ & ((!\Add19~23\) # (!n_y(12)))) # (!\Add18~60_combout\ & (!n_y(12) & !\Add19~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~60_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \Add19~23\,
	combout => \Add19~24_combout\,
	cout => \Add19~25\);

-- Location: LCCOMB_X42_Y17_N0
\Add19~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~26_combout\ = (n_y(13) & ((\Add18~59_combout\ & (!\Add19~25\)) # (!\Add18~59_combout\ & ((\Add19~25\) # (GND))))) # (!n_y(13) & ((\Add18~59_combout\ & (\Add19~25\ & VCC)) # (!\Add18~59_combout\ & (!\Add19~25\))))
-- \Add19~27\ = CARRY((n_y(13) & ((!\Add19~25\) # (!\Add18~59_combout\))) # (!n_y(13) & (!\Add18~59_combout\ & !\Add19~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(13),
	datab => \Add18~59_combout\,
	datad => VCC,
	cin => \Add19~25\,
	combout => \Add19~26_combout\,
	cout => \Add19~27\);

-- Location: LCCOMB_X42_Y17_N2
\Add19~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~28_combout\ = ((n_y(14) $ (\Add18~58_combout\ $ (\Add19~27\)))) # (GND)
-- \Add19~29\ = CARRY((n_y(14) & (\Add18~58_combout\ & !\Add19~27\)) # (!n_y(14) & ((\Add18~58_combout\) # (!\Add19~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(14),
	datab => \Add18~58_combout\,
	datad => VCC,
	cin => \Add19~27\,
	combout => \Add19~28_combout\,
	cout => \Add19~29\);

-- Location: LCCOMB_X42_Y17_N4
\Add19~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~30_combout\ = (\Add18~57_combout\ & ((n_y(15) & (!\Add19~29\)) # (!n_y(15) & (\Add19~29\ & VCC)))) # (!\Add18~57_combout\ & ((n_y(15) & ((\Add19~29\) # (GND))) # (!n_y(15) & (!\Add19~29\))))
-- \Add19~31\ = CARRY((\Add18~57_combout\ & (n_y(15) & !\Add19~29\)) # (!\Add18~57_combout\ & ((n_y(15)) # (!\Add19~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~57_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \Add19~29\,
	combout => \Add19~30_combout\,
	cout => \Add19~31\);

-- Location: LCCOMB_X42_Y17_N6
\Add19~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~32_combout\ = ((\Add18~56_combout\ $ (n_y(16) $ (\Add19~31\)))) # (GND)
-- \Add19~33\ = CARRY((\Add18~56_combout\ & ((!\Add19~31\) # (!n_y(16)))) # (!\Add18~56_combout\ & (!n_y(16) & !\Add19~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~56_combout\,
	datab => n_y(16),
	datad => VCC,
	cin => \Add19~31\,
	combout => \Add19~32_combout\,
	cout => \Add19~33\);

-- Location: LCCOMB_X42_Y17_N8
\Add19~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~34_combout\ = (n_y(17) & ((\Add18~34_combout\ & (!\Add19~33\)) # (!\Add18~34_combout\ & ((\Add19~33\) # (GND))))) # (!n_y(17) & ((\Add18~34_combout\ & (\Add19~33\ & VCC)) # (!\Add18~34_combout\ & (!\Add19~33\))))
-- \Add19~35\ = CARRY((n_y(17) & ((!\Add19~33\) # (!\Add18~34_combout\))) # (!n_y(17) & (!\Add18~34_combout\ & !\Add19~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(17),
	datab => \Add18~34_combout\,
	datad => VCC,
	cin => \Add19~33\,
	combout => \Add19~34_combout\,
	cout => \Add19~35\);

-- Location: LCCOMB_X42_Y17_N10
\Add19~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~36_combout\ = (\Add18~54_combout\ & ((GND) # (!\Add19~35\))) # (!\Add18~54_combout\ & (\Add19~35\ $ (GND)))
-- \Add19~37\ = CARRY((\Add18~54_combout\) # (!\Add19~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~54_combout\,
	datad => VCC,
	cin => \Add19~35\,
	combout => \Add19~36_combout\,
	cout => \Add19~37\);

-- Location: LCCOMB_X42_Y17_N12
\Add19~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~38_combout\ = (\Add18~76_combout\ & (\Add19~37\ & VCC)) # (!\Add18~76_combout\ & (!\Add19~37\))
-- \Add19~39\ = CARRY((!\Add18~76_combout\ & !\Add19~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add18~76_combout\,
	datad => VCC,
	cin => \Add19~37\,
	combout => \Add19~38_combout\,
	cout => \Add19~39\);

-- Location: LCCOMB_X42_Y17_N14
\Add19~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~40_combout\ = (\Add18~77_combout\ & ((GND) # (!\Add19~39\))) # (!\Add18~77_combout\ & (\Add19~39\ $ (GND)))
-- \Add19~41\ = CARRY((\Add18~77_combout\) # (!\Add19~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~77_combout\,
	datad => VCC,
	cin => \Add19~39\,
	combout => \Add19~40_combout\,
	cout => \Add19~41\);

-- Location: LCCOMB_X42_Y17_N16
\Add19~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~42_combout\ = (\Add18~78_combout\ & (\Add19~41\ & VCC)) # (!\Add18~78_combout\ & (!\Add19~41\))
-- \Add19~43\ = CARRY((!\Add18~78_combout\ & !\Add19~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add18~78_combout\,
	datad => VCC,
	cin => \Add19~41\,
	combout => \Add19~42_combout\,
	cout => \Add19~43\);

-- Location: LCCOMB_X42_Y17_N18
\Add19~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~44_combout\ = (\Add18~55_combout\ & ((GND) # (!\Add19~43\))) # (!\Add18~55_combout\ & (\Add19~43\ $ (GND)))
-- \Add19~45\ = CARRY((\Add18~55_combout\) # (!\Add19~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~55_combout\,
	datad => VCC,
	cin => \Add19~43\,
	combout => \Add19~44_combout\,
	cout => \Add19~45\);

-- Location: LCCOMB_X42_Y17_N20
\Add19~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~46_combout\ = (\Add18~73_combout\ & (\Add19~45\ & VCC)) # (!\Add18~73_combout\ & (!\Add19~45\))
-- \Add19~47\ = CARRY((!\Add18~73_combout\ & !\Add19~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add18~73_combout\,
	datad => VCC,
	cin => \Add19~45\,
	combout => \Add19~46_combout\,
	cout => \Add19~47\);

-- Location: LCCOMB_X42_Y17_N22
\Add19~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~48_combout\ = (\Add18~74_combout\ & ((GND) # (!\Add19~47\))) # (!\Add18~74_combout\ & (\Add19~47\ $ (GND)))
-- \Add19~49\ = CARRY((\Add18~74_combout\) # (!\Add19~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~74_combout\,
	datad => VCC,
	cin => \Add19~47\,
	combout => \Add19~48_combout\,
	cout => \Add19~49\);

-- Location: LCCOMB_X42_Y17_N24
\Add19~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~50_combout\ = (\Add18~75_combout\ & (\Add19~49\ & VCC)) # (!\Add18~75_combout\ & (!\Add19~49\))
-- \Add19~51\ = CARRY((!\Add18~75_combout\ & !\Add19~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~75_combout\,
	datad => VCC,
	cin => \Add19~49\,
	combout => \Add19~50_combout\,
	cout => \Add19~51\);

-- Location: LCCOMB_X42_Y17_N26
\Add19~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add19~52_combout\ = \Add19~51\ $ (\Add18~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add18~53_combout\,
	cin => \Add19~51\,
	combout => \Add19~52_combout\);

-- Location: LCCOMB_X42_Y19_N4
\Selector107~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~3_combout\ = (\Add19~36_combout\) # ((\Add19~40_combout\) # ((\Add19~38_combout\) # (\Add19~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~36_combout\,
	datab => \Add19~40_combout\,
	datac => \Add19~38_combout\,
	datad => \Add19~34_combout\,
	combout => \Selector107~3_combout\);

-- Location: LCCOMB_X42_Y17_N28
\Selector107~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~4_combout\ = (\Add19~48_combout\) # ((\Add19~46_combout\) # ((\Add19~42_combout\) # (\Add19~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~48_combout\,
	datab => \Add19~46_combout\,
	datac => \Add19~42_combout\,
	datad => \Add19~44_combout\,
	combout => \Selector107~4_combout\);

-- Location: LCCOMB_X42_Y17_N30
\Selector107~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~5_combout\ = (\Add19~52_combout\) # ((\Add19~50_combout\) # ((\Selector107~3_combout\) # (\Selector107~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~52_combout\,
	datab => \Add19~50_combout\,
	datac => \Selector107~3_combout\,
	datad => \Selector107~4_combout\,
	combout => \Selector107~5_combout\);

-- Location: LCCOMB_X44_Y17_N22
\temp3~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~43_combout\ = (\LessThan17~40_combout\ & (((\Add19~32_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~32_combout\))) # (!\LessThan17~38_combout\ & (\Add18~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~40_combout\,
	datab => \Add18~56_combout\,
	datac => \Add19~32_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~43_combout\);

-- Location: LCCOMB_X43_Y17_N28
\temp3~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~44_combout\ = (\LessThan17~38_combout\ & (((\Add19~30_combout\)))) # (!\LessThan17~38_combout\ & ((\LessThan17~40_combout\ & ((\Add19~30_combout\))) # (!\LessThan17~40_combout\ & (\Add18~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~57_combout\,
	datab => \Add19~30_combout\,
	datac => \LessThan17~38_combout\,
	datad => \LessThan17~40_combout\,
	combout => \temp3~44_combout\);

-- Location: LCCOMB_X44_Y17_N4
\temp3~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~45_combout\ = (\LessThan17~40_combout\ & (((\Add19~28_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~28_combout\))) # (!\LessThan17~38_combout\ & (\Add18~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~40_combout\,
	datab => \Add18~58_combout\,
	datac => \Add19~28_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~45_combout\);

-- Location: LCCOMB_X44_Y17_N6
\temp3~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~46_combout\ = (\LessThan17~40_combout\ & (\Add19~26_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~26_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~26_combout\,
	datab => \Add18~59_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~46_combout\);

-- Location: LCCOMB_X44_Y17_N20
\temp3~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~47_combout\ = (\LessThan17~40_combout\ & (((\Add19~24_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~24_combout\))) # (!\LessThan17~38_combout\ & (\Add18~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~40_combout\,
	datab => \Add18~60_combout\,
	datac => \LessThan17~38_combout\,
	datad => \Add19~24_combout\,
	combout => \temp3~47_combout\);

-- Location: LCCOMB_X43_Y17_N26
\temp3~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~48_combout\ = (\LessThan17~40_combout\ & (((\Add19~22_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~22_combout\))) # (!\LessThan17~38_combout\ & (\Add18~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~61_combout\,
	datab => \LessThan17~40_combout\,
	datac => \Add19~22_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~48_combout\);

-- Location: LCCOMB_X43_Y17_N24
\temp3~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~49_combout\ = (\LessThan17~40_combout\ & (((\Add19~20_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~20_combout\))) # (!\LessThan17~38_combout\ & (\Add18~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~62_combout\,
	datab => \LessThan17~40_combout\,
	datac => \Add19~20_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~49_combout\);

-- Location: LCCOMB_X43_Y17_N22
\temp3~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~50_combout\ = (\LessThan17~40_combout\ & (((\Add19~18_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~18_combout\))) # (!\LessThan17~38_combout\ & (\Add18~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~63_combout\,
	datab => \LessThan17~40_combout\,
	datac => \Add19~18_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~50_combout\);

-- Location: LCCOMB_X43_Y17_N20
\temp3~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~51_combout\ = (\LessThan17~40_combout\ & (((\Add19~16_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~16_combout\))) # (!\LessThan17~38_combout\ & (\Add18~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~64_combout\,
	datab => \LessThan17~40_combout\,
	datac => \Add19~16_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~51_combout\);

-- Location: LCCOMB_X42_Y18_N0
\temp3~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~52_combout\ = (\LessThan17~40_combout\ & (\Add19~14_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~14_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~40_combout\,
	datab => \Add19~14_combout\,
	datac => \Add18~65_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~52_combout\);

-- Location: LCCOMB_X43_Y18_N8
\temp3~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~53_combout\ = (\LessThan17~40_combout\ & (((\Add19~12_combout\)))) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & ((\Add19~12_combout\))) # (!\LessThan17~38_combout\ & (\Add18~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~66_combout\,
	datab => \Add19~12_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~53_combout\);

-- Location: LCCOMB_X43_Y18_N10
\temp3~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~54_combout\ = (\LessThan17~40_combout\ & (\Add19~10_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~10_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \Add18~67_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~54_combout\);

-- Location: LCCOMB_X43_Y18_N0
\temp3~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~55_combout\ = (\LessThan17~40_combout\ & (\Add19~8_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~8_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~8_combout\,
	datab => \Add18~68_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~55_combout\);

-- Location: LCCOMB_X43_Y18_N6
\temp3~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~56_combout\ = (\LessThan17~40_combout\ & (\Add19~6_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~6_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~6_combout\,
	datab => \Add18~69_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~56_combout\);

-- Location: LCCOMB_X43_Y18_N4
\temp3~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~57_combout\ = (\LessThan17~40_combout\ & (\Add19~4_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~4_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => \Add18~70_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~57_combout\);

-- Location: LCCOMB_X43_Y18_N2
\temp3~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~58_combout\ = (\LessThan17~40_combout\ & (\Add19~2_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~2_combout\)) # (!\LessThan17~38_combout\ & ((\Add18~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => \Add18~72_combout\,
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~58_combout\);

-- Location: LCCOMB_X43_Y18_N12
\temp3~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp3~59_combout\ = (\LessThan17~40_combout\ & (\Add19~0_combout\)) # (!\LessThan17~40_combout\ & ((\LessThan17~38_combout\ & (\Add19~0_combout\)) # (!\LessThan17~38_combout\ & ((sum_Vpx(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datab => sum_Vpx(1),
	datac => \LessThan17~40_combout\,
	datad => \LessThan17~38_combout\,
	combout => \temp3~59_combout\);

-- Location: LCCOMB_X43_Y18_N14
\LessThan18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~1_cout\ = CARRY((sum_Vpx(0) & !n_y(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum_Vpx(0),
	datab => n_y(0),
	datad => VCC,
	cout => \LessThan18~1_cout\);

-- Location: LCCOMB_X43_Y18_N16
\LessThan18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~3_cout\ = CARRY((\temp3~59_combout\ & (n_y(1) & !\LessThan18~1_cout\)) # (!\temp3~59_combout\ & ((n_y(1)) # (!\LessThan18~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~59_combout\,
	datab => n_y(1),
	datad => VCC,
	cin => \LessThan18~1_cout\,
	cout => \LessThan18~3_cout\);

-- Location: LCCOMB_X43_Y18_N18
\LessThan18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~5_cout\ = CARRY((n_y(2) & (\temp3~58_combout\ & !\LessThan18~3_cout\)) # (!n_y(2) & ((\temp3~58_combout\) # (!\LessThan18~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(2),
	datab => \temp3~58_combout\,
	datad => VCC,
	cin => \LessThan18~3_cout\,
	cout => \LessThan18~5_cout\);

-- Location: LCCOMB_X43_Y18_N20
\LessThan18~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~7_cout\ = CARRY((n_y(3) & ((!\LessThan18~5_cout\) # (!\temp3~57_combout\))) # (!n_y(3) & (!\temp3~57_combout\ & !\LessThan18~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(3),
	datab => \temp3~57_combout\,
	datad => VCC,
	cin => \LessThan18~5_cout\,
	cout => \LessThan18~7_cout\);

-- Location: LCCOMB_X43_Y18_N22
\LessThan18~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~9_cout\ = CARRY((\temp3~56_combout\ & ((!\LessThan18~7_cout\) # (!n_y(4)))) # (!\temp3~56_combout\ & (!n_y(4) & !\LessThan18~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~56_combout\,
	datab => n_y(4),
	datad => VCC,
	cin => \LessThan18~7_cout\,
	cout => \LessThan18~9_cout\);

-- Location: LCCOMB_X43_Y18_N24
\LessThan18~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~11_cout\ = CARRY((n_y(5) & ((!\LessThan18~9_cout\) # (!\temp3~55_combout\))) # (!n_y(5) & (!\temp3~55_combout\ & !\LessThan18~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(5),
	datab => \temp3~55_combout\,
	datad => VCC,
	cin => \LessThan18~9_cout\,
	cout => \LessThan18~11_cout\);

-- Location: LCCOMB_X43_Y18_N26
\LessThan18~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~13_cout\ = CARRY((\temp3~54_combout\ & ((!\LessThan18~11_cout\) # (!n_y(6)))) # (!\temp3~54_combout\ & (!n_y(6) & !\LessThan18~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~54_combout\,
	datab => n_y(6),
	datad => VCC,
	cin => \LessThan18~11_cout\,
	cout => \LessThan18~13_cout\);

-- Location: LCCOMB_X43_Y18_N28
\LessThan18~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~15_cout\ = CARRY((n_y(7) & ((!\LessThan18~13_cout\) # (!\temp3~53_combout\))) # (!n_y(7) & (!\temp3~53_combout\ & !\LessThan18~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(7),
	datab => \temp3~53_combout\,
	datad => VCC,
	cin => \LessThan18~13_cout\,
	cout => \LessThan18~15_cout\);

-- Location: LCCOMB_X43_Y18_N30
\LessThan18~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~17_cout\ = CARRY((\temp3~52_combout\ & ((!\LessThan18~15_cout\) # (!n_y(8)))) # (!\temp3~52_combout\ & (!n_y(8) & !\LessThan18~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~52_combout\,
	datab => n_y(8),
	datad => VCC,
	cin => \LessThan18~15_cout\,
	cout => \LessThan18~17_cout\);

-- Location: LCCOMB_X43_Y17_N0
\LessThan18~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~19_cout\ = CARRY((n_y(9) & ((!\LessThan18~17_cout\) # (!\temp3~51_combout\))) # (!n_y(9) & (!\temp3~51_combout\ & !\LessThan18~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(9),
	datab => \temp3~51_combout\,
	datad => VCC,
	cin => \LessThan18~17_cout\,
	cout => \LessThan18~19_cout\);

-- Location: LCCOMB_X43_Y17_N2
\LessThan18~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~21_cout\ = CARRY((\temp3~50_combout\ & ((!\LessThan18~19_cout\) # (!n_y(10)))) # (!\temp3~50_combout\ & (!n_y(10) & !\LessThan18~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~50_combout\,
	datab => n_y(10),
	datad => VCC,
	cin => \LessThan18~19_cout\,
	cout => \LessThan18~21_cout\);

-- Location: LCCOMB_X43_Y17_N4
\LessThan18~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~23_cout\ = CARRY((n_y(11) & ((!\LessThan18~21_cout\) # (!\temp3~49_combout\))) # (!n_y(11) & (!\temp3~49_combout\ & !\LessThan18~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(11),
	datab => \temp3~49_combout\,
	datad => VCC,
	cin => \LessThan18~21_cout\,
	cout => \LessThan18~23_cout\);

-- Location: LCCOMB_X43_Y17_N6
\LessThan18~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~25_cout\ = CARRY((\temp3~48_combout\ & ((!\LessThan18~23_cout\) # (!n_y(12)))) # (!\temp3~48_combout\ & (!n_y(12) & !\LessThan18~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~48_combout\,
	datab => n_y(12),
	datad => VCC,
	cin => \LessThan18~23_cout\,
	cout => \LessThan18~25_cout\);

-- Location: LCCOMB_X43_Y17_N8
\LessThan18~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~27_cout\ = CARRY((\temp3~47_combout\ & (n_y(13) & !\LessThan18~25_cout\)) # (!\temp3~47_combout\ & ((n_y(13)) # (!\LessThan18~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~47_combout\,
	datab => n_y(13),
	datad => VCC,
	cin => \LessThan18~25_cout\,
	cout => \LessThan18~27_cout\);

-- Location: LCCOMB_X43_Y17_N10
\LessThan18~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~29_cout\ = CARRY((\temp3~46_combout\ & ((!\LessThan18~27_cout\) # (!n_y(14)))) # (!\temp3~46_combout\ & (!n_y(14) & !\LessThan18~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~46_combout\,
	datab => n_y(14),
	datad => VCC,
	cin => \LessThan18~27_cout\,
	cout => \LessThan18~29_cout\);

-- Location: LCCOMB_X43_Y17_N12
\LessThan18~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~31_cout\ = CARRY((\temp3~45_combout\ & (n_y(15) & !\LessThan18~29_cout\)) # (!\temp3~45_combout\ & ((n_y(15)) # (!\LessThan18~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp3~45_combout\,
	datab => n_y(15),
	datad => VCC,
	cin => \LessThan18~29_cout\,
	cout => \LessThan18~31_cout\);

-- Location: LCCOMB_X43_Y17_N14
\LessThan18~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~33_cout\ = CARRY((n_y(16) & (\temp3~44_combout\ & !\LessThan18~31_cout\)) # (!n_y(16) & ((\temp3~44_combout\) # (!\LessThan18~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n_y(16),
	datab => \temp3~44_combout\,
	datad => VCC,
	cin => \LessThan18~31_cout\,
	cout => \LessThan18~33_cout\);

-- Location: LCCOMB_X43_Y17_N16
\LessThan18~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan18~34_combout\ = (n_y(17) & (\LessThan18~33_cout\ & \temp3~43_combout\)) # (!n_y(17) & ((\LessThan18~33_cout\) # (\temp3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n_y(17),
	datad => \temp3~43_combout\,
	cin => \LessThan18~33_cout\,
	combout => \LessThan18~34_combout\);

-- Location: LCCOMB_X43_Y17_N18
\Selector107~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~2_combout\ = (\state.calcul_barycentre~q\ & (((\LessThan18~34_combout\)))) # (!\state.calcul_barycentre~q\ & (\state.init~q\ & (y_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcul_barycentre~q\,
	datab => \state.init~q\,
	datac => y_int(0),
	datad => \LessThan18~34_combout\,
	combout => \Selector107~2_combout\);

-- Location: LCCOMB_X43_Y17_N30
\Selector107~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~6_combout\ = (\Selector107~1_combout\) # ((\Selector107~2_combout\) # ((\Selector107~5_combout\ & \Selector106~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~1_combout\,
	datab => \Selector107~5_combout\,
	datac => \Selector106~0_combout\,
	datad => \Selector107~2_combout\,
	combout => \Selector107~6_combout\);

-- Location: FF_X43_Y17_N31
\y_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \Selector107~6_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_int(0));

-- Location: LCCOMB_X43_Y25_N2
\LessThan20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~1_cout\ = CARRY((!\Y_Cont[0]~input_o\ & y_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[0]~input_o\,
	datab => y_int(0),
	datad => VCC,
	cout => \LessThan20~1_cout\);

-- Location: LCCOMB_X43_Y25_N4
\LessThan20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~3_cout\ = CARRY((y_int(1) & ((\Y_Cont[1]~input_o\) # (!\LessThan20~1_cout\))) # (!y_int(1) & (\Y_Cont[1]~input_o\ & !\LessThan20~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(1),
	datab => \Y_Cont[1]~input_o\,
	datad => VCC,
	cin => \LessThan20~1_cout\,
	cout => \LessThan20~3_cout\);

-- Location: LCCOMB_X43_Y25_N6
\LessThan20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~5_cout\ = CARRY((\Y_Cont[2]~input_o\ & (\Add21~2_combout\ & !\LessThan20~3_cout\)) # (!\Y_Cont[2]~input_o\ & ((\Add21~2_combout\) # (!\LessThan20~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[2]~input_o\,
	datab => \Add21~2_combout\,
	datad => VCC,
	cin => \LessThan20~3_cout\,
	cout => \LessThan20~5_cout\);

-- Location: LCCOMB_X43_Y25_N8
\LessThan20~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~7_cout\ = CARRY((\Add21~4_combout\ & (\Y_Cont[3]~input_o\ & !\LessThan20~5_cout\)) # (!\Add21~4_combout\ & ((\Y_Cont[3]~input_o\) # (!\LessThan20~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~4_combout\,
	datab => \Y_Cont[3]~input_o\,
	datad => VCC,
	cin => \LessThan20~5_cout\,
	cout => \LessThan20~7_cout\);

-- Location: LCCOMB_X43_Y25_N10
\LessThan20~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~9_cout\ = CARRY((\Add21~6_combout\ & ((!\LessThan20~7_cout\) # (!\Y_Cont[4]~input_o\))) # (!\Add21~6_combout\ & (!\Y_Cont[4]~input_o\ & !\LessThan20~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~6_combout\,
	datab => \Y_Cont[4]~input_o\,
	datad => VCC,
	cin => \LessThan20~7_cout\,
	cout => \LessThan20~9_cout\);

-- Location: LCCOMB_X43_Y25_N12
\LessThan20~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~11_cout\ = CARRY((\Y_Cont[5]~input_o\ & ((!\LessThan20~9_cout\) # (!\Add21~8_combout\))) # (!\Y_Cont[5]~input_o\ & (!\Add21~8_combout\ & !\LessThan20~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[5]~input_o\,
	datab => \Add21~8_combout\,
	datad => VCC,
	cin => \LessThan20~9_cout\,
	cout => \LessThan20~11_cout\);

-- Location: LCCOMB_X43_Y25_N14
\LessThan20~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~13_cout\ = CARRY((\Y_Cont[6]~input_o\ & (\Add21~10_combout\ & !\LessThan20~11_cout\)) # (!\Y_Cont[6]~input_o\ & ((\Add21~10_combout\) # (!\LessThan20~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[6]~input_o\,
	datab => \Add21~10_combout\,
	datad => VCC,
	cin => \LessThan20~11_cout\,
	cout => \LessThan20~13_cout\);

-- Location: LCCOMB_X43_Y25_N16
\LessThan20~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~15_cout\ = CARRY((\Y_Cont[7]~input_o\ & ((!\LessThan20~13_cout\) # (!\Add21~12_combout\))) # (!\Y_Cont[7]~input_o\ & (!\Add21~12_combout\ & !\LessThan20~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[7]~input_o\,
	datab => \Add21~12_combout\,
	datad => VCC,
	cin => \LessThan20~13_cout\,
	cout => \LessThan20~15_cout\);

-- Location: LCCOMB_X43_Y25_N18
\LessThan20~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan20~16_combout\ = (\Add21~14_combout\ & ((!\Y_Cont[8]~input_o\) # (!\LessThan20~15_cout\))) # (!\Add21~14_combout\ & (!\LessThan20~15_cout\ & !\Y_Cont[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~14_combout\,
	datad => \Y_Cont[8]~input_o\,
	cin => \LessThan20~15_cout\,
	combout => \LessThan20~16_combout\);

-- Location: LCCOMB_X35_Y29_N0
\Add22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~0_combout\ = (x_int(1) & (x_int(2) $ (VCC))) # (!x_int(1) & (x_int(2) & VCC))
-- \Add22~1\ = CARRY((x_int(1) & x_int(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_int(1),
	datab => x_int(2),
	datad => VCC,
	combout => \Add22~0_combout\,
	cout => \Add22~1\);

-- Location: LCCOMB_X35_Y29_N2
\Add22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~2_combout\ = (x_int(3) & (\Add22~1\ & VCC)) # (!x_int(3) & (!\Add22~1\))
-- \Add22~3\ = CARRY((!x_int(3) & !\Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(3),
	datad => VCC,
	cin => \Add22~1\,
	combout => \Add22~2_combout\,
	cout => \Add22~3\);

-- Location: LCCOMB_X35_Y29_N4
\Add22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~4_combout\ = (x_int(4) & (\Add22~3\ $ (GND))) # (!x_int(4) & (!\Add22~3\ & VCC))
-- \Add22~5\ = CARRY((x_int(4) & !\Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(4),
	datad => VCC,
	cin => \Add22~3\,
	combout => \Add22~4_combout\,
	cout => \Add22~5\);

-- Location: LCCOMB_X35_Y29_N6
\Add22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~6_combout\ = (x_int(5) & (!\Add22~5\)) # (!x_int(5) & ((\Add22~5\) # (GND)))
-- \Add22~7\ = CARRY((!\Add22~5\) # (!x_int(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_int(5),
	datad => VCC,
	cin => \Add22~5\,
	combout => \Add22~6_combout\,
	cout => \Add22~7\);

-- Location: LCCOMB_X35_Y29_N8
\Add22~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~8_combout\ = (x_int(6) & (\Add22~7\ $ (GND))) # (!x_int(6) & (!\Add22~7\ & VCC))
-- \Add22~9\ = CARRY((x_int(6) & !\Add22~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_int(6),
	datad => VCC,
	cin => \Add22~7\,
	combout => \Add22~8_combout\,
	cout => \Add22~9\);

-- Location: LCCOMB_X35_Y29_N10
\Add22~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~10_combout\ = (x_int(7) & (!\Add22~9\)) # (!x_int(7) & ((\Add22~9\) # (GND)))
-- \Add22~11\ = CARRY((!\Add22~9\) # (!x_int(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_int(7),
	datad => VCC,
	cin => \Add22~9\,
	combout => \Add22~10_combout\,
	cout => \Add22~11\);

-- Location: LCCOMB_X35_Y29_N12
\Add22~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add22~12_combout\ = \Add22~11\ $ (!x_int(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x_int(8),
	cin => \Add22~11\,
	combout => \Add22~12_combout\);

-- Location: LCCOMB_X35_Y29_N14
\LessThan21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~1_cout\ = CARRY((\X_Cont[0]~input_o\ & !x_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[0]~input_o\,
	datab => x_int(0),
	datad => VCC,
	cout => \LessThan21~1_cout\);

-- Location: LCCOMB_X35_Y29_N16
\LessThan21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~3_cout\ = CARRY((x_int(1) & (!\X_Cont[1]~input_o\ & !\LessThan21~1_cout\)) # (!x_int(1) & ((!\LessThan21~1_cout\) # (!\X_Cont[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_int(1),
	datab => \X_Cont[1]~input_o\,
	datad => VCC,
	cin => \LessThan21~1_cout\,
	cout => \LessThan21~3_cout\);

-- Location: LCCOMB_X35_Y29_N18
\LessThan21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~5_cout\ = CARRY((\X_Cont[2]~input_o\ & ((!\LessThan21~3_cout\) # (!\Add22~0_combout\))) # (!\X_Cont[2]~input_o\ & (!\Add22~0_combout\ & !\LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[2]~input_o\,
	datab => \Add22~0_combout\,
	datad => VCC,
	cin => \LessThan21~3_cout\,
	cout => \LessThan21~5_cout\);

-- Location: LCCOMB_X35_Y29_N20
\LessThan21~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~7_cout\ = CARRY((\X_Cont[3]~input_o\ & (\Add22~2_combout\ & !\LessThan21~5_cout\)) # (!\X_Cont[3]~input_o\ & ((\Add22~2_combout\) # (!\LessThan21~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[3]~input_o\,
	datab => \Add22~2_combout\,
	datad => VCC,
	cin => \LessThan21~5_cout\,
	cout => \LessThan21~7_cout\);

-- Location: LCCOMB_X35_Y29_N22
\LessThan21~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~9_cout\ = CARRY((\X_Cont[4]~input_o\ & ((!\LessThan21~7_cout\) # (!\Add22~4_combout\))) # (!\X_Cont[4]~input_o\ & (!\Add22~4_combout\ & !\LessThan21~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[4]~input_o\,
	datab => \Add22~4_combout\,
	datad => VCC,
	cin => \LessThan21~7_cout\,
	cout => \LessThan21~9_cout\);

-- Location: LCCOMB_X35_Y29_N24
\LessThan21~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~11_cout\ = CARRY((\Add22~6_combout\ & ((!\LessThan21~9_cout\) # (!\X_Cont[5]~input_o\))) # (!\Add22~6_combout\ & (!\X_Cont[5]~input_o\ & !\LessThan21~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~6_combout\,
	datab => \X_Cont[5]~input_o\,
	datad => VCC,
	cin => \LessThan21~9_cout\,
	cout => \LessThan21~11_cout\);

-- Location: LCCOMB_X35_Y29_N26
\LessThan21~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~13_cout\ = CARRY((\X_Cont[6]~input_o\ & ((!\LessThan21~11_cout\) # (!\Add22~8_combout\))) # (!\X_Cont[6]~input_o\ & (!\Add22~8_combout\ & !\LessThan21~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X_Cont[6]~input_o\,
	datab => \Add22~8_combout\,
	datad => VCC,
	cin => \LessThan21~11_cout\,
	cout => \LessThan21~13_cout\);

-- Location: LCCOMB_X35_Y29_N28
\LessThan21~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~15_cout\ = CARRY((\Add22~10_combout\ & ((!\LessThan21~13_cout\) # (!\X_Cont[7]~input_o\))) # (!\Add22~10_combout\ & (!\X_Cont[7]~input_o\ & !\LessThan21~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~10_combout\,
	datab => \X_Cont[7]~input_o\,
	datad => VCC,
	cin => \LessThan21~13_cout\,
	cout => \LessThan21~15_cout\);

-- Location: LCCOMB_X35_Y29_N30
\LessThan21~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan21~16_combout\ = (\X_Cont[8]~input_o\ & ((!\Add22~12_combout\) # (!\LessThan21~15_cout\))) # (!\X_Cont[8]~input_o\ & (!\LessThan21~15_cout\ & !\Add22~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \X_Cont[8]~input_o\,
	datad => \Add22~12_combout\,
	cin => \LessThan21~15_cout\,
	combout => \LessThan21~16_combout\);

-- Location: LCCOMB_X46_Y25_N0
\Add23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~0_combout\ = (y_int(1) & (y_int(2) $ (VCC))) # (!y_int(1) & (y_int(2) & VCC))
-- \Add23~1\ = CARRY((y_int(1) & y_int(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_int(1),
	datab => y_int(2),
	datad => VCC,
	combout => \Add23~0_combout\,
	cout => \Add23~1\);

-- Location: LCCOMB_X46_Y25_N2
\Add23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~2_combout\ = (y_int(3) & (\Add23~1\ & VCC)) # (!y_int(3) & (!\Add23~1\))
-- \Add23~3\ = CARRY((!y_int(3) & !\Add23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_int(3),
	datad => VCC,
	cin => \Add23~1\,
	combout => \Add23~2_combout\,
	cout => \Add23~3\);

-- Location: LCCOMB_X46_Y25_N4
\Add23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~4_combout\ = (y_int(4) & (\Add23~3\ $ (GND))) # (!y_int(4) & (!\Add23~3\ & VCC))
-- \Add23~5\ = CARRY((y_int(4) & !\Add23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(4),
	datad => VCC,
	cin => \Add23~3\,
	combout => \Add23~4_combout\,
	cout => \Add23~5\);

-- Location: LCCOMB_X46_Y25_N6
\Add23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~6_combout\ = (y_int(5) & (!\Add23~5\)) # (!y_int(5) & ((\Add23~5\) # (GND)))
-- \Add23~7\ = CARRY((!\Add23~5\) # (!y_int(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_int(5),
	datad => VCC,
	cin => \Add23~5\,
	combout => \Add23~6_combout\,
	cout => \Add23~7\);

-- Location: LCCOMB_X46_Y25_N8
\Add23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~8_combout\ = (y_int(6) & (\Add23~7\ $ (GND))) # (!y_int(6) & (!\Add23~7\ & VCC))
-- \Add23~9\ = CARRY((y_int(6) & !\Add23~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(6),
	datad => VCC,
	cin => \Add23~7\,
	combout => \Add23~8_combout\,
	cout => \Add23~9\);

-- Location: LCCOMB_X46_Y25_N10
\Add23~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~10_combout\ = (y_int(7) & (!\Add23~9\)) # (!y_int(7) & ((\Add23~9\) # (GND)))
-- \Add23~11\ = CARRY((!\Add23~9\) # (!y_int(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_int(7),
	datad => VCC,
	cin => \Add23~9\,
	combout => \Add23~10_combout\,
	cout => \Add23~11\);

-- Location: LCCOMB_X46_Y25_N12
\Add23~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add23~12_combout\ = \Add23~11\ $ (!y_int(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => y_int(8),
	cin => \Add23~11\,
	combout => \Add23~12_combout\);

-- Location: LCCOMB_X46_Y25_N14
\LessThan22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~1_cout\ = CARRY((!y_int(0) & \Y_Cont[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_int(0),
	datab => \Y_Cont[0]~input_o\,
	datad => VCC,
	cout => \LessThan22~1_cout\);

-- Location: LCCOMB_X46_Y25_N16
\LessThan22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~3_cout\ = CARRY((\Y_Cont[1]~input_o\ & (!y_int(1) & !\LessThan22~1_cout\)) # (!\Y_Cont[1]~input_o\ & ((!\LessThan22~1_cout\) # (!y_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[1]~input_o\,
	datab => y_int(1),
	datad => VCC,
	cin => \LessThan22~1_cout\,
	cout => \LessThan22~3_cout\);

-- Location: LCCOMB_X46_Y25_N18
\LessThan22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~5_cout\ = CARRY((\Y_Cont[2]~input_o\ & ((!\LessThan22~3_cout\) # (!\Add23~0_combout\))) # (!\Y_Cont[2]~input_o\ & (!\Add23~0_combout\ & !\LessThan22~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[2]~input_o\,
	datab => \Add23~0_combout\,
	datad => VCC,
	cin => \LessThan22~3_cout\,
	cout => \LessThan22~5_cout\);

-- Location: LCCOMB_X46_Y25_N20
\LessThan22~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~7_cout\ = CARRY((\Y_Cont[3]~input_o\ & (\Add23~2_combout\ & !\LessThan22~5_cout\)) # (!\Y_Cont[3]~input_o\ & ((\Add23~2_combout\) # (!\LessThan22~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[3]~input_o\,
	datab => \Add23~2_combout\,
	datad => VCC,
	cin => \LessThan22~5_cout\,
	cout => \LessThan22~7_cout\);

-- Location: LCCOMB_X46_Y25_N22
\LessThan22~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~9_cout\ = CARRY((\Y_Cont[4]~input_o\ & ((!\LessThan22~7_cout\) # (!\Add23~4_combout\))) # (!\Y_Cont[4]~input_o\ & (!\Add23~4_combout\ & !\LessThan22~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[4]~input_o\,
	datab => \Add23~4_combout\,
	datad => VCC,
	cin => \LessThan22~7_cout\,
	cout => \LessThan22~9_cout\);

-- Location: LCCOMB_X46_Y25_N24
\LessThan22~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~11_cout\ = CARRY((\Add23~6_combout\ & ((!\LessThan22~9_cout\) # (!\Y_Cont[5]~input_o\))) # (!\Add23~6_combout\ & (!\Y_Cont[5]~input_o\ & !\LessThan22~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~6_combout\,
	datab => \Y_Cont[5]~input_o\,
	datad => VCC,
	cin => \LessThan22~9_cout\,
	cout => \LessThan22~11_cout\);

-- Location: LCCOMB_X46_Y25_N26
\LessThan22~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~13_cout\ = CARRY((\Y_Cont[6]~input_o\ & ((!\LessThan22~11_cout\) # (!\Add23~8_combout\))) # (!\Y_Cont[6]~input_o\ & (!\Add23~8_combout\ & !\LessThan22~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Cont[6]~input_o\,
	datab => \Add23~8_combout\,
	datad => VCC,
	cin => \LessThan22~11_cout\,
	cout => \LessThan22~13_cout\);

-- Location: LCCOMB_X46_Y25_N28
\LessThan22~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~15_cout\ = CARRY((\Add23~10_combout\ & ((!\LessThan22~13_cout\) # (!\Y_Cont[7]~input_o\))) # (!\Add23~10_combout\ & (!\Y_Cont[7]~input_o\ & !\LessThan22~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~10_combout\,
	datab => \Y_Cont[7]~input_o\,
	datad => VCC,
	cin => \LessThan22~13_cout\,
	cout => \LessThan22~15_cout\);

-- Location: LCCOMB_X46_Y25_N30
\LessThan22~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan22~16_combout\ = (\Add23~12_combout\ & (!\LessThan22~15_cout\ & \Y_Cont[8]~input_o\)) # (!\Add23~12_combout\ & ((\Y_Cont[8]~input_o\) # (!\LessThan22~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~12_combout\,
	datad => \Y_Cont[8]~input_o\,
	cin => \LessThan22~15_cout\,
	combout => \LessThan22~16_combout\);

-- Location: LCCOMB_X43_Y25_N24
\r_bary_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out[0]~0_combout\ = (\LessThan21~16_combout\) # (\LessThan22~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan21~16_combout\,
	datad => \LessThan22~16_combout\,
	combout => \r_bary_out[0]~0_combout\);

-- Location: LCCOMB_X44_Y25_N4
\r_bary_out[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out[0]~1_combout\ = (\reset~input_o\ & ((\LessThan19~16_combout\) # ((\LessThan20~16_combout\) # (\r_bary_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan19~16_combout\,
	datab => \LessThan20~16_combout\,
	datac => \reset~input_o\,
	datad => \r_bary_out[0]~0_combout\,
	combout => \r_bary_out[0]~1_combout\);

-- Location: IOIBUF_X52_Y10_N1
\r_bary[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(0),
	o => \r_bary[0]~input_o\);

-- Location: LCCOMB_X51_Y12_N20
\ri~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~0_combout\ = (\r_bary[0]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_bary[0]~input_o\,
	datad => \reset~input_o\,
	combout => \ri~0_combout\);

-- Location: FF_X51_Y12_N21
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

-- Location: LCCOMB_X51_Y12_N12
\r_bary_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~2_combout\ = (\r_bary_out[0]~1_combout\ & ((ri(0)))) # (!\r_bary_out[0]~1_combout\ & (\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r_bary_out[0]~1_combout\,
	datad => ri(0),
	combout => \r_bary_out~2_combout\);

-- Location: FF_X51_Y12_N13
\r_bary_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[0]~reg0_q\);

-- Location: IOIBUF_X52_Y12_N1
\r_bary[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(1),
	o => \r_bary[1]~input_o\);

-- Location: LCCOMB_X51_Y12_N30
\ri~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~1_combout\ = (\r_bary[1]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_bary[1]~input_o\,
	datad => \reset~input_o\,
	combout => \ri~1_combout\);

-- Location: FF_X51_Y12_N31
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

-- Location: LCCOMB_X51_Y12_N2
\r_bary_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~3_combout\ = (\r_bary_out[0]~1_combout\ & (ri(1))) # (!\r_bary_out[0]~1_combout\ & ((\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ri(1),
	datac => \r_bary_out[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \r_bary_out~3_combout\);

-- Location: FF_X51_Y12_N3
\r_bary_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[1]~reg0_q\);

-- Location: IOIBUF_X52_Y9_N1
\r_bary[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(2),
	o => \r_bary[2]~input_o\);

-- Location: LCCOMB_X51_Y12_N4
\ri~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~2_combout\ = (\r_bary[2]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_bary[2]~input_o\,
	datad => \reset~input_o\,
	combout => \ri~2_combout\);

-- Location: FF_X51_Y12_N5
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

-- Location: LCCOMB_X51_Y12_N0
\r_bary_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~4_combout\ = (\r_bary_out[0]~1_combout\ & (ri(2))) # (!\r_bary_out[0]~1_combout\ & ((\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_bary_out[0]~1_combout\,
	datac => ri(2),
	datad => \reset~input_o\,
	combout => \r_bary_out~4_combout\);

-- Location: FF_X51_Y12_N1
\r_bary_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[2]~reg0_q\);

-- Location: IOIBUF_X52_Y15_N1
\r_bary[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(3),
	o => \r_bary[3]~input_o\);

-- Location: LCCOMB_X51_Y12_N6
\ri~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~3_combout\ = (\reset~input_o\ & \r_bary[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \r_bary[3]~input_o\,
	combout => \ri~3_combout\);

-- Location: FF_X51_Y12_N7
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

-- Location: LCCOMB_X51_Y12_N18
\r_bary_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~5_combout\ = (\r_bary_out[0]~1_combout\ & ((ri(3)))) # (!\r_bary_out[0]~1_combout\ & (\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r_bary_out[0]~1_combout\,
	datad => ri(3),
	combout => \r_bary_out~5_combout\);

-- Location: FF_X51_Y12_N19
\r_bary_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[3]~reg0_q\);

-- Location: IOIBUF_X52_Y11_N8
\r_bary[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(4),
	o => \r_bary[4]~input_o\);

-- Location: LCCOMB_X51_Y12_N8
\ri~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~4_combout\ = (\r_bary[4]~input_o\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_bary[4]~input_o\,
	datad => \reset~input_o\,
	combout => \ri~4_combout\);

-- Location: FF_X51_Y12_N9
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

-- Location: LCCOMB_X51_Y12_N28
\r_bary_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~6_combout\ = (\r_bary_out[0]~1_combout\ & (ri(4))) # (!\r_bary_out[0]~1_combout\ & ((\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_bary_out[0]~1_combout\,
	datac => ri(4),
	datad => \reset~input_o\,
	combout => \r_bary_out~6_combout\);

-- Location: FF_X51_Y12_N29
\r_bary_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[4]~reg0_q\);

-- Location: IOIBUF_X52_Y13_N8
\r_bary[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(5),
	o => \r_bary[5]~input_o\);

-- Location: LCCOMB_X51_Y12_N26
\ri~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~5_combout\ = (\reset~input_o\ & \r_bary[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \r_bary[5]~input_o\,
	combout => \ri~5_combout\);

-- Location: FF_X51_Y12_N27
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

-- Location: LCCOMB_X51_Y12_N22
\r_bary_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~7_combout\ = (\r_bary_out[0]~1_combout\ & (ri(5))) # (!\r_bary_out[0]~1_combout\ & ((\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ri(5),
	datac => \r_bary_out[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \r_bary_out~7_combout\);

-- Location: FF_X51_Y12_N23
\r_bary_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[5]~reg0_q\);

-- Location: IOIBUF_X52_Y12_N8
\r_bary[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(6),
	o => \r_bary[6]~input_o\);

-- Location: LCCOMB_X51_Y12_N24
\ri~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~6_combout\ = (\reset~input_o\ & \r_bary[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \r_bary[6]~input_o\,
	combout => \ri~6_combout\);

-- Location: FF_X51_Y12_N25
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

-- Location: LCCOMB_X51_Y12_N16
\r_bary_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~8_combout\ = (\r_bary_out[0]~1_combout\ & ((ri(6)))) # (!\r_bary_out[0]~1_combout\ & (\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r_bary_out[0]~1_combout\,
	datad => ri(6),
	combout => \r_bary_out~8_combout\);

-- Location: FF_X51_Y12_N17
\r_bary_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[6]~reg0_q\);

-- Location: IOIBUF_X52_Y9_N8
\r_bary[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_bary(7),
	o => \r_bary[7]~input_o\);

-- Location: LCCOMB_X51_Y12_N10
\ri~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ri~7_combout\ = (\reset~input_o\ & \r_bary[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \r_bary[7]~input_o\,
	combout => \ri~7_combout\);

-- Location: FF_X51_Y12_N11
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

-- Location: LCCOMB_X51_Y12_N14
\r_bary_out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_bary_out~9_combout\ = (\r_bary_out[0]~1_combout\ & ((ri(7)))) # (!\r_bary_out[0]~1_combout\ & (\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r_bary_out[0]~1_combout\,
	datad => ri(7),
	combout => \r_bary_out~9_combout\);

-- Location: FF_X51_Y12_N15
\r_bary_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \r_bary_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_bary_out[7]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N24
\g_bary_out[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[0]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[0]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N25
\g_bary_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[0]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N2
\g_bary_out[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[1]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[1]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N3
\g_bary_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[1]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N4
\g_bary_out[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[2]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[2]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N5
\g_bary_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[2]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N10
\g_bary_out[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[3]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[3]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N11
\g_bary_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[3]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N16
\g_bary_out[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[4]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[4]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N17
\g_bary_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[4]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N18
\g_bary_out[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[5]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[5]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N19
\g_bary_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[5]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N8
\g_bary_out[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[6]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[6]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N9
\g_bary_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[6]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N26
\g_bary_out[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g_bary_out[7]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \g_bary_out[7]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N27
\g_bary_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \g_bary_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_bary_out[7]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N20
\b_bary_out[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[0]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[0]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N21
\b_bary_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[0]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N14
\b_bary_out[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[1]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[1]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N15
\b_bary_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[1]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N28
\b_bary_out[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[2]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[2]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N29
\b_bary_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[2]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N30
\b_bary_out[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[3]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[3]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N31
\b_bary_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[3]~reg0_q\);

-- Location: LCCOMB_X19_Y25_N12
\b_bary_out[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[4]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[4]~reg0feeder_combout\);

-- Location: FF_X19_Y25_N13
\b_bary_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[4]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N12
\b_bary_out[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[5]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[5]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N13
\b_bary_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[5]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N6
\b_bary_out[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[6]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[6]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N7
\b_bary_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[6]~reg0_q\);

-- Location: LCCOMB_X46_Y21_N4
\b_bary_out[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b_bary_out[7]~reg0feeder_combout\ = \r_bary_out[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_bary_out[0]~1_combout\,
	combout => \b_bary_out[7]~reg0feeder_combout\);

-- Location: FF_X46_Y21_N5
\b_bary_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_CLK~inputclkctrl_outclk\,
	d => \b_bary_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_bary_out[7]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N8
\b_bary[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(0),
	o => \b_bary[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\b_bary[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(1),
	o => \b_bary[1]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\b_bary[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(2),
	o => \b_bary[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\b_bary[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(3),
	o => \b_bary[3]~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\b_bary[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(4),
	o => \b_bary[4]~input_o\);

-- Location: IOIBUF_X3_Y41_N1
\b_bary[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(5),
	o => \b_bary[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\b_bary[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(6),
	o => \b_bary[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\b_bary[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_bary(7),
	o => \b_bary[7]~input_o\);

ww_r_bary_out(0) <= \r_bary_out[0]~output_o\;

ww_r_bary_out(1) <= \r_bary_out[1]~output_o\;

ww_r_bary_out(2) <= \r_bary_out[2]~output_o\;

ww_r_bary_out(3) <= \r_bary_out[3]~output_o\;

ww_r_bary_out(4) <= \r_bary_out[4]~output_o\;

ww_r_bary_out(5) <= \r_bary_out[5]~output_o\;

ww_r_bary_out(6) <= \r_bary_out[6]~output_o\;

ww_r_bary_out(7) <= \r_bary_out[7]~output_o\;

ww_g_bary_out(0) <= \g_bary_out[0]~output_o\;

ww_g_bary_out(1) <= \g_bary_out[1]~output_o\;

ww_g_bary_out(2) <= \g_bary_out[2]~output_o\;

ww_g_bary_out(3) <= \g_bary_out[3]~output_o\;

ww_g_bary_out(4) <= \g_bary_out[4]~output_o\;

ww_g_bary_out(5) <= \g_bary_out[5]~output_o\;

ww_g_bary_out(6) <= \g_bary_out[6]~output_o\;

ww_g_bary_out(7) <= \g_bary_out[7]~output_o\;

ww_b_bary_out(0) <= \b_bary_out[0]~output_o\;

ww_b_bary_out(1) <= \b_bary_out[1]~output_o\;

ww_b_bary_out(2) <= \b_bary_out[2]~output_o\;

ww_b_bary_out(3) <= \b_bary_out[3]~output_o\;

ww_b_bary_out(4) <= \b_bary_out[4]~output_o\;

ww_b_bary_out(5) <= \b_bary_out[5]~output_o\;

ww_b_bary_out(6) <= \b_bary_out[6]~output_o\;

ww_b_bary_out(7) <= \b_bary_out[7]~output_o\;

ww_X(0) <= \X[0]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_X(4) <= \X[4]~output_o\;

ww_X(5) <= \X[5]~output_o\;

ww_X(6) <= \X[6]~output_o\;

ww_X(7) <= \X[7]~output_o\;

ww_X(8) <= \X[8]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;
END structure;


