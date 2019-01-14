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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/01/2016 10:07:56"
                                                            
-- Vhdl Test Bench template for design  :  PWM_cycle
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PWM_cycle_vhd_tst IS
END PWM_cycle_vhd_tst;
ARCHITECTURE PWM_cycle_arch OF PWM_cycle_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC:='0';
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL pwm_high : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwm_number_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PWMout : STD_LOGIC;
SIGNAL Rst : STD_LOGIC;
SIGNAL tempo_flag : STD_LOGIC;
COMPONENT PWM_cycle
	PORT (
	Clk : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	pwm_high : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwm_number_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PWMout : OUT STD_LOGIC;
	Rst : IN STD_LOGIC;
	tempo_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PWM_cycle
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	CLOCK_50 => CLOCK_50,
	pwm_high => pwm_high,
	pwm_number_out => pwm_number_out,
	PWMout => PWMout,
	Rst => Rst,
	tempo_flag => tempo_flag
	);  

	
	CLOCK_50 <= not(CLOCK_50) after 10 ns; -- horloge à 50MHz
	
	Clk <= not(Clk) after 500 ns; -- horloge à 1MHz

   Rst <=        '0',
                   '1' after 40 ns ;
						 
	pwm_high <= "00000011";				
	
	                                      
END PWM_cycle_arch;
