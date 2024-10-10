
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
    sort_0 : out std_logic_vector(31 downto 0);
    sort_1 : out std_logic_vector(31 downto 0);
    sort_2 : out std_logic_vector(31 downto 0);
    sort_3 : out std_logic_vector(31 downto 0);
    sort_4 : out std_logic_vector(31 downto 0);
    sort_5 : out std_logic_vector(31 downto 0);
    sort_6 : out std_logic_vector(31 downto 0);
    sort_7 : out std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl of sorting_network is
  type data_array is array (natural range <>, natural range <>) of unsigned(31 downto 0);
  signal data : data_array(6 downto 0, 7 downto 0);
begin

data(0,0) <= unsigned(data_0);
data(0,1) <= unsigned(data_1);
data(0,2) <= unsigned(data_2);
data(0,3) <= unsigned(data_3);
data(0,4) <= unsigned(data_4);
data(0,5) <= unsigned(data_5);
data(0,6) <= unsigned(data_6);
data(0,7) <= unsigned(data_7);

process(clk) begin

  -- ###### Stage 0 ######
if rising_edge(clk) then
  if data(0,2) <= data(0,0) then
    data(1,2) <= data(0,2);
    data(1,0) <= data(0,0);
  else
    data(1,2) <= data(0,0);
    data(1,0) <= data(0,2);
  end if;
  if data(0,3) <= data(0,1) then
    data(1,3) <= data(0,3);
    data(1,1) <= data(0,1);
  else
    data(1,3) <= data(0,1);
    data(1,1) <= data(0,3);
  end if;
  if data(0,6) <= data(0,4) then
    data(1,6) <= data(0,6);
    data(1,4) <= data(0,4);
  else
    data(1,6) <= data(0,4);
    data(1,4) <= data(0,6);
  end if;
  if data(0,7) <= data(0,5) then
    data(1,7) <= data(0,7);
    data(1,5) <= data(0,5);
  else
    data(1,7) <= data(0,5);
    data(1,5) <= data(0,7);
  end if;
end if;

  -- ###### Stage 1 ######
if rising_edge(clk) then
  if data(1,4) <= data(1,0) then
    data(2,4) <= data(1,4);
    data(2,0) <= data(1,0);
  else
    data(2,4) <= data(1,0);
    data(2,0) <= data(1,4);
  end if;
  if data(1,5) <= data(1,1) then
    data(2,5) <= data(1,5);
    data(2,1) <= data(1,1);
  else
    data(2,5) <= data(1,1);
    data(2,1) <= data(1,5);
  end if;
  if data(1,6) <= data(1,2) then
    data(2,6) <= data(1,6);
    data(2,2) <= data(1,2);
  else
    data(2,6) <= data(1,2);
    data(2,2) <= data(1,6);
  end if;
  if data(1,7) <= data(1,3) then
    data(2,7) <= data(1,7);
    data(2,3) <= data(1,3);
  else
    data(2,7) <= data(1,3);
    data(2,3) <= data(1,7);
  end if;
end if;

  -- ###### Stage 2 ######
if rising_edge(clk) then
  if data(2,1) <= data(2,0) then
    data(3,1) <= data(2,1);
    data(3,0) <= data(2,0);
  else
    data(3,1) <= data(2,0);
    data(3,0) <= data(2,1);
  end if;
  if data(2,3) <= data(2,2) then
    data(3,3) <= data(2,3);
    data(3,2) <= data(2,2);
  else
    data(3,3) <= data(2,2);
    data(3,2) <= data(2,3);
  end if;
  if data(2,5) <= data(2,4) then
    data(3,5) <= data(2,5);
    data(3,4) <= data(2,4);
  else
    data(3,5) <= data(2,4);
    data(3,4) <= data(2,5);
  end if;
  if data(2,7) <= data(2,6) then
    data(3,7) <= data(2,7);
    data(3,6) <= data(2,6);
  else
    data(3,7) <= data(2,6);
    data(3,6) <= data(2,7);
  end if;
end if;

  -- ###### Stage 3 ######
if rising_edge(clk) then
  if data(3,4) <= data(3,2) then
    data(4,4) <= data(3,4);
    data(4,2) <= data(3,2);
  else
    data(4,4) <= data(3,2);
    data(4,2) <= data(3,4);
  end if;
  if data(3,5) <= data(3,3) then
    data(4,5) <= data(3,5);
    data(4,3) <= data(3,3);
  else
    data(4,5) <= data(3,3);
    data(4,3) <= data(3,5);
  end if;
  data(4,0) <= data(3,0);
  data(4,1) <= data(3,1);
  data(4,6) <= data(3,6);
  data(4,7) <= data(3,7);
end if;

  -- ###### Stage 4 ######
if rising_edge(clk) then
  if data(4,4) <= data(4,1) then
    data(5,4) <= data(4,4);
    data(5,1) <= data(4,1);
  else
    data(5,4) <= data(4,1);
    data(5,1) <= data(4,4);
  end if;
  if data(4,6) <= data(4,3) then
    data(5,6) <= data(4,6);
    data(5,3) <= data(4,3);
  else
    data(5,6) <= data(4,3);
    data(5,3) <= data(4,6);
  end if;
  data(5,0) <= data(4,0);
  data(5,2) <= data(4,2);
  data(5,5) <= data(4,5);
  data(5,7) <= data(4,7);
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
  if data(5,4) <= data(5,3) then
    data(6,4) <= data(5,4);
    data(6,3) <= data(5,3);
  else
    data(6,4) <= data(5,3);
    data(6,3) <= data(5,4);
  end if;
  if data(5,6) <= data(5,5) then
    data(6,6) <= data(5,6);
    data(6,5) <= data(5,5);
  else
    data(6,6) <= data(5,5);
    data(6,5) <= data(5,6);
  end if;
  data(6,0) <= data(5,0);
  data(6,7) <= data(5,7);
end if;

end process;

sort_0 <= std_logic_vector(data(6,0));
sort_1 <= std_logic_vector(data(6,1));
sort_2 <= std_logic_vector(data(6,2));
sort_3 <= std_logic_vector(data(6,3));
sort_4 <= std_logic_vector(data(6,4));
sort_5 <= std_logic_vector(data(6,5));
sort_6 <= std_logic_vector(data(6,6));
sort_7 <= std_logic_vector(data(6,7));

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
    data_7 => data7
);

end architecture;

