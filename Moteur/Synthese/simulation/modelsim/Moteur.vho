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

-- DATE "01/14/2019 12:27:14"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_72_to_serial IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	xin : IN std_logic_vector(9 DOWNTO 0);
	htop : IN std_logic;
	modetop : IN std_logic;
	LedR : BUFFER std_logic;
	serial_out : BUFFER std_logic
	);
END top_72_to_serial;

-- Design Ports Information
-- LedR	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serial_out	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modetop	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- htop	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[9]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[3]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[0]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[2]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_72_to_serial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_xin : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_htop : std_logic;
SIGNAL ww_modetop : std_logic;
SIGNAL ww_LedR : std_logic;
SIGNAL ww_serial_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U3|Add0~13_sumout\ : std_logic;
SIGNAL \U3|Add0~26\ : std_logic;
SIGNAL \U3|Add0~41_sumout\ : std_logic;
SIGNAL \U3|Add0~42\ : std_logic;
SIGNAL \U3|Add0~37_sumout\ : std_logic;
SIGNAL \U3|Add0~38\ : std_logic;
SIGNAL \U3|Add0~33_sumout\ : std_logic;
SIGNAL \U3|Add0~34\ : std_logic;
SIGNAL \U3|Add0~21_sumout\ : std_logic;
SIGNAL \U3|Add0~22\ : std_logic;
SIGNAL \U3|Add0~29_sumout\ : std_logic;
SIGNAL \U3|Add0~30\ : std_logic;
SIGNAL \U3|Add0~17_sumout\ : std_logic;
SIGNAL \U3|LessThan1~2_combout\ : std_logic;
SIGNAL \U3|LessThan1~0_combout\ : std_logic;
SIGNAL \U3|LessThan1~3_combout\ : std_logic;
SIGNAL \U3|r_Bit_Index[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector15~0_combout\ : std_logic;
SIGNAL \U3|Selector14~0_combout\ : std_logic;
SIGNAL \U3|Selector19~0_combout\ : std_logic;
SIGNAL \U3|r_SM_Main.s_TX_Data_Bits~q\ : std_logic;
SIGNAL \U3|Selector16~0_combout\ : std_logic;
SIGNAL \U3|r_SM_Main.s_TX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \U3|r_SM_Main.s_TX_Stop_Bit~q\ : std_logic;
SIGNAL \U3|r_SM_Main~7_combout\ : std_logic;
SIGNAL \U3|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \U3|Selector17~0_combout\ : std_logic;
SIGNAL \U3|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \U3|r_Clk_Count[9]~0_combout\ : std_logic;
SIGNAL \U3|Add0~14\ : std_logic;
SIGNAL \U3|Add0~9_sumout\ : std_logic;
SIGNAL \U3|Add0~10\ : std_logic;
SIGNAL \U3|Add0~5_sumout\ : std_logic;
SIGNAL \U3|Add0~6\ : std_logic;
SIGNAL \U3|Add0~1_sumout\ : std_logic;
SIGNAL \U3|Add0~2\ : std_logic;
SIGNAL \U3|Add0~25_sumout\ : std_logic;
SIGNAL \U3|LessThan1~1_combout\ : std_logic;
SIGNAL \U3|Selector2~0_combout\ : std_logic;
SIGNAL \U3|Selector2~1_combout\ : std_logic;
SIGNAL \U3|r_TX_Done~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|cpt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|cpt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|new_trame_int~0_combout\ : std_logic;
SIGNAL \U2|new_trame_int~1_combout\ : std_logic;
SIGNAL \U2|new_trame_int~q\ : std_logic;
SIGNAL \U1|curr_state.S5~q\ : std_logic;
SIGNAL \U1|curr_state.S0~q\ : std_logic;
SIGNAL \U1|curr_state.S1~0_combout\ : std_logic;
SIGNAL \U1|curr_state.S1~q\ : std_logic;
SIGNAL \U1|curr_state.S2~q\ : std_logic;
SIGNAL \U1|curr_state.S3~q\ : std_logic;
SIGNAL \U1|curr_state.S4~q\ : std_logic;
SIGNAL \U1|Selector12~0_combout\ : std_logic;
SIGNAL \U1|curr_state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \U1|next_state.S0~0_combout\ : std_logic;
SIGNAL \U2|Mux5~1_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|cpt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Mux14~0_combout\ : std_logic;
SIGNAL \U2|start_tx_int~q\ : std_logic;
SIGNAL \U3|Selector18~0_combout\ : std_logic;
SIGNAL \U3|r_SM_Main.s_TX_Start_Bit~q\ : std_logic;
SIGNAL \U3|Selector0~0_combout\ : std_logic;
SIGNAL \U3|o_TX_Active~q\ : std_logic;
SIGNAL \xin[7]~input_o\ : std_logic;
SIGNAL \U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|s_mode_reg~q\ : std_logic;
SIGNAL \modetop~input_o\ : std_logic;
SIGNAL \U1|Selector10~0_combout\ : std_logic;
SIGNAL \U1|trametop~0_combout\ : std_logic;
SIGNAL \U2|r[7]~1_combout\ : std_logic;
SIGNAL \U1|curr_state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Mux8~0_combout\ : std_logic;
SIGNAL \U2|Mux8~1_combout\ : std_logic;
SIGNAL \xin[6]~input_o\ : std_logic;
SIGNAL \U1|Selector3~0_combout\ : std_logic;
SIGNAL \xin[5]~input_o\ : std_logic;
SIGNAL \U1|Selector4~0_combout\ : std_logic;
SIGNAL \U1|s_adr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U1|s_adr_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \xin[4]~input_o\ : std_logic;
SIGNAL \U1|Selector5~0_combout\ : std_logic;
SIGNAL \xin[9]~input_o\ : std_logic;
SIGNAL \U1|Selector0~0_combout\ : std_logic;
SIGNAL \htop~input_o\ : std_logic;
SIGNAL \U1|s_h_reg~q\ : std_logic;
SIGNAL \U1|Selector11~0_combout\ : std_logic;
SIGNAL \U1|MS|active_rot~combout\ : std_logic;
SIGNAL \U1|CS|Add2~0_combout\ : std_logic;
SIGNAL \xin[3]~input_o\ : std_logic;
SIGNAL \U1|Selector6~0_combout\ : std_logic;
SIGNAL \U1|MS|oh[3]~0_combout\ : std_logic;
SIGNAL \xin[2]~input_o\ : std_logic;
SIGNAL \U1|Selector7~0_combout\ : std_logic;
SIGNAL \U1|CS|Add2~1_combout\ : std_logic;
SIGNAL \xin[1]~input_o\ : std_logic;
SIGNAL \U1|Selector8~0_combout\ : std_logic;
SIGNAL \U1|s_oh_reg[1]~feeder_combout\ : std_logic;
SIGNAL \xin[0]~input_o\ : std_logic;
SIGNAL \U1|Selector9~0_combout\ : std_logic;
SIGNAL \xin[8]~input_o\ : std_logic;
SIGNAL \U1|Selector1~0_combout\ : std_logic;
SIGNAL \U1|CS|Add4~26\ : std_logic;
SIGNAL \U1|CS|Add4~22\ : std_logic;
SIGNAL \U1|CS|Add4~30\ : std_logic;
SIGNAL \U1|CS|Add4~18\ : std_logic;
SIGNAL \U1|CS|Add4~10\ : std_logic;
SIGNAL \U1|CS|Add4~2\ : std_logic;
SIGNAL \U1|CS|Add4~14\ : std_logic;
SIGNAL \U1|CS|Add4~5_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[7]~1_combout\ : std_logic;
SIGNAL \U2|r[7]~0_combout\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|r[4]~2_combout\ : std_logic;
SIGNAL \U3|Selector18~1_combout\ : std_logic;
SIGNAL \U1|CS|Add4~13_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[6]~3_combout\ : std_logic;
SIGNAL \U2|Mux7~0_combout\ : std_logic;
SIGNAL \U1|CS|Add4~1_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[5]~0_combout\ : std_logic;
SIGNAL \U2|Mux8~2_combout\ : std_logic;
SIGNAL \U2|Mux11~0_combout\ : std_logic;
SIGNAL \U2|Mux12~2_combout\ : std_logic;
SIGNAL \U1|CS|Add4~21_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[1]~4_combout\ : std_logic;
SIGNAL \U2|Mux12~4_combout\ : std_logic;
SIGNAL \U2|Mux12~3_combout\ : std_logic;
SIGNAL \U2|Mux12~0_combout\ : std_logic;
SIGNAL \U2|Mux12~1_combout\ : std_logic;
SIGNAL \U3|r_TX_Data[1]~feeder_combout\ : std_logic;
SIGNAL \U2|r[4]~4_combout\ : std_logic;
SIGNAL \U2|Mux9~1_combout\ : std_logic;
SIGNAL \U2|r[4]~3_combout\ : std_logic;
SIGNAL \U2|Mux9~2_combout\ : std_logic;
SIGNAL \U1|CS|Add4~17_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[3]~5_combout\ : std_logic;
SIGNAL \U2|Mux10~0_combout\ : std_logic;
SIGNAL \U2|Mux10~1_combout\ : std_logic;
SIGNAL \rtl~25_combout\ : std_logic;
SIGNAL \U1|CS|Add4~29_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[2]~7_combout\ : std_logic;
SIGNAL \rtl~16_combout\ : std_logic;
SIGNAL \rtl~23_combout\ : std_logic;
SIGNAL \rtl~24_combout\ : std_logic;
SIGNAL \U2|Mux11~1_combout\ : std_logic;
SIGNAL \U2|Mux11~2_combout\ : std_logic;
SIGNAL \U2|Mux13~3_combout\ : std_logic;
SIGNAL \U2|Mux13~1_combout\ : std_logic;
SIGNAL \U1|CS|Add4~25_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[0]~6_combout\ : std_logic;
SIGNAL \U2|Mux13~2_combout\ : std_logic;
SIGNAL \U2|Mux13~4_combout\ : std_logic;
SIGNAL \U2|Mux13~0_combout\ : std_logic;
SIGNAL \U3|r_TX_Data[0]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux0~4_combout\ : std_logic;
SIGNAL \U1|CS|Add4~9_sumout\ : std_logic;
SIGNAL \U1|s_sum_reg[4]~2_combout\ : std_logic;
SIGNAL \U2|Mux9~0_combout\ : std_logic;
SIGNAL \U2|Mux9~3_combout\ : std_logic;
SIGNAL \U3|r_TX_Data[4]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U3|Selector1~0_combout\ : std_logic;
SIGNAL \U3|o_TX_Serial~q\ : std_logic;
SIGNAL \U1|s_id_reg2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|s_oh_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U2|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|s_mvt_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|s_sum_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|s_twi_reg2\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \U2|cpt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U3|r_Clk_Count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|s_x_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|s_adr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|r_TX_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|ALT_INV_s_adr_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_curr_state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_cpt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_curr_state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_cpt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_cpt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_r_Bit_Index[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_xin[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_htop~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_modetop~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \U1|MS|ALT_INV_active_rot~combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_s_x_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_s_h_reg~q\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_s_mode_reg~q\ : std_logic;
SIGNAL \U1|ALT_INV_curr_state.S0~q\ : std_logic;
SIGNAL \U1|ALT_INV_curr_state.S1~q\ : std_logic;
SIGNAL \U1|ALT_INV_s_mvt_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|ALT_INV_s_adr_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \U2|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~25_combout\ : std_logic;
SIGNAL \U1|ALT_INV_s_twi_reg2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_rtl~24_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~23_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~16_combout\ : std_logic;
SIGNAL \U1|ALT_INV_s_sum_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_r\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_s_id_reg2\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \U2|ALT_INV_r[4]~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_r[4]~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_r[7]~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_r[7]~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_trametop~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_curr_state.S4~q\ : std_logic;
SIGNAL \U2|ALT_INV_new_trame_int~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_r_TX_Done~q\ : std_logic;
SIGNAL \U3|ALT_INV_r_TX_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|ALT_INV_cpt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|ALT_INV_next_state.S0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_curr_state.S5~q\ : std_logic;
SIGNAL \U2|ALT_INV_new_trame_int~q\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U3|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \U3|ALT_INV_r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\ : std_logic;
SIGNAL \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\ : std_logic;
SIGNAL \U3|ALT_INV_r_SM_Main.s_TX_Start_Bit~q\ : std_logic;
SIGNAL \U3|ALT_INV_o_TX_Serial~q\ : std_logic;
SIGNAL \U3|ALT_INV_o_TX_Active~q\ : std_logic;
SIGNAL \U2|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \U1|CS|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_start_tx_int~q\ : std_logic;
SIGNAL \U3|ALT_INV_r_Clk_Count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_xin <= xin;
ww_htop <= htop;
ww_modetop <= modetop;
LedR <= ww_LedR;
serial_out <= ww_serial_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U1|ALT_INV_s_adr_reg[3]~DUPLICATE_q\ <= NOT \U1|s_adr_reg[3]~DUPLICATE_q\;
\U1|ALT_INV_curr_state.S4~DUPLICATE_q\ <= NOT \U1|curr_state.S4~DUPLICATE_q\;
\U2|ALT_INV_cpt[1]~DUPLICATE_q\ <= NOT \U2|cpt[1]~DUPLICATE_q\;
\U1|ALT_INV_curr_state.S5~DUPLICATE_q\ <= NOT \U1|curr_state.S5~DUPLICATE_q\;
\U2|ALT_INV_cpt[3]~DUPLICATE_q\ <= NOT \U2|cpt[3]~DUPLICATE_q\;
\U2|ALT_INV_cpt[2]~DUPLICATE_q\ <= NOT \U2|cpt[2]~DUPLICATE_q\;
\U3|ALT_INV_r_Bit_Index[1]~DUPLICATE_q\ <= NOT \U3|r_Bit_Index[1]~DUPLICATE_q\;
\ALT_INV_xin[2]~input_o\ <= NOT \xin[2]~input_o\;
\ALT_INV_xin[8]~input_o\ <= NOT \xin[8]~input_o\;
\ALT_INV_xin[0]~input_o\ <= NOT \xin[0]~input_o\;
\ALT_INV_xin[3]~input_o\ <= NOT \xin[3]~input_o\;
\ALT_INV_xin[9]~input_o\ <= NOT \xin[9]~input_o\;
\ALT_INV_xin[1]~input_o\ <= NOT \xin[1]~input_o\;
\ALT_INV_htop~input_o\ <= NOT \htop~input_o\;
\ALT_INV_xin[6]~input_o\ <= NOT \xin[6]~input_o\;
\ALT_INV_xin[4]~input_o\ <= NOT \xin[4]~input_o\;
\ALT_INV_xin[7]~input_o\ <= NOT \xin[7]~input_o\;
\ALT_INV_modetop~input_o\ <= NOT \modetop~input_o\;
\ALT_INV_xin[5]~input_o\ <= NOT \xin[5]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\U1|MS|ALT_INV_active_rot~combout\ <= NOT \U1|MS|active_rot~combout\;
\U2|ALT_INV_Mux12~4_combout\ <= NOT \U2|Mux12~4_combout\;
\U2|ALT_INV_Mux12~3_combout\ <= NOT \U2|Mux12~3_combout\;
\U2|ALT_INV_Mux12~2_combout\ <= NOT \U2|Mux12~2_combout\;
\U2|ALT_INV_Mux13~3_combout\ <= NOT \U2|Mux13~3_combout\;
\U2|ALT_INV_Mux13~2_combout\ <= NOT \U2|Mux13~2_combout\;
\U2|ALT_INV_Mux13~1_combout\ <= NOT \U2|Mux13~1_combout\;
\U1|ALT_INV_s_x_reg\(2) <= NOT \U1|s_x_reg\(2);
\U1|ALT_INV_s_x_reg\(8) <= NOT \U1|s_x_reg\(8);
\U1|ALT_INV_s_x_reg\(0) <= NOT \U1|s_x_reg\(0);
\U1|ALT_INV_Selector6~0_combout\ <= NOT \U1|Selector6~0_combout\;
\U1|ALT_INV_s_x_reg\(3) <= NOT \U1|s_x_reg\(3);
\U1|ALT_INV_s_x_reg\(9) <= NOT \U1|s_x_reg\(9);
\U1|ALT_INV_Selector8~0_combout\ <= NOT \U1|Selector8~0_combout\;
\U1|ALT_INV_s_x_reg\(1) <= NOT \U1|s_x_reg\(1);
\U1|ALT_INV_Selector11~0_combout\ <= NOT \U1|Selector11~0_combout\;
\U1|ALT_INV_s_h_reg~q\ <= NOT \U1|s_h_reg~q\;
\U1|ALT_INV_s_x_reg\(6) <= NOT \U1|s_x_reg\(6);
\U1|CS|ALT_INV_Add2~1_combout\ <= NOT \U1|CS|Add2~1_combout\;
\U1|ALT_INV_s_x_reg\(4) <= NOT \U1|s_x_reg\(4);
\U1|CS|ALT_INV_Add2~0_combout\ <= NOT \U1|CS|Add2~0_combout\;
\U1|ALT_INV_s_x_reg\(7) <= NOT \U1|s_x_reg\(7);
\U1|ALT_INV_Selector10~0_combout\ <= NOT \U1|Selector10~0_combout\;
\U1|ALT_INV_s_mode_reg~q\ <= NOT \U1|s_mode_reg~q\;
\U1|ALT_INV_curr_state.S0~q\ <= NOT \U1|curr_state.S0~q\;
\U1|ALT_INV_s_x_reg\(5) <= NOT \U1|s_x_reg\(5);
\U1|ALT_INV_curr_state.S1~q\ <= NOT \U1|curr_state.S1~q\;
\U1|ALT_INV_s_mvt_reg\(2) <= NOT \U1|s_mvt_reg\(2);
\U1|ALT_INV_s_mvt_reg\(8) <= NOT \U1|s_mvt_reg\(8);
\U1|ALT_INV_s_mvt_reg\(0) <= NOT \U1|s_mvt_reg\(0);
\U1|ALT_INV_s_mvt_reg\(3) <= NOT \U1|s_mvt_reg\(3);
\U1|ALT_INV_s_mvt_reg\(9) <= NOT \U1|s_mvt_reg\(9);
\U1|ALT_INV_s_mvt_reg\(1) <= NOT \U1|s_mvt_reg\(1);
\U1|ALT_INV_s_adr_reg\(1) <= NOT \U1|s_adr_reg\(1);
\U1|ALT_INV_s_mvt_reg\(6) <= NOT \U1|s_mvt_reg\(6);
\U2|ALT_INV_Mux11~1_combout\ <= NOT \U2|Mux11~1_combout\;
\ALT_INV_rtl~25_combout\ <= NOT \rtl~25_combout\;
\U1|ALT_INV_s_twi_reg2\(2) <= NOT \U1|s_twi_reg2\(2);
\ALT_INV_rtl~24_combout\ <= NOT \rtl~24_combout\;
\ALT_INV_rtl~23_combout\ <= NOT \rtl~23_combout\;
\ALT_INV_rtl~16_combout\ <= NOT \rtl~16_combout\;
\U1|ALT_INV_s_sum_reg\(2) <= NOT \U1|s_sum_reg\(2);
\U1|ALT_INV_s_twi_reg2\(8) <= NOT \U1|s_twi_reg2\(8);
\U1|ALT_INV_s_twi_reg2\(0) <= NOT \U1|s_twi_reg2\(0);
\U1|ALT_INV_s_sum_reg\(0) <= NOT \U1|s_sum_reg\(0);
\U1|ALT_INV_s_twi_reg2\(3) <= NOT \U1|s_twi_reg2\(3);
\U2|ALT_INV_Mux10~0_combout\ <= NOT \U2|Mux10~0_combout\;
\U1|ALT_INV_s_sum_reg\(3) <= NOT \U1|s_sum_reg\(3);
\U2|ALT_INV_Mux12~0_combout\ <= NOT \U2|Mux12~0_combout\;
\U1|ALT_INV_s_twi_reg2\(9) <= NOT \U1|s_twi_reg2\(9);
\U1|ALT_INV_s_twi_reg2\(1) <= NOT \U1|s_twi_reg2\(1);
\U1|ALT_INV_s_twi_reg2\(17) <= NOT \U1|s_twi_reg2\(17);
\U1|ALT_INV_s_sum_reg\(1) <= NOT \U1|s_sum_reg\(1);
\U2|ALT_INV_Mux11~0_combout\ <= NOT \U2|Mux11~0_combout\;
\U1|ALT_INV_s_adr_reg\(3) <= NOT \U1|s_adr_reg\(3);
\U1|ALT_INV_s_mvt_reg\(4) <= NOT \U1|s_mvt_reg\(4);
\U1|ALT_INV_s_mvt_reg\(7) <= NOT \U1|s_mvt_reg\(7);
\U1|ALT_INV_s_mvt_reg\(5) <= NOT \U1|s_mvt_reg\(5);
\U3|ALT_INV_Selector2~0_combout\ <= NOT \U3|Selector2~0_combout\;
\U1|ALT_INV_s_sum_reg\(6) <= NOT \U1|s_sum_reg\(6);
\U1|ALT_INV_s_twi_reg2\(6) <= NOT \U1|s_twi_reg2\(6);
\U2|ALT_INV_r\(2) <= NOT \U2|r\(2);
\U2|ALT_INV_r\(0) <= NOT \U2|r\(0);
\U2|ALT_INV_r\(1) <= NOT \U2|r\(1);
\U2|ALT_INV_Mux9~2_combout\ <= NOT \U2|Mux9~2_combout\;
\U1|ALT_INV_s_id_reg2\(1) <= NOT \U1|s_id_reg2\(1);
\U1|ALT_INV_s_twi_reg2\(4) <= NOT \U1|s_twi_reg2\(4);
\U2|ALT_INV_r[4]~4_combout\ <= NOT \U2|r[4]~4_combout\;
\U2|ALT_INV_r[4]~3_combout\ <= NOT \U2|r[4]~3_combout\;
\U2|ALT_INV_Mux9~1_combout\ <= NOT \U2|Mux9~1_combout\;
\U2|ALT_INV_Mux9~0_combout\ <= NOT \U2|Mux9~0_combout\;
\U1|ALT_INV_s_sum_reg\(4) <= NOT \U1|s_sum_reg\(4);
\U1|ALT_INV_s_sum_reg\(7) <= NOT \U1|s_sum_reg\(7);
\U1|ALT_INV_s_twi_reg2\(7) <= NOT \U1|s_twi_reg2\(7);
\U2|ALT_INV_Mux8~1_combout\ <= NOT \U2|Mux8~1_combout\;
\U2|ALT_INV_Mux8~0_combout\ <= NOT \U2|Mux8~0_combout\;
\U2|ALT_INV_r[7]~1_combout\ <= NOT \U2|r[7]~1_combout\;
\U1|ALT_INV_s_sum_reg\(5) <= NOT \U1|s_sum_reg\(5);
\U2|ALT_INV_r[7]~0_combout\ <= NOT \U2|r[7]~0_combout\;
\U1|ALT_INV_trametop~0_combout\ <= NOT \U1|trametop~0_combout\;
\U1|ALT_INV_s_twi_reg2\(5) <= NOT \U1|s_twi_reg2\(5);
\U1|ALT_INV_curr_state.S4~q\ <= NOT \U1|curr_state.S4~q\;
\U2|ALT_INV_new_trame_int~0_combout\ <= NOT \U2|new_trame_int~0_combout\;
\U2|ALT_INV_Mux0~0_combout\ <= NOT \U2|Mux0~0_combout\;
\U2|ALT_INV_Mux5~0_combout\ <= NOT \U2|Mux5~0_combout\;
\U3|ALT_INV_r_TX_Done~q\ <= NOT \U3|r_TX_Done~q\;
\U3|ALT_INV_r_TX_Data\(2) <= NOT \U3|r_TX_Data\(2);
\U3|ALT_INV_r_TX_Data\(0) <= NOT \U3|r_TX_Data\(0);
\U3|ALT_INV_r_TX_Data\(3) <= NOT \U3|r_TX_Data\(3);
\U3|ALT_INV_r_TX_Data\(1) <= NOT \U3|r_TX_Data\(1);
\U2|ALT_INV_r\(4) <= NOT \U2|r\(4);
\U2|ALT_INV_cpt\(0) <= NOT \U2|cpt\(0);
\U1|ALT_INV_next_state.S0~0_combout\ <= NOT \U1|next_state.S0~0_combout\;
\U1|ALT_INV_curr_state.S5~q\ <= NOT \U1|curr_state.S5~q\;
\U2|ALT_INV_new_trame_int~q\ <= NOT \U2|new_trame_int~q\;
\U2|ALT_INV_cpt\(1) <= NOT \U2|cpt\(1);
\U2|ALT_INV_cpt\(4) <= NOT \U2|cpt\(4);
\U3|ALT_INV_r_TX_Data\(6) <= NOT \U3|r_TX_Data\(6);
\U3|ALT_INV_r_TX_Data\(4) <= NOT \U3|r_TX_Data\(4);
\U3|ALT_INV_r_TX_Data\(7) <= NOT \U3|r_TX_Data\(7);
\U3|ALT_INV_r_TX_Data\(5) <= NOT \U3|r_TX_Data\(5);
\U3|ALT_INV_LessThan1~3_combout\ <= NOT \U3|LessThan1~3_combout\;
\U3|ALT_INV_r_Bit_Index\(0) <= NOT \U3|r_Bit_Index\(0);
\U3|ALT_INV_r_Bit_Index\(1) <= NOT \U3|r_Bit_Index\(1);
\U3|ALT_INV_r_Bit_Index\(2) <= NOT \U3|r_Bit_Index\(2);
\U3|ALT_INV_LessThan1~2_combout\ <= NOT \U3|LessThan1~2_combout\;
\U3|ALT_INV_LessThan1~1_combout\ <= NOT \U3|LessThan1~1_combout\;
\U3|ALT_INV_LessThan1~0_combout\ <= NOT \U3|LessThan1~0_combout\;
\U3|ALT_INV_r_SM_Main.s_Cleanup~q\ <= NOT \U3|r_SM_Main.s_Cleanup~q\;
\U3|ALT_INV_r_SM_Main.s_Idle~q\ <= NOT \U3|r_SM_Main.s_Idle~q\;
\U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\ <= NOT \U3|r_SM_Main.s_TX_Stop_Bit~q\;
\U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\ <= NOT \U3|r_SM_Main.s_TX_Data_Bits~q\;
\U3|ALT_INV_r_SM_Main.s_TX_Start_Bit~q\ <= NOT \U3|r_SM_Main.s_TX_Start_Bit~q\;
\U3|ALT_INV_o_TX_Serial~q\ <= NOT \U3|o_TX_Serial~q\;
\U3|ALT_INV_o_TX_Active~q\ <= NOT \U3|o_TX_Active~q\;
\U2|ALT_INV_Mux13~4_combout\ <= NOT \U2|Mux13~4_combout\;
\U1|CS|ALT_INV_Add4~29_sumout\ <= NOT \U1|CS|Add4~29_sumout\;
\U1|CS|ALT_INV_Add4~25_sumout\ <= NOT \U1|CS|Add4~25_sumout\;
\U1|CS|ALT_INV_Add4~21_sumout\ <= NOT \U1|CS|Add4~21_sumout\;
\U1|CS|ALT_INV_Add4~17_sumout\ <= NOT \U1|CS|Add4~17_sumout\;
\U1|CS|ALT_INV_Add4~13_sumout\ <= NOT \U1|CS|Add4~13_sumout\;
\U1|CS|ALT_INV_Add4~9_sumout\ <= NOT \U1|CS|Add4~9_sumout\;
\U1|CS|ALT_INV_Add4~5_sumout\ <= NOT \U1|CS|Add4~5_sumout\;
\U1|CS|ALT_INV_Add4~1_sumout\ <= NOT \U1|CS|Add4~1_sumout\;
\U2|ALT_INV_cpt\(3) <= NOT \U2|cpt\(3);
\U2|ALT_INV_cpt\(2) <= NOT \U2|cpt\(2);
\U3|ALT_INV_Mux0~4_combout\ <= NOT \U3|Mux0~4_combout\;
\U2|ALT_INV_start_tx_int~q\ <= NOT \U2|start_tx_int~q\;
\U3|ALT_INV_r_Clk_Count\(5) <= NOT \U3|r_Clk_Count\(5);
\U3|ALT_INV_r_Clk_Count\(6) <= NOT \U3|r_Clk_Count\(6);
\U3|ALT_INV_r_Clk_Count\(7) <= NOT \U3|r_Clk_Count\(7);
\U3|ALT_INV_r_Clk_Count\(9) <= NOT \U3|r_Clk_Count\(9);
\U3|ALT_INV_r_Clk_Count\(4) <= NOT \U3|r_Clk_Count\(4);
\U3|ALT_INV_r_Clk_Count\(8) <= NOT \U3|r_Clk_Count\(8);
\U3|ALT_INV_r_Clk_Count\(10) <= NOT \U3|r_Clk_Count\(10);
\U3|ALT_INV_r_Clk_Count\(0) <= NOT \U3|r_Clk_Count\(0);
\U3|ALT_INV_r_Clk_Count\(1) <= NOT \U3|r_Clk_Count\(1);
\U3|ALT_INV_r_Clk_Count\(2) <= NOT \U3|r_Clk_Count\(2);
\U3|ALT_INV_r_Clk_Count\(3) <= NOT \U3|r_Clk_Count\(3);
\U3|ALT_INV_Mux0~0_combout\ <= NOT \U3|Mux0~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\LedR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_TX_Active~q\,
	devoe => ww_devoe,
	o => ww_LedR);

-- Location: IOOBUF_X54_Y0_N53
\serial_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_TX_Serial~q\,
	devoe => ww_devoe,
	o => ww_serial_out);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X11_Y2_N0
\U3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~13_sumout\ = SUM(( \U3|r_Clk_Count\(0) ) + ( VCC ) + ( !VCC ))
-- \U3|Add0~14\ = CARRY(( \U3|r_Clk_Count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(0),
	cin => GND,
	sumout => \U3|Add0~13_sumout\,
	cout => \U3|Add0~14\);

-- Location: LABCELL_X11_Y2_N12
\U3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~25_sumout\ = SUM(( \U3|r_Clk_Count\(4) ) + ( GND ) + ( \U3|Add0~2\ ))
-- \U3|Add0~26\ = CARRY(( \U3|r_Clk_Count\(4) ) + ( GND ) + ( \U3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(4),
	cin => \U3|Add0~2\,
	sumout => \U3|Add0~25_sumout\,
	cout => \U3|Add0~26\);

-- Location: LABCELL_X11_Y2_N15
\U3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~41_sumout\ = SUM(( \U3|r_Clk_Count\(5) ) + ( GND ) + ( \U3|Add0~26\ ))
-- \U3|Add0~42\ = CARRY(( \U3|r_Clk_Count\(5) ) + ( GND ) + ( \U3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(5),
	cin => \U3|Add0~26\,
	sumout => \U3|Add0~41_sumout\,
	cout => \U3|Add0~42\);

-- Location: FF_X11_Y2_N16
\U3|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~41_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(5));

-- Location: LABCELL_X11_Y2_N18
\U3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~37_sumout\ = SUM(( \U3|r_Clk_Count\(6) ) + ( GND ) + ( \U3|Add0~42\ ))
-- \U3|Add0~38\ = CARRY(( \U3|r_Clk_Count\(6) ) + ( GND ) + ( \U3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(6),
	cin => \U3|Add0~42\,
	sumout => \U3|Add0~37_sumout\,
	cout => \U3|Add0~38\);

-- Location: FF_X11_Y2_N19
\U3|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~37_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(6));

-- Location: LABCELL_X11_Y2_N21
\U3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~33_sumout\ = SUM(( \U3|r_Clk_Count\(7) ) + ( GND ) + ( \U3|Add0~38\ ))
-- \U3|Add0~34\ = CARRY(( \U3|r_Clk_Count\(7) ) + ( GND ) + ( \U3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(7),
	cin => \U3|Add0~38\,
	sumout => \U3|Add0~33_sumout\,
	cout => \U3|Add0~34\);

-- Location: FF_X11_Y2_N23
\U3|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~33_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(7));

-- Location: LABCELL_X11_Y2_N24
\U3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~21_sumout\ = SUM(( \U3|r_Clk_Count\(8) ) + ( GND ) + ( \U3|Add0~34\ ))
-- \U3|Add0~22\ = CARRY(( \U3|r_Clk_Count\(8) ) + ( GND ) + ( \U3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(8),
	cin => \U3|Add0~34\,
	sumout => \U3|Add0~21_sumout\,
	cout => \U3|Add0~22\);

-- Location: FF_X11_Y2_N25
\U3|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~21_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(8));

-- Location: LABCELL_X11_Y2_N27
\U3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~29_sumout\ = SUM(( \U3|r_Clk_Count\(9) ) + ( GND ) + ( \U3|Add0~22\ ))
-- \U3|Add0~30\ = CARRY(( \U3|r_Clk_Count\(9) ) + ( GND ) + ( \U3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(9),
	cin => \U3|Add0~22\,
	sumout => \U3|Add0~29_sumout\,
	cout => \U3|Add0~30\);

-- Location: FF_X11_Y2_N29
\U3|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~29_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(9));

-- Location: LABCELL_X11_Y2_N30
\U3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~17_sumout\ = SUM(( \U3|r_Clk_Count\(10) ) + ( GND ) + ( \U3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(10),
	cin => \U3|Add0~30\,
	sumout => \U3|Add0~17_sumout\);

-- Location: FF_X11_Y2_N31
\U3|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~17_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(10));

-- Location: LABCELL_X11_Y2_N54
\U3|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan1~2_combout\ = ( \U3|r_Clk_Count\(9) & ( \U3|r_Clk_Count\(5) & ( \U3|r_Clk_Count\(10) ) ) ) # ( !\U3|r_Clk_Count\(9) & ( \U3|r_Clk_Count\(5) & ( (\U3|r_Clk_Count\(10) & \U3|r_Clk_Count\(8)) ) ) ) # ( \U3|r_Clk_Count\(9) & ( 
-- !\U3|r_Clk_Count\(5) & ( \U3|r_Clk_Count\(10) ) ) ) # ( !\U3|r_Clk_Count\(9) & ( !\U3|r_Clk_Count\(5) & ( (\U3|r_Clk_Count\(10) & (\U3|r_Clk_Count\(8) & ((\U3|r_Clk_Count\(6)) # (\U3|r_Clk_Count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000011110000111100000000000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_Clk_Count\(7),
	datab => \U3|ALT_INV_r_Clk_Count\(6),
	datac => \U3|ALT_INV_r_Clk_Count\(10),
	datad => \U3|ALT_INV_r_Clk_Count\(8),
	datae => \U3|ALT_INV_r_Clk_Count\(9),
	dataf => \U3|ALT_INV_r_Clk_Count\(5),
	combout => \U3|LessThan1~2_combout\);

