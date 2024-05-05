----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.04.2024 15:37:28
-- Design Name: 
-- Module Name: DECODER_3x8 - Structural
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

ENTITY DECODER_3x8 IS
	PORT (
		ADEC  : IN  STD_LOGIC;
		BDEC  : IN  STD_LOGIC;
		ENDEC : IN  STD_LOGIC;
		ODEC  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END DECODER_3x8;

ARCHITECTURE Structural OF DECODER_3x8 IS

	COMPONENT DECODER_2x4 IS
		PORT (
			A  : IN  STD_LOGIC;
			B  : IN  STD_LOGIC;
			EN : IN  STD_LOGIC;
			O  : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT;

	SIGNAL sig : STD_LOGIC;

BEGIN

	sig <= NOT ENDEC;
	DECODER1 : DECODER_2x4 PORT MAP(ADEC, BDEC, sig, ODEC (3 DOWNTO 0));
	DECODER2 : DECODER_2x4 PORT MAP(ADEC, BDEC, ENDEC, ODEC (7 DOWNTO 4));

END Structural;

