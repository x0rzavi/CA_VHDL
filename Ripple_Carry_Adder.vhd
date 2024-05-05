----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 20:04:13
-- Design Name: 
-- Module Name: RC - Structural
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

ENTITY RC IS
	PORT (
		AR    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		BR    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		CINR  : IN  STD_LOGIC;
		SR    : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		COUTR : OUT STD_LOGIC);
END RC;

ARCHITECTURE Structural OF RC IS

	COMPONENT FA IS
		PORT (
			AF   : IN  STD_LOGIC;
			BF   : IN  STD_LOGIC;
			CIN  : IN  STD_LOGIC;
			SF   : OUT STD_LOGIC;
			COUT : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL sig : STD_LOGIC_VECTOR (2 DOWNTO 0);

BEGIN

	FA1 : FA PORT MAP(AR(0), BR(0), CINR, SR(0), sig(0));
	FA2 : FA PORT MAP(AR(1), BR(1), sig(0), SR(1), sig(1));
	FA3 : FA PORT MAP(AR(2), BR(2), sig(1), SR(2), sig(2));
	FA4 : FA PORT MAP(AR(3), BR(3), sig(2), SR(3), COUTR);

END Structural;

