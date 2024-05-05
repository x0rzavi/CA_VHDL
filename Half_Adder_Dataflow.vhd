----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 19:54:43
-- Design Name: 
-- Module Name: HA - Dataflow
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

ENTITY HA IS
	PORT (
		A : IN  STD_LOGIC;
		B : IN  STD_LOGIC;
		S : OUT STD_LOGIC;
		C : OUT STD_LOGIC);
END HA;

ARCHITECTURE Dataflow OF HA IS

BEGIN

	S <= A XOR B;
	C <= A AND B;

END Dataflow;

