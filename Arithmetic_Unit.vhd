----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2024 18:53:33
-- Design Name: 
-- Module Name: AU - Behavioral
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

ENTITY AU IS
	PORT (
		A   : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		B   : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		SEL : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
		F   : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END AU;

ARCHITECTURE Behavioral OF AU IS
BEGIN

	PROCESS (A, B, SEL)
		VARIABLE BBAR : STD_LOGIC_VECTOR (3 DOWNTO 0);
	BEGIN

		BBAR := NOT B;
		CASE SEL IS
			WHEN "000"  => F  <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B));
			WHEN "001"  => F  <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B) + 1);
			WHEN "010"  => F  <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(BBAR));
			WHEN "011"  => F  <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(BBAR) + 1);
			WHEN "100"  => F  <= STD_LOGIC_VECTOR(unsigned(A) - 1);
			WHEN "101"  => F  <= A;
			WHEN "110"  => F  <= A;
			WHEN "111"  => F  <= STD_LOGIC_VECTOR(unsigned(A) + 1);
			WHEN OTHERS => F <= "UUUU";
		END CASE;

	END PROCESS;
END Behavioral;

