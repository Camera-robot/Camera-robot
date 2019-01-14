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

-- DATE "04/01/2016 10:05:11"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	PWM_cycle IS
    PORT (
	Rst : IN std_logic;
	Clk : IN std_logic;
	CLOCK_50 : IN std_logic;
	pwm_high : IN std_logic_vector(7 DOWNTO 0);
	pwm_number_out : OUT std_logic_vector(3 DOWNTO 0);
	tempo_flag : OUT std_logic;
	PWMout : OUT std_logic
	);
END PWM_cycle;

-- Design Ports Information
-- pwm_number_out[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_number_out[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_number_out[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_number_out[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo_flag	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWMout	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_high[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM_cycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_pwm_high : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_number_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_tempo_flag : std_logic;
SIGNAL ww_PWMout : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_number_out[0]~output_o\ : std_logic;
SIGNAL \pwm_number_out[1]~output_o\ : std_logic;
SIGNAL \pwm_number_out[2]~output_o\ : std_logic;
SIGNAL \pwm_number_out[3]~output_o\ : std_logic;
SIGNAL \tempo_flag~output_o\ : std_logic;
SIGNAL \PWMout~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \count_pwm[0]~8_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \pwm_number[3]~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \pwm_number[2]~4_combout\ : std_logic;
SIGNAL \Pwm~2_combout\ : std_logic;
SIGNAL \pwm_number[3]~5_combout\ : std_logic;
SIGNAL \pwm_number[3]~7_combout\ : std_logic;
SIGNAL \Pwm~1_combout\ : std_logic;
SIGNAL \pwm_number[2]~1_combout\ : std_logic;
SIGNAL \pwm_number[1]~3_combout\ : std_logic;
SIGNAL \Pwm~0_combout\ : std_logic;
SIGNAL \etat~15_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~21_combout\ : std_logic;
SIGNAL \cnt[18]~41_combout\ : std_logic;
SIGNAL \cnt[0]~22\ : std_logic;
SIGNAL \cnt[1]~23_combout\ : std_logic;
SIGNAL \cnt[1]~24\ : std_logic;
SIGNAL \cnt[2]~25_combout\ : std_logic;
SIGNAL \cnt[2]~26\ : std_logic;
SIGNAL \cnt[3]~27_combout\ : std_logic;
SIGNAL \cnt[3]~28\ : std_logic;
SIGNAL \cnt[4]~29_combout\ : std_logic;
SIGNAL \cnt[4]~30\ : std_logic;
SIGNAL \cnt[5]~31_combout\ : std_logic;
SIGNAL \cnt[5]~32\ : std_logic;
SIGNAL \cnt[6]~33_combout\ : std_logic;
SIGNAL \cnt[6]~34\ : std_logic;
SIGNAL \cnt[7]~35_combout\ : std_logic;
SIGNAL \cnt[7]~36\ : std_logic;
SIGNAL \cnt[8]~37_combout\ : std_logic;
SIGNAL \cnt[8]~38\ : std_logic;
SIGNAL \cnt[9]~39_combout\ : std_logic;
SIGNAL \cnt[9]~40\ : std_logic;
SIGNAL \cnt[10]~42_combout\ : std_logic;
SIGNAL \cnt[10]~43\ : std_logic;
SIGNAL \cnt[11]~44_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \cnt[11]~45\ : std_logic;
SIGNAL \cnt[12]~46_combout\ : std_logic;
SIGNAL \cnt[12]~47\ : std_logic;
SIGNAL \cnt[13]~48_combout\ : std_logic;
SIGNAL \cnt[13]~49\ : std_logic;
SIGNAL \cnt[14]~50_combout\ : std_logic;
SIGNAL \cnt[14]~51\ : std_logic;
SIGNAL \cnt[15]~52_combout\ : std_logic;
SIGNAL \cnt[15]~53\ : std_logic;
SIGNAL \cnt[16]~54_combout\ : std_logic;
SIGNAL \cnt[16]~55\ : std_logic;
SIGNAL \cnt[17]~56_combout\ : std_logic;
SIGNAL \cnt[17]~57\ : std_logic;
SIGNAL \cnt[18]~58_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \cnt[18]~59\ : std_logic;
SIGNAL \cnt[19]~60_combout\ : std_logic;
SIGNAL \cnt[19]~61\ : std_logic;
SIGNAL \cnt[20]~62_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \next_new_trame_int~0_combout\ : std_logic;
SIGNAL \new_trame_int~q\ : std_logic;
SIGNAL \etat~12_combout\ : std_logic;
SIGNAL \etat.new_t0~q\ : std_logic;
SIGNAL \etat~9_combout\ : std_logic;
SIGNAL \etat.new_t1~q\ : std_logic;
SIGNAL \count_pwm[7]~16_combout\ : std_logic;
SIGNAL \etat~14_combout\ : std_logic;
SIGNAL \etat.pwm_init_high_s~q\ : std_logic;
SIGNAL \count_pwm[7]~17_combout\ : std_logic;
SIGNAL \count_pwm[7]~18_combout\ : std_logic;
SIGNAL \count_pwm[7]~19_combout\ : std_logic;
SIGNAL \count_pwm[0]~9\ : std_logic;
SIGNAL \count_pwm[1]~10_combout\ : std_logic;
SIGNAL \count_pwm[1]~11\ : std_logic;
SIGNAL \count_pwm[2]~12_combout\ : std_logic;
SIGNAL \count_pwm[2]~13\ : std_logic;
SIGNAL \count_pwm[3]~14_combout\ : std_logic;
SIGNAL \count_pwm[3]~15\ : std_logic;
SIGNAL \count_pwm[4]~20_combout\ : std_logic;
SIGNAL \count_pwm[4]~21\ : std_logic;
SIGNAL \count_pwm[5]~22_combout\ : std_logic;
SIGNAL \count_pwm[5]~23\ : std_logic;
SIGNAL \count_pwm[6]~24_combout\ : std_logic;
SIGNAL \count_pwm[6]~25\ : std_logic;
SIGNAL \count_pwm[7]~26_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \etat_suivant~0_combout\ : std_logic;
SIGNAL \pwm_high[7]~input_o\ : std_logic;
SIGNAL \pwm_high[6]~input_o\ : std_logic;
SIGNAL \pwm_high[5]~input_o\ : std_logic;
SIGNAL \pwm_high[4]~input_o\ : std_logic;
SIGNAL \pwm_high[3]~input_o\ : std_logic;
SIGNAL \pwm_high[2]~input_o\ : std_logic;
SIGNAL \pwm_high[1]~input_o\ : std_logic;
SIGNAL \pwm_high[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \etat~13_combout\ : std_logic;
SIGNAL \etat.pwm_high_s~q\ : std_logic;
SIGNAL \etat~10_combout\ : std_logic;
SIGNAL \etat~11_combout\ : std_logic;
SIGNAL \etat.pwm_low_s~q\ : std_logic;
SIGNAL \pwm_number[3]~0_combout\ : std_logic;
SIGNAL \pwm_number[0]~2_combout\ : std_logic;
SIGNAL \pwm_signal~0_combout\ : std_logic;
SIGNAL \PWMout~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(20 DOWNTO 0);
SIGNAL pwm_number : std_logic_vector(3 DOWNTO 0);
SIGNAL count_pwm : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;

BEGIN

ww_Rst <= Rst;
ww_Clk <= Clk;
ww_CLOCK_50 <= CLOCK_50;
ww_pwm_high <= pwm_high;
pwm_number_out <= ww_pwm_number_out;
tempo_flag <= ww_tempo_flag;
PWMout <= ww_PWMout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;

-- Location: IOOBUF_X23_Y24_N9
\pwm_number_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_number(0),
	devoe => ww_devoe,
	o => \pwm_number_out[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\pwm_number_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_number(1),
	devoe => ww_devoe,
	o => \pwm_number_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\pwm_number_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_number(2),
	devoe => ww_devoe,
	o => \pwm_number_out[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\pwm_number_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_number(3),
	devoe => ww_devoe,
	o => \pwm_number_out[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\tempo_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat.new_t1~q\,
	devoe => ww_devoe,
	o => \tempo_flag~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\PWMout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWMout~reg0_q\,
	devoe => ww_devoe,
	o => \PWMout~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y24_N1
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: LCCOMB_X23_Y22_N12
\count_pwm[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[0]~8_combout\ = count_pwm(0) $ (VCC)
-- \count_pwm[0]~9\ = CARRY(count_pwm(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_pwm(0),
	datad => VCC,
	combout => \count_pwm[0]~8_combout\,
	cout => \count_pwm[0]~9\);

-- Location: LCCOMB_X23_Y22_N0
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (count_pwm(3)) # ((count_pwm(2) & ((count_pwm(1)) # (count_pwm(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_pwm(3),
	datab => count_pwm(2),
	datac => count_pwm(1),
	datad => count_pwm(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y22_N28
\pwm_number[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[3]~6_combout\ = (pwm_number(1) & (\Rst~input_o\ & (pwm_number(0) & \etat.pwm_low_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_number(1),
	datab => \Rst~input_o\,
	datac => pwm_number(0),
	datad => \etat.pwm_low_s~q\,
	combout => \pwm_number[3]~6_combout\);

-- Location: LCCOMB_X24_Y22_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = pwm_number(2) $ (((pwm_number(1) & pwm_number(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_number(1),
	datab => pwm_number(2),
	datac => pwm_number(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X24_Y22_N4
\pwm_number[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[2]~4_combout\ = (\Add1~0_combout\ & ((\pwm_number[2]~1_combout\) # ((\pwm_number[3]~0_combout\ & pwm_number(2))))) # (!\Add1~0_combout\ & (\pwm_number[3]~0_combout\ & (pwm_number(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \pwm_number[3]~0_combout\,
	datac => pwm_number(2),
	datad => \pwm_number[2]~1_combout\,
	combout => \pwm_number[2]~4_combout\);

-- Location: FF_X24_Y22_N5
\pwm_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pwm_number[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_number(2));

-- Location: LCCOMB_X23_Y22_N10
\Pwm~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pwm~2_combout\ = (\Pwm~0_combout\) # ((!\LessThan2~1_combout\ & !\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datac => \Pwm~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Pwm~2_combout\);

-- Location: LCCOMB_X24_Y22_N6
\pwm_number[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[3]~5_combout\ = (\Rst~input_o\ & (pwm_number(3) & ((\Pwm~2_combout\) # (!\etat.pwm_low_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \etat.pwm_low_s~q\,
	datac => pwm_number(3),
	datad => \Pwm~2_combout\,
	combout => \pwm_number[3]~5_combout\);

-- Location: LCCOMB_X24_Y22_N14
\pwm_number[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[3]~7_combout\ = (\pwm_number[3]~5_combout\) # ((\pwm_number[3]~6_combout\ & (pwm_number(2) & \Pwm~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_number[3]~6_combout\,
	datab => pwm_number(2),
	datac => \Pwm~1_combout\,
	datad => \pwm_number[3]~5_combout\,
	combout => \pwm_number[3]~7_combout\);

-- Location: FF_X24_Y22_N15
\pwm_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pwm_number[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_number(3));

-- Location: LCCOMB_X24_Y22_N8
\Pwm~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pwm~1_combout\ = (!pwm_number(3) & ((\LessThan2~1_combout\) # (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~0_combout\,
	datad => pwm_number(3),
	combout => \Pwm~1_combout\);

-- Location: LCCOMB_X24_Y22_N18
\pwm_number[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[2]~1_combout\ = (\Rst~input_o\ & (\etat.pwm_low_s~q\ & (\Pwm~1_combout\ & !\etat_suivant~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \etat.pwm_low_s~q\,
	datac => \Pwm~1_combout\,
	datad => \etat_suivant~0_combout\,
	combout => \pwm_number[2]~1_combout\);

-- Location: LCCOMB_X23_Y22_N28
\pwm_number[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[1]~3_combout\ = (pwm_number(1) & ((\pwm_number[3]~0_combout\) # ((!pwm_number(0) & \pwm_number[2]~1_combout\)))) # (!pwm_number(1) & (pwm_number(0) & (\pwm_number[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_number(0),
	datab => \pwm_number[2]~1_combout\,
	datac => pwm_number(1),
	datad => \pwm_number[3]~0_combout\,
	combout => \pwm_number[1]~3_combout\);

-- Location: FF_X23_Y22_N29
\pwm_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pwm_number[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_number(1));

-- Location: LCCOMB_X23_Y22_N30
\Pwm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pwm~0_combout\ = (pwm_number(0)) # ((pwm_number(1)) # ((pwm_number(2)) # (!pwm_number(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_number(0),
	datab => pwm_number(1),
	datac => pwm_number(3),
	datad => pwm_number(2),
	combout => \Pwm~0_combout\);

-- Location: LCCOMB_X24_Y22_N26
\etat~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~15_combout\ = (\etat.pwm_low_s~q\ & (!\Pwm~0_combout\ & ((\LessThan2~1_combout\) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \etat.pwm_low_s~q\,
	datac => \LessThan2~0_combout\,
	datad => \Pwm~0_combout\,
	combout => \etat~15_combout\);

-- Location: IOIBUF_X0_Y11_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y22_N12
\cnt[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~21_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~22\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \cnt[0]~21_combout\,
	cout => \cnt[0]~22\);

-- Location: LCCOMB_X25_Y22_N6
\cnt[18]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[18]~41_combout\ = (!\Equal2~4_combout\) # (!\Rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rst~input_o\,
	datad => \Equal2~4_combout\,
	combout => \cnt[18]~41_combout\);

-- Location: FF_X25_Y22_N13
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[0]~21_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X25_Y22_N14
\cnt[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~23_combout\ = (cnt(1) & (!\cnt[0]~22\)) # (!cnt(1) & ((\cnt[0]~22\) # (GND)))
-- \cnt[1]~24\ = CARRY((!\cnt[0]~22\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~22\,
	combout => \cnt[1]~23_combout\,
	cout => \cnt[1]~24\);

-- Location: FF_X25_Y22_N15
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[1]~23_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X25_Y22_N16
\cnt[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~25_combout\ = (cnt(2) & (\cnt[1]~24\ $ (GND))) # (!cnt(2) & (!\cnt[1]~24\ & VCC))
-- \cnt[2]~26\ = CARRY((cnt(2) & !\cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~24\,
	combout => \cnt[2]~25_combout\,
	cout => \cnt[2]~26\);

-- Location: FF_X25_Y22_N17
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[2]~25_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X25_Y22_N18
\cnt[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~27_combout\ = (cnt(3) & (!\cnt[2]~26\)) # (!cnt(3) & ((\cnt[2]~26\) # (GND)))
-- \cnt[3]~28\ = CARRY((!\cnt[2]~26\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~26\,
	combout => \cnt[3]~27_combout\,
	cout => \cnt[3]~28\);

-- Location: FF_X25_Y22_N19
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[3]~27_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X25_Y22_N20
\cnt[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~29_combout\ = (cnt(4) & (\cnt[3]~28\ $ (GND))) # (!cnt(4) & (!\cnt[3]~28\ & VCC))
-- \cnt[4]~30\ = CARRY((cnt(4) & !\cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~28\,
	combout => \cnt[4]~29_combout\,
	cout => \cnt[4]~30\);

-- Location: FF_X25_Y22_N21
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[4]~29_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X25_Y22_N22
\cnt[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~31_combout\ = (cnt(5) & (!\cnt[4]~30\)) # (!cnt(5) & ((\cnt[4]~30\) # (GND)))
-- \cnt[5]~32\ = CARRY((!\cnt[4]~30\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~30\,
	combout => \cnt[5]~31_combout\,
	cout => \cnt[5]~32\);

-- Location: FF_X25_Y22_N23
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[5]~31_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X25_Y22_N24
\cnt[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~33_combout\ = (cnt(6) & (\cnt[5]~32\ $ (GND))) # (!cnt(6) & (!\cnt[5]~32\ & VCC))
-- \cnt[6]~34\ = CARRY((cnt(6) & !\cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~32\,
	combout => \cnt[6]~33_combout\,
	cout => \cnt[6]~34\);

-- Location: FF_X25_Y22_N25
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[6]~33_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X25_Y22_N26
\cnt[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~35_combout\ = (cnt(7) & (!\cnt[6]~34\)) # (!cnt(7) & ((\cnt[6]~34\) # (GND)))
-- \cnt[7]~36\ = CARRY((!\cnt[6]~34\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~34\,
	combout => \cnt[7]~35_combout\,
	cout => \cnt[7]~36\);

-- Location: FF_X25_Y22_N27
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[7]~35_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X25_Y22_N28
\cnt[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~37_combout\ = (cnt(8) & (\cnt[7]~36\ $ (GND))) # (!cnt(8) & (!\cnt[7]~36\ & VCC))
-- \cnt[8]~38\ = CARRY((cnt(8) & !\cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~36\,
	combout => \cnt[8]~37_combout\,
	cout => \cnt[8]~38\);

-- Location: FF_X25_Y22_N29
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[8]~37_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X25_Y22_N30
\cnt[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~39_combout\ = (cnt(9) & (!\cnt[8]~38\)) # (!cnt(9) & ((\cnt[8]~38\) # (GND)))
-- \cnt[9]~40\ = CARRY((!\cnt[8]~38\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \cnt[8]~38\,
	combout => \cnt[9]~39_combout\,
	cout => \cnt[9]~40\);

-- Location: FF_X25_Y22_N31
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[9]~39_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X25_Y21_N0
\cnt[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[10]~42_combout\ = (cnt(10) & (\cnt[9]~40\ $ (GND))) # (!cnt(10) & (!\cnt[9]~40\ & VCC))
-- \cnt[10]~43\ = CARRY((cnt(10) & !\cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~40\,
	combout => \cnt[10]~42_combout\,
	cout => \cnt[10]~43\);

-- Location: FF_X25_Y21_N1
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[10]~42_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X25_Y21_N2
\cnt[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[11]~44_combout\ = (cnt(11) & (!\cnt[10]~43\)) # (!cnt(11) & ((\cnt[10]~43\) # (GND)))
-- \cnt[11]~45\ = CARRY((!\cnt[10]~43\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \cnt[10]~43\,
	combout => \cnt[11]~44_combout\,
	cout => \cnt[11]~45\);

-- Location: FF_X25_Y21_N3
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[11]~44_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X25_Y22_N10
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ((cnt(8)) # ((cnt(10)) # (!cnt(11)))) # (!cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(8),
	datac => cnt(10),
	datad => cnt(11),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X25_Y21_N4
\cnt[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[12]~46_combout\ = (cnt(12) & (\cnt[11]~45\ $ (GND))) # (!cnt(12) & (!\cnt[11]~45\ & VCC))
-- \cnt[12]~47\ = CARRY((cnt(12) & !\cnt[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datad => VCC,
	cin => \cnt[11]~45\,
	combout => \cnt[12]~46_combout\,
	cout => \cnt[12]~47\);

-- Location: FF_X25_Y21_N5
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[12]~46_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X25_Y21_N6
\cnt[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[13]~48_combout\ = (cnt(13) & (!\cnt[12]~47\)) # (!cnt(13) & ((\cnt[12]~47\) # (GND)))
-- \cnt[13]~49\ = CARRY((!\cnt[12]~47\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \cnt[12]~47\,
	combout => \cnt[13]~48_combout\,
	cout => \cnt[13]~49\);

-- Location: FF_X25_Y21_N7
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[13]~48_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X25_Y21_N8
\cnt[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[14]~50_combout\ = (cnt(14) & (\cnt[13]~49\ $ (GND))) # (!cnt(14) & (!\cnt[13]~49\ & VCC))
-- \cnt[14]~51\ = CARRY((cnt(14) & !\cnt[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~49\,
	combout => \cnt[14]~50_combout\,
	cout => \cnt[14]~51\);

-- Location: FF_X25_Y21_N9
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[14]~50_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X25_Y21_N10
\cnt[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[15]~52_combout\ = (cnt(15) & (!\cnt[14]~51\)) # (!cnt(15) & ((\cnt[14]~51\) # (GND)))
-- \cnt[15]~53\ = CARRY((!\cnt[14]~51\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \cnt[14]~51\,
	combout => \cnt[15]~52_combout\,
	cout => \cnt[15]~53\);

-- Location: FF_X25_Y21_N11
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[15]~52_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X25_Y21_N12
\cnt[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[16]~54_combout\ = (cnt(16) & (\cnt[15]~53\ $ (GND))) # (!cnt(16) & (!\cnt[15]~53\ & VCC))
-- \cnt[16]~55\ = CARRY((cnt(16) & !\cnt[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \cnt[15]~53\,
	combout => \cnt[16]~54_combout\,
	cout => \cnt[16]~55\);

-- Location: FF_X25_Y21_N13
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[16]~54_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X25_Y21_N14
\cnt[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[17]~56_combout\ = (cnt(17) & (!\cnt[16]~55\)) # (!cnt(17) & ((\cnt[16]~55\) # (GND)))
-- \cnt[17]~57\ = CARRY((!\cnt[16]~55\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \cnt[16]~55\,
	combout => \cnt[17]~56_combout\,
	cout => \cnt[17]~57\);

-- Location: FF_X25_Y21_N15
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[17]~56_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X25_Y21_N16
\cnt[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[18]~58_combout\ = (cnt(18) & (\cnt[17]~57\ $ (GND))) # (!cnt(18) & (!\cnt[17]~57\ & VCC))
-- \cnt[18]~59\ = CARRY((cnt(18) & !\cnt[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \cnt[17]~57\,
	combout => \cnt[18]~58_combout\,
	cout => \cnt[18]~59\);

-- Location: FF_X25_Y21_N17
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[18]~58_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X25_Y22_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!cnt(0) & (!cnt(1) & (!cnt(5) & !cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(1),
	datac => cnt(5),
	datad => cnt(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X25_Y22_N2
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!cnt(17) & (!cnt(18) & (\Equal1~1_combout\ & !cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datab => cnt(18),
	datac => \Equal1~1_combout\,
	datad => cnt(14),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X25_Y22_N8
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ((cnt(2)) # ((cnt(6)) # (!cnt(7)))) # (!cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(7),
	datad => cnt(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X25_Y21_N18
\cnt[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[19]~60_combout\ = (cnt(19) & (!\cnt[18]~59\)) # (!cnt(19) & ((\cnt[18]~59\) # (GND)))
-- \cnt[19]~61\ = CARRY((!\cnt[18]~59\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \cnt[18]~59\,
	combout => \cnt[19]~60_combout\,
	cout => \cnt[19]~61\);

-- Location: FF_X25_Y21_N19
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[19]~60_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X25_Y21_N20
\cnt[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[20]~62_combout\ = \cnt[19]~61\ $ (!cnt(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(20),
	cin => \cnt[19]~61\,
	combout => \cnt[20]~62_combout\);

-- Location: FF_X25_Y21_N21
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt[20]~62_combout\,
	sclr => \cnt[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X25_Y21_N24
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ((cnt(12)) # ((cnt(15)) # (!cnt(13)))) # (!cnt(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datab => cnt(12),
	datac => cnt(13),
	datad => cnt(15),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X25_Y21_N22
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (cnt(19)) # ((\Equal2~2_combout\) # (!cnt(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datac => cnt(20),
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X25_Y22_N0
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\) # (((\Equal2~0_combout\) # (\Equal2~3_combout\)) # (!\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X26_Y22_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (cnt(2) & (!cnt(3) & (!cnt(7) & cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(7),
	datad => cnt(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y21_N26
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (cnt(15) & (!cnt(16) & (!cnt(13) & cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datab => cnt(16),
	datac => cnt(13),
	datad => cnt(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X25_Y21_N28
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!cnt(20) & (cnt(8) & !cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datac => cnt(8),
	datad => cnt(11),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X25_Y21_N30
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (cnt(19) & (cnt(10) & (\Equal1~3_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(10),
	datac => \Equal1~3_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X24_Y22_N24
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~0_combout\ & (!cnt(9) & (\Equal1~5_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => cnt(9),
	datac => \Equal1~5_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X24_Y22_N16
\next_new_trame_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_new_trame_int~0_combout\ = (\Equal1~6_combout\) # ((\Equal2~4_combout\ & \new_trame_int~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \new_trame_int~q\,
	datad => \Equal1~6_combout\,
	combout => \next_new_trame_int~0_combout\);

-- Location: FF_X24_Y22_N17
new_trame_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \next_new_trame_int~0_combout\,
	sclr => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_trame_int~q\);

-- Location: LCCOMB_X24_Y22_N22
\etat~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~12_combout\ = (\Rst~input_o\ & ((\etat~15_combout\) # ((\etat.new_t0~q\ & \new_trame_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat~15_combout\,
	datab => \Rst~input_o\,
	datac => \etat.new_t0~q\,
	datad => \new_trame_int~q\,
	combout => \etat~12_combout\);

-- Location: FF_X24_Y22_N23
\etat.new_t0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \etat~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.new_t0~q\);

-- Location: LCCOMB_X24_Y22_N0
\etat~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~9_combout\ = (\Rst~input_o\ & (!\new_trame_int~q\ & ((\etat.new_t0~q\) # (\etat.new_t1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.new_t0~q\,
	datab => \Rst~input_o\,
	datac => \etat.new_t1~q\,
	datad => \new_trame_int~q\,
	combout => \etat~9_combout\);

-- Location: FF_X24_Y22_N1
\etat.new_t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \etat~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.new_t1~q\);

-- Location: LCCOMB_X23_Y22_N4
\count_pwm[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[7]~16_combout\ = (!pwm_number(3) & (\etat.pwm_low_s~q\ & ((\LessThan2~1_combout\) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => pwm_number(3),
	datac => \etat.pwm_low_s~q\,
	datad => \LessThan2~0_combout\,
	combout => \count_pwm[7]~16_combout\);

-- Location: LCCOMB_X24_Y22_N20
\etat~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~14_combout\ = (\Rst~input_o\ & (!\count_pwm[7]~16_combout\ & ((!\new_trame_int~q\) # (!\etat.new_t1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \etat.new_t1~q\,
	datac => \count_pwm[7]~16_combout\,
	datad => \new_trame_int~q\,
	combout => \etat~14_combout\);

-- Location: FF_X24_Y22_N21
\etat.pwm_init_high_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \etat~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.pwm_init_high_s~q\);

-- Location: LCCOMB_X22_Y22_N30
\count_pwm[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[7]~17_combout\ = \etat.pwm_init_high_s~q\ $ (!\count_pwm[7]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat.pwm_init_high_s~q\,
	datad => \count_pwm[7]~16_combout\,
	combout => \count_pwm[7]~17_combout\);

-- Location: LCCOMB_X24_Y22_N10
\count_pwm[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[7]~18_combout\ = (\Rst~input_o\ & (!\etat.new_t0~q\ & !\etat.new_t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \etat.new_t0~q\,
	datad => \etat.new_t1~q\,
	combout => \count_pwm[7]~18_combout\);

-- Location: LCCOMB_X23_Y22_N2
\count_pwm[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[7]~19_combout\ = (\count_pwm[7]~18_combout\ & ((\Pwm~2_combout\) # (!\etat.pwm_low_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.pwm_low_s~q\,
	datac => \count_pwm[7]~18_combout\,
	datad => \Pwm~2_combout\,
	combout => \count_pwm[7]~19_combout\);

-- Location: FF_X23_Y22_N13
\count_pwm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[0]~8_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(0));

-- Location: LCCOMB_X23_Y22_N14
\count_pwm[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[1]~10_combout\ = (count_pwm(1) & (!\count_pwm[0]~9\)) # (!count_pwm(1) & ((\count_pwm[0]~9\) # (GND)))
-- \count_pwm[1]~11\ = CARRY((!\count_pwm[0]~9\) # (!count_pwm(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_pwm(1),
	datad => VCC,
	cin => \count_pwm[0]~9\,
	combout => \count_pwm[1]~10_combout\,
	cout => \count_pwm[1]~11\);

-- Location: FF_X23_Y22_N15
\count_pwm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[1]~10_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(1));

-- Location: LCCOMB_X23_Y22_N16
\count_pwm[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[2]~12_combout\ = (count_pwm(2) & (\count_pwm[1]~11\ $ (GND))) # (!count_pwm(2) & (!\count_pwm[1]~11\ & VCC))
-- \count_pwm[2]~13\ = CARRY((count_pwm(2) & !\count_pwm[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_pwm(2),
	datad => VCC,
	cin => \count_pwm[1]~11\,
	combout => \count_pwm[2]~12_combout\,
	cout => \count_pwm[2]~13\);

-- Location: FF_X23_Y22_N17
\count_pwm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[2]~12_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(2));

-- Location: LCCOMB_X23_Y22_N18
\count_pwm[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[3]~14_combout\ = (count_pwm(3) & (!\count_pwm[2]~13\)) # (!count_pwm(3) & ((\count_pwm[2]~13\) # (GND)))
-- \count_pwm[3]~15\ = CARRY((!\count_pwm[2]~13\) # (!count_pwm(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_pwm(3),
	datad => VCC,
	cin => \count_pwm[2]~13\,
	combout => \count_pwm[3]~14_combout\,
	cout => \count_pwm[3]~15\);

-- Location: FF_X23_Y22_N19
\count_pwm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[3]~14_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(3));

-- Location: LCCOMB_X23_Y22_N20
\count_pwm[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[4]~20_combout\ = (count_pwm(4) & (\count_pwm[3]~15\ $ (GND))) # (!count_pwm(4) & (!\count_pwm[3]~15\ & VCC))
-- \count_pwm[4]~21\ = CARRY((count_pwm(4) & !\count_pwm[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_pwm(4),
	datad => VCC,
	cin => \count_pwm[3]~15\,
	combout => \count_pwm[4]~20_combout\,
	cout => \count_pwm[4]~21\);

-- Location: FF_X23_Y22_N21
\count_pwm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[4]~20_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(4));

-- Location: LCCOMB_X23_Y22_N22
\count_pwm[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[5]~22_combout\ = (count_pwm(5) & (!\count_pwm[4]~21\)) # (!count_pwm(5) & ((\count_pwm[4]~21\) # (GND)))
-- \count_pwm[5]~23\ = CARRY((!\count_pwm[4]~21\) # (!count_pwm(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_pwm(5),
	datad => VCC,
	cin => \count_pwm[4]~21\,
	combout => \count_pwm[5]~22_combout\,
	cout => \count_pwm[5]~23\);

-- Location: FF_X23_Y22_N23
\count_pwm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[5]~22_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(5));

-- Location: LCCOMB_X23_Y22_N24
\count_pwm[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[6]~24_combout\ = (count_pwm(6) & (\count_pwm[5]~23\ $ (GND))) # (!count_pwm(6) & (!\count_pwm[5]~23\ & VCC))
-- \count_pwm[6]~25\ = CARRY((count_pwm(6) & !\count_pwm[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_pwm(6),
	datad => VCC,
	cin => \count_pwm[5]~23\,
	combout => \count_pwm[6]~24_combout\,
	cout => \count_pwm[6]~25\);

-- Location: FF_X23_Y22_N25
\count_pwm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[6]~24_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(6));

-- Location: LCCOMB_X23_Y22_N26
\count_pwm[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_pwm[7]~26_combout\ = \count_pwm[6]~25\ $ (count_pwm(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_pwm(7),
	cin => \count_pwm[6]~25\,
	combout => \count_pwm[7]~26_combout\);

-- Location: FF_X23_Y22_N27
\count_pwm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count_pwm[7]~26_combout\,
	sclr => \count_pwm[7]~17_combout\,
	ena => \count_pwm[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_pwm(7));

-- Location: LCCOMB_X23_Y22_N6
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (count_pwm(7)) # ((count_pwm(4)) # ((count_pwm(5)) # (count_pwm(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_pwm(7),
	datab => count_pwm(4),
	datac => count_pwm(5),
	datad => count_pwm(6),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y22_N8
\etat_suivant~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_suivant~0_combout\ = (\LessThan2~1_combout\ & (pwm_number(3) $ ((!\Pwm~0_combout\)))) # (!\LessThan2~1_combout\ & ((pwm_number(3) $ (!\Pwm~0_combout\)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => pwm_number(3),
	datac => \Pwm~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \etat_suivant~0_combout\);

-- Location: IOIBUF_X18_Y24_N22
\pwm_high[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(7),
	o => \pwm_high[7]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\pwm_high[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(6),
	o => \pwm_high[6]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\pwm_high[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(5),
	o => \pwm_high[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\pwm_high[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(4),
	o => \pwm_high[4]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\pwm_high[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(3),
	o => \pwm_high[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\pwm_high[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(2),
	o => \pwm_high[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\pwm_high[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(1),
	o => \pwm_high[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\pwm_high[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwm_high(0),
	o => \pwm_high[0]~input_o\);

-- Location: LCCOMB_X22_Y22_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\pwm_high[0]~input_o\ & count_pwm(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[0]~input_o\,
	datab => count_pwm(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y22_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\pwm_high[1]~input_o\ & ((!\LessThan0~1_cout\) # (!count_pwm(1)))) # (!\pwm_high[1]~input_o\ & (!count_pwm(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[1]~input_o\,
	datab => count_pwm(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y22_N8
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\pwm_high[2]~input_o\ & (count_pwm(2) & !\LessThan0~3_cout\)) # (!\pwm_high[2]~input_o\ & ((count_pwm(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[2]~input_o\,
	datab => count_pwm(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y22_N10
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\pwm_high[3]~input_o\ & ((!\LessThan0~5_cout\) # (!count_pwm(3)))) # (!\pwm_high[3]~input_o\ & (!count_pwm(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[3]~input_o\,
	datab => count_pwm(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y22_N12
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((count_pwm(4) & ((!\LessThan0~7_cout\) # (!\pwm_high[4]~input_o\))) # (!count_pwm(4) & (!\pwm_high[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_pwm(4),
	datab => \pwm_high[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y22_N14
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\pwm_high[5]~input_o\ & ((!\LessThan0~9_cout\) # (!count_pwm(5)))) # (!\pwm_high[5]~input_o\ & (!count_pwm(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[5]~input_o\,
	datab => count_pwm(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y22_N16
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\pwm_high[6]~input_o\ & (count_pwm(6) & !\LessThan0~11_cout\)) # (!\pwm_high[6]~input_o\ & ((count_pwm(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[6]~input_o\,
	datab => count_pwm(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y22_N18
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\pwm_high[7]~input_o\ & (\LessThan0~13_cout\ & count_pwm(7))) # (!\pwm_high[7]~input_o\ & ((\LessThan0~13_cout\) # (count_pwm(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_high[7]~input_o\,
	datad => count_pwm(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X22_Y22_N28
\etat~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~13_combout\ = (\Rst~input_o\ & (((\etat.pwm_high_s~q\ & !\LessThan0~14_combout\)) # (!\etat.pwm_init_high_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \etat.pwm_init_high_s~q\,
	datac => \etat.pwm_high_s~q\,
	datad => \LessThan0~14_combout\,
	combout => \etat~13_combout\);

-- Location: FF_X22_Y22_N29
\etat.pwm_high_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \etat~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.pwm_high_s~q\);

-- Location: LCCOMB_X22_Y22_N24
\etat~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~10_combout\ = (\etat.pwm_high_s~q\ & (\Rst~input_o\ & \LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat.pwm_high_s~q\,
	datac => \Rst~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \etat~10_combout\);

-- Location: LCCOMB_X22_Y22_N26
\etat~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat~11_combout\ = (\etat~10_combout\) # ((\Rst~input_o\ & (\etat_suivant~0_combout\ & \etat.pwm_low_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \etat_suivant~0_combout\,
	datac => \etat.pwm_low_s~q\,
	datad => \etat~10_combout\,
	combout => \etat~11_combout\);

-- Location: FF_X22_Y22_N27
\etat.pwm_low_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \etat~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.pwm_low_s~q\);

-- Location: LCCOMB_X24_Y22_N2
\pwm_number[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[3]~0_combout\ = (\Rst~input_o\ & ((\etat_suivant~0_combout\) # (!\etat.pwm_low_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat.pwm_low_s~q\,
	datac => \Rst~input_o\,
	datad => \etat_suivant~0_combout\,
	combout => \pwm_number[3]~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\pwm_number[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_number[0]~2_combout\ = (pwm_number(0) & (\pwm_number[3]~0_combout\)) # (!pwm_number(0) & ((\pwm_number[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm_number[3]~0_combout\,
	datac => pwm_number(0),
	datad => \pwm_number[2]~1_combout\,
	combout => \pwm_number[0]~2_combout\);

-- Location: FF_X24_Y22_N31
\pwm_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pwm_number[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_number(0));

-- Location: LCCOMB_X22_Y22_N0
\pwm_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_signal~0_combout\ = (\etat.pwm_high_s~q\ & !\LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat.pwm_high_s~q\,
	datad => \LessThan0~14_combout\,
	combout => \pwm_signal~0_combout\);

-- Location: FF_X22_Y22_N1
\PWMout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pwm_signal~0_combout\,
	sclr => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMout~reg0_q\);

ww_pwm_number_out(0) <= \pwm_number_out[0]~output_o\;

ww_pwm_number_out(1) <= \pwm_number_out[1]~output_o\;

ww_pwm_number_out(2) <= \pwm_number_out[2]~output_o\;

ww_pwm_number_out(3) <= \pwm_number_out[3]~output_o\;

ww_tempo_flag <= \tempo_flag~output_o\;

ww_PWMout <= \PWMout~output_o\;
END structure;


