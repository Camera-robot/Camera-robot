LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bench_CT IS
END bench_CT;


ARCHITECTURE bCT OF bench_CT IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC:= '0';
SIGNAL htop : STD_LOGIC;
SIGNAL modetop : STD_LOGIC;
SIGNAL rst : STD_LOGIC:= '0';
SIGNAL trametop : STD_LOGIC_VECTOR(71 DOWNTO 0);
SIGNAL xtop : STD_LOGIC_VECTOR(9 DOWNTO 0);


COMPONENT coor_to_trame
	PORT (
	clk : IN STD_LOGIC;
	htop : IN STD_LOGIC;
	modetop : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	trametop : OUT STD_LOGIC_VECTOR(71 DOWNTO 0);
	xtop : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;


BEGIN
	i1 : coor_to_trame
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	htop => htop,
	modetop => modetop,
	rst => rst,
	trametop => trametop,
	xtop => xtop
	);



clk <= not (clk) after 20 ns;
rst <= '1', '0' after 50 ns;



init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        

---------------------------------------------------------------------------------
--	DEBUT : htop = 1 modetop = 1 xtop = X		=>	attendu : trametop = FF FF FE 05 03 1E 0A A7 D5

htop <= '1';
modetop <= '1';

wait for 200 ns;

--	FIN : htop = 1	modetop = 1 xtop = X		=>	obtenu : trametop = FF FF FE 05 03 1E 0A A7 D5
---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
--	DEBUT : htop = 0 modetop = 1 xtop = X		=>	attendu : trametop = FF FF FE 05 03 1E 05 53 7C

htop <= '0';
modetop <= '1';

wait for 200 ns;

--	FIN : htop = 0	modetop = 1 xtop = X		=>	obtenu : trametop = FF FF FE 05 03 1E 05 53 7C
---------------------------------------------------------------------------------


wait for 100 ns;







END PROCESS;                                          
END bCT;
