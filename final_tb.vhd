--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:08:27 04/22/2021
-- Design Name:   
-- Module Name:   C:/users/crossover/Desktop/My Mac Desktop/UNI/Term 8/VHDL/az03/Room15/final_tb.vhd
-- Project Name:  Room15
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Room
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
 
ENTITY final_tb IS
END final_tb;
 
ARCHITECTURE behavior OF final_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Room
    PORT(
         inp : IN  std_logic;
         ent : IN  std_logic;
         gout : IN  std_logic;
         res : IN  std_logic;
			clk : IN std_logic;
			cun : OUT std_logic_vector(4 downto 0);
         close : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic := '0';
   signal ent : std_logic := '0';
   signal gout : std_logic := '0';
   signal res : std_logic := '0';
	signal clk : std_logic := '0';
 	--Outputs
   signal close : std_logic;
	signal cun : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Room PORT MAP (
          inp => inp,
          ent => ent,
          gout => gout,
          res => res,
			 clk => clk,
			 cun => cun,
          close => close
        );

   -- Clock process definitions
 clock : process
   begin
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';

      wait for 10 ns; --vorod	
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --khoroj
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';

-------------------------------vorode 15 nafar
      wait for 10 ns; --vorod	1
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	2
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	3
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	4
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	5
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	6
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	7
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	8
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';

      wait for 10 ns; --vorod	9
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	10
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	11
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	12
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	13
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	14
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	15
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	16
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	16
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	16
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	16
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	16
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
      wait for 10 ns; --vorod	16
inp <= '1';
ent <= '1';
gout<= '0';
res <= '0';
---------------------------------0
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';
		wait for 10 ns; -- 0 kardane hame
inp <= '0';
ent <= '0';
gout<= '0';
res <= '0';

---------------------------------khoroj 15 nafar
      wait for 10 ns; --khoroj 1
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 2
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 3
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 4
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 5
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 6
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 7
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 8
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 8
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 9
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 10
inp <= '0'; 
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 11
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 12
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 13
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 14
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 15
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
----------------------------------0
      wait for 10 ns; --khoroj 15
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';
      wait for 10 ns; --khoroj 15
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';

      wait for 10 ns; --khoroj 15
inp <= '0';
ent <= '0';
gout<= '1';
res <= '0';

---------------------------------ham vorod ham khoroj
      wait for 10 ns; --khoroj 15
inp <= '1';
ent <= '1';
gout<= '1';
res <= '0';



      -- insert stimulus here 
		
wait for 10 ns;
      wait;
   end process;

END;
