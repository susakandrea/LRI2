--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:15:27 03/19/2019
-- Design Name:   
-- Module Name:   C:/Users/Karlo/Desktop/lri2/lab1/transmitter_tb.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transmitter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY transmitter_tb IS
END transmitter_tb;
 
ARCHITECTURE behavior OF transmitter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transmitter
    PORT(
         tick : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         d_in : IN  std_logic_vector(7 downto 0);
         tx_start : IN  std_logic;
         tx : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal tick : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal d_in : std_logic_vector(7 downto 0) := (others => '0');
   signal tx_start : std_logic := '0';

 	--Outputs
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 7 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transmitter PORT MAP (
          tick => tick,
          clk => clk,
          rst => rst,
          d_in => d_in,
          tx_start => tx_start,
          tx => tx
        );

   -- Clock process definitions
   clk_process :process
   begin
		tick <= '0';
		wait for clk_period/2;
		tick <= '1';
		wait for clk_period/2;
   end process;
 
	d_in <= "11011001";
	
	rst <= '1', '0' after 20 us;
	
	tx_start <= '0', '1' after 100 us, '0' after 107 us;

END;
