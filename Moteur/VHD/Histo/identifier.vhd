

--identifier

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

-- prend en entrée les coordonnées et donne l'id correspondant du dynamixel pour un mvt vertical et un horizontal

entity identifier is
	port (oh	:	in	STD_LOGIC_VECTOR(15 downto 0);	--,ov
	--switch_id			:	in	STD_LOGIC;
	id		:	out	STD_LOGIC_VECTOR(7 downto 0);	--1bit p-ê nécessaire
	mvt		:	out	STD_LOGIC_VECTOR(15 downto 0));
end identifier;

architecture id of identifier is

begin			-- pour l'instant sort OxFE + la trame à compléter

-- plus tard nécessitera un test pour donner le bon id

	--id <= "11111110"; 0xFE BroadCast

	--process
	--begin
	--if(switch_id = '0')
	--then
		--id <= "00000001";
	--else
	  id <= "00000010";
	--end if;
	--end process;

	mvt <= oh;


end id;

--Broadcast ID : OxFE
