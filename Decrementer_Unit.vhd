----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2024 11:06:20
-- Design Name: 
-- Module Name: DECU - Structural
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

ENTITY DECU IS
	PORT (
		A    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		S    : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		COUT : OUT STD_LOGIC);
END DECU;

ARCHITECTURE Structural OF DECU IS

	COMPONENT FA IS
		PORT (
			AF   : IN  STD_LOGIC;
			BF   : IN  STD_LOGIC;
			CIN  : IN  STD_LOGIC;
			SF   : OUT STD_LOGIC;
			COUT : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL dec : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL cp  : STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL cin : STD_LOGIC;

BEGIN

	dec <= "1111";
	cin <= '0';
	FA1 : FA PORT MAP(A(0), dec(0), cin, S(0), cp(0));
	FA2 : FA PORT MAP(A(1), dec(1), cp(0), S(1), cp(1));
	FA3 : FA PORT MAP(A(2), dec(2), cp(1), S(2), cp(2));
	FA4 : FA PORT MAP(A(3), dec(3), cp(2), S(3), COUT);

END Structural;

