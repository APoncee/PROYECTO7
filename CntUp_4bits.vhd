library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CntUp_4bits is
	generic ( n: integer :=4);--<-- 4 bits
	port (clock, reset, Ld, En: in std_logic;
		Ent: in std_logic_vector(n-1 downto 0);
		Q: buffer std_logic_vector(n-1 downto 0));
end CntUp_4bits;

architecture desarrollo of CntUp_4bits is
	signal temp: std_logic_vector(n-1 downto 0);
	begin
	process(reset, clock, En,Ld)
		begin
			if reset='0' then temp<="0000";
			elsif (clock'event and clock='1') then
				if (Ld='1' and En='1') then temp<=Ent;
				elsif En='1' then temp<=temp+1;
				end if;
			end  if;
	end process;

Q<=temp;
end desarrollo;