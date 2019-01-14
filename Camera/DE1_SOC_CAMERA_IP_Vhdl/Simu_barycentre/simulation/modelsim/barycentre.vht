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
-- Generated on "12/11/2018 09:54:34"
                                                            
-- Vhdl Test Bench template for design  :  barycentre
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use IEEE.numeric_std.all;

ENTITY barycentre_vhd_tst IS
END barycentre_vhd_tst;
ARCHITECTURE barycentre_arch OF barycentre_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_bary : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b_bary_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL g_bary : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL g_bary_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IMG : STD_LOGIC:='0';
SIGNAL r_bary : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r_bary_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL VGA_CLK : STD_LOGIC:='0';
SIGNAL X_Cont : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Y_Cont : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT barycentre
	PORT (
	b_bary : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b_bary_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	g_bary : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	g_bary_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IMG : IN STD_LOGIC;
	r_bary : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	r_bary_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	VGA_CLK : IN STD_LOGIC;
	X_Cont : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Y_Cont : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : barycentre
	PORT MAP (
-- list connections between master ports and signals
	b_bary => b_bary,
	b_bary_out => b_bary_out,
	g_bary => g_bary,
	g_bary_out => g_bary_out,
	IMG => IMG,
	r_bary => r_bary,
	r_bary_out => r_bary_out,
	reset => reset,
	VGA_CLK => VGA_CLK,
	X_Cont => X_Cont,
	Y_Cont => Y_Cont
	);

VGA_CLK<=not VGA_CLK after 20 ns;
reset<='0', '1' after 80 ns;
               
	process	
	begin
	wait until VGA_CLK'event and VGA_CLK ='1' ;
		for i in 1 to 479 loop
				for j in 1 to 512 loop
					
					if j=512 or i =479 then
					IMG <= '0';
					else IMG <= '1';
					end if;

					X_Cont <= std_logic_vector(to_unsigned(j, 9));
					Y_Cont <= std_logic_vector(to_unsigned(i, 9));
					if (X_Cont < "100000000") then
						r_bary <= x"FF";
						g_bary <= x"FF";
						b_bary <= x"FF";
					else 
						r_bary <=  x"00";
						g_bary <=  x"00";
						b_bary <=  x"00";
					end if;		

					wait until VGA_CLK'event and VGA_CLK ='1' ;					
				end loop;
		end loop;

	end process;
          
END barycentre_arch;
