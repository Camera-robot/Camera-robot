library IEEE;
	use IEEE.std_logic_1164.all;
        use IEEE.std_logic_textio.all;
        use IEEE.numeric_std.all;
        use IEEE.std_logic_signed.all;
        use IEEE.std_logic_unsigned.all;
        use IEEE.math_real.all;
        use IEEE.math_complex.all;


entity decode_servo is
    Port ( clk,rst 			: in STD_LOGIC;
			tramein		: in STD_LOGIC_VECTOR (71 downto 0);
			Done 		: in STD_LOGIC;
			str_decode	: in STD_LOGIC;
			trameout	: out STD_LOGIC_VECTOR (7 downto 0);
			start_tx	: out STD_LOGIC;
			new_trame       : out STD_LOGIC;
			trametop	:	out	STD_LOGIC_VECTOR(71 downto 0)
           );                   
end decode_servo;--ajouter le end transmit

architecture A_decode of decode_servo is

signal r			:		std_logic_vector(7 downto 0);

signal cpt			:		unsigned(4 downto 0):="00000";	--0 to 18

signal start_tx_int :		std_logic:='0';

signal new_trame_int : std_logic:='0';


begin

--envoie de donnee, tansmit valide a 1 (un coup d'horloge) puis à 0000
--attendre le end transmit pour envoyer une autre trame

process (clk,rst)			--,cpt2,tramein,Done)
	 begin
	 if rst ='1' then
	 cpt<="00000";
	 else
	 
	if (clk'event and clk = '1') then
	
			case cpt is


				when "00000" =>				--send1
					--start_tx_int<='1';

					if str_decode = '0'
					then
						new_trame_int <='1';
						cpt <="00000";
						r <= (others => '0');
					else
						new_trame_int <='0';
						start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
						r <= tramein(71 downto 64);	--envoi du premier octet
						cpt <= cpt +1;
					end if;

				when "00001" =>				--stop1
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 		
					
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant
--					else				
--						cpt <= cpt;		le else n'est pas nécessaire car il s'agit d'un process séquentiel
					end if;

				when "00010" =>				--send2
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(63 downto 56);	--envoi du premier octet
					cpt <= cpt +1;

				when "00011" =>				--stop2
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "00100" =>				--send3
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(55 downto 48);	--envoi du premier octet
					cpt <= cpt +1;

				when "00101" =>				--stop3
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "00110" =>				--send4
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(47 downto 40);	--envoi du premier octet
					cpt <= cpt +1;

				when "00111" =>				--stop4
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "01000" =>				--send5
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(39 downto 32);	--envoi du premier octet
					cpt <= cpt +1;

				when "01001" =>				--stop5
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "01010" =>				--send6
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(31 downto 24);	--envoi du premier octet
					cpt <= cpt +1;

				when "01011" =>				--stop6
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "01100" =>				--send7
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(23 downto 16);	--envoi du premier octet
					cpt <= cpt +1;

				when "01101" =>				--stop7
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "01110" =>				--send8
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(15 downto 8);	--envoi du premier octet
					cpt <= cpt +1;

				when "01111" =>				--stop8
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;

				when "10000" =>				--send9
					start_tx_int<='1';		--mise à 1 du start pdt le premier cycle d'horloge
					r <= tramein(7 downto 0);	--envoi du premier octet
					cpt <= cpt +1;

				when "10001" =>				--stop9
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
					if Done='1' then		--signal de fin de traitement de l'uart
						cpt <= cpt +1;		--passe à l'état suivant / sinon bloque
					end if;
					
				when "10010" =>				--dans cet état, on envoie le signal pour recommencer l'envoie d'une trame au bloc coor_to_trame	
					start_tx_int<='0';		--raz du start pdt état bloquant (attends la transmission de tous les bits avant d'envoyer 
					r <= (others => '0');		--bloque la sortie à 0
				if Done='1' then
						new_trame_int <='1';
						cpt <= cpt +1;
					else 
						new_trame_int <='0';
					end if;

				when others =>
					
					cpt <= (others => '0');
					new_trame_int <='0';
					start_tx_int<='0';
			end case;
			
		
	end if;
	end if;
end process;
 start_tx<=start_tx_int;
 trameout<=r;
new_trame<=new_trame_int;
end  A_decode;