-- Location: LABCELL_X11_Y2_N42
\U3|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan1~0_combout\ = ( \U3|r_Clk_Count\(3) ) # ( !\U3|r_Clk_Count\(3) & ( (\U3|r_Clk_Count\(2) & ((\U3|r_Clk_Count\(1)) # (\U3|r_Clk_Count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_Clk_Count\(0),
	datac => \U3|ALT_INV_r_Clk_Count\(1),
	datad => \U3|ALT_INV_r_Clk_Count\(2),
	dataf => \U3|ALT_INV_r_Clk_Count\(3),
	combout => \U3|LessThan1~0_combout\);

-- Location: LABCELL_X11_Y2_N39
\U3|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan1~3_combout\ = ( \U3|LessThan1~0_combout\ & ( (!\U3|LessThan1~2_combout\ & !\U3|LessThan1~1_combout\) ) ) # ( !\U3|LessThan1~0_combout\ & ( !\U3|LessThan1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_LessThan1~2_combout\,
	datad => \U3|ALT_INV_LessThan1~1_combout\,
	dataf => \U3|ALT_INV_LessThan1~0_combout\,
	combout => \U3|LessThan1~3_combout\);

-- Location: FF_X10_Y2_N29
\U3|r_Bit_Index[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Bit_Index[1]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y2_N27
\U3|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector15~0_combout\ = ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( (((\U3|r_SM_Main.s_Idle~q\ & (\U3|r_Bit_Index[1]~DUPLICATE_q\)))) ) ) # ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( !\U3|r_Bit_Index[1]~DUPLICATE_q\ $ (((!\U3|r_Bit_Index\(0)) # 
-- ((!\U3|LessThan1~2_combout\ & ((!\U3|LessThan1~0_combout\) # (!\U3|LessThan1~1_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001111111100000000000011110001111111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_LessThan1~0_combout\,
	datab => \U3|ALT_INV_LessThan1~1_combout\,
	datac => \U3|ALT_INV_LessThan1~2_combout\,
	datad => \U3|ALT_INV_r_Bit_Index[1]~DUPLICATE_q\,
	datae => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	dataf => \U3|ALT_INV_r_Bit_Index\(0),
	datag => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	combout => \U3|Selector15~0_combout\);

-- Location: FF_X10_Y2_N28
\U3|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Bit_Index\(1));

-- Location: LABCELL_X12_Y2_N12
\U3|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector14~0_combout\ = ( \U3|r_Bit_Index\(2) & ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( (!\U3|r_Bit_Index\(0)) # ((!\U3|r_Bit_Index\(1)) # (\U3|LessThan1~3_combout\)) ) ) ) # ( !\U3|r_Bit_Index\(2) & ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( 
-- (\U3|r_Bit_Index\(0) & (\U3|r_Bit_Index\(1) & !\U3|LessThan1~3_combout\)) ) ) ) # ( \U3|r_Bit_Index\(2) & ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( \U3|r_SM_Main.s_Idle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100010000000100001110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_Bit_Index\(0),
	datab => \U3|ALT_INV_r_Bit_Index\(1),
	datac => \U3|ALT_INV_LessThan1~3_combout\,
	datad => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	datae => \U3|ALT_INV_r_Bit_Index\(2),
	dataf => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	combout => \U3|Selector14~0_combout\);

