library IEEE;
	use IEEE.std_logic_1164.all;
        use IEEE.std_logic_textio.all;
        use IEEE.numeric_std.all;


library lib_trame;
use lib_trame.all;

entity bench_72_to_serial is

end bench_72_to_serial;


architecture test_top_72_to_serial of bench_72_to_serial is

	component top_72_to_serial is
port(	clk	:	in	STD_LOGIC;
	rst	:	in	STD_LOGIC;
	xin     :	in	STD_LOGIC_VECTOR(9 downto 0);
	htop	:	in	STD_LOGIC;
	modetop	:	in	STD_LOGIC;
	LedR	:	out	STD_LOGIC;
	serial_out : 	out	STD_LOGIC
	);
end component top_72_to_serial;



 signal s_clk : std_logic:='0';
 signal s_rst : std_logic:='1';
 signal trame_int : std_logic_vector (9 downto 0);
 signal serial_int : std_logic:='0';
 signal LedR_int : std_logic:='0';
 signal new_trame_out_int : std_logic:='0';
 signal s_htop : STD_LOGIC;
 signal s_modetop : STD_LOGIC;

begin 
	U1 : top_72_to_serial port map  (
		clk=>s_clk,
		rst=>s_rst,
		xin=>trame_int,
		htop=>s_htop,
		modetop=>s_modetop,
 		LedR=>LedR_int,
		serial_out=>serial_int
		);


s_clk <= not s_clk after 5 ns;
s_rst <= '0' after 10 ns;
--trame_int<="111111111111111111111110000001010000001100011110000010101010011111010101";

Process
begin
---------------------------------------------------------------------------------
--	DEBUT : htop = 	modetop = xtop =		=>	trametop = 

s_htop <= '1';
s_modetop <= '1';

wait for 200 ns;

--	FIN : htop = 	modetop = xtop =		=>	trametop = 
---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
--	DEBUT : htop = 	modetop = xtop =		=>	trametop = 

s_htop <= '0';
s_modetop <= '1';

wait for 200 ns;

--	FIN : htop = 	modetop = xtop =		=>	trametop = 
---------------------------------------------------------------------------------

end process;
end test_top_72_to_serial;	
