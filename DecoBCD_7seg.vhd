--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity DecoBCD_7seg is
	port(
		BCD: in std_logic_vector(3 downto 0);
		catodo7: out std_logic_vector(6 downto 0));
end DecoBCD_7seg;

--Architecture
architecture solve of DecoBCD_7seg is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(BCD)
	--Sequential programming
		begin
			case BCD is
				when "0000" => catodo7 <= "0000001"; -- 0
            when "0001" => catodo7 <= "1001110"; -- 1
            when "0010" => catodo7 <= "0010011"; -- 2
            when "0011" => catodo7 <= "0000111"; -- 3
            when "0100" => catodo7 <= "1001100"; -- 4
            when "0101" => catodo7 <= "0100100"; -- 5
            when "0110" => catodo7 <= "1100000"; -- 6
            when "0111" => catodo7 <= "0001111"; -- 7
            when "1000" => catodo7 <= "0000000"; -- 8
            when "1001" => catodo7 <= "0000100"; -- 9
            when others => catodo7 <= "1111111";
			end case;
	end process;
	--Process #n...
end solve;