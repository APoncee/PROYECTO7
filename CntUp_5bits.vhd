library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CntUp_5bits is
	generic ( n: integer :=5);--<-- 5 bits
	port (clock, reset, Ld, En: in std_logic;
		Ent: in std_logic_vector(n-1 downto 0);
		Q: buffer std_logic_vector(n-1 downto 0));
end CntUp_5bits;

architecture desarrollo of CntUp_5bits is
	signal temp: std_logic_vector(n-1 downto 0);
	begin
	process(reset, clock, En,Ld)
		begin
			if reset='0' then temp<="00000";
			elsif (clock'event and clock='1') then
				if (Ld='1' and En='1') then temp<=Ent;
				elsif En='1' then temp<=temp+1;
				end if;
			end  if;
	end process;

Q<=temp;
end desarrollo;