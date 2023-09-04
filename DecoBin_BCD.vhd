library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecoBin_BCD is
    port (
        bin_num : in std_logic_vector(4 downto 0); -- Cambio a 5 bits
        bcd_num : out std_logic_vector(7 downto 0)
    );
end entity DecoBin_BCD;

architecture behavioral of DecoBin_BCD is
begin
    process(bin_num)
        variable temp : integer range 0 to 24; -- Cambio a 24
        variable ones, tens : integer range 0 to 9;
    begin
        temp := to_integer(unsigned(bin_num));
        ones := temp mod 10;
        tens := (temp / 10) mod 10;
        
        case tens is
            when 0 => bcd_num(7 downto 4) <= "0000";
            when 1 => bcd_num(7 downto 4) <= "0001";
            when 2 => bcd_num(7 downto 4) <= "0010";
            when 3 => bcd_num(7 downto 4) <= "0011";
            when others => bcd_num(7 downto 4) <= "XXXX"; -- Invalid value
        end case;
        
        case ones is
            when 0 => bcd_num(3 downto 0) <= "0000";
            when 1 => bcd_num(3 downto 0) <= "0001";
            when 2 => bcd_num(3 downto 0) <= "0010";
            when 3 => bcd_num(3 downto 0) <= "0011";
            when 4 => bcd_num(3 downto 0) <= "0100";
            when 5 => bcd_num(3 downto 0) <= "0101";
            when 6 => bcd_num(3 downto 0) <= "0110";
            when 7 => bcd_num(3 downto 0) <= "0111";
            when 8 => bcd_num(3 downto 0) <= "1000";
            when 9 => bcd_num(3 downto 0) <= "1001";
            when others => bcd_num(3 downto 0) <= "XXXX"; -- Invalid value
        end case;
    end process;
end architecture behavioral;
