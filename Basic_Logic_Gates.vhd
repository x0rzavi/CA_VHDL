----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 19:19:58
-- Design Name: 
-- Module Name: basic_gates - Dataflow
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

ENTITY basic_gates IS
	PORT (
		A : IN  STD_LOGIC;
		B : IN  STD_LOGIC;
		C : OUT STD_LOGIC);
END basic_gates;

ARCHITECTURE Dataflow OF basic_gates IS

BEGIN

	-- C <= NOT A;
	-- C <= A OR B;
	-- C <= A AND B;
	C <= A XOR B;

END Dataflow;

