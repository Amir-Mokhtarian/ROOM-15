--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:24:30 04/22/2021
-- Design Name:   
-- Module Name:   C:/users/crossover/Desktop/My Mac Desktop/UNI/Term 8/VHDL/az03/Room15/counter_tb.vhd
-- Project Name:  Room15
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY counter_tb IS
END counter_tb;
 
ARCHITECTURE behavior OF counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         u : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         en : IN  std_logic;
         cun : out std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal u : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal cun : std_logic_vector(3 downto 0) ;

   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          u => u,
          clk => clk,
          clr => clr,
          en => en,
          cun => cun
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 10 ns ;
		clk <= '1';
		wait for 10 ns ;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

clr <= '0';
en <= '1';
u <= '1';
wait for 10 ns ;

clr <= '0';
en <= '1';
u <= '0';
wait for 10 ns ;

clr <= '0';
en <= '1';
u <= '0';
wait for 10 ns ;

      -- insert stimulus here 

      wait;
   end process;

END;
