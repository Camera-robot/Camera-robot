--sets the instruction and the address to write it

library IEEE;		--à nettoyer en test unitaire à la fin
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

entity instruction is		-- post id
	port(trame_wo_instru	:	in	STD_LOGIC_VECTOR(15 downto 0);
	active_rot: in STD_LOGIC;
	trame_w_instru		:	out	STD_LOGIC_VECTOR(39 downto 0);	--3 octets de plus
	len, ins, adr		:	out	STD_LOGIC_VECTOR(7 downto 0));
end instruction;

architecture I of instruction is

	--signal s_len : STD_LOGIC_VECTOR(7 downto 0) := "00000101";	--longueur : 0x05
	--signal s_ins : STD_LOGIC_VECTOR(7 downto 0) := "00000011";	--instruction : 0x03
	--signal s_adr : STD_LOGIC_VECTOR(7 downto 0) := "00011110";	--adresse ecriture : 0x1E		-> Goal Position

---TEST TRAME ex16 doc
	signal s_len : STD_LOGIC_VECTOR(7 downto 0) := "00000101";	--longueur : 0x05
	signal s_ins : STD_LOGIC_VECTOR(7 downto 0) := "00000011";	--instruction : 0x03
	signal s_adr : STD_LOGIC_VECTOR(7 downto 0) := "00011000";	--adresse ecriture : 0x18		-> Goal Position

begin
process (active_rot)
begin
if active_rot='1' then
	s_adr <= "00011110";--0x1E
else
	s_adr <= "00011000";
end if;	
trame_w_instru <= s_len & s_ins & s_adr & trame_wo_instru; --length instruc addr
end process;

	
	len <= s_len;
	ins <= s_ins;
	adr <= s_adr;

end I;

--en sortie, la trame est longueur + instruction + adresse + param
