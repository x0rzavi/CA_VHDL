----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2024 09:57:03
-- Design Name: 
-- Module Name: UNSIGNED_MUL - Behavioral
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
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY UNSIGNED_MUL IS
	PORT (
		Q : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		M : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		R : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END UNSIGNED_MUL;

ARCHITECTURE Behavioral OF UNSIGNED_MUL IS

BEGIN

	PROCESS (Q, M)

		VARIABLE AC    : STD_LOGIC_VECTOR (8 DOWNTO 0);
		VARIABLE MULTD : STD_LOGIC_VECTOR (4 DOWNTO 0);

	BEGIN
		AC (8 DOWNTO 4) := "00000";
		AC (3 DOWNTO 0) := Q;
		MULTD           := '0' & M;

		FOR i IN 1 TO 4 LOOP

			IF AC(0) = '1' THEN
				AC (8 DOWNTO 4) := STD_LOGIC_VECTOR(unsigned(AC (8 DOWNTO 4)) + unsigned(MULTD));
			END IF;

			AC := '0' & AC (8 DOWNTO 1);
		END LOOP;
		R <= AC (7 DOWNTO 0);

	END PROCESS;
END Behavioral;

