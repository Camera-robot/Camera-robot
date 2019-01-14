library IEEE;
	use IEEE.std_logic_1164.all;
        use IEEE.std_logic_textio.all;
        use IEEE.numeric_std.all;


library lib;
use lib.all;

entity bench is
end bench;


architecture test_decode_servo of bench is

	component decode_servo

    Port ( clk 			: in STD_LOGIC;
			tramein		: in STD_LOGIC_VECTOR (71 downto 0);
			Done 		: in STD_LOGIC;
			trameout	: out STD_LOGIC_VECTOR (7 downto 0);
			start_tx	: out STD_LOGIC;
			new_trame       : out STD_LOGIC
           );     
  end component;



 signal s_clk : std_logic:='0';
 signal tramein_int : std_logic_vector (71 downto 0);
 signal done_int : std_logic := '0';
 signal trameout_int : std_logic_vector (7 downto 0);
 signal start_tx_int : std_logic:='0';
 signal new_trame_int : std_logic:='0';

begin 
	U1 : decode_servo port map  (
		clk=>s_clk, 
		tramein=>tramein_int, 
		Done=>done_int, 
		trameout=>trameout_int, 
		start_tx=>start_tx_int,
		new_trame=>new_trame_int
		);


s_clk <= not s_clk after 5 ns;

tramein_int<="111111111111111111111110000001010000001100011110000010101010011111010101";

process	
	begin
	for i in 1 to 18 loop
	done_int<='1';
	wait for 5 ns;
	done_int<='0';
	wait for 1000 ns;
	end loop;

end process;



end test_decode_servo;	
