----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 19:54:43
-- Design Name: 
-- Module Name: FA - Structural
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

ARCHITECTURE Structural OF FA IS

	COMPONENT HA IS
		PORT (
			A : IN  STD_LOGIC;
			B : IN  STD_LOGIC;
			S : OUT STD_LOGIC;
			C : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL sig1, sig2, sig3 : STD_LOGIC;

BEGIN

	HA1 : HA PORT MAP(AF, BF, sig1, sig2);
	HA2 : HA PORT MAP(sig1, CIN, SF, sig3);
	COUT <= sig2 OR sig3;

END Structural;

