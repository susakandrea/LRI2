----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:06 03/13/2019 
-- Design Name: 
-- Module Name:    uart_controller - Behavioral 
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

entity uart_controller is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           tx : out  STD_LOGIC);
end uart_controller;

architecture Behavioral of uart_controller is

	component transmitter is
		 Port ( tick : in  STD_LOGIC;
				  rst : in  STD_LOGIC;
				  d_in : in  STD_LOGIC_VECTOR (7 downto 0);
				  tx_start : in  STD_LOGIC;
				  tx : out  STD_LOGIC);
	end component;

	component receiver is
		 Port ( rx : in  STD_LOGIC;
				  tick : in  STD_LOGIC;
				  rst : in  STD_LOGIC;
				  d_out : out  STD_LOGIC_VECTOR (7 downto 0);
				  rx_out : out  STD_LOGIC);
	end component;

	component brg is
		 Port ( clk : in  STD_LOGIC;
				  rst : in  STD_LOGIC;
				  tick : out  STD_LOGIC);
	end component;
	
	signal tick_reg : std_logic := '0';
	signal rx_done : std_logic := '0';
	signal data : std_logic_vector(7 downto 0) := (others => '0');

begin
	
	trans : component transmitter port map( tick => tick_reg,
													rst => rst,
													d_in => data,
													tx_start => rx_done,
													tx => tx);
													
	rec : component receiver port map( rx => rx,
											tick => tick_reg,
											rst => rst,
											d_out => data,
											rx_out => rx_done);
											
	baud : component brg port map( clk => clk,
							  rst => rst,
							  tick => tick_reg);


end Behavioral;