-- Location: FF_X12_Y2_N13
\U3|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Bit_Index\(2));

-- Location: LABCELL_X12_Y2_N0
\U3|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector19~0_combout\ = ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( \U3|r_Bit_Index\(2) & ( (!\U3|r_Bit_Index\(0)) # (((!\U3|r_Bit_Index\(1)) # (\U3|LessThan1~3_combout\)) # (\U3|r_SM_Main.s_TX_Start_Bit~q\)) ) ) ) # ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( 
-- \U3|r_Bit_Index\(2) & ( (\U3|r_SM_Main.s_TX_Start_Bit~q\ & !\U3|LessThan1~3_combout\) ) ) ) # ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( !\U3|r_Bit_Index\(2) ) ) # ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( !\U3|r_Bit_Index\(2) & ( (\U3|r_SM_Main.s_TX_Start_Bit~q\ 
-- & !\U3|LessThan1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100110000001100001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_Bit_Index\(0),
	datab => \U3|ALT_INV_r_SM_Main.s_TX_Start_Bit~q\,
	datac => \U3|ALT_INV_LessThan1~3_combout\,
	datad => \U3|ALT_INV_r_Bit_Index\(1),
	datae => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	dataf => \U3|ALT_INV_r_Bit_Index\(2),
	combout => \U3|Selector19~0_combout\);

-- Location: FF_X12_Y2_N1
\U3|r_SM_Main.s_TX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_SM_Main.s_TX_Data_Bits~q\);

-- Location: LABCELL_X10_Y2_N3
\U3|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector16~0_combout\ = ( \U3|r_Bit_Index\(0) & ( \U3|LessThan1~2_combout\ & ( (!\U3|r_SM_Main.s_TX_Data_Bits~q\ & \U3|r_SM_Main.s_Idle~q\) ) ) ) # ( !\U3|r_Bit_Index\(0) & ( \U3|LessThan1~2_combout\ & ( \U3|r_SM_Main.s_TX_Data_Bits~q\ ) ) ) # ( 
-- \U3|r_Bit_Index\(0) & ( !\U3|LessThan1~2_combout\ & ( (!\U3|r_SM_Main.s_TX_Data_Bits~q\ & (((\U3|r_SM_Main.s_Idle~q\)))) # (\U3|r_SM_Main.s_TX_Data_Bits~q\ & ((!\U3|LessThan1~1_combout\) # ((!\U3|LessThan1~0_combout\)))) ) ) ) # ( !\U3|r_Bit_Index\(0) & ( 
-- !\U3|LessThan1~2_combout\ & ( (\U3|r_SM_Main.s_TX_Data_Bits~q\ & (\U3|LessThan1~1_combout\ & \U3|LessThan1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101001111111001010101010101010000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	datab => \U3|ALT_INV_LessThan1~1_combout\,
	datac => \U3|ALT_INV_LessThan1~0_combout\,
	datad => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	datae => \U3|ALT_INV_r_Bit_Index\(0),
	dataf => \U3|ALT_INV_LessThan1~2_combout\,
	combout => \U3|Selector16~0_combout\);

-- Location: FF_X10_Y2_N4
\U3|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Bit_Index\(0));

-- Location: LABCELL_X12_Y2_N30
\U3|r_SM_Main.s_TX_Stop_Bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|r_SM_Main.s_TX_Stop_Bit~0_combout\ = ( \U3|r_SM_Main.s_TX_Stop_Bit~q\ & ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( ((\U3|r_Bit_Index\(0) & (\U3|r_Bit_Index\(1) & \U3|r_Bit_Index\(2)))) # (\U3|LessThan1~3_combout\) ) ) ) # ( !\U3|r_SM_Main.s_TX_Stop_Bit~q\ 
-- & ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( (\U3|r_Bit_Index\(0) & (\U3|r_Bit_Index\(1) & (!\U3|LessThan1~3_combout\ & \U3|r_Bit_Index\(2)))) ) ) ) # ( \U3|r_SM_Main.s_TX_Stop_Bit~q\ & ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( \U3|LessThan1~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000100000000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_Bit_Index\(0),
	datab => \U3|ALT_INV_r_Bit_Index\(1),
	datac => \U3|ALT_INV_LessThan1~3_combout\,
	datad => \U3|ALT_INV_r_Bit_Index\(2),
	datae => \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\,
	dataf => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	combout => \U3|r_SM_Main.s_TX_Stop_Bit~0_combout\);

-- Location: FF_X12_Y2_N31
\U3|r_SM_Main.s_TX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|r_SM_Main.s_TX_Stop_Bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_SM_Main.s_TX_Stop_Bit~q\);

-- Location: LABCELL_X11_Y2_N51
\U3|r_SM_Main~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|r_SM_Main~7_combout\ = ( \U3|LessThan1~0_combout\ & ( (\U3|r_SM_Main.s_TX_Stop_Bit~q\ & ((\U3|LessThan1~2_combout\) # (\U3|LessThan1~1_combout\))) ) ) # ( !\U3|LessThan1~0_combout\ & ( (\U3|r_SM_Main.s_TX_Stop_Bit~q\ & \U3|LessThan1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_LessThan1~1_combout\,
	datab => \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \U3|ALT_INV_LessThan1~2_combout\,
	dataf => \U3|ALT_INV_LessThan1~0_combout\,
	combout => \U3|r_SM_Main~7_combout\);

-- Location: FF_X11_Y2_N53
\U3|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_SM_Main.s_Cleanup~q\);

-- Location: LABCELL_X12_Y2_N39
\U3|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector17~0_combout\ = ( \U2|start_tx_int~q\ & ( !\U3|r_SM_Main.s_Cleanup~q\ ) ) # ( !\U2|start_tx_int~q\ & ( (!\U3|r_SM_Main.s_Cleanup~q\ & \U3|r_SM_Main.s_Idle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	datad => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	dataf => \U2|ALT_INV_start_tx_int~q\,
	combout => \U3|Selector17~0_combout\);

-- Location: FF_X12_Y2_N41
\U3|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_SM_Main.s_Idle~q\);

-- Location: LABCELL_X11_Y2_N45
\U3|r_Clk_Count[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|r_Clk_Count[9]~0_combout\ = ( \U3|LessThan1~0_combout\ & ( (!\U3|r_SM_Main.s_Idle~q\) # ((\U3|LessThan1~1_combout\) # (\U3|LessThan1~2_combout\)) ) ) # ( !\U3|LessThan1~0_combout\ & ( (!\U3|r_SM_Main.s_Idle~q\) # (\U3|LessThan1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	datac => \U3|ALT_INV_LessThan1~2_combout\,
	datad => \U3|ALT_INV_LessThan1~1_combout\,
	dataf => \U3|ALT_INV_LessThan1~0_combout\,
	combout => \U3|r_Clk_Count[9]~0_combout\);

-- Location: FF_X11_Y2_N2
\U3|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~13_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(0));

-- Location: LABCELL_X11_Y2_N3
\U3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~9_sumout\ = SUM(( \U3|r_Clk_Count\(1) ) + ( GND ) + ( \U3|Add0~14\ ))
-- \U3|Add0~10\ = CARRY(( \U3|r_Clk_Count\(1) ) + ( GND ) + ( \U3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(1),
	cin => \U3|Add0~14\,
	sumout => \U3|Add0~9_sumout\,
	cout => \U3|Add0~10\);

-- Location: FF_X11_Y2_N5
\U3|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~9_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(1));

-- Location: LABCELL_X11_Y2_N6
\U3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~5_sumout\ = SUM(( \U3|r_Clk_Count\(2) ) + ( GND ) + ( \U3|Add0~10\ ))
-- \U3|Add0~6\ = CARRY(( \U3|r_Clk_Count\(2) ) + ( GND ) + ( \U3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(2),
	cin => \U3|Add0~10\,
	sumout => \U3|Add0~5_sumout\,
	cout => \U3|Add0~6\);

-- Location: FF_X11_Y2_N7
\U3|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~5_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(2));

-- Location: LABCELL_X11_Y2_N9
\U3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~1_sumout\ = SUM(( \U3|r_Clk_Count\(3) ) + ( GND ) + ( \U3|Add0~6\ ))
-- \U3|Add0~2\ = CARRY(( \U3|r_Clk_Count\(3) ) + ( GND ) + ( \U3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_r_Clk_Count\(3),
	cin => \U3|Add0~6\,
	sumout => \U3|Add0~1_sumout\,
	cout => \U3|Add0~2\);

-- Location: FF_X11_Y2_N11
\U3|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~1_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(3));

-- Location: FF_X11_Y2_N14
\U3|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Add0~25_sumout\,
	sclr => \U3|r_Clk_Count[9]~0_combout\,
	ena => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_Clk_Count\(4));

-- Location: LABCELL_X11_Y2_N36
\U3|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan1~1_combout\ = ( \U3|r_Clk_Count\(8) & ( (\U3|r_Clk_Count\(4) & \U3|r_Clk_Count\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_r_Clk_Count\(4),
	datac => \U3|ALT_INV_r_Clk_Count\(10),
	dataf => \U3|ALT_INV_r_Clk_Count\(8),
	combout => \U3|LessThan1~1_combout\);

-- Location: LABCELL_X12_Y2_N45
\U3|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector2~0_combout\ = ( !\U3|r_SM_Main.s_Cleanup~q\ & ( (!\U3|r_TX_Done~q\) # ((!\U3|r_SM_Main.s_TX_Stop_Bit~q\ & (!\U3|r_SM_Main.s_TX_Data_Bits~q\ & !\U3|r_SM_Main.s_TX_Start_Bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\,
	datab => \U3|ALT_INV_r_TX_Done~q\,
	datac => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	datad => \U3|ALT_INV_r_SM_Main.s_TX_Start_Bit~q\,
	dataf => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	combout => \U3|Selector2~0_combout\);

-- Location: LABCELL_X11_Y2_N48
\U3|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector2~1_combout\ = ( \U3|LessThan1~0_combout\ & ( (!\U3|Selector2~0_combout\) # ((\U3|r_SM_Main.s_TX_Stop_Bit~q\ & ((\U3|LessThan1~2_combout\) # (\U3|LessThan1~1_combout\)))) ) ) # ( !\U3|LessThan1~0_combout\ & ( (!\U3|Selector2~0_combout\) # 
-- ((\U3|r_SM_Main.s_TX_Stop_Bit~q\ & \U3|LessThan1~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111001111110001111100111111000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_LessThan1~1_combout\,
	datab => \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \U3|ALT_INV_Selector2~0_combout\,
	datad => \U3|ALT_INV_LessThan1~2_combout\,
	dataf => \U3|ALT_INV_LessThan1~0_combout\,
	combout => \U3|Selector2~1_combout\);

-- Location: FF_X11_Y2_N49
\U3|r_TX_Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Done~q\);

-- Location: IOIBUF_X12_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X10_Y1_N47
\U2|cpt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U2|cpt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt\(3));

-- Location: LABCELL_X10_Y1_N48
\U2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = ( \U2|cpt\(0) & ( \U2|cpt[1]~DUPLICATE_q\ & ( (\U2|cpt[2]~DUPLICATE_q\ & (!\U2|cpt\(4) & (\U3|r_TX_Done~q\ & \U2|cpt\(3)))) ) ) ) # ( !\U2|cpt\(0) & ( \U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (\U2|cpt\(4) & 
-- !\U2|cpt\(3))) ) ) ) # ( \U2|cpt\(0) & ( !\U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (\U2|cpt\(4) & !\U2|cpt\(3))) ) ) ) # ( !\U2|cpt\(0) & ( !\U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (\U2|cpt\(4) & !\U2|cpt\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U3|ALT_INV_r_TX_Done~q\,
	datad => \U2|ALT_INV_cpt\(3),
	datae => \U2|ALT_INV_cpt\(0),
	dataf => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	combout => \U2|Mux1~0_combout\);

