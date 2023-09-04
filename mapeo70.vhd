library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mapeo70 is
    port (
        adc_value : in  std_logic_vector(11 downto 0);
        mapped_value : out std_logic_vector(6 downto 0);
		  clock: in std_logic
    );
end entity mapeo70;

architecture rtl of mapeo70 is
begin
    process
    begin
        wait until (clock'event) and (clock='1');
		  case to_integer(unsigned(adc_value)) is
            when 0 to 4096 =>
                mapped_value <= std_logic_vector(to_unsigned((to_integer(unsigned(adc_value)) * 70) / 4096, 7));
            when others =>
                mapped_value <= (others => '0');
        end case;
    end process;
end architecture rtl;