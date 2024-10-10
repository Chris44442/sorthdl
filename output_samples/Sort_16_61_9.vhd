
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sorting_network is
  port(
    clk : in std_logic;
    data_0 : in std_logic_vector(31 downto 0);
    data_1 : in std_logic_vector(31 downto 0);
    data_2 : in std_logic_vector(31 downto 0);
    data_3 : in std_logic_vector(31 downto 0);
    data_4 : in std_logic_vector(31 downto 0);
    data_5 : in std_logic_vector(31 downto 0);
    data_6 : in std_logic_vector(31 downto 0);
    data_7 : in std_logic_vector(31 downto 0);
    data_8 : in std_logic_vector(31 downto 0);
    data_9 : in std_logic_vector(31 downto 0);
    data_10 : in std_logic_vector(31 downto 0);
    data_11 : in std_logic_vector(31 downto 0);
    data_12 : in std_logic_vector(31 downto 0);
    data_13 : in std_logic_vector(31 downto 0);
    data_14 : in std_logic_vector(31 downto 0);
    data_15 : in std_logic_vector(31 downto 0);
    sort_0 : out std_logic_vector(31 downto 0);
    sort_1 : out std_logic_vector(31 downto 0);
    sort_2 : out std_logic_vector(31 downto 0);
    sort_3 : out std_logic_vector(31 downto 0);
    sort_4 : out std_logic_vector(31 downto 0);
    sort_5 : out std_logic_vector(31 downto 0);
    sort_6 : out std_logic_vector(31 downto 0);
    sort_7 : out std_logic_vector(31 downto 0);
    sort_8 : out std_logic_vector(31 downto 0);
    sort_9 : out std_logic_vector(31 downto 0);
    sort_10 : out std_logic_vector(31 downto 0);
    sort_11 : out std_logic_vector(31 downto 0);
    sort_12 : out std_logic_vector(31 downto 0);
    sort_13 : out std_logic_vector(31 downto 0);
    sort_14 : out std_logic_vector(31 downto 0);
    sort_15 : out std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl of sorting_network is
  type data_array is array (natural range <>, natural range <>) of unsigned(31 downto 0);
  signal data : data_array(9 downto 0, 15 downto 0);
begin

data(0,0) <= unsigned(data_0);
data(0,1) <= unsigned(data_1);
data(0,2) <= unsigned(data_2);
data(0,3) <= unsigned(data_3);
data(0,4) <= unsigned(data_4);
data(0,5) <= unsigned(data_5);
data(0,6) <= unsigned(data_6);
data(0,7) <= unsigned(data_7);
data(0,8) <= unsigned(data_8);
data(0,9) <= unsigned(data_9);
data(0,10) <= unsigned(data_10);
data(0,11) <= unsigned(data_11);
data(0,12) <= unsigned(data_12);
data(0,13) <= unsigned(data_13);
data(0,14) <= unsigned(data_14);
data(0,15) <= unsigned(data_15);

process(clk) begin

  -- ###### Stage 0 ######
if rising_edge(clk) then
  if data(0,5) <= data(0,0) then
    data(1,5) <= data(0,5);
    data(1,0) <= data(0,0);
  else
    data(1,5) <= data(0,0);
    data(1,0) <= data(0,5);
  end if;
  if data(0,4) <= data(0,1) then
    data(1,4) <= data(0,4);
    data(1,1) <= data(0,1);
  else
    data(1,4) <= data(0,1);
    data(1,1) <= data(0,4);
  end if;
  if data(0,12) <= data(0,2) then
    data(1,12) <= data(0,12);
    data(1,2) <= data(0,2);
  else
    data(1,12) <= data(0,2);
    data(1,2) <= data(0,12);
  end if;
  if data(0,13) <= data(0,3) then
    data(1,13) <= data(0,13);
    data(1,3) <= data(0,3);
  else
    data(1,13) <= data(0,3);
    data(1,3) <= data(0,13);
  end if;
  if data(0,7) <= data(0,6) then
    data(1,7) <= data(0,7);
    data(1,6) <= data(0,6);
  else
    data(1,7) <= data(0,6);
    data(1,6) <= data(0,7);
  end if;
  if data(0,9) <= data(0,8) then
    data(1,9) <= data(0,9);
    data(1,8) <= data(0,8);
  else
    data(1,9) <= data(0,8);
    data(1,8) <= data(0,9);
  end if;
  if data(0,15) <= data(0,10) then
    data(1,15) <= data(0,15);
    data(1,10) <= data(0,10);
  else
    data(1,15) <= data(0,10);
    data(1,10) <= data(0,15);
  end if;
  if data(0,14) <= data(0,11) then
    data(1,14) <= data(0,14);
    data(1,11) <= data(0,11);
  else
    data(1,14) <= data(0,11);
    data(1,11) <= data(0,14);
  end if;
end if;

  -- ###### Stage 1 ######
if rising_edge(clk) then
  if data(1,2) <= data(1,0) then
    data(2,2) <= data(1,2);
    data(2,0) <= data(1,0);
  else
    data(2,2) <= data(1,0);
    data(2,0) <= data(1,2);
  end if;
  if data(1,10) <= data(1,1) then
    data(2,10) <= data(1,10);
    data(2,1) <= data(1,1);
  else
    data(2,10) <= data(1,1);
    data(2,1) <= data(1,10);
  end if;
  if data(1,6) <= data(1,3) then
    data(2,6) <= data(1,6);
    data(2,3) <= data(1,3);
  else
    data(2,6) <= data(1,3);
    data(2,3) <= data(1,6);
  end if;
  if data(1,7) <= data(1,4) then
    data(2,7) <= data(1,7);
    data(2,4) <= data(1,4);
  else
    data(2,7) <= data(1,4);
    data(2,4) <= data(1,7);
  end if;
  if data(1,14) <= data(1,5) then
    data(2,14) <= data(1,14);
    data(2,5) <= data(1,5);
  else
    data(2,14) <= data(1,5);
    data(2,5) <= data(1,14);
  end if;
  if data(1,11) <= data(1,8) then
    data(2,11) <= data(1,11);
    data(2,8) <= data(1,8);
  else
    data(2,11) <= data(1,8);
    data(2,8) <= data(1,11);
  end if;
  if data(1,12) <= data(1,9) then
    data(2,12) <= data(1,12);
    data(2,9) <= data(1,9);
  else
    data(2,12) <= data(1,9);
    data(2,9) <= data(1,12);
  end if;
  if data(1,15) <= data(1,13) then
    data(2,15) <= data(1,15);
    data(2,13) <= data(1,13);
  else
    data(2,15) <= data(1,13);
    data(2,13) <= data(1,15);
  end if;
end if;

  -- ###### Stage 2 ######
if rising_edge(clk) then
  if data(2,8) <= data(2,0) then
    data(3,8) <= data(2,8);
    data(3,0) <= data(2,0);
  else
    data(3,8) <= data(2,0);
    data(3,0) <= data(2,8);
  end if;
  if data(2,3) <= data(2,1) then
    data(3,3) <= data(2,3);
    data(3,1) <= data(2,1);
  else
    data(3,3) <= data(2,1);
    data(3,1) <= data(2,3);
  end if;
  if data(2,11) <= data(2,2) then
    data(3,11) <= data(2,11);
    data(3,2) <= data(2,2);
  else
    data(3,11) <= data(2,2);
    data(3,2) <= data(2,11);
  end if;
  if data(2,13) <= data(2,4) then
    data(3,13) <= data(2,13);
    data(3,4) <= data(2,4);
  else
    data(3,13) <= data(2,4);
    data(3,4) <= data(2,13);
  end if;
  if data(2,9) <= data(2,5) then
    data(3,9) <= data(2,9);
    data(3,5) <= data(2,5);
  else
    data(3,9) <= data(2,5);
    data(3,5) <= data(2,9);
  end if;
  if data(2,10) <= data(2,6) then
    data(3,10) <= data(2,10);
    data(3,6) <= data(2,6);
  else
    data(3,10) <= data(2,6);
    data(3,6) <= data(2,10);
  end if;
  if data(2,15) <= data(2,7) then
    data(3,15) <= data(2,15);
    data(3,7) <= data(2,7);
  else
    data(3,15) <= data(2,7);
    data(3,7) <= data(2,15);
  end if;
  if data(2,14) <= data(2,12) then
    data(3,14) <= data(2,14);
    data(3,12) <= data(2,12);
  else
    data(3,14) <= data(2,12);
    data(3,12) <= data(2,14);
  end if;
end if;

  -- ###### Stage 3 ######
if rising_edge(clk) then
  if data(3,1) <= data(3,0) then
    data(4,1) <= data(3,1);
    data(4,0) <= data(3,0);
  else
    data(4,1) <= data(3,0);
    data(4,0) <= data(3,1);
  end if;
  if data(3,4) <= data(3,2) then
    data(4,4) <= data(3,4);
    data(4,2) <= data(3,2);
  else
    data(4,4) <= data(3,2);
    data(4,2) <= data(3,4);
  end if;
  if data(3,8) <= data(3,3) then
    data(4,8) <= data(3,8);
    data(4,3) <= data(3,3);
  else
    data(4,8) <= data(3,3);
    data(4,3) <= data(3,8);
  end if;
  if data(3,6) <= data(3,5) then
    data(4,6) <= data(3,6);
    data(4,5) <= data(3,5);
  else
    data(4,6) <= data(3,5);
    data(4,5) <= data(3,6);
  end if;
  if data(3,12) <= data(3,7) then
    data(4,12) <= data(3,12);
    data(4,7) <= data(3,7);
  else
    data(4,12) <= data(3,7);
    data(4,7) <= data(3,12);
  end if;
  if data(3,10) <= data(3,9) then
    data(4,10) <= data(3,10);
    data(4,9) <= data(3,9);
  else
    data(4,10) <= data(3,9);
    data(4,9) <= data(3,10);
  end if;
  if data(3,13) <= data(3,11) then
    data(4,13) <= data(3,13);
    data(4,11) <= data(3,11);
  else
    data(4,13) <= data(3,11);
    data(4,11) <= data(3,13);
  end if;
  if data(3,15) <= data(3,14) then
    data(4,15) <= data(3,15);
    data(4,14) <= data(3,14);
  else
    data(4,15) <= data(3,14);
    data(4,14) <= data(3,15);
  end if;
end if;

  -- ###### Stage 4 ######
if rising_edge(clk) then
  if data(4,3) <= data(4,1) then
    data(5,3) <= data(4,3);
    data(5,1) <= data(4,1);
  else
    data(5,3) <= data(4,1);
    data(5,1) <= data(4,3);
  end if;
  if data(4,5) <= data(4,2) then
    data(5,5) <= data(4,5);
    data(5,2) <= data(4,2);
  else
    data(5,5) <= data(4,2);
    data(5,2) <= data(4,5);
  end if;
  if data(4,8) <= data(4,4) then
    data(5,8) <= data(4,8);
    data(5,4) <= data(4,4);
  else
    data(5,8) <= data(4,4);
    data(5,4) <= data(4,8);
  end if;
  if data(4,9) <= data(4,6) then
    data(5,9) <= data(4,9);
    data(5,6) <= data(4,6);
  else
    data(5,9) <= data(4,6);
    data(5,6) <= data(4,9);
  end if;
  if data(4,11) <= data(4,7) then
    data(5,11) <= data(4,11);
    data(5,7) <= data(4,7);
  else
    data(5,11) <= data(4,7);
    data(5,7) <= data(4,11);
  end if;
  if data(4,13) <= data(4,10) then
    data(5,13) <= data(4,13);
    data(5,10) <= data(4,10);
  else
    data(5,13) <= data(4,10);
    data(5,10) <= data(4,13);
  end if;
  if data(4,14) <= data(4,12) then
    data(5,14) <= data(4,14);
    data(5,12) <= data(4,12);
  else
    data(5,14) <= data(4,12);
    data(5,12) <= data(4,14);
  end if;
  data(5,0) <= data(4,0);
  data(5,15) <= data(4,15);
end if;

  -- ###### Stage 5 ######
if rising_edge(clk) then
  if data(5,2) <= data(5,1) then
    data(6,2) <= data(5,2);
    data(6,1) <= data(5,1);
  else
    data(6,2) <= data(5,1);
    data(6,1) <= data(5,2);
  end if;
  if data(5,5) <= data(5,3) then
    data(6,5) <= data(5,5);
    data(6,3) <= data(5,3);
  else
    data(6,5) <= data(5,3);
    data(6,3) <= data(5,5);
  end if;
  if data(5,11) <= data(5,4) then
    data(6,11) <= data(5,11);
    data(6,4) <= data(5,4);
  else
    data(6,11) <= data(5,4);
    data(6,4) <= data(5,11);
  end if;
  if data(5,8) <= data(5,6) then
    data(6,8) <= data(5,8);
    data(6,6) <= data(5,6);
  else
    data(6,8) <= data(5,6);
    data(6,6) <= data(5,8);
  end if;
  if data(5,9) <= data(5,7) then
    data(6,9) <= data(5,9);
    data(6,7) <= data(5,7);
  else
    data(6,9) <= data(5,7);
    data(6,7) <= data(5,9);
  end if;
  if data(5,12) <= data(5,10) then
    data(6,12) <= data(5,12);
    data(6,10) <= data(5,10);
  else
    data(6,12) <= data(5,10);
    data(6,10) <= data(5,12);
  end if;
  if data(5,14) <= data(5,13) then
    data(6,14) <= data(5,14);
    data(6,13) <= data(5,13);
  else
    data(6,14) <= data(5,13);
    data(6,13) <= data(5,14);
  end if;
  data(6,0) <= data(5,0);
  data(6,15) <= data(5,15);
end if;

  -- ###### Stage 6 ######
if rising_edge(clk) then
  if data(6,3) <= data(6,2) then
    data(7,3) <= data(6,3);
    data(7,2) <= data(6,2);
  else
    data(7,3) <= data(6,2);
    data(7,2) <= data(6,3);
  end if;
  if data(6,5) <= data(6,4) then
    data(7,5) <= data(6,5);
    data(7,4) <= data(6,4);
  else
    data(7,5) <= data(6,4);
    data(7,4) <= data(6,5);
  end if;
  if data(6,7) <= data(6,6) then
    data(7,7) <= data(6,7);
    data(7,6) <= data(6,6);
  else
    data(7,7) <= data(6,6);
    data(7,6) <= data(6,7);
  end if;
  if data(6,9) <= data(6,8) then
    data(7,9) <= data(6,9);
    data(7,8) <= data(6,8);
  else
    data(7,9) <= data(6,8);
    data(7,8) <= data(6,9);
  end if;
  if data(6,11) <= data(6,10) then
    data(7,11) <= data(6,11);
    data(7,10) <= data(6,10);
  else
    data(7,11) <= data(6,10);
    data(7,10) <= data(6,11);
  end if;
  if data(6,13) <= data(6,12) then
    data(7,13) <= data(6,13);
    data(7,12) <= data(6,12);
  else
    data(7,13) <= data(6,12);
    data(7,12) <= data(6,13);
  end if;
  data(7,0) <= data(6,0);
  data(7,1) <= data(6,1);
  data(7,14) <= data(6,14);
  data(7,15) <= data(6,15);
end if;

  -- ###### Stage 7 ######
if rising_edge(clk) then
  if data(7,6) <= data(7,4) then
    data(8,6) <= data(7,6);
    data(8,4) <= data(7,4);
  else
    data(8,6) <= data(7,4);
    data(8,4) <= data(7,6);
  end if;
  if data(7,7) <= data(7,5) then
    data(8,7) <= data(7,7);
    data(8,5) <= data(7,5);
  else
    data(8,7) <= data(7,5);
    data(8,5) <= data(7,7);
  end if;
  if data(7,10) <= data(7,8) then
    data(8,10) <= data(7,10);
    data(8,8) <= data(7,8);
  else
    data(8,10) <= data(7,8);
    data(8,8) <= data(7,10);
  end if;
  if data(7,11) <= data(7,9) then
    data(8,11) <= data(7,11);
    data(8,9) <= data(7,9);
  else
    data(8,11) <= data(7,9);
    data(8,9) <= data(7,11);
  end if;
  data(8,0) <= data(7,0);
  data(8,1) <= data(7,1);
  data(8,2) <= data(7,2);
  data(8,3) <= data(7,3);
  data(8,12) <= data(7,12);
  data(8,13) <= data(7,13);
  data(8,14) <= data(7,14);
  data(8,15) <= data(7,15);
end if;

  -- ###### Stage 8 ######
if rising_edge(clk) then
  if data(8,4) <= data(8,3) then
    data(9,4) <= data(8,4);
    data(9,3) <= data(8,3);
  else
    data(9,4) <= data(8,3);
    data(9,3) <= data(8,4);
  end if;
  if data(8,6) <= data(8,5) then
    data(9,6) <= data(8,6);
    data(9,5) <= data(8,5);
  else
    data(9,6) <= data(8,5);
    data(9,5) <= data(8,6);
  end if;
  if data(8,8) <= data(8,7) then
    data(9,8) <= data(8,8);
    data(9,7) <= data(8,7);
  else
    data(9,8) <= data(8,7);
    data(9,7) <= data(8,8);
  end if;
  if data(8,10) <= data(8,9) then
    data(9,10) <= data(8,10);
    data(9,9) <= data(8,9);
  else
    data(9,10) <= data(8,9);
    data(9,9) <= data(8,10);
  end if;
  if data(8,12) <= data(8,11) then
    data(9,12) <= data(8,12);
    data(9,11) <= data(8,11);
  else
    data(9,12) <= data(8,11);
    data(9,11) <= data(8,12);
  end if;
  data(9,0) <= data(8,0);
  data(9,1) <= data(8,1);
  data(9,2) <= data(8,2);
  data(9,13) <= data(8,13);
  data(9,14) <= data(8,14);
  data(9,15) <= data(8,15);
end if;

end process;

sort_0 <= std_logic_vector(data(9,0));
sort_1 <= std_logic_vector(data(9,1));
sort_2 <= std_logic_vector(data(9,2));
sort_3 <= std_logic_vector(data(9,3));
sort_4 <= std_logic_vector(data(9,4));
sort_5 <= std_logic_vector(data(9,5));
sort_6 <= std_logic_vector(data(9,6));
sort_7 <= std_logic_vector(data(9,7));
sort_8 <= std_logic_vector(data(9,8));
sort_9 <= std_logic_vector(data(9,9));
sort_10 <= std_logic_vector(data(9,10));
sort_11 <= std_logic_vector(data(9,11));
sort_12 <= std_logic_vector(data(9,12));
sort_13 <= std_logic_vector(data(9,13));
sort_14 <= std_logic_vector(data(9,14));
sort_15 <= std_logic_vector(data(9,15));

end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library vunit_lib;
context vunit_lib.vunit_context;

entity sort_tb is
  generic (runner_cfg : string);
end entity;

architecture sim of sort_tb is
  constant PERIOD : time := 10 ns;
  constant NO_RUNS : natural := 10;
  signal clk : std_logic := '0';
  signal data0 : std_logic_vector(31 downto 0) := (others => '0');
  signal data1 : std_logic_vector(31 downto 0) := (others => '0');
  signal data2 : std_logic_vector(31 downto 0) := (others => '0');
  signal data3 : std_logic_vector(31 downto 0) := (others => '0');
  signal data4 : std_logic_vector(31 downto 0) := (others => '0');
  signal data5 : std_logic_vector(31 downto 0) := (others => '0');
  signal data6 : std_logic_vector(31 downto 0) := (others => '0');
  signal data7 : std_logic_vector(31 downto 0) := (others => '0');
  signal data8 : std_logic_vector(31 downto 0) := (others => '0');
  signal data9 : std_logic_vector(31 downto 0) := (others => '0');
  signal data10 : std_logic_vector(31 downto 0) := (others => '0');
  signal data11 : std_logic_vector(31 downto 0) := (others => '0');
  signal data12 : std_logic_vector(31 downto 0) := (others => '0');
  signal data13 : std_logic_vector(31 downto 0) := (others => '0');
  signal data14 : std_logic_vector(31 downto 0) := (others => '0');
  signal data15 : std_logic_vector(31 downto 0) := (others => '0');

begin

clk <= not clk after PERIOD/2;

process

  variable seed1, seed2 : positive := 999;
  impure function rand_slv(len : integer) return std_logic_vector is
    variable r : real;
    variable slv : std_logic_vector(len - 1 downto 0);
  begin
    for i in slv'range loop
      uniform(seed1, seed2, r);
      slv(i) := '1' when r > 0.5 else '0';
    end loop;
    return slv;
  end function;

begin
  test_runner_setup(runner, runner_cfg);
  wait for 1*PERIOD;
  wait until falling_edge(clk);

  for i in 0 to NO_RUNS-1 loop
    data0 <= rand_slv(32);
    data1 <= rand_slv(32);
    data2 <= rand_slv(32);
    data3 <= rand_slv(32);
    data4 <= rand_slv(32);
    data5 <= rand_slv(32);
    data6 <= rand_slv(32);
    data7 <= rand_slv(32);
    data8 <= rand_slv(32);
    data9 <= rand_slv(32);
    data10 <= rand_slv(32);
    data11 <= rand_slv(32);
    data12 <= rand_slv(32);
    data13 <= rand_slv(32);
    data14 <= rand_slv(32);
    data15 <= rand_slv(32);
    wait for PERIOD;
  end loop;

  wait for 40*PERIOD;
  test_runner_cleanup(runner);
end process;

sort_i: entity work.sorting_network
  port map(
    clk => clk,
    data_0 => data0,
    data_1 => data1,
    data_2 => data2,
    data_3 => data3,
    data_4 => data4,
    data_5 => data5,
    data_6 => data6,
    data_7 => data7,
    data_8 => data8,
    data_9 => data9,
    data_10 => data10,
    data_11 => data11,
    data_12 => data12,
    data_13 => data13,
    data_14 => data14,
    data_15 => data15
);

end architecture;

