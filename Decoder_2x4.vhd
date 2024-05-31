----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.04.2024 15:37:28
-- Design Name: 
-- Module Name: DECODER_2x4 - Behavioral
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

ENTITY DECODER_2x4 IS
	PORT (
		A  : IN  STD_LOGIC;
		B  : IN  STD_LOGIC;
		EN : IN  STD_LOGIC;
		O  : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END DECODER_2x4;

ARCHITECTURE Behavioral OF DECODER_2x4 IS

BEGIN

	PROCESS (A, B, EN)

	BEGIN

		IF EN = '1' THEN
			O(0) <= (NOT A) AND (NOT B);
			O(1) <= (NOT A) AND B;
			O(2) <= A AND (NOT B);
			O(3) <= A AND B;
		ELSE
			O <= "0000";
		END IF;

	END PROCESS;

END Behavioral;

