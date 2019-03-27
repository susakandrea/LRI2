----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:34 03/13/2019 
-- Design Name: 
-- Module Name:    transmitter - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transmitter is
    Port ( tick : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d_in : in  STD_LOGIC_VECTOR (7 downto 0);
           tx_start : in  STD_LOGIC;
           tx : out  STD_LOGIC);
end transmitter;

architecture Behavioral of transmitter is

	type Stanje is (S1, S2, S3, S4, S5);
	signal trenutno, sljedece : Stanje;
	signal brojacPodataka : std_logic_vector(2 downto 0) := (others => '0');
	signal brojac : std_logic_vector(3 downto 0) := (others => '0');
begin

	process(tick, rst)
	begin
		if rst = '0' then
			brojac <= (others => '0');
			trenutno <= S1;
			brojacPodataka <= (others => '0');
		elsif rising_edge(tick) then
			if (trenutno = S2 and sljedece = S2) or brojac = "1111" then
				brojac <= (others => '0');
				trenutno <= sljedece;
				if trenutno = S4 then
					brojacPodataka <= brojacPodataka + 1;
				else
					brojacPodataka <= (others => '0');
				end if;
			else
				brojac <= brojac + 1;
			end if;
		end if;
	end process;
	
	
	process(trenutno, tx_start, brojacPodataka, d_in)
	begin
	
		tx <= '1';
		sljedece <= S1;
		
		case trenutno is
			when S1 =>
				tx <= '1';
				sljedece <= S2;
			when S2 =>
				tx <= '1';
				if tx_start = '1' then
					sljedece <= S3;
				else
					sljedece <= S2;
				end if;
			when S3 =>
				tx <= '0';
				sljedece <= S4;
			when S4 =>
				tx <= d_in(conv_integer(brojacPodataka));
				if brojacPodataka = "111" then
					sljedece <= S5;
				else
					sljedece <= S4;
				end if;
			when S5 =>
				tx <= '1';
				sljedece <= S2;
			when others =>
				null;
		end case;		
	end process;
end Behavioral;

