--Mode Switch test bench

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

library lib_trame;
	use lib_trame.all;



entity bench_MS is
end bench_MS;

architecture bMS of bench_MS is

	component mode_switch									--DECLARATION
		port(	x	:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
		h	:	in	STD_LOGIC;		--,v
		mode	:	in	STD_LOGIC;
		clk,rst	:	in	STD_LOGIC;
		oh	:	out	STD_LOGIC_VECTOR(15 downto 0));		--,ov
	end component mode_switch;

	signal x			:	STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
	signal h, mode, rst		:	STD_LOGIC := '0';
	signal clk			:	STD_LOGIC := '0';
	signal oh			:	STD_LOGIC_VECTOR(15 downto 0);

begin

dut : mode_switch port map(									--INSTANCIATION
	x => x,
	h => h,
	mode => mode,
	clk => clk,
	rst => rst,
	oh => oh
	);


clk <= not (clk) after 20 ns;
rst <= '1', '0' after 50 ns;	--pdt rst -> oh = 0000100000000000


stimuli : process
begin

---------------------------------------------------------------------------------
--	DEBUT : MODE = 1	h = 0		=>	oh = 0000010101010011

mode <= '1';
h <= '0';

wait for 100 ns;

--	FIN : MODE = 1	h = 0
---------------------------------------------------------------------------------



---------------------------------------------------------------------------------
--	DEBUT : MODE = 1	h = 1		=>	oh = 0000101010100111

mode <= '1';
h <= '1';

wait for 100 ns;

--	FIN : MODE = 1	h = 0
---------------------------------------------------------------------------------


end process;

end bMS;
