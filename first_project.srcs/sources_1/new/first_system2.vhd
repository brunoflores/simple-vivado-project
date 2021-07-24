library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity first_system2 is
port(in1  : in std_logic;
     in2  : in std_logic;
     out1 : out std_logic;
     out2 : out std_logic);
end first_system2;

architecture dataflow_model of first_system2 is
begin
out1 <= (in1 and in2) xor (in1 or in2);
out2 <= not in1;
end dataflow_model;
