--mode_switch

--> mets les mouvements sur 2 octets & permet une manipulation par interrupteurs

library IEEE;	--à nettoyer en test unitaire à la fin
        use IEEE.std_logic_1164.all;
        use IEEE.std_logic_textio.all;
        use IEEE.std_logic_arith.all;
        use IEEE.numeric_bit.all;
        use IEEE.numeric_std.all;
        use IEEE.std_logic_signed.all;
        use IEEE.std_logic_unsigned.all;
        use IEEE.math_real.all;
        use IEEE.math_complex.all;

library STD;
        use STD.textio;



entity mode_switch is
port(	x	:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
	h	:	in	STD_LOGIC;		--,v
	mode	:	in	STD_LOGIC;
	active_rot : out	STD_LOGIC;
	oh	:	out	STD_LOGIC_VECTOR(15 downto 0));		--,ov
end mode_switch;

architecture MS of mode_switch is

	--signal nxt_oh	: STD_LOGIC_VECTOR(15 downto 0)) := "0000100000000000";

begin
process(mode, h, x)
begin

	if (mode = '0') then		--mode de fonctionnement qui prend les entrées du cpu

		oh <= "000000" & x;
			--ov <= "000000" & y;

	elsif (mode = '1') then		--mode de fct pour validation (usage manuel -> a relier aux boutons du fpga)
	
		if (h = '0') then --faire un bouton torque + un bouton avec 2 positions
			--comme ça on pourra : avec torque (bool) autoriser ou non le déplacement (hors de mode = 1)
			--eventuellement écrire dans le torque dans le reset
			--avec h on met 2 valeurs qui permettent de bouger de gauche à droite
			
			
			active_rot<='1';
			--oh <= "0000000100000001";--test ex16
			oh <= "0000000000001000";--180°
			--active_rot<='1';
			--oh <= "0000010101010011"; --bras horizontal à 120°
			
		else 
			--oh <= "0000101010100111"; --bras horizontal à 240°
			active_rot<='0';
			oh <= "0000000000000000";--test ex16
			
		end if;

--		if (v = 0) then
--			ov <= "0000010101010011"; --bras vertical à 120°
--		elsif (v = 1) then
--			ov <= "0000101010100111"; --bras vertical à 240°
--		end if;

	else 
		oh <= "0000100000000000";
		--ov <= "0000100000000000";

	end if;

end process;
end MS;





