----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2024 19:44:00
-- Design Name: 
-- Module Name: RAM - Behavioral
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

ENTITY RAM IS
	PORT (
		CLK  : IN    STD_LOGIC;
		CS   : IN    STD_LOGIC;
		R    : IN    STD_LOGIC;
		W    : IN    STD_LOGIC;
		CLR  : IN    STD_LOGIC;
		ADDR : IN    STD_LOGIC_VECTOR (6 DOWNTO 0);
		DBUS : INOUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END RAM;

ARCHITECTURE Behavioral OF RAM IS
	TYPE RAM_ARR IS ARRAY (0 TO 127) OF STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL RAM_DATA : RAM_ARR;
BEGIN

	PROCESS (CLK)
	BEGIN

		IF (rising_edge(CLK) AND CS = '1') THEN
			IF W = '1' THEN
				RAM_DATA(to_integer(unsigned(ADDR))) <= DBUS;
			END IF;

			IF R = '1' THEN
				DBUS <= RAM_DATA(to_integer(unsigned(ADDR)));
			END IF;

			IF CLR = '1' THEN
				FOR i IN 0 TO 127 LOOP
					RAM_DATA(i) <= "UUUUUUUU";
				END LOOP;
			END IF;
		END IF;

	END PROCESS;
END Behavioral;

