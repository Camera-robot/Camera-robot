library IEEE;
	use IEEE.std_logic_1164.all;
        use IEEE.std_logic_textio.all;


library lib_trame;
use lib_trame.all;


------------------------------------------------------------------------------------------
----------------------------------------ENTITE--------------------------------------------
------------------------------------------------------------------------------------------

entity top_72_to_serial is
port(	clk	:	in	STD_LOGIC;
	rst	:	in	STD_LOGIC;
	xin     :	in	STD_LOGIC_VECTOR(9 downto 0);
	htop	:	in	STD_LOGIC;
	modetop	:	in	STD_LOGIC;
	LedR	:	out	STD_LOGIC;
	serial_out : 	out	STD_LOGIC
	);
end top_72_to_serial;

------------------------------------------------------------------------------------------
--------------------------------------ARCHITECTURE----------------------------------------
------------------------------------------------------------------------------------------

architecture A_72_to_serial of top_72_to_serial is

------------------------------------------------------------------------------------------
--------------------------------------PIN----------------------------------------
------------------------------------------------------------------------------------------
attribute chip_pin          		: string;

attribute chip_pin of clk  : signal is "AF14";--in clk 50MHz
--attribute chip_pin of SW  : signal is "AE12,AD10,AC9,AE11,AD12,AD11,AF10,AF9,AC12,AB12";--in rst  htop  modetop
attribute chip_pin of rst  : signal is "AB12";-- rst : SW [0]  
attribute chip_pin of htop  : signal is "AC12";-- htop : SW [1]   
attribute chip_pin of modetop  : signal is "AF9";-- modetop : SW [2]  
--attribute chip_pin of LEDG  : signal is "W20,Y19,W19,W17,V18,V17,W16,V16";--out
attribute chip_pin of LedR  : signal is "V16";--out : SW [0]  
attribute chip_pin of serial_out  : signal is "AK16";--out

------------------------------------------------------------------------------------------
---------------------------DECLARATION DES COMPOSANTS-------------------------------------
------------------------------------------------------------------------------------------

component coor_to_trame is
	Port ( 
	xtop		:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
	htop		:	in	STD_LOGIC;		--,v
	modetop		:	in	STD_LOGIC;
	clk,rst		:	in	STD_LOGIC;

	new_trame	:	in	STD_LOGIC;	-- signal reçu du decode qui sort de l'état bloquant
	str_decode      :       out	STD_LOGIC;
	trametop	:	out	STD_LOGIC_VECTOR(71 downto 0));
end component coor_to_trame;


component decode_servo is
	Port ( clk,rst  : in STD_LOGIC;
			tramein  	: in STD_LOGIC_VECTOR (71 downto 0);
			Done 		: in STD_LOGIC;
			str_decode	: in STD_LOGIC;
			trameout	: out STD_LOGIC_VECTOR (7 downto 0);
			start_tx	: out STD_LOGIC;
			new_trame	: out STD_LOGIC
           );        
end component decode_servo;

component UART_TX is
		 port (
				i_Clk		:	in	std_logic;
				i_TX_DV:in std_logic;--start_transmit
				i_TX_Byte:in std_logic_vector(7 downto 0);
				o_TX_Active:out std_logic;--pas utilisé car le servo sait le debut de la trame par 0xFF 0xFF.
				o_TX_Serial:out std_logic;--donnee
				o_TX_Done:out std_logic--end_transmit
				);
end component UART_TX;

--------------------------------------------------------------------------------------------
--------------------------------DECLARATION DES SIGNAUX-------------------------------------
--------------------------------------------------------------------------------------------


signal trameout_int : STD_LOGIC_VECTOR(7 downto 0);
signal start_tx_int : STD_LOGIC;
signal end_transmit_int : STD_LOGIC;
signal s_restart	:	STD_LOGIC;
signal s_trame : STD_LOGIC_VECTOR(71 downto 0);
--signal s_out	:	STD_LOGIC_VECTOR;
signal s_start_dec : STD_LOGIC;

begin

---------------------------------------------------------------------------------------------
---------------------------------INSTANCIATION-----------------------------------------------
---------------------------------------------------------------------------------------------

U1 : coor_to_trame Port map( 
	xtop		=>	xin,
	htop		=>	htop,
	modetop		=>	modetop,
	clk		=>	clk ,
	rst		=>	rst,
	new_trame	=>	s_restart,
	str_decode      =>	s_start_dec,
	trametop	=>	s_trame

	);

U2 : decode_servo port map(
	clk => clk ,--entree du top
	rst		=>	rst,
	tramein => s_trame,--entree du top
	Done=>end_transmit_int,
	str_decode=>s_start_dec,
	trameout => trameout_int,
	start_tx => start_tx_int,
	new_trame=>s_restart
);

U3 : UART_TX port map(
	i_Clk => clk , --entree du top
	i_TX_DV => start_tx_int,
	i_TX_Byte => trameout_int,
	o_TX_Active => LedR,--sortie du top
	o_TX_Serial =>  serial_out,--sortie du top
	o_TX_Done => end_transmit_int
);


--new_trame_out <= s_out;

end A_72_to_serial;
