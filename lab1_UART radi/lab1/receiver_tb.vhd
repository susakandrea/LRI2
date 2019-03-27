--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:14:00 03/19/2019
-- Design Name:   
-- Module Name:   C:/Users/Karlo/Desktop/lri2/lab1/receiver_tb.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: receiver
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
 
ENTITY receiver_tb IS
END receiver_tb;
 
ARCHITECTURE behavior OF receiver_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT receiver
    PORT(
         rx : IN  std_logic;
         tick : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         d_out : OUT  std_logic_vector(7 downto 0);
         rx_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rx : std_logic := '0';
   signal tick : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal d_out : std_logic_vector(7 downto 0);
   signal rx_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 7 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: receiver PORT MAP (
          rx => rx,
          tick => tick,
          clk => clk,
          rst => rst,
          d_out => d_out,
          rx_out => rx_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		tick <= '0';
		wait for clk_period/2;
		tick <= '1';
		wait for clk_period/2;
   end process;
 
	rx <= '1', '0' after 10 us, '1' after 59 us, '0' after 374 us, '1' after 584 us;

END;