-- Location: FF_X11_Y1_N56
\U2|cpt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|Mux1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt\(4));

-- Location: FF_X10_Y1_N41
\U2|cpt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U2|cpt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt\(2));

-- Location: LABCELL_X10_Y1_N39
\U2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = ( \U2|cpt[1]~DUPLICATE_q\ & ( !\U2|cpt\(2) $ (((!\U3|r_TX_Done~q\) # (!\U2|cpt\(0)))) ) ) # ( !\U2|cpt[1]~DUPLICATE_q\ & ( \U2|cpt\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_TX_Done~q\,
	datac => \U2|ALT_INV_cpt\(0),
	datad => \U2|ALT_INV_cpt\(2),
	dataf => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	combout => \U2|Mux3~0_combout\);

-- Location: FF_X10_Y1_N40
\U2|cpt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U2|cpt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt[2]~DUPLICATE_q\);

-- Location: FF_X12_Y1_N44
\U2|cpt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt\(1));

-- Location: LABCELL_X12_Y1_N42
\U2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = ( \U2|cpt\(1) & ( \U3|r_TX_Done~q\ & ( (!\U2|cpt\(0) & ((!\U2|cpt\(4)) # ((!\U2|cpt[3]~DUPLICATE_q\ & !\U2|cpt[2]~DUPLICATE_q\)))) ) ) ) # ( !\U2|cpt\(1) & ( \U3|r_TX_Done~q\ & ( (\U2|cpt\(0) & ((!\U2|cpt\(4)) # 
-- ((!\U2|cpt[3]~DUPLICATE_q\ & !\U2|cpt[2]~DUPLICATE_q\)))) ) ) ) # ( \U2|cpt\(1) & ( !\U3|r_TX_Done~q\ & ( (!\U2|cpt\(4)) # ((!\U2|cpt[3]~DUPLICATE_q\ & (!\U2|cpt\(0) & !\U2|cpt[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000110011001000001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(0),
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(4),
	datae => \U2|ALT_INV_cpt\(1),
	dataf => \U3|ALT_INV_r_TX_Done~q\,
	combout => \U2|Mux4~0_combout\);

-- Location: FF_X12_Y1_N43
\U2|cpt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt[1]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N36
\U2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux5~0_combout\ = ( !\U2|cpt\(2) & ( !\U2|cpt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_cpt\(3),
	dataf => \U2|ALT_INV_cpt\(2),
	combout => \U2|Mux5~0_combout\);

-- Location: LABCELL_X11_Y1_N45
\U2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = ( \U2|cpt\(0) & ( (\U2|cpt\(4) & (((\U2|cpt\(3)) # (\U2|cpt[2]~DUPLICATE_q\)) # (\U2|cpt\(1)))) ) ) # ( !\U2|cpt\(0) & ( !\U2|cpt\(4) $ ((((\U2|cpt\(3)) # (\U2|cpt[2]~DUPLICATE_q\)) # (\U2|cpt\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010101010101100101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(4),
	datab => \U2|ALT_INV_cpt\(1),
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(3),
	dataf => \U2|ALT_INV_cpt\(0),
	combout => \U2|Mux0~0_combout\);

-- Location: LABCELL_X11_Y1_N42
\U2|new_trame_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|new_trame_int~0_combout\ = ( \U3|r_TX_Done~q\ & ( (!\U2|cpt\(4) & (!\U2|cpt\(1) & ((!\U2|new_trame_int~q\) # (!\U1|curr_state.S5~DUPLICATE_q\)))) # (\U2|cpt\(4) & (\U2|cpt\(1))) ) ) # ( !\U3|r_TX_Done~q\ & ( (!\U2|cpt\(4) & (!\U2|cpt\(1) & 
-- ((!\U2|new_trame_int~q\) # (!\U1|curr_state.S5~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010011001100100011001100110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(4),
	datab => \U2|ALT_INV_cpt\(1),
	datac => \U2|ALT_INV_new_trame_int~q\,
	datad => \U1|ALT_INV_curr_state.S5~DUPLICATE_q\,
	dataf => \U3|ALT_INV_r_TX_Done~q\,
	combout => \U2|new_trame_int~0_combout\);

-- Location: LABCELL_X11_Y1_N48
\U2|new_trame_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|new_trame_int~1_combout\ = ( \U2|new_trame_int~q\ & ( \U2|Mux5~0_combout\ & ( (!\U2|Mux0~0_combout\) # (((!\U2|cpt\(0) & \U2|new_trame_int~0_combout\)) # (\rst~input_o\)) ) ) ) # ( !\U2|new_trame_int~q\ & ( \U2|Mux5~0_combout\ & ( (!\U2|cpt\(0) & 
-- (\U2|Mux0~0_combout\ & (!\rst~input_o\ & \U2|new_trame_int~0_combout\))) ) ) ) # ( \U2|new_trame_int~q\ & ( !\U2|Mux5~0_combout\ & ( (!\U2|Mux0~0_combout\) # (\rst~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000001000001100111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(0),
	datab => \U2|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \U2|ALT_INV_new_trame_int~0_combout\,
	datae => \U2|ALT_INV_new_trame_int~q\,
	dataf => \U2|ALT_INV_Mux5~0_combout\,
	combout => \U2|new_trame_int~1_combout\);

-- Location: FF_X11_Y1_N50
\U2|new_trame_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|new_trame_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|new_trame_int~q\);

-- Location: FF_X12_Y1_N28
\U1|curr_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector12~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S5~q\);

-- Location: FF_X8_Y1_N50
\U1|curr_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|next_state.S0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S0~q\);

-- Location: MLABCELL_X8_Y1_N18
\U1|curr_state.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|curr_state.S1~0_combout\ = !\U1|curr_state.S0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	combout => \U1|curr_state.S1~0_combout\);

-- Location: FF_X8_Y1_N20
\U1|curr_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|curr_state.S1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S1~q\);

-- Location: FF_X13_Y1_N52
\U1|curr_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|curr_state.S1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S2~q\);

-- Location: FF_X13_Y1_N23
\U1|curr_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|curr_state.S2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S3~q\);

-- Location: FF_X13_Y1_N49
\U1|curr_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|curr_state.S3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S4~q\);

-- Location: LABCELL_X12_Y1_N27
\U1|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector12~0_combout\ = ( \U1|curr_state.S4~q\ ) # ( !\U1|curr_state.S4~q\ & ( (!\U2|new_trame_int~q\ & \U1|curr_state.S5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_new_trame_int~q\,
	datad => \U1|ALT_INV_curr_state.S5~q\,
	dataf => \U1|ALT_INV_curr_state.S4~q\,
	combout => \U1|Selector12~0_combout\);

-- Location: FF_X12_Y1_N29
\U1|curr_state.S5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector12~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S5~DUPLICATE_q\);

-- Location: LABCELL_X11_Y1_N6
\U1|next_state.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|next_state.S0~0_combout\ = ( \U2|new_trame_int~q\ & ( !\U1|curr_state.S5~DUPLICATE_q\ ) ) # ( !\U2|new_trame_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_curr_state.S5~DUPLICATE_q\,
	dataf => \U2|ALT_INV_new_trame_int~q\,
	combout => \U1|next_state.S0~0_combout\);

-- Location: LABCELL_X10_Y1_N18
\U2|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux5~1_combout\ = ( \U2|Mux5~0_combout\ & ( \U1|next_state.S0~0_combout\ & ( (!\U2|cpt[1]~DUPLICATE_q\ & ((!\U2|cpt\(0) & ((\U2|cpt\(4)))) # (\U2|cpt\(0) & (!\U3|r_TX_Done~q\)))) # (\U2|cpt[1]~DUPLICATE_q\ & ((!\U3|r_TX_Done~q\ & ((!\U2|cpt\(4)))) # 
-- (\U3|r_TX_Done~q\ & (!\U2|cpt\(0))))) ) ) ) # ( !\U2|Mux5~0_combout\ & ( \U1|next_state.S0~0_combout\ & ( (!\U2|cpt\(4) & ((!\U2|cpt\(0)) # (!\U3|r_TX_Done~q\))) ) ) ) # ( \U2|Mux5~0_combout\ & ( !\U1|next_state.S0~0_combout\ & ( (!\U3|r_TX_Done~q\ & 
-- ((!\U2|cpt[1]~DUPLICATE_q\) # ((!\U2|cpt\(4))))) # (\U3|r_TX_Done~q\ & (((!\U2|cpt\(0))))) ) ) ) # ( !\U2|Mux5~0_combout\ & ( !\U1|next_state.S0~0_combout\ & ( (!\U2|cpt\(4) & ((!\U2|cpt\(0)) # (!\U3|r_TX_Done~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111001010110011111100000000000111010010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(0),
	datac => \U3|ALT_INV_r_TX_Done~q\,
	datad => \U2|ALT_INV_cpt\(4),
	datae => \U2|ALT_INV_Mux5~0_combout\,
	dataf => \U1|ALT_INV_next_state.S0~0_combout\,
	combout => \U2|Mux5~1_combout\);

-- Location: FF_X11_Y1_N38
\U2|cpt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|Mux5~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt\(0));

-- Location: LABCELL_X10_Y1_N45
\U2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = ( \U2|cpt\(3) & ( (!\U3|r_TX_Done~q\) # ((!\U2|cpt\(0)) # ((!\U2|cpt\(2)) # (!\U2|cpt[1]~DUPLICATE_q\))) ) ) # ( !\U2|cpt\(3) & ( (\U3|r_TX_Done~q\ & (\U2|cpt\(0) & (\U2|cpt\(2) & \U2|cpt[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_TX_Done~q\,
	datab => \U2|ALT_INV_cpt\(0),
	datac => \U2|ALT_INV_cpt\(2),
	datad => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datae => \U2|ALT_INV_cpt\(3),
	combout => \U2|Mux2~0_combout\);

-- Location: FF_X10_Y1_N46
\U2|cpt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U2|cpt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cpt[3]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y1_N48
\U2|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux14~0_combout\ = ( \U2|start_tx_int~q\ & ( \U2|cpt[1]~DUPLICATE_q\ & ( !\U2|cpt\(4) ) ) ) # ( !\U2|start_tx_int~q\ & ( \U2|cpt[1]~DUPLICATE_q\ & ( !\U2|cpt\(4) ) ) ) # ( \U2|start_tx_int~q\ & ( !\U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt\(4)) # 
-- ((!\U2|cpt[3]~DUPLICATE_q\ & !\U2|cpt[2]~DUPLICATE_q\)) ) ) ) # ( !\U2|start_tx_int~q\ & ( !\U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & ((!\U2|cpt[2]~DUPLICATE_q\ & ((!\U1|next_state.S0~0_combout\) # (\U2|cpt\(4)))) # (\U2|cpt[2]~DUPLICATE_q\ 
-- & ((!\U2|cpt\(4)))))) # (\U2|cpt[3]~DUPLICATE_q\ & (((!\U2|cpt\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111110100000111111111010000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datab => \U1|ALT_INV_next_state.S0~0_combout\,
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(4),
	datae => \U2|ALT_INV_start_tx_int~q\,
	dataf => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	combout => \U2|Mux14~0_combout\);

-- Location: FF_X12_Y1_N50
\U2|start_tx_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux14~0_combout\,
	sclr => \U2|cpt\(0),
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|start_tx_int~q\);

-- Location: LABCELL_X10_Y2_N57
\U3|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector18~0_combout\ = ( \U3|r_SM_Main.s_TX_Start_Bit~q\ & ( \U3|LessThan1~2_combout\ & ( (\U2|start_tx_int~q\ & !\U3|r_SM_Main.s_Idle~q\) ) ) ) # ( !\U3|r_SM_Main.s_TX_Start_Bit~q\ & ( \U3|LessThan1~2_combout\ & ( (\U2|start_tx_int~q\ & 
-- !\U3|r_SM_Main.s_Idle~q\) ) ) ) # ( \U3|r_SM_Main.s_TX_Start_Bit~q\ & ( !\U3|LessThan1~2_combout\ & ( (!\U3|LessThan1~0_combout\) # ((!\U3|LessThan1~1_combout\) # ((\U2|start_tx_int~q\ & !\U3|r_SM_Main.s_Idle~q\))) ) ) ) # ( 
-- !\U3|r_SM_Main.s_TX_Start_Bit~q\ & ( !\U3|LessThan1~2_combout\ & ( (\U2|start_tx_int~q\ & !\U3|r_SM_Main.s_Idle~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111011111110001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_start_tx_int~q\,
	datab => \U3|ALT_INV_LessThan1~0_combout\,
	datac => \U3|ALT_INV_LessThan1~1_combout\,
	datad => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	datae => \U3|ALT_INV_r_SM_Main.s_TX_Start_Bit~q\,
	dataf => \U3|ALT_INV_LessThan1~2_combout\,
	combout => \U3|Selector18~0_combout\);

-- Location: FF_X10_Y2_N58
\U3|r_SM_Main.s_TX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_SM_Main.s_TX_Start_Bit~q\);

-- Location: LABCELL_X12_Y2_N36
\U3|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector0~0_combout\ = ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( (\U3|o_TX_Active~q\) # (\U3|r_SM_Main.s_TX_Start_Bit~q\) ) ) # ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( ((\U3|r_SM_Main.s_TX_Stop_Bit~q\ & \U3|o_TX_Active~q\)) # 
-- (\U3|r_SM_Main.s_TX_Start_Bit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_r_SM_Main.s_TX_Start_Bit~q\,
	datac => \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \U3|ALT_INV_o_TX_Active~q\,
	dataf => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	combout => \U3|Selector0~0_combout\);

-- Location: FF_X12_Y2_N37
\U3|o_TX_Active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|o_TX_Active~q\);

-- Location: IOIBUF_X10_Y0_N75
\xin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(7),
	o => \xin[7]~input_o\);

-- Location: FF_X8_Y1_N47
\U1|s_x_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(7));

-- Location: MLABCELL_X8_Y1_N45
\U1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector2~0_combout\ = ( \U1|s_x_reg\(7) & ( (!\U1|curr_state.S1~q\ & (\U1|curr_state.S0~q\)) # (\U1|curr_state.S1~q\ & ((\xin[7]~input_o\))) ) ) # ( !\U1|s_x_reg\(7) & ( (\xin[7]~input_o\ & \U1|curr_state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010000111100000000000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datac => \ALT_INV_xin[7]~input_o\,
	datad => \U1|ALT_INV_curr_state.S1~q\,
	datae => \U1|ALT_INV_s_x_reg\(7),
	combout => \U1|Selector2~0_combout\);

-- Location: FF_X8_Y1_N2
\U1|s_mode_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector10~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mode_reg~q\);

-- Location: IOIBUF_X8_Y0_N35
\modetop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modetop,
	o => \modetop~input_o\);

-- Location: MLABCELL_X8_Y1_N39
\U1|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector10~0_combout\ = ( \U1|s_mode_reg~q\ & ( \modetop~input_o\ & ( (\U1|curr_state.S1~q\) # (\U1|curr_state.S0~q\) ) ) ) # ( !\U1|s_mode_reg~q\ & ( \modetop~input_o\ & ( \U1|curr_state.S1~q\ ) ) ) # ( \U1|s_mode_reg~q\ & ( !\modetop~input_o\ & ( 
-- (\U1|curr_state.S0~q\ & !\U1|curr_state.S1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datad => \U1|ALT_INV_curr_state.S1~q\,
	datae => \U1|ALT_INV_s_mode_reg~q\,
	dataf => \ALT_INV_modetop~input_o\,
	combout => \U1|Selector10~0_combout\);

-- Location: FF_X8_Y1_N16
\U1|s_oh_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(7));

-- Location: FF_X9_Y1_N32
\U1|s_mvt_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(7));

-- Location: FF_X12_Y1_N23
\U1|s_twi_reg2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(7));

-- Location: LABCELL_X12_Y1_N39
\U1|trametop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|trametop~0_combout\ = ( \U1|curr_state.S4~q\ ) # ( !\U1|curr_state.S4~q\ & ( \U1|curr_state.S5~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_curr_state.S5~DUPLICATE_q\,
	dataf => \U1|ALT_INV_curr_state.S4~q\,
	combout => \U1|trametop~0_combout\);

