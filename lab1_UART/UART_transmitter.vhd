----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:44:28 03/21/2019 
-- Design Name: 
-- Module Name:    UART_transmitter - Behavioral 
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

entity UART_transmitter is
generic(
			data_bit : integer := 8;
			tick : integer := 16
			);
port(
		clk, reset : in std_logic;
		tx : in std_logic;
		s_tick : in std_logic;
		din : in std_logic_vector(7 downto 0);
		tx_done : out std_logic;
		tx_out : out std_logic
		);
		
end UART_transmitter;

architecture Behavioral of UART_transmitter is

type state_type is (idle, start, data, stop); --stanja FSM
signal state_reg, state_next : state_type;
signal s_reg, s_next : unsigned(3 downto 0);
signal n_reg, n_next : unsigned(2 downto 0);
signal b_reg, b_next : std_logic_vector(7 downto 0);
signal tx_reg, tx_next : std_logic;

begin

	process(clk, reset, tx_next)
	begin
		if(reset = '1') then
			state_reg <= idle;
			s_reg <= "0000";
			n_reg <= "000";
			b_reg <= "00000000";
			tx_reg <= '1';
		elsif(clk'event and clk = '1') then
			state_reg <= state_next;
			s_reg <= s_next;
			n_reg <= n_next;
			b_reg <= b_next;
			tx_reg <= tx_next;
		
		end if;
	end process;
	
	process(state_reg, s_reg, n_reg, b_reg, s_tick, tx_reg, tx, din)
	begin
		state_next <= state_reg;
		s_next <= s_reg;
		n_next <= n_reg;
		b_next <= b_reg;
		tx_next <= tx_reg;
		tx_done <= '0';
		
		case state_reg is
			
			when idle =>
				tx_next <= '1';
				if(tx = '1') then
					state_next <= start;
					s_next <= "0000";
					b_next <= din;
				end if;
			
			when start =>
				tx_next <= '1';
				if(s_tick = '1') then
					if(s_reg = 15) then
						state_next <= data;
						s_next <= "0000";
						n_next <= "000";
					else
						s_next <= s_reg + 1;
					end if;
				end if;
			
			when data =>
				tx_next <= b_reg(0);
				if(s_tick = '1') then
					if s_reg = 15 then
						s_next <= "0000";
						b_next <= '0' & b_reg(7 downto 1);
						if (n_reg = (data_bit-1)) then
							state_next <= stop;
						else
							n_next <= n_reg + 1;
						end if;
					else
						s_next <= s_reg + 1;
					end if;
				end if;
				
			when stop =>
				tx_next <= '1';
				if(s_tick = '1') then
					if s_reg = (tick - 1) then
						state_next <= idle;
						tx_done <= '1';
					else
						s_next <= s_reg + 1;
					end if;
				end if;
			when others =>
		end case;
	end process;

tx_out <= tx_reg;

end Behavioral;

