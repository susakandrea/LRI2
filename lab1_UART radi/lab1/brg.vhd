----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:43 03/13/2019 
-- Design Name: 
-- Module Name:    brg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity brg is
    Port ( clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           tick : out  STD_LOGIC);
end brg;

architecture Behavioral of brg is

	signal tick_tmp : std_logic := '0';
	signal counter : std_logic_vector(7 downto 0) := (others => '0');

begin

	process(clk) is
	begin
		if rising_edge(clk) then
			if rst = '0' then
				tick_tmp <= '0';
				counter <= (others => '0');
			else
				counter <= counter + '1';
				if counter = "10101111" then
					tick_tmp <= '1';
					counter <= (others => '0');
				else
					tick_tmp <= '0';
				end if;
			end if;
		end if;
	end process;
	
	tick <= tick_tmp;

end Behavioral;