-- Location: LABCELL_X12_Y1_N18
\U2|r[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|r[7]~1_combout\ = ( \U2|cpt[1]~DUPLICATE_q\ & ( \U1|trametop~0_combout\ & ( (\U2|cpt[3]~DUPLICATE_q\ & (\U2|cpt[2]~DUPLICATE_q\ & !\U2|cpt\(0))) ) ) ) # ( !\U2|cpt[1]~DUPLICATE_q\ & ( \U1|trametop~0_combout\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & 
-- (\U2|cpt\(4) & (!\U2|cpt[2]~DUPLICATE_q\ & !\U2|cpt\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(0),
	datae => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	dataf => \U1|ALT_INV_trametop~0_combout\,
	combout => \U2|r[7]~1_combout\);

-- Location: FF_X13_Y1_N50
\U1|curr_state.S4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|curr_state.S3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|curr_state.S4~DUPLICATE_q\);

-- Location: LABCELL_X13_Y1_N42
\U2|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux8~0_combout\ = ( \U2|new_trame_int~q\ & ( ((\U1|curr_state.S4~DUPLICATE_q\ & \U2|cpt[1]~DUPLICATE_q\)) # (\U1|curr_state.S5~q\) ) ) # ( !\U2|new_trame_int~q\ & ( (\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S5~q\) # 
-- (\U1|curr_state.S4~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datac => \U1|ALT_INV_curr_state.S5~q\,
	dataf => \U2|ALT_INV_new_trame_int~q\,
	combout => \U2|Mux8~0_combout\);

-- Location: LABCELL_X13_Y1_N39
\U2|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux8~1_combout\ = ( !\U2|cpt\(4) & ( \U2|Mux8~0_combout\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (!\U2|cpt[3]~DUPLICATE_q\ & !\U2|cpt\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(0),
	datae => \U2|ALT_INV_cpt\(4),
	dataf => \U2|ALT_INV_Mux8~0_combout\,
	combout => \U2|Mux8~1_combout\);

-- Location: FF_X8_Y1_N14
\U1|s_x_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(6));

-- Location: IOIBUF_X8_Y0_N18
\xin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(6),
	o => \xin[6]~input_o\);

-- Location: MLABCELL_X8_Y1_N9
\U1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector3~0_combout\ = ( \xin[6]~input_o\ & ( ((\U1|curr_state.S0~q\ & \U1|s_x_reg\(6))) # (\U1|curr_state.S1~q\) ) ) # ( !\xin[6]~input_o\ & ( (\U1|curr_state.S0~q\ & (\U1|s_x_reg\(6) & !\U1|curr_state.S1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datac => \U1|ALT_INV_s_x_reg\(6),
	datad => \U1|ALT_INV_curr_state.S1~q\,
	dataf => \ALT_INV_xin[6]~input_o\,
	combout => \U1|Selector3~0_combout\);

-- Location: FF_X8_Y1_N10
\U1|s_oh_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(6));

-- Location: FF_X9_Y1_N53
\U1|s_mvt_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(6));

-- Location: FF_X8_Y1_N8
\U1|s_x_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(5));

-- Location: IOIBUF_X6_Y0_N18
\xin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(5),
	o => \xin[5]~input_o\);

-- Location: MLABCELL_X8_Y1_N6
\U1|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector4~0_combout\ = ( \xin[5]~input_o\ & ( ((\U1|curr_state.S0~q\ & \U1|s_x_reg\(5))) # (\U1|curr_state.S1~q\) ) ) # ( !\xin[5]~input_o\ & ( (\U1|curr_state.S0~q\ & (!\U1|curr_state.S1~q\ & \U1|s_x_reg\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datac => \U1|ALT_INV_curr_state.S1~q\,
	datad => \U1|ALT_INV_s_x_reg\(5),
	dataf => \ALT_INV_xin[5]~input_o\,
	combout => \U1|Selector4~0_combout\);

-- Location: FF_X8_Y1_N40
\U1|s_oh_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(5));

-- Location: FF_X9_Y1_N35
\U1|s_mvt_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(5));

-- Location: LABCELL_X9_Y1_N18
\U1|s_adr_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_adr_reg[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \U1|s_adr_reg[3]~feeder_combout\);

-- Location: FF_X9_Y1_N19
\U1|s_adr_reg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_adr_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_adr_reg[3]~DUPLICATE_q\);

-- Location: FF_X8_Y1_N28
\U1|s_x_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(4));

-- Location: IOIBUF_X6_Y0_N1
\xin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(4),
	o => \xin[4]~input_o\);

-- Location: MLABCELL_X8_Y1_N48
\U1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector5~0_combout\ = ( \U1|curr_state.S0~q\ & ( (!\U1|curr_state.S1~q\ & (\U1|s_x_reg\(4))) # (\U1|curr_state.S1~q\ & ((\xin[4]~input_o\))) ) ) # ( !\U1|curr_state.S0~q\ & ( (\xin[4]~input_o\ & \U1|curr_state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001100000011000000110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_x_reg\(4),
	datab => \ALT_INV_xin[4]~input_o\,
	datac => \U1|ALT_INV_curr_state.S1~q\,
	datae => \U1|ALT_INV_curr_state.S0~q\,
	combout => \U1|Selector5~0_combout\);

-- Location: FF_X8_Y1_N25
\U1|s_oh_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(4));

-- Location: FF_X9_Y1_N43
\U1|s_mvt_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(4));

-- Location: IOIBUF_X8_Y0_N1
\xin[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(9),
	o => \xin[9]~input_o\);

-- Location: FF_X8_Y1_N23
\U1|s_x_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(9));

-- Location: MLABCELL_X8_Y1_N21
\U1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector0~0_combout\ = ( \U1|curr_state.S1~q\ & ( \xin[9]~input_o\ ) ) # ( !\U1|curr_state.S1~q\ & ( (\U1|curr_state.S0~q\ & \U1|s_x_reg\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datac => \ALT_INV_xin[9]~input_o\,
	datad => \U1|ALT_INV_s_x_reg\(9),
	dataf => \U1|ALT_INV_curr_state.S1~q\,
	combout => \U1|Selector0~0_combout\);

-- Location: FF_X8_Y1_N31
\U1|s_oh_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(9));

-- Location: FF_X9_Y1_N38
\U1|s_mvt_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(9));

-- Location: IOIBUF_X16_Y0_N1
\htop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_htop,
	o => \htop~input_o\);

-- Location: FF_X8_Y1_N43
\U1|s_h_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector11~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_h_reg~q\);

-- Location: MLABCELL_X8_Y1_N12
\U1|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector11~0_combout\ = (!\U1|curr_state.S1~q\ & (((\U1|s_h_reg~q\ & \U1|curr_state.S0~q\)))) # (\U1|curr_state.S1~q\ & (\htop~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010100000011010101010000001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_htop~input_o\,
	datab => \U1|ALT_INV_s_h_reg~q\,
	datac => \U1|ALT_INV_curr_state.S0~q\,
	datad => \U1|ALT_INV_curr_state.S1~q\,
	combout => \U1|Selector11~0_combout\);

-- Location: MLABCELL_X8_Y1_N27
\U1|MS|active_rot\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|MS|active_rot~combout\ = ( \U1|MS|active_rot~combout\ & ( (!\U1|Selector10~0_combout\) # (!\U1|Selector11~0_combout\) ) ) # ( !\U1|MS|active_rot~combout\ & ( (\U1|Selector10~0_combout\ & !\U1|Selector11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111111111000000001111000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_Selector10~0_combout\,
	datad => \U1|ALT_INV_Selector11~0_combout\,
	datae => \U1|MS|ALT_INV_active_rot~combout\,
	combout => \U1|MS|active_rot~combout\);

-- Location: FF_X9_Y1_N47
\U1|s_adr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|MS|active_rot~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_adr_reg\(1));

-- Location: FF_X9_Y1_N20
\U1|s_adr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_adr_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_adr_reg\(3));

-- Location: LABCELL_X9_Y1_N15
\U1|CS|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add2~0_combout\ = ( \U1|s_adr_reg\(3) & ( \U1|s_adr_reg\(1) ) ) # ( !\U1|s_adr_reg\(3) & ( (\U1|s_mvt_reg\(9) & \U1|s_adr_reg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_mvt_reg\(9),
	datac => \U1|ALT_INV_s_adr_reg\(1),
	dataf => \U1|ALT_INV_s_adr_reg\(3),
	combout => \U1|CS|Add2~0_combout\);

-- Location: IOIBUF_X10_Y0_N58
\xin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(3),
	o => \xin[3]~input_o\);

-- Location: FF_X10_Y1_N8
\U1|s_x_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector6~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(3));

-- Location: LABCELL_X10_Y1_N6
\U1|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector6~0_combout\ = ( \U1|s_x_reg\(3) & ( \U1|curr_state.S1~q\ & ( \xin[3]~input_o\ ) ) ) # ( !\U1|s_x_reg\(3) & ( \U1|curr_state.S1~q\ & ( \xin[3]~input_o\ ) ) ) # ( \U1|s_x_reg\(3) & ( !\U1|curr_state.S1~q\ & ( \U1|curr_state.S0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datac => \ALT_INV_xin[3]~input_o\,
	datae => \U1|ALT_INV_s_x_reg\(3),
	dataf => \U1|ALT_INV_curr_state.S1~q\,
	combout => \U1|Selector6~0_combout\);

-- Location: LABCELL_X9_Y1_N12
\U1|MS|oh[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|MS|oh[3]~0_combout\ = ( \U1|Selector10~0_combout\ & ( !\U1|Selector11~0_combout\ ) ) # ( !\U1|Selector10~0_combout\ & ( \U1|Selector6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Selector6~0_combout\,
	datac => \U1|ALT_INV_Selector11~0_combout\,
	dataf => \U1|ALT_INV_Selector10~0_combout\,
	combout => \U1|MS|oh[3]~0_combout\);

-- Location: FF_X9_Y1_N14
\U1|s_oh_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|MS|oh[3]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(3));

-- Location: FF_X9_Y1_N41
\U1|s_mvt_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(3));

-- Location: IOIBUF_X10_Y0_N41
\xin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(2),
	o => \xin[2]~input_o\);

-- Location: FF_X10_Y1_N32
\U1|s_x_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector7~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(2));

-- Location: LABCELL_X10_Y1_N30
\U1|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector7~0_combout\ = ( \U1|s_x_reg\(2) & ( \U1|curr_state.S1~q\ & ( \xin[2]~input_o\ ) ) ) # ( !\U1|s_x_reg\(2) & ( \U1|curr_state.S1~q\ & ( \xin[2]~input_o\ ) ) ) # ( \U1|s_x_reg\(2) & ( !\U1|curr_state.S1~q\ & ( \U1|curr_state.S0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_xin[2]~input_o\,
	datac => \U1|ALT_INV_curr_state.S0~q\,
	datae => \U1|ALT_INV_s_x_reg\(2),
	dataf => \U1|ALT_INV_curr_state.S1~q\,
	combout => \U1|Selector7~0_combout\);

-- Location: FF_X8_Y1_N52
\U1|s_oh_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector7~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(2));

-- Location: FF_X9_Y1_N29
\U1|s_mvt_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(2));

-- Location: LABCELL_X9_Y1_N27
\U1|CS|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add2~1_combout\ = ( \U1|s_adr_reg\(3) & ( (\U1|s_mvt_reg\(9) & !\U1|s_adr_reg\(1)) ) ) # ( !\U1|s_adr_reg\(3) & ( (!\U1|s_mvt_reg\(9) & \U1|s_adr_reg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_mvt_reg\(9),
	datac => \U1|ALT_INV_s_adr_reg\(1),
	dataf => \U1|ALT_INV_s_adr_reg\(3),
	combout => \U1|CS|Add2~1_combout\);

-- Location: IOIBUF_X8_Y0_N52
\xin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(1),
	o => \xin[1]~input_o\);

-- Location: FF_X8_Y1_N35
\U1|s_x_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector8~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(1));

-- Location: MLABCELL_X8_Y1_N33
\U1|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector8~0_combout\ = ( \U1|s_x_reg\(1) & ( (!\U1|curr_state.S1~q\ & (\U1|curr_state.S0~q\)) # (\U1|curr_state.S1~q\ & ((\xin[1]~input_o\))) ) ) # ( !\U1|s_x_reg\(1) & ( (\xin[1]~input_o\ & \U1|curr_state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010000111100000000000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datac => \ALT_INV_xin[1]~input_o\,
	datad => \U1|ALT_INV_curr_state.S1~q\,
	datae => \U1|ALT_INV_s_x_reg\(1),
	combout => \U1|Selector8~0_combout\);

-- Location: MLABCELL_X8_Y1_N3
\U1|s_oh_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_oh_reg[1]~feeder_combout\ = ( \U1|Selector8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_Selector8~0_combout\,
	combout => \U1|s_oh_reg[1]~feeder_combout\);

-- Location: FF_X8_Y1_N5
\U1|s_oh_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_oh_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(1));

-- Location: FF_X9_Y1_N17
\U1|s_mvt_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(1));

-- Location: IOIBUF_X10_Y0_N92
\xin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(0),
	o => \xin[0]~input_o\);

-- Location: FF_X10_Y1_N26
\U1|s_x_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector9~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(0));

-- Location: LABCELL_X10_Y1_N24
\U1|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector9~0_combout\ = ( \U1|s_x_reg\(0) & ( \U1|curr_state.S1~q\ & ( \xin[0]~input_o\ ) ) ) # ( !\U1|s_x_reg\(0) & ( \U1|curr_state.S1~q\ & ( \xin[0]~input_o\ ) ) ) # ( \U1|s_x_reg\(0) & ( !\U1|curr_state.S1~q\ & ( \U1|curr_state.S0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_xin[0]~input_o\,
	datac => \U1|ALT_INV_curr_state.S0~q\,
	datae => \U1|ALT_INV_s_x_reg\(0),
	dataf => \U1|ALT_INV_curr_state.S1~q\,
	combout => \U1|Selector9~0_combout\);

-- Location: FF_X8_Y1_N37
\U1|s_oh_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector9~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(0));

-- Location: FF_X9_Y1_N50
\U1|s_mvt_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(0));

-- Location: IOIBUF_X12_Y0_N52
\xin[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(8),
	o => \xin[8]~input_o\);

-- Location: FF_X8_Y1_N56
\U1|s_x_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_x_reg\(8));

-- Location: MLABCELL_X8_Y1_N54
\U1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector1~0_combout\ = ( \U1|s_x_reg\(8) & ( (!\U1|curr_state.S1~q\ & (\U1|curr_state.S0~q\)) # (\U1|curr_state.S1~q\ & ((\xin[8]~input_o\))) ) ) # ( !\U1|s_x_reg\(8) & ( (\xin[8]~input_o\ & \U1|curr_state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001100000011000000110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S0~q\,
	datab => \ALT_INV_xin[8]~input_o\,
	datac => \U1|ALT_INV_curr_state.S1~q\,
	datae => \U1|ALT_INV_s_x_reg\(8),
	combout => \U1|Selector1~0_combout\);

-- Location: FF_X8_Y1_N58
\U1|s_oh_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \U1|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_oh_reg\(8));

-- Location: FF_X9_Y1_N5
\U1|s_mvt_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_oh_reg\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_mvt_reg\(8));

