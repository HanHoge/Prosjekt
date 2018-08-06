----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.08.2018 18:00:22
-- Design Name: 
-- Module Name: Signal - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Signal is
--generic ( teller : intiger
Port (
        CLK : std_logic;
        RST : std_logic;
        bitin   : std_logic_vector(15 downto 0);
        bitout  : std_logic_vector(15 downto 0)
        );
end Signal;

architecture Behavioral of Signal is

type t_array_taps is array(0 to 6-1) of signed (15 downt 0) ;
signal taps : t_arrat_taps;


begin

filter: process (clk) is
variable sum :integer;
begin
    if rising_edge(clk) then
        sum = to_integer(x * 5580));
        sum = to_integer(sum + (taps(0) * 5750));
        sum = to_integer(sum + (taps(1) * 6936));
        sum = to_integer(sum + (taps(2) * 6936));
        sum = to_integer(sum + (taps(3) * 5750));
        sum = to_integer(sum + (taps(4) * 5580));
        taps(0) <= x;
        for ii in 1 to 5-1 loop
            taps(ii) <= taps((ii - 1));
        end loop;
        y <= to_signed(sum, 16);
    end if;
end process filter;

end Behavioral;
