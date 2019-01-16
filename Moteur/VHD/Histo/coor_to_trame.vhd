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

library lib_trame;
	use lib_trame.all;


------------------------------------------------------------------------------------------
----------------------------------------ENTITE--------------------------------------------
------------------------------------------------------------------------------------------


entity coor_to_trame is
port(	xtop		:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
	htop		:	in	STD_LOGIC;		--,v
	modetop		:	in	STD_LOGIC;
	--switch_id	:	in	STD_LOGIC;
	clk,rst		:	in	STD_LOGIC;

	new_trame	:	in	STD_LOGIC;	-- signal reçu du decode qui sort de l'état bloquant
	str_decode      :       out	STD_LOGIC;
	trametop	:	out	STD_LOGIC_VECTOR(71 downto 0));
end coor_to_trame;


------------------------------------------------------------------------------------------
--------------------------------------ARCHITECTURE----------------------------------------
------------------------------------------------------------------------------------------


architecture CT of coor_to_trame is


------------------------------------------------------------------------------------------
---------------------------DECLARATION DES COMPOSANTS-------------------------------------
------------------------------------------------------------------------------------------

	component mode_switch
		port(	x			:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
		h				:	in	STD_LOGIC;		--,v
		mode				:	in	STD_LOGIC;
		active_rot			:	out	STD_LOGIC;
		oh				:	out	STD_LOGIC_VECTOR(15 downto 0));		--,ov
	end component mode_switch;

	component identifier		--bouton ID
		port (oh			:	in	STD_LOGIC_VECTOR(15 downto 0);	--,ov
		--switch_id			:	in	STD_LOGIC;
		id				:	out	STD_LOGIC_VECTOR(7 downto 0);	--1bit p-ê nécessaire
		mvt				:	out	STD_LOGIC_VECTOR(15 downto 0));
	end component identifier;

	component instruction
		port(trame_wo_instru		:	in	STD_LOGIC_VECTOR(15 downto 0);
		active_rot: in STD_LOGIC;
		trame_w_instru			:	out	STD_LOGIC_VECTOR(39 downto 0);	--len ins adr, mvt
		len, ins, adr			:	out	STD_LOGIC_VECTOR(7 downto 0));
	end component instruction;

	component checksum
		port (	id, len, ins, p1	:	in	STD_LOGIC_VECTOR(7 downto 0);
		mvt				:	in	STD_LOGIC_VECTOR(15 downto 0);
		sum				:	out	STD_LOGIC_VECTOR(7 downto 0));
	end component checksum;

	component trame_assembler is
		port(	trame_in		:	in	STD_LOGIC_VECTOR(39 downto 0);		--trame avec len + instru + adresse + mvt
			id			:	in	STD_LOGIC_VECTOR(7 downto 0);
			cs			:	in	STD_LOGIC_VECTOR(7 downto 0);
			trame_out		:	out	STD_LOGIC_VECTOR(71 downto 0));
	end component trame_assembler;

--------------------------------------------------------------------------------------------
--------------------------------DECLARATION DES SIGNAUX-------------------------------------
--------------------------------------------------------------------------------------------

	type state is (S0,S1,S2,S3,S4,S5);			--S0 => reset  --S5 état bloquant
	signal curr_state : state;
	signal next_state : state;

	signal s_x, s_x_reg			:	STD_LOGIC_VECTOR(9 downto 0);	--coordonnée en x input
	signal s_mode, s_mode_reg		:	STD_LOGIC;	--bouton qui active le mode "manuel"
	signal s_h, s_h_reg			:	STD_LOGIC;	--bouton pour déplacement horizontal
	signal s_oh				:	STD_LOGIC_VECTOR(15 downto 0);	--output de MS

	--signal s_switch_id			:	STD_LOGIC;

	signal s_oh_reg				:	STD_LOGIC_VECTOR(15 downto 0);	--input de ID et INS

	signal s_id				:	STD_LOGIC_VECTOR(7 downto 0);	--output de ID -> vers reg
	signal s_id_reg1			:	STD_LOGIC_VECTOR(7 downto 0);	--input de CS
	signal s_id_reg2			:	STD_LOGIC_VECTOR(7 downto 0);	--input de TA
	signal s_mvt, s_mvt_reg			:	STD_LOGIC_VECTOR(15 downto 0);

	signal s_twi, s_twi_reg1, s_twi_reg2	:	STD_LOGIC_VECTOR(39 downto 0);	--trame avec instruction qui attend la fin du calcul de CS pour envoyer à TA

	signal s_len, s_len_reg			:	STD_LOGIC_VECTOR(7 downto 0);

	signal s_ins, s_ins_reg			:	STD_LOGIC_VECTOR(7 downto 0);

	signal s_adr, s_adr_reg			:	STD_LOGIC_VECTOR(7 downto 0);

	signal s_sum, s_sum_reg			:	STD_LOGIC_VECTOR(7 downto 0);

	signal s_out				:	STD_LOGIC_VECTOR(71 downto 0); --

	signal str_decode_int			:	STD_LOGIC;

	signal active_rot_int			:	STD_LOGIC;
	