-- Location: LABCELL_X9_Y1_N30
\U1|CS|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~25_sumout\ = SUM(( \U1|s_mvt_reg\(8) ) + ( \U1|s_mvt_reg\(0) ) + ( !VCC ))
-- \U1|CS|Add4~26\ = CARRY(( \U1|s_mvt_reg\(8) ) + ( \U1|s_mvt_reg\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_s_mvt_reg\(0),
	datad => \U1|ALT_INV_s_mvt_reg\(8),
	cin => GND,
	sumout => \U1|CS|Add4~25_sumout\,
	cout => \U1|CS|Add4~26\);

-- Location: LABCELL_X9_Y1_N33
\U1|CS|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~21_sumout\ = SUM(( \U1|s_mvt_reg\(1) ) + ( !\U1|s_mvt_reg\(9) $ (!\U1|s_adr_reg[3]~DUPLICATE_q\ $ (\U1|s_adr_reg\(1))) ) + ( \U1|CS|Add4~26\ ))
-- \U1|CS|Add4~22\ = CARRY(( \U1|s_mvt_reg\(1) ) + ( !\U1|s_mvt_reg\(9) $ (!\U1|s_adr_reg[3]~DUPLICATE_q\ $ (\U1|s_adr_reg\(1))) ) + ( \U1|CS|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101101001011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_mvt_reg\(9),
	datab => \U1|ALT_INV_s_adr_reg[3]~DUPLICATE_q\,
	datac => \U1|ALT_INV_s_adr_reg\(1),
	datad => \U1|ALT_INV_s_mvt_reg\(1),
	cin => \U1|CS|Add4~26\,
	sumout => \U1|CS|Add4~21_sumout\,
	cout => \U1|CS|Add4~22\);

-- Location: LABCELL_X9_Y1_N36
\U1|CS|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~29_sumout\ = SUM(( \U1|CS|Add2~1_combout\ ) + ( \U1|s_mvt_reg\(2) ) + ( \U1|CS|Add4~22\ ))
-- \U1|CS|Add4~30\ = CARRY(( \U1|CS|Add2~1_combout\ ) + ( \U1|s_mvt_reg\(2) ) + ( \U1|CS|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_s_mvt_reg\(2),
	datad => \U1|CS|ALT_INV_Add2~1_combout\,
	cin => \U1|CS|Add4~22\,
	sumout => \U1|CS|Add4~29_sumout\,
	cout => \U1|CS|Add4~30\);

-- Location: LABCELL_X9_Y1_N39
\U1|CS|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~17_sumout\ = SUM(( \U1|s_mvt_reg\(3) ) + ( \U1|CS|Add2~0_combout\ ) + ( \U1|CS|Add4~30\ ))
-- \U1|CS|Add4~18\ = CARRY(( \U1|s_mvt_reg\(3) ) + ( \U1|CS|Add2~0_combout\ ) + ( \U1|CS|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|CS|ALT_INV_Add2~0_combout\,
	datad => \U1|ALT_INV_s_mvt_reg\(3),
	cin => \U1|CS|Add4~30\,
	sumout => \U1|CS|Add4~17_sumout\,
	cout => \U1|CS|Add4~18\);

-- Location: LABCELL_X9_Y1_N42
\U1|CS|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~9_sumout\ = SUM(( \U1|s_mvt_reg\(4) ) + ( GND ) + ( \U1|CS|Add4~18\ ))
-- \U1|CS|Add4~10\ = CARRY(( \U1|s_mvt_reg\(4) ) + ( GND ) + ( \U1|CS|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_s_mvt_reg\(4),
	cin => \U1|CS|Add4~18\,
	sumout => \U1|CS|Add4~9_sumout\,
	cout => \U1|CS|Add4~10\);

-- Location: LABCELL_X9_Y1_N45
\U1|CS|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~1_sumout\ = SUM(( \U1|s_adr_reg[3]~DUPLICATE_q\ ) + ( \U1|s_mvt_reg\(5) ) + ( \U1|CS|Add4~10\ ))
-- \U1|CS|Add4~2\ = CARRY(( \U1|s_adr_reg[3]~DUPLICATE_q\ ) + ( \U1|s_mvt_reg\(5) ) + ( \U1|CS|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_mvt_reg\(5),
	datac => \U1|ALT_INV_s_adr_reg[3]~DUPLICATE_q\,
	cin => \U1|CS|Add4~10\,
	sumout => \U1|CS|Add4~1_sumout\,
	cout => \U1|CS|Add4~2\);

-- Location: LABCELL_X9_Y1_N48
\U1|CS|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~13_sumout\ = SUM(( \U1|s_mvt_reg\(6) ) + ( GND ) + ( \U1|CS|Add4~2\ ))
-- \U1|CS|Add4~14\ = CARRY(( \U1|s_mvt_reg\(6) ) + ( GND ) + ( \U1|CS|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_s_mvt_reg\(6),
	cin => \U1|CS|Add4~2\,
	sumout => \U1|CS|Add4~13_sumout\,
	cout => \U1|CS|Add4~14\);

-- Location: LABCELL_X9_Y1_N51
\U1|CS|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|CS|Add4~5_sumout\ = SUM(( \U1|s_mvt_reg\(7) ) + ( GND ) + ( \U1|CS|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_s_mvt_reg\(7),
	cin => \U1|CS|Add4~14\,
	sumout => \U1|CS|Add4~5_sumout\);

-- Location: LABCELL_X9_Y1_N0
\U1|s_sum_reg[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[7]~1_combout\ = ( !\U1|CS|Add4~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|CS|ALT_INV_Add4~5_sumout\,
	combout => \U1|s_sum_reg[7]~1_combout\);

-- Location: FF_X9_Y1_N1
\U1|s_sum_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[7]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(7));

-- Location: LABCELL_X12_Y1_N12
\U2|r[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|r[7]~0_combout\ = ( \U1|trametop~0_combout\ & ( \U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt\(0) & (!\U2|cpt[3]~DUPLICATE_q\ $ (\U2|cpt[2]~DUPLICATE_q\))) ) ) ) # ( !\U1|trametop~0_combout\ & ( \U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt\(0) & 
-- (!\U2|cpt[3]~DUPLICATE_q\ $ (\U2|cpt[2]~DUPLICATE_q\))) ) ) ) # ( \U1|trametop~0_combout\ & ( !\U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & (!\U2|cpt[2]~DUPLICATE_q\ & ((!\U2|cpt\(4)) # (\U2|cpt\(0))))) # (\U2|cpt[3]~DUPLICATE_q\ & 
-- (((\U2|cpt[2]~DUPLICATE_q\ & !\U2|cpt\(0))))) ) ) ) # ( !\U1|trametop~0_combout\ & ( !\U2|cpt[1]~DUPLICATE_q\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & (!\U2|cpt[2]~DUPLICATE_q\)) # (\U2|cpt[3]~DUPLICATE_q\ & (\U2|cpt[2]~DUPLICATE_q\ & !\U2|cpt\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100000100001011010000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(0),
	datae => \U1|ALT_INV_trametop~0_combout\,
	dataf => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	combout => \U2|r[7]~0_combout\);

-- Location: LABCELL_X12_Y1_N36
\U2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = ( \U2|r[7]~0_combout\ & ( ((\U1|s_twi_reg2\(7) & \U2|r[7]~1_combout\)) # (\U2|Mux8~1_combout\) ) ) # ( !\U2|r[7]~0_combout\ & ( ((\U2|r[7]~1_combout\ & \U1|s_sum_reg\(7))) # (\U2|Mux8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_twi_reg2\(7),
	datab => \U2|ALT_INV_r[7]~1_combout\,
	datac => \U2|ALT_INV_Mux8~1_combout\,
	datad => \U1|ALT_INV_s_sum_reg\(7),
	dataf => \U2|ALT_INV_r[7]~0_combout\,
	combout => \U2|Mux6~0_combout\);

-- Location: LABCELL_X12_Y1_N0
\U2|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|r[4]~2_combout\ = ( \U2|cpt\(0) & ( \U2|cpt[3]~DUPLICATE_q\ & ( (!\rst~input_o\ & !\U2|cpt\(4)) ) ) ) # ( !\U2|cpt\(0) & ( \U2|cpt[3]~DUPLICATE_q\ & ( (!\rst~input_o\ & !\U2|cpt\(4)) ) ) ) # ( \U2|cpt\(0) & ( !\U2|cpt[3]~DUPLICATE_q\ & ( 
-- (!\rst~input_o\ & ((!\U2|cpt\(4)) # ((!\U2|cpt[2]~DUPLICATE_q\ & !\U2|cpt[1]~DUPLICATE_q\)))) ) ) ) # ( !\U2|cpt\(0) & ( !\U2|cpt[3]~DUPLICATE_q\ & ( (!\rst~input_o\ & ((!\U2|cpt[2]~DUPLICATE_q\) # (!\U2|cpt\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datac => \ALT_INV_rst~input_o\,
	datad => \U2|ALT_INV_cpt\(4),
	datae => \U2|ALT_INV_cpt\(0),
	dataf => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	combout => \U2|r[4]~2_combout\);

-- Location: FF_X12_Y1_N37
\U2|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux6~0_combout\,
	ena => \U2|r[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(7));

-- Location: LABCELL_X12_Y2_N42
\U3|Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector18~1_combout\ = ( \U2|start_tx_int~q\ & ( !\U3|r_SM_Main.s_Idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	dataf => \U2|ALT_INV_start_tx_int~q\,
	combout => \U3|Selector18~1_combout\);

-- Location: FF_X12_Y2_N25
\U3|r_TX_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|r\(7),
	sload => VCC,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(7));

-- Location: LABCELL_X9_Y1_N21
\U1|s_sum_reg[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[6]~3_combout\ = ( !\U1|CS|Add4~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|CS|ALT_INV_Add4~13_sumout\,
	combout => \U1|s_sum_reg[6]~3_combout\);

-- Location: FF_X9_Y1_N22
\U1|s_sum_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[6]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(6));

-- Location: FF_X12_Y1_N1
\U1|s_twi_reg2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(6));

-- Location: LABCELL_X12_Y1_N6
\U2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux7~0_combout\ = ( \U2|r[7]~0_combout\ & ( ((\U2|r[7]~1_combout\ & \U1|s_twi_reg2\(6))) # (\U2|Mux8~1_combout\) ) ) # ( !\U2|r[7]~0_combout\ & ( ((\U2|r[7]~1_combout\ & \U1|s_sum_reg\(6))) # (\U2|Mux8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux8~1_combout\,
	datab => \U2|ALT_INV_r[7]~1_combout\,
	datac => \U1|ALT_INV_s_sum_reg\(6),
	datad => \U1|ALT_INV_s_twi_reg2\(6),
	dataf => \U2|ALT_INV_r[7]~0_combout\,
	combout => \U2|Mux7~0_combout\);

-- Location: FF_X12_Y1_N7
\U2|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux7~0_combout\,
	ena => \U2|r[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(6));

-- Location: FF_X12_Y2_N49
\U3|r_TX_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|r\(6),
	sload => VCC,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(6));

-- Location: FF_X12_Y1_N17
\U1|s_twi_reg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(5));

-- Location: LABCELL_X9_Y1_N24
\U1|s_sum_reg[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[5]~0_combout\ = ( !\U1|CS|Add4~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|CS|ALT_INV_Add4~1_sumout\,
	combout => \U1|s_sum_reg[5]~0_combout\);

-- Location: FF_X9_Y1_N25
\U1|s_sum_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[5]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(5));

-- Location: LABCELL_X12_Y1_N9
\U2|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux8~2_combout\ = ( \U2|r[7]~0_combout\ & ( ((\U2|r[7]~1_combout\ & \U1|s_twi_reg2\(5))) # (\U2|Mux8~1_combout\) ) ) # ( !\U2|r[7]~0_combout\ & ( ((\U2|r[7]~1_combout\ & \U1|s_sum_reg\(5))) # (\U2|Mux8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux8~1_combout\,
	datab => \U2|ALT_INV_r[7]~1_combout\,
	datac => \U1|ALT_INV_s_twi_reg2\(5),
	datad => \U1|ALT_INV_s_sum_reg\(5),
	dataf => \U2|ALT_INV_r[7]~0_combout\,
	combout => \U2|Mux8~2_combout\);

-- Location: FF_X12_Y1_N10
\U2|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux8~2_combout\,
	ena => \U2|r[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(5));

-- Location: FF_X12_Y2_N55
\U3|r_TX_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|r\(5),
	sload => VCC,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(5));

-- Location: LABCELL_X12_Y1_N24
\U2|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux11~0_combout\ = ( \U2|cpt[1]~DUPLICATE_q\ & ( (\U2|cpt\(4) & \U2|cpt\(0)) ) ) # ( !\U2|cpt[1]~DUPLICATE_q\ & ( (\U2|cpt\(4) & (\U2|cpt\(0) & ((\U2|cpt[2]~DUPLICATE_q\) # (\U2|cpt[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt\(0),
	dataf => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	combout => \U2|Mux11~0_combout\);

-- Location: FF_X10_Y1_N56
\U1|s_twi_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(1));

-- Location: FF_X10_Y1_N16
\U1|s_id_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_adr_reg[3]~DUPLICATE_q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_id_reg2\(1));

-- Location: FF_X10_Y1_N59
\U1|s_twi_reg2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(9));

-- Location: FF_X13_Y1_N4
\U1|s_twi_reg2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_adr_reg\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(17));

