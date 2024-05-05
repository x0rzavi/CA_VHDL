----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2024 20:11:01
-- Design Name: 
-- Module Name: FA - Behavioral
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

ENTITY FA IS
	PORT (
		AF   : IN  STD_LOGIC;
		BF   : IN  STD_LOGIC;
		CIN  : IN  STD_LOGIC;
		SF   : OUT STD_LOGIC;
		COUT : OUT STD_LOGIC);
END FA;

ARCHITECTURE Behavioral OF FA IS

BEGIN

	PROCESS (AF, BF, CIN)

		VARIABLE BITS : STD_LOGIC_VECTOR (2 DOWNTO 0);

	BEGIN

		BITS(2) := AF;
		BITS(1) := BF;
		BITS(0) := CIN;

		CASE BITS IS
			WHEN "000" => SF <= '0';
				COUT <= '0';
			WHEN "001" => SF <= '1';
				COUT <= '0';
			WHEN "010" => SF <= '1';
				COUT <= '0';
			WHEN "011" => SF <= '0';
				COUT <= '1';
			WHEN "100" => SF <= '1';
				COUT <= '0';
			WHEN "101" => SF <= '0';
				COUT <= '1';
			WHEN "110" => SF <= '0';
				COUT <= '1';
			WHEN "111" => SF <= '1';
				COUT <= '1';
			WHEN OTHERS => SF <= 'U';
				COUT <= 'U';
		END CASE;

	END PROCESS;

END Behavioral;

