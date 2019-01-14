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





entity top is
port(	xtop		:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
	htop		:	in	STD_LOGIC;		--,v
	modetop		:	in	STD_LOGIC;
	clk,rst		:	in	STD_LOGIC;

	trametop	:	out	STD_LOGIC_VECTOR(71 downto 0));
end top;


architecture T of top is


--DECLARATION

	component mode_switch
		port(	x			:	in	STD_LOGIC_VECTOR(9 downto 0);	--,y
		h				:	in	STD_LOGIC;		--,v
		mode				:	in	STD_LOGIC;
		oh				:	out	STD_LOGIC_VECTOR(15 downto 0));		--,ov
	end component mode_switch;

	component identifier
		port (oh			:	in	STD_LOGIC_VECTOR(15 downto 0);	--,ov
		id				:	out	STD_LOGIC_VECTOR(7 downto 0);	--1bit p-ê nécessaire
		mvt				:	out	STD_LOGIC_VECTOR(15 downto 0));
	end component identifier;

	component instruction
		port(trame_wo_instru		:	in	STD_LOGIC_VECTOR(15 downto 0);
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


	type state is (S0,S1,S2,S3,S4);			--S0 => reset
	signal curr_state : state;
	signal next_state : state;


	signal s_x, s_x_regi, s_x_rego				:	STD_LOGIC_VECTOR(9 downto 0);			--input de MS
	signal s_h, s_h_regi, s_h_rego				:	STD_LOGIC;
	signal s_mode, s_mode_regi, s_mode_rego			:	STD_LOGIC;

	signal s_oh, s_oh_regi, s_oh_rego			:	STD_LOGIC_VECTOR(15 downto 0);

--	signal s_oh, s_oh2			:	STD_LOGIC_VECTOR(15 downto 0);
	signal s_id, s_id_regi, s_id_rego1, s_id_rego2		:	STD_LOGIC_VECTOR(7 downto 0);

	signal s_mvt, s_mvt_regi, s_mvt_rego			:	STD_LOGIC_VECTOR(15 downto 0);

	signal s_twi, s_twi_regi, s_twi_rego1, s_twi_rego2	:	STD_LOGIC_VECTOR(39 downto 0);

	signal s_len, s_len_regi, s_len_rego			:	STD_LOGIC_VECTOR(7 downto 0);
	signal s_ins, s_ins_regi, s_ins_rego			:	STD_LOGIC_VECTOR(7 downto 0);
	signal s_adr, s_adr_regi, s_adr_rego			:	STD_LOGIC_VECTOR(7 downto 0);
	signal s_sum, s_sum_regi, s_sum_rego			:	STD_LOGIC_VECTOR(7 downto 0);

	signal s_out, s_out_regi, s_out_rego			:	STD_LOGIC_VECTOR(71 downto 0);

begin

sync : process(clk, rst, next_state)
begin

	if (rst = '1') then
		curr_state <= S0;

	elsif (clk'event and clk = '1') then
		curr_state <= next_state;

	end if;			
end process;






--INSTANCIATION

MS : mode_switch port map (x => s_x, h => s_h, mode => s_mode, oh => s_oh);

ID : identifier port map (oh => s_oh_rego, id => s_id, mvt => s_mvt);

INS : instruction port map (trame_wo_instru => s_oh_rego, trame_w_instru => s_twi, len => s_len, ins => s_ins, adr => s_adr);

CS : checksum port map (id => s_id_rego1, len => s_len_rego, ins => s_ins_rego, p1 => s_adr_rego, mvt => s_mvt_rego, sum => s_sum);

TA : trame_assembler port map (trame_in => s_twi_rego2, id => s_id_rego2, cs => s_sum_rego, trame_out => s_out);




machine : process(curr_state, s_x, s_x_regi, s_x_rego, s_h, s_h_regi, s_h_rego, s_mode, s_mode_regi, s_mode_rego, s_oh, s_oh_regi, s_oh_rego, s_id, s_id_regi, s_id_rego1, s_id_rego2, s_mvt, s_mvt_regi, s_mvt_rego, s_twi, s_twi_regi, s_twi_rego1, s_twi_rego2, s_len, s_len_regi, s_len_rego, s_ins, s_ins_regi, s_ins_rego, s_adr, s_adr_regi, s_adr_rego, s_sum, s_sum_regi, s_sum_rego, s_out)
begin

	case curr_state is

	when S0 =>
		s_x <= (others => '0');		--sauvegarde état du MS pdt fonctionnement
		s_x_regi <= (others => '0');
		s_x_rego <= (others => '0');
		s_h <= '0';
		s_h_regi <= '0';
		s_h_rego <= '0';
		s_mode <= '0';
		s_mode_regi <= '0';
		s_mode_rego <= '0';

		s_oh_regi <= (others => '0');
		s_oh_rego <= (others => '0');

		s_id_regi <= (others => '0');
		s_id_rego1 <= (others => '0');
		s_id_rego2 <= (others => '0');


		s_mvt_regi <= (others => '0');
		s_mvt_rego <= (others => '0');

		s_len_regi <= (others => '0');
		s_len_rego <= (others => '0');

		s_ins_regi <= (others => '0');
		s_ins_rego <= (others => '0');

		s_adr_regi <= (others => '0');
		s_adr_rego <= (others => '0');

		s_twi_regi <= (others => '0');
		s_twi_rego1 <= (others => '0');
		s_twi_rego2 <= (others => '0');


		trametop <= (others => '0');
		s_out_regi <= (others => '0');
		s_out_rego <= (others => '0');
	
--		s_x_regi <= (others => '0');
--		s_h_regi <= '0';
--		s_mode_regi <= '0';

--		s_out <= (others => '0');
--		s_out_save <= (others => '0');

		next_state <= S1;

	when S1 =>			--pdt cet état MS lis les entrées et sors oh dans un registre
		s_x <= xtop;			--lien input top -> input MS + sauve pour états suivants		--ici le x qu'on assigne est celui du top, à voir si cela pose pbm
		s_x_regi <= xtop;
		s_x_rego <= s_x_regi;

		s_h <= htop;
		s_h_regi <= htop;
		s_h_rego <= s_h_regi;

		s_mode <= modetop;
		s_mode_regi <= modetop;
		s_mode_rego <= s_mode_regi;

		s_oh_regi <= s_oh;
		s_oh_rego <= s_oh_regi;

		s_id_regi <= s_id_rego1;
		s_id_rego1 <= s_id_regi;
		s_id_rego2 <= s_id_rego1;

		s_mvt_regi <= s_mvt_rego;
		s_mvt_rego <= s_mvt_regi;

		s_len_regi <= s_len_rego;
		s_len_rego <= s_len_regi;

		s_ins_regi <= s_ins_rego;
		s_ins_rego <= s_ins_regi;

		s_adr_regi <= s_adr_rego;
		s_adr_rego <= s_adr_regi;

		s_twi_regi <= s_twi_rego1;
		s_twi_rego1 <= s_twi_regi;
		s_twi_rego2 <= s_twi_rego1;
		

--		s_h <= h;
--		s_h_reg <= h;
--		s_mode <= mode;

--		s_oh_reg <= s_oh;
--		s_oh2 <= s_oh;


		trametop <= s_out_rego;
		s_out_regi <= s_out_rego;
		s_out_rego <= s_out_regi;

--		s_out <= s_out_save;

		next_state <= S2;


	when S2 =>
		s_x <= s_x_rego;		--sauvegarde état du MS pdt fonctionnement
		s_x_regi <= s_x_rego;
		s_x_rego <= s_x_regi;
		s_h <= s_h_rego;
		s_h_regi <= s_h_rego;
		s_h_rego <= s_h_regi;
		s_mode <= s_mode_rego;
		s_mode_regi <= s_mode_rego;
		s_mode_rego <= s_mode_regi;

		s_oh_regi <= s_oh_rego;
		s_oh_rego <= s_oh_regi;

		s_id_regi <= s_id;
		s_id_rego1 <= s_id_regi;
		s_id_rego2 <= s_id_rego1;


		s_mvt_regi <= s_mvt;
		s_mvt_rego <= s_mvt_regi;

		s_len_regi <= s_len;
		s_len_rego <= s_len_regi;

		s_ins_regi <= s_ins;
		s_ins_rego <= s_ins_regi;

		s_adr_regi <= s_adr;
		s_adr_rego <= s_adr_regi;

		s_twi_regi <= s_twi;
		s_twi_rego1 <= s_twi_regi;
		s_twi_rego2 <= s_twi_rego1;

		trametop <= s_out_rego;
		s_out_regi <= s_out_rego;
		s_out_rego <= s_out_regi;

		next_state <= S3;
--		s_h <= s_h_reg;

	when S3 =>
		s_x <= s_x_rego;
		s_x_regi <= s_x_rego;
		s_x_rego <= s_x_regi;
		s_h <= s_h_rego;
		s_h_regi <= s_h_rego;
		s_h_rego <= s_h_regi;
		s_mode <= s_mode_rego;
		s_mode_regi <= s_mode_rego;
		s_mode_rego <= s_mode_regi;

		s_oh_regi <= s_oh_rego;
		s_oh_rego <= s_oh_regi;

		s_id_regi <= s_id_rego1;
		s_id_rego1 <= s_id_regi;
		s_id_rego2 <= s_id_rego1;

		s_mvt_regi <= s_mvt_rego;
		s_mvt_rego <= s_mvt_regi;

		s_len_regi <= s_len_rego;
		s_len_rego <= s_len_regi;

		s_ins_regi <= s_ins_rego;
		s_ins_rego <= s_ins_regi;

		s_adr_regi <= s_adr_rego;
		s_adr_rego <= s_adr_regi;

		s_twi_regi <= s_twi_rego1;
		s_twi_rego1 <= s_twi_regi;
		s_twi_rego2 <= s_twi_rego1;

		trametop <= s_out_rego;
		s_out_regi <= s_out_rego;
		s_out_rego <= s_out_regi;


		next_state <= S4;

	when S4 =>
		s_x <= s_x_rego;
		s_x_regi <= s_x_rego;
		s_x_rego <= s_x_regi;
		s_h <= s_h_rego;
		s_h_regi <= s_h_rego;
		s_h_rego <= s_h_regi;
		s_mode <= s_mode_rego;
		s_mode_regi <= s_mode_rego;
		s_mode_rego <= s_mode_regi;

		s_oh_regi <= s_oh_rego;
		s_oh_rego <= s_oh_regi;

		s_id_regi <= s_id_rego1;
		s_id_rego1 <= s_id_regi;
		s_id_rego2 <= s_id_rego1;

		s_mvt_regi <= s_mvt_rego;
		s_mvt_rego <= s_mvt_regi;

		s_len_regi <= s_len_rego;
		s_len_rego <= s_len_regi;

		s_ins_regi <= s_ins_rego;
		s_ins_rego <= s_ins_regi;

		s_adr_regi <= s_adr_rego;
		s_adr_rego <= s_adr_regi;

		s_twi_regi <= s_twi_rego1;
		s_twi_rego1 <= s_twi_regi;
		s_twi_rego2 <= s_twi_rego1;

		s_sum_rego <= s_sum;

		trametop <= s_out;
		s_out_regi <= s_out_rego;
		s_out_rego <= s_out_regi;

		next_state <= S1;

	end case;

end process;

end T;
