	----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:26 04/21/2021 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
port (u : in std_logic;
clk : in std_logic;
clr :in std_logic;
en : in std_logic;
cun : out std_logic_vector(4 downto 0));

end counter;

architecture Behavioral of counter is
signal c : std_logic_vector(4 downto 0) := "00000";
signal one : integer := 1;

signal output_1a : std_logic_vector(4 downto 0) := "00000";
begin
--output_1a <= std_logic_vector(to_signed(c,4));
process (clk,u,clr,en)
begin
if rising_edge(Clk) then
--		output_1a <= std_logic_vector(to_signed(c,4));
			if ( clr = '0' ) then
				if ( en = '1') then
					if ( u = '1') then
					   c <= c + "00001" ; 
					else 
						c <= c - "00001" ;
					end if;
				else -- en=0
					null;
				end if;
			elsif ( clr = '1') then
				c <= "00000" ;
			end if;
--		c <= to_integer(unsigned(output_1a));
end if;	
   
-- This line demonstrates how to convert positive integers
cun <= c;

end process;
end Behavioral;