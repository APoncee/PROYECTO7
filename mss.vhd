library ieee;
use ieee.std_logic_1164.all;

entity mss is
	port(reset, clock, Start, Lleno, Alta, Baja, Tsen_may_Tope, Tsen_men_Tope: in std_logic;
		completado, cnt15, cargarRAM, consultar, finalizar, horas_24: in std_logic;
		Error, no_llenar, EnCnt, LdCnt, Alarma, temp_baja, temp_alta, wr: out std_logic;
		En_critico, valvula_ON, valvula_OFF, Evento: out std_logic;
		EnSensor1, EnSensor2, EnReloj, FIN, EnH, LdH, CARGADO, SelCLK, TiempoFull: out std_logic;
		estados: out std_logic_vector(4 downto 0));
end mss;

architecture comportamiento of mss is 
	type estado is (TAA, TAB, TAC, TAD, TAE, TAF, TAG, TAH, TAI,TAJ, TAK, TAL, TAM, TAN, TAO, TAP, TAQ, TAR, TAS,
					TAT, TAU, TAV, TAW, TAX, TAY, TAZ, TBA, TBB, TBC, TBD, TBE );
	signal y:estado;
begin
	mss_transiciones: process(reset, clock)
	begin
		if reset='0' then y<=TAA;
		elsif (clock'event and clock='1') then
			case y is 
				when TAA => if Start ='0' then y <= TAA; else y <= TAB; end if;--0
				when TAB => if Start ='0' then y <= TAC; else y <= TAB; end if;--1
				when TAC => y <= TAD;--2
				when TAD => if horas_24='0' then y <= TAE; else y <= TAC; end if;--3
				when TAE => if Lleno='0' then y <= TAH; else y <= TAF; end if;--4
				when TAF => y <= TAG;--5
				when TAG => y <= TAH;--6
				when TAH => if (Alta='0' and Baja='0') then y <= TAX; elsif (Alta='0' and Baja='1') then y <= TAI; else y <= TAJ; end if;--7
				when TAI => y <= TAK;--8
				when TAJ => y <= TAL;--9
				when TAK => y <= TAM;--10
				when TAL => y <= TAM;--11
				when TAM => y <= TAN;--12
				when TAN => if completado='1' then y <= TBC; else y <= TAO; end if;--13
				when TAO => if (cnt15='0' and cargarRAM='0') then y <= TAO; elsif (cnt15='0' and cargarRAM='1') then y <= TAP; else y <= TAR; end if;--14
				when TAP => y <= TAQ;--15
				when TAQ => y <= TAX;--16
				when TAR => y <= TAS;--17
				when TAS => if (cnt15='0' and consultar='0') then y <= TAS; elsif (cnt15='0' and consultar='1') then y <= TAT; else y <= TAW; end if;--18
				when TAT => y <= TAU;--19
				when TAU => y <= TAV;--20
				when TAV => y <= TAS;--21
				when TAW => y <= TAX;--22
				when TAX => if (Tsen_may_Tope='0' and Tsen_men_Tope='0') then y <= TAD; elsif (Tsen_may_Tope='0' and Tsen_men_Tope='1') then y <= TAZ; else y <= TAY; end if;--23
				when TAY => y <= TBA;--24
				when TAZ => y <= TBB;--25
				when TBA => y <= TAD;--26
				when TBB => y <= TAD;--27
				when TBC => y <= TBD;--28
				when TBD => if finalizar='1' then y <= TBE; else y <= TAR; end if;--29
				When TBE => y <= TAA; --30
			end case;
		end if;
	end process;

	mss_salidas: process (y)
	begin
	Error<='0'; no_llenar<='0'; EnCnt<='0'; LdCnt<='0'; Alarma<='0'; wr<='0'; En_critico<='0'; valvula_ON<='0'; valvula_OFF<='0'; Evento<='0'; temp_alta<='0'; temp_baja<='0'; EnSensor1<='0'; EnSensor2<='0'; EnReloj<='0'; EnH<='0'; LdH<='0';
	estados<="00000"; FIN<='0'; CARGADO<='0';TiempoFull<='0'; SelCLK<='0';
		case y is
			when TAA => estados <= "00000"; EnCnt <= '1'; LdCnt <= '1';--0
			when TAB => estados <= "00001";--1
			when TAC => estados <= "00010"; EnH <= '1'; LdH <= '1';--2
			when TAD => estados <= "00011"; EnH <= '1';--3
			when TAE => estados <= "00100"; EnSensor1 <= '1'; EnSensor2 <= '1';--4
			when TAF => estados <= "00101"; Error <= '1'; no_llenar <= '1';SelCLK<='1';--5
			when TAG => estados <= "00110"; Error <= '1'; no_llenar <= '1';SelCLK<='1';--6
			when TAH => estados <= "00111";--7
			when TAI => estados <= "01000"; Error <= '1'; Alarma <= '1'; temp_baja <= '1';SelCLK<='1';--8
			when TAJ => estados <= "01001"; Error <= '1'; Alarma <= '1'; temp_alta <= '1';SelCLK<='1';--9
			when TAK => estados <= "01010"; Error <= '1'; Alarma <= '1'; temp_baja <= '1';SelCLK<='1';--10
			when TAL => estados <= "01011"; Error <= '1'; Alarma <= '1'; temp_alta <= '1';SelCLK<='1';--11
			when TAM => estados <= "01100";--12
			when TAN => estados <= "01101"; EnReloj <= '1';--13
			when TAO => estados <= "01110"; Evento <= '1';SelCLK<='1';--14
			when TAP => estados <= "01111"; wr <= '1';--15
			when TAQ => estados <= "10000"; EnCnt <= '1';--16
			when TAR => estados <= "10001"; EnCnt <= '1'; LdCnt <= '1';--17
			when TAS => estados <= "10010"; CARGADO<='1';SelCLK<='1';--18
			when TAT => estados <= "10011"; En_critico <= '1';SelCLK<='1';--19
			when TAU => estados <= "10100"; En_critico <= '1';SelCLK<='1';--20
			when TAV => estados <= "10101";EnCnt <='1';--21
			when TAW => estados <= "10110";--22
			when TAX => estados <= "10111";--23
			when TAY => estados <= "11000"; valvula_ON <= '1'; SelCLK <= '1';--24
			when TAZ => estados <= "11001"; valvula_OFF <= '1'; SelCLK <= '1';--25
			when TBA => estados <= "11010"; valvula_ON <= '1'; SelCLK <= '1';--26
			when TBB => estados <= "11011"; valvula_OFF <= '1'; SelCLK <= '1';--27
			when TBC => estados <= "11100"; TiempoFull <= '1'; SelCLK <= '1';--28
			when TBD => estados <= "11101"; TiempoFull <= '1'; SelCLK <= '1';--29
			when TBE => estados <= "11110"; FIN <= '1';SelCLK<='1';--30
		end case;
	end process;
end comportamiento;