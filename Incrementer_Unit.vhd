----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2024 10:57:54
-- Design Name: 
-- Module Name: INCU - Structural
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

ENTITY INCU IS
	PORT (
		A    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		S    : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		COUT : OUT STD_LOGIC);
END INCU;

ARCHITECTURE Structural OF INCU IS

	COMPONENT HA IS
		PORT (
			A : IN  STD_LOGIC;
			B : IN  STD_LOGIC;
			S : OUT STD_LOGIC;
			C : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL cp  : STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL inc : STD_LOGIC;

BEGIN

	inc <= '1';
	HA1 : HA PORT MAP(A(0), inc, S(0), cp(0));
	HA2 : HA PORT MAP(A(1), cp(0), S(1), cp(1));
	HA3 : HA PORT MAP(A(2), cp(1), S(2), cp(2));
	HA4 : HA PORT MAP(A(3), cp(2), S(3), COUT);

END Structural;

