-------------------------------------------------------------------------------
-- Copyright (c) 2019 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : ila_pro_0.vhd
-- /___/   /\     Timestamp  : Wed Mar 20 13:40:28 Srednja Europa - st. vrij. 2019
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ila_pro_0 IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    TRIG0: in std_logic_vector(0 to 0);
    TRIG1: in std_logic_vector(0 to 0);
    TRIG2: in std_logic_vector(0 to 0));
END ila_pro_0;

ARCHITECTURE ila_pro_0_a OF ila_pro_0 IS
BEGIN

END ila_pro_0_a;
