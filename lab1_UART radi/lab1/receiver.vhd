----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:07:39 03/13/2019 
-- Design Name: 
-- Module Name:    receiver - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity receiver is
    Port ( rx : in  STD_LOGIC;
           tick : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           d_out : out  STD_LOGIC_VECTOR (7 downto 0);
           rx_out : out  STD_LOGIC);
end receiver;

architecture Behavioral of receiver is

	type Stanje is (S1, S2, S3, S4);
	signal trenutno, sljedece : Stanje;
	signal d_out_reg : std_logic_vector(7 downto 0) := (others => '0');
	signal brojacPodataka : std_logic_vector(2 downto 0) := (others => '0');
	signal brojac : std_logic_vector(3 downto 0) := (others => '0');
	
begin

	process(tick, rst) is
	begin
		if rst = '0' then
			brojac <= (others => '0');
			trenutno <= S1;
			brojacPodataka <= (others => '0');
			d_out_reg <= (others => '0');
		elsif rising_edge(tick) then
			if (trenutno = S2 and sljedece = S2) or (trenutno = S2 and sljedece = S3 and brojac = "0111") or
				brojac = "1111" then 
				
				brojac <= (others => '0');
				trenutno <= sljedece;
				if trenutno = S3 then
					d_out_reg <= rx & d_out_reg(7 downto 1);
					brojacPodataka <= brojacPodataka + 1;
				else
					brojacPodataka <= (others => '0');
				end if;
				
			else
				brojac <= brojac + 1;
			end if;
		end if;
	end process;
	
	process(trenutno, rx, brojacPodataka)
	begin
	
		rx_out <= '0';
		sljedece <= S1;
		
		case trenutno is
			when S1 =>
				rx_out <= '0';
				sljedece <= S2;
			when S2 =>
				rx_out <= '0';
				if rx = '0' then
					sljedece <= S3;
				else
					sljedece <= S2;
				end if;
			when S3 =>
				rx_out <= '0';
				if brojacPodataka = "111" then 
					sljedece <= S4;
				else
					sljedece <= S3;
				end if;
			when S4 =>
				rx_out <= '1';
				if rx = '1' then
					sljedece <= S2;
				else
					sljedece <= S4;
				end if;
			when others =>
				null;
		end case;
	end process;
	
	d_out <= d_out_reg;

end Behavioral;

