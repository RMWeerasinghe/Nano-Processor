----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/26/2022 10:42:18 AM
-- Design Name: 
-- Module Name: Converter - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Converter is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           A_com : out STD_LOGIC_VECTOR (3 downto 0));
end Converter;

architecture Behavioral of Converter is

component RCA_4
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end component;
signal num : STD_LOGIC_VECTOR (3 downto 0);
signal cin,cout: STD_LOGIC:='0';
begin

RCA_4_0: RCA_4
Port map ( 
           A => num,
           B => "0001",
           C_in => cin,
           S => A_com,
           C_out => cout);
           
num <= NOT(A);


end Behavioral;
