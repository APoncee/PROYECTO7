library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_4bits is
	generic ( n: integer :=4);--<-- 4 bits
    Port ( A : in  STD_LOGIC_VECTOR(n-1 downto 0);
           AND_result : out  STD_LOGIC);
end AND_4bits;

architecture Behavioral of AND_4bits is
begin
    process(A)
    begin
        AND_result <= A(0) and A(1) and A(2) and A(3);
    end process;
end Behavioral;
