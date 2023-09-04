--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Mux2a1 is
	port(	A: in std_logic;
			B: in std_logic;
			Sel: in std_logic;
			Q: out std_logic);
end Mux2a1;

--Architecture
architecture solve of Mux2a1 is
	-- Signals,Constants,Variables,Components
	signal f: std_logic;
	begin
		with Sel select
		f<= A when '0',
			 B when others;
	Q<= f;
end solve;