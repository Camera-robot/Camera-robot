--checksum testbench

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

library lib_trame;
	use lib_trame.all;

entity bench_CSum is
end bench_CSum;

architecture bCS of bench_CSum is

	component checksum													--DECLARATION
		port (	id, len, ins, p1	:	in	STD_LOGIC_VECTOR(7 downto 0);
		mvt	:	in	STD_LOGIC_VECTOR(15 downto 0);
		sum	:	out	STD_LOGIC_VECTOR(7 downto 0));
	end component checksum;


	signal id, len, ins, p1, sum	:	STD_LOGIC_VECTOR(7 downto 0):= "00000000";
	signal mvt	:	STD_LOGIC_VECTOR(15 downto 0):= "0000000000000000";

begin
																--INSTANCIATION
dut : checksum port map (id => id,
	len => len,
	ins => ins,
	p1 => p1,
	p2 => p2,
	p3 => p3,
	sum => sum
	);

calculs : process
begin

-----------------------------------------------------------------------------------------------------------------------------------------------------
--	DEBUT :	ID = 	Len = 	Instruction = 	Param1 = 	Param2 = 	Param3 = 	=> expected	sum = 

id <= "00000000";
len <= "00000000";
ins <= "00000000";
p1 <= "00000000";
mvt <="0000000000000000";

wait for 100 ns;

--	FIN :	ID = 	Len = 	Instruction = 	Param1 = 	Param2 = 	Param3 = 	=> obtained	sum = 
-----------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------------
--	DEBUT :	ID = 0x01	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x00	Param3 = 0x08	=> expected	sum = 

id <= "00000001";
len <= "00000101";
ins <= "00000011";
p1 <= "00011110";
mvt <= "0000000000001000";

wait for 100 ns;

--	FIN :	ID = 0x01	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x00	Param3 = 0x08	=> obtained	sum = 0xE0
-----------------------------------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------------------------------------
--	DEBUT :	ID = 0x02	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x00	Param3 = 0x08	=> expected	sum = 

id <= "00000010";
len <= "00000101";
ins <= "00000011";
p1 <= "00011110";
mvt <= "0000000000001000";

wait for 100 ns;

--	FIN :	ID = 0x02	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x00	Param3 = 0x08	=> obtained	sum = 0xE0
-----------------------------------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------------------------------------
--	DEBUT :	ID = 0xFE	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x00	Param3 = 0x08	=> expected	sum = 

id <= "11111110";
len <= "00000101";
ins <= "00000011";
p1 <= "00011110";
mvt <= "0000000000001000";

wait for 100 ns;

--	FIN :	ID = 0xFE	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x00	Param3 = 0x08	=> obtained	sum = 0x00
-----------------------------------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------------------------------------
--	DEBUT :	ID = 0x01	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x53	Param3 = 0x05	=> expected	sum = 

id <= "00000001";
len <= "00000101";
ins <= "00000011";
p1 <= "00011110";
mvt <= "0000000000001000";

wait for 100 ns;

--	FIN :	ID = 0x01	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0x53	Param3 = 0x05	=> obtained	sum = 
-----------------------------------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------------------------------------
--	DEBUT :	ID = 0x01	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0xA7	Param3 = 0x0A	=> expected	sum = 

id <= "00000001";
len <= "00000101";
ins <= "00000011";
p1 <= "00011110";
mvt <= "0000000000001000";

wait for 100 ns;

--	FIN :	ID = 0x01	Len = 0x05	Instruction = 0x03	Param1 = 0x1E	Param2 = 0xA7	Param3 = 0x0A	=> obtained	sum = 
-----------------------------------------------------------------------------------------------------------------------------------------------------


end process;

end bCS;
