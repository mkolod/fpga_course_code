library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sseg1 is
    Port ( dips : in  STD_LOGIC_VECTOR (3 downto 0);
           sseg : out  STD_LOGIC_VECTOR (7 downto 0));
end sseg1;



architecture my_vhdl of sseg1 is
begin
	with dips select
		sseg(6 downto 0) <=       -- active low so a '1' turns segment off
			"0000001" when "0000", --0
			"1001111" when "0001", --1
			"0010010" when "0010", --2
			"0000110" when "0011", --3
			"1001100" when "0100", --4
			"0100100" when "0101", --5
			"0100000" when "0110", --6
			"0001111" when "0111", --7
			"0000000" when "1000", --8
			"0000100" when "1001", --9
			"0001000" when "1010", --a
			"1100000" when "1011", --b
			"0110001" when "1100", --c
			"1000010" when "1101", --d
			"0110000" when "1110", --e
			"0111000" when others; --f
	       sseg(7) <= '0';--dp;    --8th segment is decimal point
	
	-- enable  <=  '1';
	-- enable1 <=  '0';
	-- enable2 <=  '1';
		
end my_vhdl;