-- Location: LABCELL_X10_Y1_N57
\U2|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux12~2_combout\ = ( \U1|s_twi_reg2\(9) & ( \U1|s_twi_reg2\(17) & ( (!\U2|cpt\(2) & (((\U2|cpt\(1)) # (\U1|s_id_reg2\(1))))) # (\U2|cpt\(2) & (((!\U2|cpt\(1))) # (\U1|s_twi_reg2\(1)))) ) ) ) # ( !\U1|s_twi_reg2\(9) & ( \U1|s_twi_reg2\(17) & ( 
-- (!\U2|cpt\(2) & (((\U2|cpt\(1)) # (\U1|s_id_reg2\(1))))) # (\U2|cpt\(2) & (\U1|s_twi_reg2\(1) & ((\U2|cpt\(1))))) ) ) ) # ( \U1|s_twi_reg2\(9) & ( !\U1|s_twi_reg2\(17) & ( (!\U2|cpt\(2) & (((\U1|s_id_reg2\(1) & !\U2|cpt\(1))))) # (\U2|cpt\(2) & 
-- (((!\U2|cpt\(1))) # (\U1|s_twi_reg2\(1)))) ) ) ) # ( !\U1|s_twi_reg2\(9) & ( !\U1|s_twi_reg2\(17) & ( (!\U2|cpt\(2) & (((\U1|s_id_reg2\(1) & !\U2|cpt\(1))))) # (\U2|cpt\(2) & (\U1|s_twi_reg2\(1) & ((\U2|cpt\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_twi_reg2\(1),
	datab => \U2|ALT_INV_cpt\(2),
	datac => \U1|ALT_INV_s_id_reg2\(1),
	datad => \U2|ALT_INV_cpt\(1),
	datae => \U1|ALT_INV_s_twi_reg2\(9),
	dataf => \U1|ALT_INV_s_twi_reg2\(17),
	combout => \U2|Mux12~2_combout\);

-- Location: LABCELL_X9_Y1_N9
\U1|s_sum_reg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[1]~4_combout\ = ( !\U1|CS|Add4~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|CS|ALT_INV_Add4~21_sumout\,
	combout => \U1|s_sum_reg[1]~4_combout\);

-- Location: FF_X9_Y1_N10
\U1|s_sum_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[1]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(1));

-- Location: LABCELL_X11_Y1_N36
\U2|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux12~4_combout\ = ( \U1|s_sum_reg\(1) & ( \U2|cpt[3]~DUPLICATE_q\ & ( (!\U2|r\(1) & \U2|cpt\(4)) ) ) ) # ( !\U1|s_sum_reg\(1) & ( \U2|cpt[3]~DUPLICATE_q\ & ( (!\U2|r\(1) & \U2|cpt\(4)) ) ) ) # ( \U1|s_sum_reg\(1) & ( !\U2|cpt[3]~DUPLICATE_q\ & ( 
-- (\U2|cpt[2]~DUPLICATE_q\ & ((!\U2|cpt\(4) & ((!\U1|s_id_reg2\(1)))) # (\U2|cpt\(4) & (!\U2|r\(1))))) ) ) ) # ( !\U1|s_sum_reg\(1) & ( !\U2|cpt[3]~DUPLICATE_q\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (((\U2|cpt\(4))))) # (\U2|cpt[2]~DUPLICATE_q\ & ((!\U2|cpt\(4) & 
-- ((!\U1|s_id_reg2\(1)))) # (\U2|cpt\(4) & (!\U2|r\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000001110001100100000001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_r\(1),
	datab => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_cpt\(4),
	datad => \U1|ALT_INV_s_id_reg2\(1),
	datae => \U1|ALT_INV_s_sum_reg\(1),
	dataf => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	combout => \U2|Mux12~4_combout\);

-- Location: LABCELL_X11_Y1_N30
\U2|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux12~3_combout\ = ( \U1|curr_state.S5~DUPLICATE_q\ & ( \U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt\(1) & (!\U2|cpt\(4) & (!\U2|new_trame_int~q\ & !\U2|cpt[2]~DUPLICATE_q\))) # (\U2|cpt\(1) & (!\U2|cpt\(4) $ (((!\U2|cpt[2]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\U1|curr_state.S5~DUPLICATE_q\ & ( \U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt\(4) & (!\U2|cpt\(1) $ (\U2|cpt[2]~DUPLICATE_q\))) # (\U2|cpt\(4) & (\U2|cpt\(1) & !\U2|cpt[2]~DUPLICATE_q\)) ) ) ) # ( \U1|curr_state.S5~DUPLICATE_q\ & ( 
-- !\U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt\(1) & (!\U2|cpt\(4) & (!\U2|new_trame_int~q\ & !\U2|cpt[2]~DUPLICATE_q\))) # (\U2|cpt\(1) & (!\U2|cpt\(4) $ (((!\U2|cpt[2]~DUPLICATE_q\))))) ) ) ) # ( !\U1|curr_state.S5~DUPLICATE_q\ & ( 
-- !\U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt\(4)) # (!\U2|cpt[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010100100010010001010011001001000101001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(4),
	datab => \U2|ALT_INV_cpt\(1),
	datac => \U2|ALT_INV_new_trame_int~q\,
	datad => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datae => \U1|ALT_INV_curr_state.S5~DUPLICATE_q\,
	dataf => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	combout => \U2|Mux12~3_combout\);

-- Location: LABCELL_X11_Y1_N18
\U2|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux12~0_combout\ = ( \U2|Mux12~4_combout\ & ( \U2|Mux12~3_combout\ & ( (!\U2|cpt\(4) & (\U2|cpt\(3) & (\U1|trametop~0_combout\ & \U2|Mux12~2_combout\))) ) ) ) # ( !\U2|Mux12~4_combout\ & ( \U2|Mux12~3_combout\ & ( (\U2|cpt\(3) & 
-- (((\U1|trametop~0_combout\ & \U2|Mux12~2_combout\)) # (\U2|cpt\(4)))) ) ) ) # ( \U2|Mux12~4_combout\ & ( !\U2|Mux12~3_combout\ & ( (!\U2|cpt\(4) & (\U2|cpt\(3) & (\U1|trametop~0_combout\ & \U2|Mux12~2_combout\))) ) ) ) # ( !\U2|Mux12~4_combout\ & ( 
-- !\U2|Mux12~3_combout\ & ( ((!\U2|cpt\(3)) # ((\U1|trametop~0_combout\ & \U2|Mux12~2_combout\))) # (\U2|cpt\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011111000000000000001000010001000100110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(4),
	datab => \U2|ALT_INV_cpt\(3),
	datac => \U1|ALT_INV_trametop~0_combout\,
	datad => \U2|ALT_INV_Mux12~2_combout\,
	datae => \U2|ALT_INV_Mux12~4_combout\,
	dataf => \U2|ALT_INV_Mux12~3_combout\,
	combout => \U2|Mux12~0_combout\);

-- Location: LABCELL_X11_Y1_N24
\U2|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux12~1_combout\ = ( \U2|Mux12~0_combout\ & ( (!\U2|cpt\(0)) # ((\U2|Mux11~0_combout\ & \U2|r\(1))) ) ) # ( !\U2|Mux12~0_combout\ & ( (\U2|Mux11~0_combout\ & \U2|r\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001110101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(0),
	datab => \U2|ALT_INV_Mux11~0_combout\,
	datad => \U2|ALT_INV_r\(1),
	dataf => \U2|ALT_INV_Mux12~0_combout\,
	combout => \U2|Mux12~1_combout\);

-- Location: FF_X11_Y1_N26
\U2|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux12~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(1));

-- Location: LABCELL_X12_Y2_N48
\U3|r_TX_Data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|r_TX_Data[1]~feeder_combout\ = \U2|r\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_r\(1),
	combout => \U3|r_TX_Data[1]~feeder_combout\);

-- Location: FF_X12_Y2_N50
\U3|r_TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|r_TX_Data[1]~feeder_combout\,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(1));

-- Location: LABCELL_X13_Y1_N27
\U2|r[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|r[4]~4_combout\ = ( !\U2|cpt[3]~DUPLICATE_q\ & ( \U2|cpt\(0) & ( (!\U2|cpt[1]~DUPLICATE_q\ & !\U2|cpt[2]~DUPLICATE_q\) ) ) ) # ( \U2|cpt[3]~DUPLICATE_q\ & ( !\U2|cpt\(0) & ( (!\U2|cpt[1]~DUPLICATE_q\ & (((!\U2|cpt[2]~DUPLICATE_q\)))) # 
-- (\U2|cpt[1]~DUPLICATE_q\ & (\U2|cpt[2]~DUPLICATE_q\ & ((\U1|curr_state.S4~DUPLICATE_q\) # (\U1|curr_state.S5~q\)))) ) ) ) # ( !\U2|cpt[3]~DUPLICATE_q\ & ( !\U2|cpt\(0) & ( !\U2|cpt[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000011100001111000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S5~q\,
	datab => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datae => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_cpt\(0),
	combout => \U2|r[4]~4_combout\);

-- Location: LABCELL_X11_Y1_N9
\U2|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux9~1_combout\ = ( !\U1|next_state.S0~0_combout\ & ( (!\U2|cpt\(0) & (!\U2|cpt\(1) & (!\U2|cpt\(3) & !\U2|cpt\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(0),
	datab => \U2|ALT_INV_cpt\(1),
	datac => \U2|ALT_INV_cpt\(3),
	datad => \U2|ALT_INV_cpt\(4),
	dataf => \U1|ALT_INV_next_state.S0~0_combout\,
	combout => \U2|Mux9~1_combout\);

-- Location: LABCELL_X13_Y1_N6
\U2|r[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|r[4]~3_combout\ = ( \U2|cpt[3]~DUPLICATE_q\ & ( !\U2|cpt\(0) & ( (\U2|cpt[1]~DUPLICATE_q\ & (((!\U2|cpt[2]~DUPLICATE_q\) # (\U1|curr_state.S5~q\)) # (\U1|curr_state.S4~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datac => \U1|ALT_INV_curr_state.S5~q\,
	datad => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datae => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_cpt\(0),
	combout => \U2|r[4]~3_combout\);

-- Location: LABCELL_X13_Y1_N54
\U2|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux9~2_combout\ = ( \U1|s_id_reg2\(1) & ( (\U1|curr_state.S5~q\) # (\U1|curr_state.S4~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datac => \U1|ALT_INV_curr_state.S5~q\,
	dataf => \U1|ALT_INV_s_id_reg2\(1),
	combout => \U2|Mux9~2_combout\);

-- Location: LABCELL_X9_Y1_N6
\U1|s_sum_reg[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[3]~5_combout\ = ( !\U1|CS|Add4~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|CS|ALT_INV_Add4~17_sumout\,
	combout => \U1|s_sum_reg[3]~5_combout\);

-- Location: FF_X9_Y1_N7
\U1|s_sum_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[3]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(3));

-- Location: LABCELL_X12_Y1_N57
\U2|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux10~0_combout\ = ( \U1|trametop~0_combout\ & ( \U1|s_sum_reg\(3) & ( (!\U2|cpt[3]~DUPLICATE_q\ & (!\U2|cpt\(0) & (!\U2|cpt\(4) $ (!\U2|cpt[1]~DUPLICATE_q\)))) # (\U2|cpt[3]~DUPLICATE_q\ & (((\U2|cpt[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- \U1|trametop~0_combout\ & ( !\U1|s_sum_reg\(3) & ( (\U2|cpt[1]~DUPLICATE_q\ & (((!\U2|cpt\(0) & !\U2|cpt\(4))) # (\U2|cpt[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000111100000000000000000010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(0),
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datae => \U1|ALT_INV_trametop~0_combout\,
	dataf => \U1|ALT_INV_s_sum_reg\(3),
	combout => \U2|Mux10~0_combout\);

-- Location: FF_X12_Y1_N46
\U1|s_twi_reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(3));

-- Location: LABCELL_X12_Y1_N30
\U2|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux10~1_combout\ = ( \U2|Mux10~0_combout\ & ( \U1|s_twi_reg2\(3) & ( ((\U2|r[4]~3_combout\ & \U2|Mux9~2_combout\)) # (\U2|r[4]~4_combout\) ) ) ) # ( !\U2|Mux10~0_combout\ & ( \U1|s_twi_reg2\(3) & ( (!\U2|r[4]~4_combout\ & (((\U2|r[4]~3_combout\ & 
-- \U2|Mux9~2_combout\)))) # (\U2|r[4]~4_combout\ & (((\U2|r[4]~3_combout\)) # (\U2|Mux9~1_combout\))) ) ) ) # ( \U2|Mux10~0_combout\ & ( !\U1|s_twi_reg2\(3) & ( (!\U2|r[4]~4_combout\ & (\U2|r[4]~3_combout\ & \U2|Mux9~2_combout\)) # (\U2|r[4]~4_combout\ & 
-- (!\U2|r[4]~3_combout\)) ) ) ) # ( !\U2|Mux10~0_combout\ & ( !\U1|s_twi_reg2\(3) & ( (!\U2|r[4]~4_combout\ & (((\U2|r[4]~3_combout\ & \U2|Mux9~2_combout\)))) # (\U2|r[4]~4_combout\ & (\U2|Mux9~1_combout\ & (!\U2|r[4]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010010100000101101000010101000111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_r[4]~4_combout\,
	datab => \U2|ALT_INV_Mux9~1_combout\,
	datac => \U2|ALT_INV_r[4]~3_combout\,
	datad => \U2|ALT_INV_Mux9~2_combout\,
	datae => \U2|ALT_INV_Mux10~0_combout\,
	dataf => \U1|ALT_INV_s_twi_reg2\(3),
	combout => \U2|Mux10~1_combout\);

-- Location: FF_X12_Y1_N31
\U2|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux10~1_combout\,
	ena => \U2|r[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(3));

-- Location: FF_X12_Y2_N19
\U3|r_TX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|r\(3),
	sload => VCC,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(3));

-- Location: FF_X13_Y1_N2
\U1|s_twi_reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(2));

-- Location: LABCELL_X13_Y1_N0
\rtl~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~25_combout\ = ( \U1|s_twi_reg2\(2) & ( \U2|r\(2) & ( ((\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S5~q\) # (\U1|curr_state.S4~DUPLICATE_q\)))) # (\U2|cpt\(4)) ) ) ) # ( !\U1|s_twi_reg2\(2) & ( \U2|r\(2) & ( \U2|cpt\(4) ) ) ) # ( \U1|s_twi_reg2\(2) & 
-- ( !\U2|r\(2) & ( (!\U2|cpt\(4) & (\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S5~q\) # (\U1|curr_state.S4~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100110000110011001100110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U1|ALT_INV_curr_state.S5~q\,
	datad => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datae => \U1|ALT_INV_s_twi_reg2\(2),
	dataf => \U2|ALT_INV_r\(2),
	combout => \rtl~25_combout\);

-- Location: LABCELL_X9_Y1_N54
\U1|s_sum_reg[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[2]~7_combout\ = !\U1|CS|Add4~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|CS|ALT_INV_Add4~29_sumout\,
	combout => \U1|s_sum_reg[2]~7_combout\);

-- Location: FF_X9_Y1_N56
\U1|s_sum_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[2]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(2));

-- Location: LABCELL_X13_Y1_N30
\rtl~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~16_combout\ = ( \U2|cpt\(4) & ( \U2|new_trame_int~q\ & ( (!\U2|cpt[1]~DUPLICATE_q\ & (\U1|s_sum_reg\(2) & ((\U1|curr_state.S4~DUPLICATE_q\) # (\U1|curr_state.S5~q\)))) ) ) ) # ( !\U2|cpt\(4) & ( \U2|new_trame_int~q\ & ( ((\U2|cpt[1]~DUPLICATE_q\ & 
-- \U1|curr_state.S4~DUPLICATE_q\)) # (\U1|curr_state.S5~q\) ) ) ) # ( \U2|cpt\(4) & ( !\U2|new_trame_int~q\ & ( (!\U2|cpt[1]~DUPLICATE_q\ & (\U1|s_sum_reg\(2) & ((\U1|curr_state.S4~DUPLICATE_q\) # (\U1|curr_state.S5~q\)))) ) ) ) # ( !\U2|cpt\(4) & ( 
-- !\U2|new_trame_int~q\ & ( (\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S4~DUPLICATE_q\) # (\U1|curr_state.S5~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000000000100110001010111010101110000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S5~q\,
	datab => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datac => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datad => \U1|ALT_INV_s_sum_reg\(2),
	datae => \U2|ALT_INV_cpt\(4),
	dataf => \U2|ALT_INV_new_trame_int~q\,
	combout => \rtl~16_combout\);

-- Location: LABCELL_X13_Y1_N3
\rtl~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~23_combout\ = ( \U1|s_twi_reg2\(17) & ( \U2|r\(2) & ( ((\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S5~q\) # (\U1|curr_state.S4~DUPLICATE_q\)))) # (\U2|cpt\(4)) ) ) ) # ( !\U1|s_twi_reg2\(17) & ( \U2|r\(2) & ( \U2|cpt\(4) ) ) ) # ( \U1|s_twi_reg2\(17) 
-- & ( !\U2|r\(2) & ( (!\U2|cpt\(4) & (\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S5~q\) # (\U1|curr_state.S4~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000110000110011001100110011011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datad => \U1|ALT_INV_curr_state.S5~q\,
	datae => \U1|ALT_INV_s_twi_reg2\(17),
	dataf => \U2|ALT_INV_r\(2),
	combout => \rtl~23_combout\);

-- Location: LABCELL_X13_Y1_N51
\rtl~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~24_combout\ = ( \U1|s_id_reg2\(1) & ( \U2|cpt\(4) & ( \U2|r\(2) ) ) ) # ( !\U1|s_id_reg2\(1) & ( \U2|cpt\(4) & ( \U2|r\(2) ) ) ) # ( \U1|s_id_reg2\(1) & ( !\U2|cpt\(4) & ( (\U2|cpt[1]~DUPLICATE_q\ & ((\U1|curr_state.S5~q\) # 
-- (\U1|curr_state.S4~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	datab => \U2|ALT_INV_r\(2),
	datac => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datad => \U1|ALT_INV_curr_state.S5~q\,
	datae => \U1|ALT_INV_s_id_reg2\(1),
	dataf => \U2|ALT_INV_cpt\(4),
	combout => \rtl~24_combout\);

-- Location: LABCELL_X13_Y1_N18
\U2|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux11~1_combout\ = ( \rtl~23_combout\ & ( \rtl~24_combout\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (((\rtl~16_combout\)) # (\U2|cpt[3]~DUPLICATE_q\))) # (\U2|cpt[2]~DUPLICATE_q\ & ((!\U2|cpt[3]~DUPLICATE_q\) # ((\rtl~25_combout\)))) ) ) ) # ( 
-- !\rtl~23_combout\ & ( \rtl~24_combout\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & (!\U2|cpt[3]~DUPLICATE_q\ & ((\rtl~16_combout\)))) # (\U2|cpt[2]~DUPLICATE_q\ & ((!\U2|cpt[3]~DUPLICATE_q\) # ((\rtl~25_combout\)))) ) ) ) # ( \rtl~23_combout\ & ( !\rtl~24_combout\ & 
-- ( (!\U2|cpt[2]~DUPLICATE_q\ & (((\rtl~16_combout\)) # (\U2|cpt[3]~DUPLICATE_q\))) # (\U2|cpt[2]~DUPLICATE_q\ & (\U2|cpt[3]~DUPLICATE_q\ & (\rtl~25_combout\))) ) ) ) # ( !\rtl~23_combout\ & ( !\rtl~24_combout\ & ( (!\U2|cpt[2]~DUPLICATE_q\ & 
-- (!\U2|cpt[3]~DUPLICATE_q\ & ((\rtl~16_combout\)))) # (\U2|cpt[2]~DUPLICATE_q\ & (\U2|cpt[3]~DUPLICATE_q\ & (\rtl~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datac => \ALT_INV_rtl~25_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	datae => \ALT_INV_rtl~23_combout\,
	dataf => \ALT_INV_rtl~24_combout\,
	combout => \U2|Mux11~1_combout\);

-- Location: LABCELL_X13_Y1_N15
\U2|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux11~2_combout\ = ( \U2|r\(2) & ( \U2|Mux11~1_combout\ & ( (!\U2|cpt\(0)) # (\U2|Mux11~0_combout\) ) ) ) # ( !\U2|r\(2) & ( \U2|Mux11~1_combout\ & ( !\U2|cpt\(0) ) ) ) # ( \U2|r\(2) & ( !\U2|Mux11~1_combout\ & ( \U2|Mux11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux11~0_combout\,
	datad => \U2|ALT_INV_cpt\(0),
	datae => \U2|ALT_INV_r\(2),
	dataf => \U2|ALT_INV_Mux11~1_combout\,
	combout => \U2|Mux11~2_combout\);

-- Location: FF_X13_Y1_N17
\U2|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux11~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(2));

-- Location: FF_X12_Y2_N53
\U3|r_TX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U2|r\(2),
	sload => VCC,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(2));

-- Location: FF_X10_Y1_N4
\U1|s_twi_reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(0));

-- Location: FF_X10_Y1_N52
\U1|s_twi_reg2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(8));

-- Location: LABCELL_X11_Y1_N3
\U2|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux13~3_combout\ = ( \U2|cpt[2]~DUPLICATE_q\ & ( \U1|s_twi_reg2\(8) & ( (!\U2|cpt\(4) & (((!\U2|cpt\(1)) # (\U1|s_twi_reg2\(0))))) # (\U2|cpt\(4) & (\U2|r\(0))) ) ) ) # ( !\U2|cpt[2]~DUPLICATE_q\ & ( \U1|s_twi_reg2\(8) & ( (!\U2|cpt\(4)) # (\U2|r\(0)) 
-- ) ) ) # ( \U2|cpt[2]~DUPLICATE_q\ & ( !\U1|s_twi_reg2\(8) & ( (!\U2|cpt\(4) & (((\U1|s_twi_reg2\(0) & \U2|cpt\(1))))) # (\U2|cpt\(4) & (\U2|r\(0))) ) ) ) # ( !\U2|cpt[2]~DUPLICATE_q\ & ( !\U1|s_twi_reg2\(8) & ( (!\U2|cpt\(4)) # (\U2|r\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000000110101010111111111010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_r\(0),
	datab => \U1|ALT_INV_s_twi_reg2\(0),
	datac => \U2|ALT_INV_cpt\(1),
	datad => \U2|ALT_INV_cpt\(4),
	datae => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	dataf => \U1|ALT_INV_s_twi_reg2\(8),
	combout => \U2|Mux13~3_combout\);

-- Location: LABCELL_X11_Y1_N57
\U2|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux13~1_combout\ = ( \U1|curr_state.S5~DUPLICATE_q\ & ( \U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & ((!\U2|cpt\(1)) # ((!\U2|cpt\(4))))) # (\U2|cpt[3]~DUPLICATE_q\ & (((!\U2|cpt\(1) & \U1|s_id_reg2\(1))) # (\U2|cpt\(4)))) ) ) ) # ( 
-- !\U1|curr_state.S5~DUPLICATE_q\ & ( \U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & (!\U2|cpt\(1) $ (((!\U2|cpt\(4)))))) # (\U2|cpt[3]~DUPLICATE_q\ & (((!\U2|cpt\(1) & \U1|s_id_reg2\(1))) # (\U2|cpt\(4)))) ) ) ) # ( 
-- \U1|curr_state.S5~DUPLICATE_q\ & ( !\U1|curr_state.S4~DUPLICATE_q\ & ( (!\U2|cpt[3]~DUPLICATE_q\ & ((!\U2|cpt\(1)) # ((!\U2|cpt\(4))))) # (\U2|cpt[3]~DUPLICATE_q\ & (((!\U2|cpt\(1) & \U1|s_id_reg2\(1))) # (\U2|cpt\(4)))) ) ) ) # ( 
-- !\U1|curr_state.S5~DUPLICATE_q\ & ( !\U1|curr_state.S4~DUPLICATE_q\ & ( (\U2|cpt[3]~DUPLICATE_q\ & \U2|cpt\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101011101101110100100110110111011010111011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datab => \U2|ALT_INV_cpt\(1),
	datac => \U1|ALT_INV_s_id_reg2\(1),
	datad => \U2|ALT_INV_cpt\(4),
	datae => \U1|ALT_INV_curr_state.S5~DUPLICATE_q\,
	dataf => \U1|ALT_INV_curr_state.S4~DUPLICATE_q\,
	combout => \U2|Mux13~1_combout\);

-- Location: LABCELL_X10_Y1_N0
\U1|s_sum_reg[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[0]~6_combout\ = ( !\U1|CS|Add4~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U1|CS|ALT_INV_Add4~25_sumout\,
	combout => \U1|s_sum_reg[0]~6_combout\);

-- Location: FF_X10_Y1_N2
\U1|s_sum_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[0]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(0));

-- Location: LABCELL_X10_Y1_N12
\U2|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux13~2_combout\ = ( \U2|cpt\(4) & ( \U2|cpt\(1) & ( (\U1|s_sum_reg\(0) & !\U2|cpt[2]~DUPLICATE_q\) ) ) ) # ( !\U2|cpt\(4) & ( \U2|cpt\(1) & ( (!\U2|cpt[2]~DUPLICATE_q\) # (\U1|s_id_reg2\(1)) ) ) ) # ( \U2|cpt\(4) & ( !\U2|cpt\(1) & ( 
-- (\U1|s_sum_reg\(0) & !\U2|cpt[2]~DUPLICATE_q\) ) ) ) # ( !\U2|cpt\(4) & ( !\U2|cpt\(1) & ( (!\U2|cpt[2]~DUPLICATE_q\ & \U2|new_trame_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100000101000011110011111100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_s_sum_reg\(0),
	datab => \U1|ALT_INV_s_id_reg2\(1),
	datac => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_new_trame_int~q\,
	datae => \U2|ALT_INV_cpt\(4),
	dataf => \U2|ALT_INV_cpt\(1),
	combout => \U2|Mux13~2_combout\);

-- Location: LABCELL_X11_Y1_N12
\U2|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux13~4_combout\ = ( !\U2|cpt\(3) & ( (!\U2|Mux13~2_combout\ & (\U2|Mux13~3_combout\ & (\U2|cpt[2]~DUPLICATE_q\ & ((\U2|cpt\(4)))))) # (\U2|Mux13~2_combout\ & (((\U2|Mux13~3_combout\ & (\U2|cpt[2]~DUPLICATE_q\ & \U2|cpt\(4)))) # 
-- (\U2|Mux13~1_combout\))) ) ) # ( \U2|cpt\(3) & ( (\U2|Mux13~3_combout\ & ((!\U2|cpt[2]~DUPLICATE_q\ & (((\U2|Mux13~1_combout\)))) # (\U2|cpt[2]~DUPLICATE_q\ & ((!\U2|cpt\(4) & (\U1|trametop~0_combout\)) # (\U2|cpt\(4) & ((\U2|Mux13~1_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000010100010100010001000111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux13~3_combout\,
	datab => \U2|ALT_INV_cpt[2]~DUPLICATE_q\,
	datac => \U1|ALT_INV_trametop~0_combout\,
	datad => \U2|ALT_INV_Mux13~1_combout\,
	datae => \U2|ALT_INV_cpt\(3),
	dataf => \U2|ALT_INV_cpt\(4),
	datag => \U2|ALT_INV_Mux13~2_combout\,
	combout => \U2|Mux13~4_combout\);

-- Location: LABCELL_X11_Y1_N27
\U2|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux13~0_combout\ = ( \U2|Mux13~4_combout\ & ( (!\U2|cpt\(0)) # ((\U2|Mux11~0_combout\ & \U2|r\(0))) ) ) # ( !\U2|Mux13~4_combout\ & ( (\U2|Mux11~0_combout\ & \U2|r\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(0),
	datac => \U2|ALT_INV_Mux11~0_combout\,
	datad => \U2|ALT_INV_r\(0),
	dataf => \U2|ALT_INV_Mux13~4_combout\,
	combout => \U2|Mux13~0_combout\);

-- Location: FF_X11_Y1_N29
\U2|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux13~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(0));

-- Location: LABCELL_X12_Y2_N57
\U3|r_TX_Data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|r_TX_Data[0]~feeder_combout\ = ( \U2|r\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_r\(0),
	combout => \U3|r_TX_Data[0]~feeder_combout\);

-- Location: FF_X12_Y2_N59
\U3|r_TX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|r_TX_Data[0]~feeder_combout\,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(0));

-- Location: LABCELL_X12_Y2_N18
\U3|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux0~4_combout\ = ( !\U3|r_Bit_Index\(1) & ( ((!\U3|r_Bit_Index\(2) & ((!\U3|r_Bit_Index\(0) & ((\U3|r_TX_Data\(0)))) # (\U3|r_Bit_Index\(0) & (\U3|r_TX_Data\(1))))) # (\U3|r_Bit_Index\(2) & (((\U3|r_Bit_Index\(0)))))) ) ) # ( \U3|r_Bit_Index\(1) & ( 
-- ((!\U3|r_Bit_Index\(2) & ((!\U3|r_Bit_Index\(0) & ((\U3|r_TX_Data\(2)))) # (\U3|r_Bit_Index\(0) & (\U3|r_TX_Data\(3))))) # (\U3|r_Bit_Index\(2) & (((\U3|r_Bit_Index\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_TX_Data\(1),
	datab => \U3|ALT_INV_r_TX_Data\(3),
	datac => \U3|ALT_INV_r_TX_Data\(2),
	datad => \U3|ALT_INV_r_Bit_Index\(2),
	datae => \U3|ALT_INV_r_Bit_Index\(1),
	dataf => \U3|ALT_INV_r_Bit_Index\(0),
	datag => \U3|ALT_INV_r_TX_Data\(0),
	combout => \U3|Mux0~4_combout\);

-- Location: LABCELL_X9_Y1_N57
\U1|s_sum_reg[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s_sum_reg[4]~2_combout\ = ( !\U1|CS|Add4~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|CS|ALT_INV_Add4~9_sumout\,
	combout => \U1|s_sum_reg[4]~2_combout\);

-- Location: FF_X9_Y1_N59
\U1|s_sum_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|s_sum_reg[4]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_sum_reg\(4));

-- Location: LABCELL_X12_Y1_N54
\U2|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux9~0_combout\ = ( \U1|trametop~0_combout\ & ( \U1|s_sum_reg\(4) & ( (!\U2|cpt[3]~DUPLICATE_q\ & (!\U2|cpt\(0) & (!\U2|cpt\(4) $ (!\U2|cpt[1]~DUPLICATE_q\)))) # (\U2|cpt[3]~DUPLICATE_q\ & (((\U2|cpt[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- \U1|trametop~0_combout\ & ( !\U1|s_sum_reg\(4) & ( (\U2|cpt[1]~DUPLICATE_q\ & (((!\U2|cpt\(0) & !\U2|cpt\(4))) # (\U2|cpt[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000111100000000000000000010000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_cpt\(0),
	datab => \U2|ALT_INV_cpt\(4),
	datac => \U2|ALT_INV_cpt[3]~DUPLICATE_q\,
	datad => \U2|ALT_INV_cpt[1]~DUPLICATE_q\,
	datae => \U1|ALT_INV_trametop~0_combout\,
	dataf => \U1|ALT_INV_s_sum_reg\(4),
	combout => \U2|Mux9~0_combout\);

-- Location: FF_X12_Y1_N14
\U1|s_twi_reg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U1|s_mvt_reg\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_twi_reg2\(4));

-- Location: LABCELL_X12_Y1_N33
\U2|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux9~3_combout\ = ( \U2|Mux9~0_combout\ & ( \U1|s_twi_reg2\(4) & ( ((\U2|Mux9~2_combout\ & \U2|r[4]~3_combout\)) # (\U2|r[4]~4_combout\) ) ) ) # ( !\U2|Mux9~0_combout\ & ( \U1|s_twi_reg2\(4) & ( (!\U2|r[4]~4_combout\ & (((\U2|Mux9~2_combout\ & 
-- \U2|r[4]~3_combout\)))) # (\U2|r[4]~4_combout\ & (((\U2|r[4]~3_combout\)) # (\U2|Mux9~1_combout\))) ) ) ) # ( \U2|Mux9~0_combout\ & ( !\U1|s_twi_reg2\(4) & ( (!\U2|r[4]~4_combout\ & (\U2|Mux9~2_combout\ & \U2|r[4]~3_combout\)) # (\U2|r[4]~4_combout\ & 
-- ((!\U2|r[4]~3_combout\))) ) ) ) # ( !\U2|Mux9~0_combout\ & ( !\U1|s_twi_reg2\(4) & ( (!\U2|r[4]~4_combout\ & (((\U2|Mux9~2_combout\ & \U2|r[4]~3_combout\)))) # (\U2|r[4]~4_combout\ & (\U2|Mux9~1_combout\ & ((!\U2|r[4]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010010101010000101000010001010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_r[4]~4_combout\,
	datab => \U2|ALT_INV_Mux9~1_combout\,
	datac => \U2|ALT_INV_Mux9~2_combout\,
	datad => \U2|ALT_INV_r[4]~3_combout\,
	datae => \U2|ALT_INV_Mux9~0_combout\,
	dataf => \U1|ALT_INV_s_twi_reg2\(4),
	combout => \U2|Mux9~3_combout\);

-- Location: FF_X12_Y1_N35
\U2|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U2|Mux9~3_combout\,
	ena => \U2|r[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r\(4));

-- Location: LABCELL_X12_Y2_N54
\U3|r_TX_Data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|r_TX_Data[4]~feeder_combout\ = \U2|r\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_r\(4),
	combout => \U3|r_TX_Data[4]~feeder_combout\);

-- Location: FF_X12_Y2_N56
\U3|r_TX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|r_TX_Data[4]~feeder_combout\,
	ena => \U3|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|r_TX_Data\(4));

-- Location: LABCELL_X12_Y2_N24
\U3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = ( !\U3|r_Bit_Index\(1) & ( ((!\U3|r_Bit_Index\(2) & (((\U3|Mux0~4_combout\)))) # (\U3|r_Bit_Index\(2) & ((!\U3|Mux0~4_combout\ & (\U3|r_TX_Data\(4))) # (\U3|Mux0~4_combout\ & ((\U3|r_TX_Data\(5))))))) ) ) # ( \U3|r_Bit_Index\(1) & ( 
-- (!\U3|r_Bit_Index\(2) & ((((\U3|Mux0~4_combout\))))) # (\U3|r_Bit_Index\(2) & (((!\U3|Mux0~4_combout\ & ((\U3|r_TX_Data\(6)))) # (\U3|Mux0~4_combout\ & (\U3|r_TX_Data\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_r_TX_Data\(7),
	datab => \U3|ALT_INV_r_Bit_Index\(2),
	datac => \U3|ALT_INV_r_TX_Data\(6),
	datad => \U3|ALT_INV_r_TX_Data\(5),
	datae => \U3|ALT_INV_r_Bit_Index\(1),
	dataf => \U3|ALT_INV_Mux0~4_combout\,
	datag => \U3|ALT_INV_r_TX_Data\(4),
	combout => \U3|Mux0~0_combout\);

-- Location: LABCELL_X12_Y2_N6
\U3|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector1~0_combout\ = ( \U3|o_TX_Serial~q\ & ( \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( ((!\U3|r_SM_Main.s_Idle~q\) # ((\U3|r_SM_Main.s_TX_Stop_Bit~q\) # (\U3|r_SM_Main.s_Cleanup~q\))) # (\U3|Mux0~0_combout\) ) ) ) # ( !\U3|o_TX_Serial~q\ & ( 
-- \U3|r_SM_Main.s_TX_Data_Bits~q\ & ( ((!\U3|r_SM_Main.s_Idle~q\) # (\U3|r_SM_Main.s_TX_Stop_Bit~q\)) # (\U3|Mux0~0_combout\) ) ) ) # ( \U3|o_TX_Serial~q\ & ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( (!\U3|r_SM_Main.s_Idle~q\) # 
-- ((\U3|r_SM_Main.s_TX_Stop_Bit~q\) # (\U3|r_SM_Main.s_Cleanup~q\)) ) ) ) # ( !\U3|o_TX_Serial~q\ & ( !\U3|r_SM_Main.s_TX_Data_Bits~q\ & ( (!\U3|r_SM_Main.s_Idle~q\) # (\U3|r_SM_Main.s_TX_Stop_Bit~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011111111111111011101111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux0~0_combout\,
	datab => \U3|ALT_INV_r_SM_Main.s_Idle~q\,
	datac => \U3|ALT_INV_r_SM_Main.s_Cleanup~q\,
	datad => \U3|ALT_INV_r_SM_Main.s_TX_Stop_Bit~q\,
	datae => \U3|ALT_INV_o_TX_Serial~q\,
	dataf => \U3|ALT_INV_r_SM_Main.s_TX_Data_Bits~q\,
	combout => \U3|Selector1~0_combout\);

-- Location: FF_X12_Y2_N7
\U3|o_TX_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U3|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|o_TX_Serial~q\);

-- Location: MLABCELL_X39_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


