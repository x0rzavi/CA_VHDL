----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.04.2024 14:53:00
-- Design Name: 
-- Module Name: DEMUX - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY DEMUX IS
	PORT (
		I : IN  STD_LOGIC;
		S : IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		O : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END DEMUX;

ARCHITECTURE Behavioral OF DEMUX IS

BEGIN

	PROCESS (I, S)

	BEGIN

		O <= "UUUU"; -- reset before every output
		CASE S IS
			WHEN "00"   => O(0) <= I;
			WHEN "01"   => O(1) <= I;
			WHEN "10"   => O(2) <= I;
			WHEN "11"   => O(3) <= I;
			WHEN OTHERS => O  <= "UUUU";
		END CASE;

	END PROCESS;

END Behavioral;

