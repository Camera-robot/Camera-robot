library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


use ieee.math_real.all;


entity barycentre is
	port 
	(
		IMG	   : in std_logic;
		reset    : in std_logic;		
		VGA_CLK	   : in std_logic;
		X_Cont   : in std_logic_vector(8 downto 0);
		Y_Cont   : in std_logic_vector(8 downto 0);  -- image 512 x 512
		r_bary	   : in std_logic_vector(7 downto 0);
		g_bary	   : in std_logic_vector(7 downto 0);
		b_bary	   : in std_logic_vector(7 downto 0);
		r_bary_out	: out std_logic_vector(7 downto 0);
		g_bary_out	: out std_logic_vector(7 downto 0);
		b_bary_out	: out std_logic_vector(7 downto 0)
		--X	: out std_logic_vector(8 downto 0);
		--Y	: out std_logic_vector(8 downto 0)		
	);

end entity;

architecture arch_barycentre of barycentre is
--Etats de la FSM
type etat is (init, new_img, colonne, ligne,calcul_barycentre);
signal   state,next_state : etat:=init;

--couleur rgb
signal   ri,gi,bi,nri,ngi,nbi 	: std_logic_vector(7 downto 0);

--signal pour calcul de la moyenne des pixel noir en H et V
signal   x_int,next_x_int : std_logic_vector(8 downto 0);-- x_int=sum_Hpx/n_x	;  y_int=sum_Vpx/n_y
signal   y_int, next_y_int : std_logic_vector(8 downto 0);

signal   quotient_x_int,quotient_y_int : std_logic_vector(8 downto 0);
	
signal 	 sum_Hpx,next_sum_Hpx :std_logic_vector(26 downto 0);
signal 	 sum_Vpx ,next_sum_Vpx : std_logic_vector(26 downto 0);--sommes des indices des pixels noirs

signal   n_x,next_n_x: std_logic_vector(17 downto 0);
signal 	 n_y,next_n_y : std_logic_vector(17 downto 0);--512*512=262144
--signal   n_y: std_logic_vector(8 downto 0); --256
signal   test : std_logic;--test s'il y a au moins 1 pixel noir en H


--signal pour calcul des moyennes integer
signal a,z,e,t: integer range 0 to 134217728;--2^27

begin

clk:process(VGA_CLK,reset)
begin 
	if (reset='0') then
  	r_bary_out<="00000000";
	g_bary_out<="00000000";
	b_bary_out<="00000000";
    	ri<="00000000";
	gi<="00000000";
	bi<="00000000";
	sum_Hpx    <= "000000000000000000000000000";
	n_x        <= "000000000000000000";--max 512
	sum_Vpx    <= "000000000000000000000000000";
	n_y        <= "000000000000000000";--max 512
	x_int<="000000000";
	y_int<="000000000";
	state  <= init;

	else if (VGA_CLK'event and VGA_CLK ='1') then
	        ri <= r_bary; gi <= g_bary; bi <= b_bary;
		r_bary_out <= nri; g_bary_out <= ngi; b_bary_out <= nbi; 
		sum_Hpx<=next_sum_Hpx;
		n_x<=next_n_x;
		sum_Vpx<=next_sum_Vpx;
		n_y<=next_n_y;
		x_int<=next_x_int;
		y_int<=next_y_int;
		state <= next_state; 
	end if;
end if;
end process clk;	
	

a <= to_integer(unsigned(sum_Hpx));
z <= to_integer(unsigned(n_x));
e <= to_integer(unsigned(sum_Vpx));
t <= to_integer(unsigned(n_y));

proc_H:process( gi , X_Cont, Y_Cont, IMG, state,sum_Hpx,sum_Vpx,n_x,n_y, x_int, y_int)
variable temp1,temp2,temp3,temp4: integer range 0 to 134217728;
variable y_X,y_Y :  std_logic_vector (8 downto 0):="000000000";

begin
 
  case state is
  
    when init =>
	  test<='0';
	  x_int<="000000000";
	  y_int<="000000000";
	  next_sum_Hpx   <= "000000000000000000000000000";
	  next_n_x        <= "000000000000000000";--max 512
	  next_sum_Vpx    <= "000000000000000000000000000";
	  next_n_y        <= "000000000000000000";--max 512
	  next_x_int <="000000000";
	  next_y_int<= "000000000";
	  quotient_x_int<="000000000";
	  quotient_y_int<="000000000";
	  next_state <= new_img;
	
	  
    	when new_img =>
	if (IMG = '1') then--nouvelle images
		next_sum_Hpx   <= "000000000000000000000000000";
		next_sum_Vpx    <= "000000000000000000000000000";
		quotient_x_int<=quotient_x_int;
		quotient_y_int<=quotient_y_int;
		next_x_int<=x_int;
		next_y_int<=y_int;
		next_state <= colonne;
	end if;	
	
	--compte le nombre de pixels noir sur l'image et sommes les X_count
	--s'il y a au moins 1 pixel noir sur une ligne alors nombre de pixels en vertical = 1
	--somme le nombre de pixels noir en vertical
	when colonne => 

			next_sum_Hpx<=sum_Hpx;
			next_n_x  <= n_x ; 

			if(X_Cont >= x"0F")then
				if ((gi=x"00")) then
				next_n_x          <= n_x+1;
				next_sum_Hpx  <= sum_Hpx+X_Cont;
				test<='1';
				end if ;	
			end if;
			if (IMG = '0') then
			next_state <= ligne;	
			end if;
				
	when ligne => 	
			next_sum_Vpx<=sum_Vpx;
			next_n_y  <= n_y ;

				if (test='1') then
				test<='0';
				next_n_y          <= n_y+1;
				next_sum_Vpx  <= sum_Vpx+Y_Cont;
				end if ;
				if (IMG = '1') then	
				next_state <=colonne;
				end if;

			if (Y_Cont = x"1DF" and IMG = '0')then
			next_state <=calcul_barycentre;
			end if;
		
	when calcul_barycentre=>
		temp1:=a;
		temp2:=z;
		temp3:=e;
		temp4:=t;
		
			for i in 8 downto 0 loop
				if (temp1>(temp2 * (2**i))) then
					y_X(i):= '1';
					temp1:= temp1- (temp2 * (2**i));
				 else y_X(i):= '0';
				end if;
				
				if (temp3>(temp4 * (2**i))) then
					y_Y(i):= '1';
					temp3:= temp3- (temp4 * (2**i));
				 else y_Y(i):= '0';
				end if;
		 	end loop;
		 quotient_x_int <= y_X;
		 quotient_y_int <= y_Y;

			next_sum_Hpx<=sum_Hpx;
			next_n_x  <= n_x ; 
			next_sum_Vpx<=sum_Vpx;
			next_n_y  <= n_y ;
			next_x_int<=quotient_x_int;
			next_y_int<=quotient_y_int;
		next_state <=new_img;

end case;
	 
end process proc_H;

	
--creation d'un gros pixel (target) représentant le barycentre pour visualisation
rgb_barycentre:process(ri,gi,bi,X_Cont,Y_Cont,x_int,y_int)
begin
	if(X_Cont>=x_int-"000001010" and Y_Cont>=y_int-"000001010" and X_Cont<=x_int+"000001010" and Y_Cont<=y_int+"000001010" ) then
	
		nri <= "11111111";
		ngi <= "00000000";
		nbi <= "00000000";
	
	else
	nri<=ri;
	ngi<="11111111";
	nbi<="11111111";
	end if;


end process rgb_barycentre; 


-- affectation des sorties
		--X<=x_int;
		--Y<=y_int;
end arch_barycentre;
