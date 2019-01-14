--https://www.doulos.com/knowhow/vhdl_designers_guide/an_example_design_entity/

--checksum calculator

library IEEE;		--à nettoyer en test unitaire à la fin
        use IEEE.std_logic_1164.all;
        use IEEE.std_logic_textio.all;
        use IEEE.numeric_std.all;
        use IEEE.std_logic_signed.all;
        use IEEE.std_logic_unsigned.all;
        use IEEE.math_real.all;
        use IEEE.math_complex.all;

library STD;
        use STD.textio;

--checksum = not(id + length + instruction + param 1 + ... + param n)


-- pour tester : faire un bench avec 2 variables de 3/4 bits
-- 0100 or 1001 => 1101			not(1101) => 0010
-- 01101011 or 11011011 => 


entity checksum is
port (	id, len, ins, p1	:	in	STD_LOGIC_VECTOR(7 downto 0); --UNSIGNED POUR ADDITION
	mvt	:	in	STD_LOGIC_VECTOR(15 downto 0);
	sum	:	out	STD_LOGIC_VECTOR(7 downto 0));
end checksum;


	--signal sum2	:	UNSIGNED(7 downto 0);


architecture S of checksum is
begin

	sum <= not(STD_LOGIC_VECTOR( unsigned(id) + unsigned(len) + unsigned(ins) + unsigned(p1) + unsigned(mvt(15 downto 8)) + unsigned(mvt(7 downto 0)) ));
--sum <="11011100";--0x"DC";
	--sum <= not(id or len or ins or p1 or p2 or p3); -- l'instruction mouvement requiert 2 octets en param

end S;
