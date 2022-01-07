----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:20:42 04/22/2021 
-- Design Name: 
-- Module Name:    Room - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Room is 
port (inp: in std_logic;
ent: in std_logic;
gout: in std_logic;
res : in std_logic;
clk : in std_logic;
cun : out std_logic_vector(4 downto 0);
close: out std_logic);
end Room;

architecture Behavioral of Room is

--component
component counter is
port (u : in std_logic;
clk : in std_logic;
clr :in std_logic;
en : in std_logic;
cun : out std_logic_vector(4 downto 0));
end component counter;

--signal
signal u : std_logic;
signal clr : std_logic;
signal en :  std_logic;
signal cunt :  std_logic_vector(4 downto 0):="00000";
signal clos :  std_logic := '0' ;

begin
	p : counter port map (u,clk,clr,en,cunt);
	
process (clk)
begin
if rising_edge(clk) then
if (res = '0') then
	if (inp = '1') then
		if (ent = '1') then
			-------------------------
			if (gout = '0') then --if gout=0 & inp=1
				-------------------------
				if (cunt < "01110") then --agar otagh ja dasht & inp=1
					u   <= '1';
					en  <= '1';
					clos<= '0';
					clr <= '0';
				elsif (cunt = "01110") then --agar otagh ja nadasht & inp=1	
					en  <= '0';
					clr <= '0';
				end if;
				-------------------------
			elsif (gout = '1') then -- gout=1 & inp=1
				en  <= '0';
				clr <= '0';
			end if;
			-------------------------
		else --if ent=0
			en  <= '0';
			clr <= '0';
		end if;
	elsif (gout = '1') then -- gout=1
		-------------------------
		if (inp = '0') then -- gout=1 & inp=0
			-------------------------
			if (cunt > "00001") then
				u   <= '0';
				en  <= '1';
				clr <= '0';
			elsif (cunt = "00001") then
				u   <= '0';
				en  <= '1';
				clos<= '1';
				clr <= '1';
			elsif (cunt = "00000") then
				en  <= '0';
				clos<= '1';
				clr <= '0';
			end if;
			-------------------------
		else --gout=1 & inp=1
			en  <= '0';
			clr <= '0';
		end if;
		-------------------------
	end if;
else
	clr <= '1';
end if;
end if;
close <= clos;
cun <= cunt;

end process;
end Behavioral;

