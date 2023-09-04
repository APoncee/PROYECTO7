library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gate_or is
    Port ( 
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Result : out STD_LOGIC
    );
end Gate_or;

architecture Behavioral of Gate_or is
begin
    Result <= A OR B;
end Behavioral;
