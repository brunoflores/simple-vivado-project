library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity first_system2_tb is
end first_system2_tb;

architecture dataflow of first_system2_tb is

signal in1t : std_logic := '0';
signal in2t : std_logic := '0';
signal out1t : std_logic := '0';
signal out2t : std_logic := '0';

component first_system
port(in1  : in std_logic;
     in2  : in std_logic;
     out1 : out std_logic;
     out2 : out std_logic);
end component;

begin

UUT : first_system port map (
    in1 => in1t,
    in2 => in2t,
    out1 => out1t,
    out2 => out2t);

process begin
wait for 100ns;
in1t <= '0'; in2t <= '0';

wait for 100ns;
in1t <= '0'; in2t <= '1';

wait for 100ns;
in1t <= '1'; in2t <= '0';

wait for 100ns;
in1t <= '1'; in2t <= '1';
wait;
end process;

end dataflow;
