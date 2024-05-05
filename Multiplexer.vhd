----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 20:37:13
-- Design Name: 
-- Module Name: MUX - Behavioral
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

ENTITY MUX IS
	PORT (
		I : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		S : IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		O : OUT STD_LOGIC);
END MUX;

ARCHITECTURE Behavioral OF MUX IS

BEGIN

	PROCESS (I, S)

	BEGIN

		CASE S IS
			WHEN "00"   => O   <= I(0);
			WHEN "01"   => O   <= I(1);
			WHEN "10"   => O   <= I(2);
			WHEN "11"   => O   <= I(3);
			WHEN OTHERS => O <= 'U';
		END CASE;

	END PROCESS;

END Behavioral;

