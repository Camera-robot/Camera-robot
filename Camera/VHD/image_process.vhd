--Bloc permettant de traiter une image 512*512
--en noir et blanc selon un seuillage que sur le niveau de vert

library ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;

use ieee.math_real.all;


entity image_process is
	

	port 
	(
		IMG	   : in std_logic;
		reset    : in std_logic;
		SW1    : in std_logic;		
		VGA_HS	   : in std_logic;
		VGA_VS	   : in std_logic;
		VGA_CLK	   : in std_logic;
		X_Cont   : in std_logic_vector(8 downto 0);
		Y_Cont   : in std_logic_vector(8 downto 0);  -- image 512 x 512
		r	   : in std_logic_vector(7 downto 0);
		g	   : in std_logic_vector(7 downto 0);
		b	   : in std_logic_vector(7 downto 0);
		r_out	: out std_logic_vector(7 downto 0);
		g_out	: out std_logic_vector(7 downto 0);
		b_out	: out std_logic_vector(7 downto 0)
		
	);

end entity;

architecture rtl of image_process is
type gen_states is (S0,S1);--machine 2 etats

signal   ri,gi,bi,nri,ngi,nbi 	: std_logic_vector(7 downto 0);
signal   state,next_state : gen_states;



begin

clk:process(VGA_CLK)
begin 
  if (VGA_CLK'event and VGA_CLK ='1') then	
    if (reset='0') then --si reset alors image noir
	  ri <= x"00"; gi <= x"00"; bi <= x"00";
	  state <= S0;
	  else
	     ri <= r; gi <= g; bi <= b;
		  for t in 0 to 7 loop		 
		  r_out(t) <= (nri(t) and IMG); g_out(t) <= (ngi(t) and IMG); b_out(t) <= (nbi(t) and IMG);
		  end loop;
		  state <= next_state; 
	  end if;
	end if;
end process clk;	
	   
gen:process(ri,gi,bi,X_Cont,Y_Cont,IMG,state,SW1)
begin
  nri <= ri; ngi <= gi;  nbi <= bi;

  case state is
  
    when S0 =>
	  next_state <= S1;
	  nri <= x"00"; ngi <= x"00";  nbi <= x"00";
   
   when S1 =>
	  next_state <= S1;

	if(SW1 = '1') then--si on traite l'image (choix utilisateur via switch)
		if((gi<x"6E")) then --<110 en noir sinon blanc
				nri<=x"00";
				ngi<=x"00";
				nbi<=x"00";
				else 
				nri <= x"FF";
				ngi <= x"FF";
				nbi <= x"FF";
		end if;
	else
	nri <= ri; ngi <= gi;  nbi <= bi;
	end if; 
 end case;
 
end process gen;
		
end rtl;
