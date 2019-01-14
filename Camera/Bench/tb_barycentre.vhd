library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

library Lib;
use Lib.all;

entity bench_barycentre is
end bench_barycentre;

architecture test_position of bench_barycentre is

	component barycentre
    port 
	(	
		IMG	        : in std_logic;
		reset       : in std_logic;		
		VGA_CLK	    : in std_logic;
		VGA_VS	   : in std_logic;
		X_Cont      : in std_logic_vector(8 downto 0);
		Y_Cont      : in std_logic_vector(8 downto 0);  -- image 512 x 512
		r_bary	    : in std_logic_vector(7 downto 0);
		g_bary	    : in std_logic_vector(7 downto 0);
		b_bary	    : in std_logic_vector(7 downto 0);
		r_bary_out	: out std_logic_vector(7 downto 0);
		g_bary_out	: out std_logic_vector(7 downto 0);
		b_bary_out	: out std_logic_vector(7 downto 0);
		X_barycentre	        : out std_logic_vector(8 downto 0);
		Y_barycentre	        : out std_logic_vector(8 downto 0)	
	);
  end component;
  
  signal img_int : std_logic := '0';
  signal rst :std_logic:='1';
  signal sig_clk : std_logic := '0';	
  signal x_Count : std_logic_vector (8 downto 0):= "000000000";
  signal y_Count  : std_logic_vector (8 downto 0):= "000000000";
  signal r_int, g_int, b_int : std_logic_vector(7 downto 0) := x"FF";
  signal r_O, g_O, b_O : std_logic_vector(7 downto 0) := x"FF";
  signal out_X,out_Y : std_logic_vector(8 downto 0);
  signal VGA_VS	   : std_logic;

begin 

	U2 : barycentre port map  (img_int, rst, sig_clk, VGA_VS, x_Count, y_Count, r_int, g_int, b_int, r_O, g_O, b_O, out_X, out_Y);

	
	sig_clk <= not sig_clk after 5 ns;
	rst <=  '0' after 100 ns; 
	img_int <= '1';
	
	--image moitier blanc de 0-->255 et de 255-->512 noir
	process	
	begin
	wait until sig_clk'event and sig_clk ='1' ;
	VGA_VS <='1';
		for i in 1 to 512 loop
				for j in 1 to 512 loop
					x_count <= std_logic_vector(to_unsigned(j, 9));
					y_count <= std_logic_vector(to_unsigned(i, 9));
					if (x_count < "100000000") then
						r_int <= x"FF";
						g_int <= x"FF";
						b_int <= x"FF";
					else 
						r_int <=  x"00";
						g_int <=  x"00";
						b_int <=  x"00";
					end if;		
					wait until sig_clk'event and sig_clk ='1' ;					
				end loop;
			end loop;
	VGA_VS<='0';
	end process;



end test_position;	
