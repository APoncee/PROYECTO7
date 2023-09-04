--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Reg_sost_5bits is
	generic ( n: integer :=5);--<-- 5 bits
	port(
		Clk,resetn,en: in std_logic;
		dato: in std_logic_vector(n-1 downto 0);
		q: out std_logic_vector(n-1 downto 0));
end Reg_sost_5bits;

--Architecture
architecture solve of Reg_sost_5bits is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<=(others => '0');
			elsif clk'event and clk='1' then
				if en='1' then
					q<=dato;
				end if;
			end if;
	end process;
	--Process #n...
end solve;