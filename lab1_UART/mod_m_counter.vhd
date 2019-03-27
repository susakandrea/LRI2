----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:50:19 03/21/2019 
-- Design Name: 
-- Module Name:    mod_m_counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod_m_counter is
generic (
			N: integer := 4; -- number o f b i t s
			M: integer := 10 -- m o d 4
);

port (
		clk, reset: in std_logic;
		max_tick: out std_logic;
		q: out std_logic_vector ( N - 1 downto 0)
) ;
end mod_m_counter;

architecture Behavioral of mod_m_counter is

signal r_reg : unsigned ( N - 1 downto 0 ) ;
signal r_next : unsigned ( N - 1 downto 0 ) ;
 
begin

	process(clk, reset)

begin
	if(reset = '1') then
		r_reg <=(others => '0');
	elsif(clk'event and clk = '1') then
		r_reg <= r_next;
	end if;
end process ;
--n e x t - s t a t e l o g i c

r_next <= ( others => '0' ) when r_reg=(M - 1) else
			r_reg + 1;
			
--o u t p u t l o g i c

q <= std_logic_vector(r_reg);
max_tick <= '1' when r_reg=(M - 1) else '0';

end Behavioral;