begin
---------------------------------------------------------------------------------------------
---------------------------------INSTANCIATION-----------------------------------------------
---------------------------------------------------------------------------------------------

MS : mode_switch port map (x => s_x, h => s_h, mode => s_mode, active_rot=>active_rot_int ,oh => s_oh);

ID : identifier port map (oh => s_oh_reg, id => s_id, mvt => s_mvt);	--après oh : switch_id => s_switch_id,

INS : instruction port map (trame_wo_instru => s_oh_reg,active_rot=>active_rot_int, trame_w_instru => s_twi, len => s_len, ins => s_ins, adr => s_adr);

CS : checksum port map (id => s_id_reg1, len => s_len_reg, ins => s_ins_reg, p1 => s_adr_reg, mvt => s_mvt_reg, sum => s_sum);

TA : trame_assembler port map (trame_in => s_twi_reg2, id => s_id_reg2, cs => s_sum_reg, trame_out => s_out);


------------------------------------------------------------------------------------------------
------------------------------------------PROCESS-----------------------------------------------
------------------------------------------------------------------------------------------------


seq : process(clk, rst)
begin

	if (rst = '1') then
		curr_state <= S0;
-- init les reg à 0 ici ?
		s_x_reg <= (others => '0');
		s_mode_reg <= '0';
		s_h_reg <= '0';
		s_oh_reg <= (others => '0');

		s_id_reg1 <= (others => '0');
		s_id_reg2 <= (others => '0');

		s_mvt_reg <= (others => '0');

		s_twi_reg1 <= (others => '0');
		s_twi_reg2 <= (others => '0');

		s_len_reg <= (others => '0');

		s_ins_reg <= (others => '0');

		s_adr_reg <= (others => '0');

		s_sum_reg <= (others => '0');

	elsif (clk'event and clk = '1') then
		curr_state <= next_state;
		s_x_reg <= s_x;
		s_mode_reg <= s_mode;
		s_h_reg <= s_h;
		s_oh_reg <= s_oh;

		s_id_reg1 <= s_id;
		s_id_reg2 <= s_id_reg1;

		s_mvt_reg <= s_mvt;

		s_twi_reg1 <= s_twi;
		s_twi_reg2 <= s_twi_reg1;

		s_len_reg <= s_len;

		s_ins_reg <= s_ins;

		s_adr_reg <= s_adr;

		s_sum_reg <= s_sum;

	end if;			
end process;


fsm : process(curr_state, xtop, modetop, htop, s_out)	--à compléter
begin

	case curr_state is

	when S1 =>
		s_x <= xtop;		--MS lis les entrées du bloc
		s_mode <= modetop;
		s_h <= htop;
		next_state <= S2;
		str_decode_int <= '0';
		trametop <= (others => '0');

	when S2 =>
		s_x <= s_x_reg;		--sauvegarde des inputs de MS
		s_mode <= s_mode_reg;
		s_h <= s_h_reg;

		next_state <= S3;
		str_decode_int <= '0';
		trametop <= (others => '0');

	when S3 =>
		s_x <= s_x_reg;		--sauvegarde des inputs de MS
		s_mode <= s_mode_reg;
		s_h <= s_h_reg;

		next_state <= S4;
		str_decode_int <= '0';
		trametop <= (others => '0');

	when S4 =>
		s_x <= s_x_reg;		--sauvegarde des inputs de MS
		s_mode <= s_mode_reg;
		s_h <= s_h_reg;

		next_state <= S5;

		str_decode_int <= '0';
		
		
		trametop <= s_out;	--au 4e front d'horloge, le résultat sort (voir si MUX) + p-e un start avant le wait
		--trametop <= (others => '0');
	when S5 =>
		s_x <= s_x_reg;		--sauvegarde des inputs de MS
		s_mode <= s_mode_reg;
		s_h <= s_h_reg;

		
		if(new_trame = '0')
		then
			str_decode_int <= '0';
			next_state <= S5;
			trametop <= s_out;
		else
			str_decode_int <= '1';
			trametop <= s_out;
			next_state <= S0;
		end if;
		
		
		--trametop <= (others => '0');
--		
	when others =>
		s_x <= (others => '0');
		s_mode <= '0';
		s_h <= '0';

		next_state <= S1;
		str_decode_int <= '0';
		trametop <= (others => '0'); --sout;

	end case;

end process;
str_decode<=str_decode_int;
end CT;


