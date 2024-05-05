----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 20:21:40
-- Design Name: 
-- Module Name: ASC - Structural
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

ENTITY ASC IS
	PORT (
		AC    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		BC    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		SW    : IN  STD_LOGIC;
		SC    : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		COUTC : OUT STD_LOGIC);
END ASC;

ARCHITECTURE Structural OF ASC IS

	COMPONENT FA IS
		PORT (
			AF   : IN  STD_LOGIC;
			BF   : IN  STD_LOGIC;
			CIN  : IN  STD_LOGIC;
			SF   : OUT STD_LOGIC;
			COUT : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL sig : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL cp  : STD_LOGIC_VECTOR (2 DOWNTO 0);

BEGIN

	sig(0) <= SW XOR BC(0);
	sig(1) <= SW XOR BC(1);
	sig(2) <= SW XOR BC(2);
	sig(3) <= SW XOR BC(3);

	FA1 : FA PORT MAP(AC(0), sig(0), SW, SC(0), cp(0));
	FA2 : FA PORT MAP(AC(1), sig(1), cp(0), SC(1), cp(1));
	FA3 : FA PORT MAP(AC(2), sig(2), cp(1), SC(2), cp(2));
	FA4 : FA PORT MAP(AC(3), sig(3), cp(2), SC(3), COUTC);

END Structural;

