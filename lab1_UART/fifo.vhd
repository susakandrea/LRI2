----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:09:34 03/21/2019 
-- Design Name: 
-- Module Name:    fifo - Behavioral 
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

entity fifo is

generic(
			B: integer := 8; 
			W: integer := 4 
		);
port(
		clk, reset : in std_logic;
		rd, wr : in std_logic;
		w_data : in std_logic_vector(B-1 downto 0);
		empty, full : out std_logic;
		r_data : out std_logic_vector( B-1 downto 0)
		);
end fifo;

architecture Behavioral of fifo is

type reg_file_type is array (2**W-1 downto 0) of
		std_logic_vector(B-1 downto 0);
signal array_reg : reg_file_type;
signal w_ptr_reg, w_ptr_next, w_ptr_succ : std_logic_vector(W-1 downto 0);
signal r_ptr_reg, r_ptr_next, r_ptr_succ : std_logic_vector(W-1 downto 0);
signal full_reg, empty_reg, full_next, empty_next : std_logic;
signal wr_op : std_logic_vector(1 downto 0);
signal wr_en : std_logic;

begin

	process(clk, reset)
	begin
		if(reset = '1') then
			array_reg <= (others =>(others => '0'));
		elsif(clk'event and clk = '1') then
			if wr_en = '1' then
				array_reg(to_integer(unsigned(w_ptr_reg))) <= w_data;
			end if;
		end if;
	end process;
	
r_data <= array_reg(to_integer(unsigned(r_ptr_reg))); --read port
wr_en <= wr and (not full_reg); --write enabled only when fifo is not full
	
	process(clk, reset)
	begin
		if(reset = '1') then
			w_ptr_reg <= (others => '0');
			r_ptr_reg <= (others => '0');
			full_reg <= '0';
			empty_reg <= '1';
		elsif(clk'event and clk = '1') then
			w_ptr_reg <= w_ptr_next;
			r_ptr_reg <= r_ptr_next;
			full_reg <= full_next;
			empty_reg <= empty_next;
		end if;
	end process;

w_ptr_succ <= std_logic_vector(unsigned(w_ptr_reg) + 1 );
r_ptr_succ <= std_logic_vector(unsigned(r_ptr_reg) + 1 );

wr_op <= wr & rd;

process(w_ptr_reg, w_ptr_succ, r_ptr_reg, r_ptr_succ, wr_op, empty_reg, full_reg)

begin
	w_ptr_next <= w_ptr_reg;
	r_ptr_next <= r_ptr_reg;
	full_next <= full_reg;
	empty_next <= empty_reg;
	
	case wr_op is
		when "00" => --ni�ta
		when "01" => --�itaj
			if(empty_reg /= '1') then --nije prazan
				r_ptr_next <= r_ptr_succ;
				full_next <= '0';
				if(r_ptr_succ = w_ptr_reg) then
					empty_next <= '1';
				end if;
			end if;
		when "10" => --pi�i
			if(full_reg /= '1')then --nije pun
				w_ptr_next <= w_ptr_succ;
				empty_next <= '0';
				if(w_ptr_succ = r_ptr_reg) then
					full_next <= '1';
				end if;
			end if;
		when others => --pisanje/�itanje
			w_ptr_next <= w_ptr_succ;
			r_ptr_next <= r_ptr_succ;
		end case;
end process;

full <= full_reg;
empty <= empty_reg;
		
end Behavioral;

