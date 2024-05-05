----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2024 18:26:49
-- Design Name: 
-- Module Name: REST_DIV - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY REST_DIV IS
	PORT (
		D : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		M : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		R : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END REST_DIV;

ARCHITECTURE Behavioral OF REST_DIV IS
BEGIN

	PROCESS (D, M)
		VARIABLE AC   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		VARIABLE MBAR : STD_LOGIC_VECTOR (3 DOWNTO 0);
	BEGIN

		MBAR := NOT M;
		AC   := "0000" & D;
		FOR i IN 1 TO 4 LOOP
			AC              := AC (6 DOWNTO 0) & 'U';
			AC (7 DOWNTO 4) := STD_LOGIC_VECTOR(unsigned(AC (7 DOWNTO 4)) + unsigned(MBAR) + "0001");

			IF AC(7) = '1' THEN
				AC(0)           := '0';
				AC (7 DOWNTO 4) := STD_LOGIC_VECTOR(unsigned(AC (7 DOWNTO 4)) + unsigned(M));
			ELSE
				AC(0) := '1';
			END IF;
		END LOOP;

		Q <= AC (3 DOWNTO 0);
		R <= AC (7 DOWNTO 4);

	END PROCESS;
END Behavioral;

