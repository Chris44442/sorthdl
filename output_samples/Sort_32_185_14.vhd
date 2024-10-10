
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
    data_16 : in std_logic_vector(31 downto 0);
    data_17 : in std_logic_vector(31 downto 0);
    data_18 : in std_logic_vector(31 downto 0);
    data_19 : in std_logic_vector(31 downto 0);
    data_20 : in std_logic_vector(31 downto 0);
    data_21 : in std_logic_vector(31 downto 0);
    data_22 : in std_logic_vector(31 downto 0);
    data_23 : in std_logic_vector(31 downto 0);
    data_24 : in std_logic_vector(31 downto 0);
    data_25 : in std_logic_vector(31 downto 0);
    data_26 : in std_logic_vector(31 downto 0);
    data_27 : in std_logic_vector(31 downto 0);
    data_28 : in std_logic_vector(31 downto 0);
    data_29 : in std_logic_vector(31 downto 0);
    data_30 : in std_logic_vector(31 downto 0);
    data_31 : in std_logic_vector(31 downto 0);
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
    sort_15 : out std_logic_vector(31 downto 0);
    sort_16 : out std_logic_vector(31 downto 0);
    sort_17 : out std_logic_vector(31 downto 0);
    sort_18 : out std_logic_vector(31 downto 0);
    sort_19 : out std_logic_vector(31 downto 0);
    sort_20 : out std_logic_vector(31 downto 0);
    sort_21 : out std_logic_vector(31 downto 0);
    sort_22 : out std_logic_vector(31 downto 0);
    sort_23 : out std_logic_vector(31 downto 0);
    sort_24 : out std_logic_vector(31 downto 0);
    sort_25 : out std_logic_vector(31 downto 0);
    sort_26 : out std_logic_vector(31 downto 0);
    sort_27 : out std_logic_vector(31 downto 0);
    sort_28 : out std_logic_vector(31 downto 0);
    sort_29 : out std_logic_vector(31 downto 0);
    sort_30 : out std_logic_vector(31 downto 0);
    sort_31 : out std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl of sorting_network is
  type data_array is array (natural range <>, natural range <>) of unsigned(31 downto 0);
  signal data : data_array(14 downto 0, 31 downto 0);
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
data(0,16) <= unsigned(data_16);
data(0,17) <= unsigned(data_17);
data(0,18) <= unsigned(data_18);
data(0,19) <= unsigned(data_19);
data(0,20) <= unsigned(data_20);
data(0,21) <= unsigned(data_21);
data(0,22) <= unsigned(data_22);
data(0,23) <= unsigned(data_23);
data(0,24) <= unsigned(data_24);
data(0,25) <= unsigned(data_25);
data(0,26) <= unsigned(data_26);
data(0,27) <= unsigned(data_27);
data(0,28) <= unsigned(data_28);
data(0,29) <= unsigned(data_29);
data(0,30) <= unsigned(data_30);
data(0,31) <= unsigned(data_31);

process(clk) begin

  -- ###### Stage 0 ######
if rising_edge(clk) then
  if data(0,1) <= data(0,0) then
    data(1,1) <= data(0,1);
    data(1,0) <= data(0,0);
  else
    data(1,1) <= data(0,0);
    data(1,0) <= data(0,1);
  end if;
  if data(0,3) <= data(0,2) then
    data(1,3) <= data(0,3);
    data(1,2) <= data(0,2);
  else
    data(1,3) <= data(0,2);
    data(1,2) <= data(0,3);
  end if;
  if data(0,5) <= data(0,4) then
    data(1,5) <= data(0,5);
    data(1,4) <= data(0,4);
  else
    data(1,5) <= data(0,4);
    data(1,4) <= data(0,5);
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
  if data(0,11) <= data(0,10) then
    data(1,11) <= data(0,11);
    data(1,10) <= data(0,10);
  else
    data(1,11) <= data(0,10);
    data(1,10) <= data(0,11);
  end if;
  if data(0,13) <= data(0,12) then
    data(1,13) <= data(0,13);
    data(1,12) <= data(0,12);
  else
    data(1,13) <= data(0,12);
    data(1,12) <= data(0,13);
  end if;
  if data(0,15) <= data(0,14) then
    data(1,15) <= data(0,15);
    data(1,14) <= data(0,14);
  else
    data(1,15) <= data(0,14);
    data(1,14) <= data(0,15);
  end if;
  if data(0,17) <= data(0,16) then
    data(1,17) <= data(0,17);
    data(1,16) <= data(0,16);
  else
    data(1,17) <= data(0,16);
    data(1,16) <= data(0,17);
  end if;
  if data(0,19) <= data(0,18) then
    data(1,19) <= data(0,19);
    data(1,18) <= data(0,18);
  else
    data(1,19) <= data(0,18);
    data(1,18) <= data(0,19);
  end if;
  if data(0,21) <= data(0,20) then
    data(1,21) <= data(0,21);
    data(1,20) <= data(0,20);
  else
    data(1,21) <= data(0,20);
    data(1,20) <= data(0,21);
  end if;
  if data(0,23) <= data(0,22) then
    data(1,23) <= data(0,23);
    data(1,22) <= data(0,22);
  else
    data(1,23) <= data(0,22);
    data(1,22) <= data(0,23);
  end if;
  if data(0,25) <= data(0,24) then
    data(1,25) <= data(0,25);
    data(1,24) <= data(0,24);
  else
    data(1,25) <= data(0,24);
    data(1,24) <= data(0,25);
  end if;
  if data(0,27) <= data(0,26) then
    data(1,27) <= data(0,27);
    data(1,26) <= data(0,26);
  else
    data(1,27) <= data(0,26);
    data(1,26) <= data(0,27);
  end if;
  if data(0,29) <= data(0,28) then
    data(1,29) <= data(0,29);
    data(1,28) <= data(0,28);
  else
    data(1,29) <= data(0,28);
    data(1,28) <= data(0,29);
  end if;
  if data(0,31) <= data(0,30) then
    data(1,31) <= data(0,31);
    data(1,30) <= data(0,30);
  else
    data(1,31) <= data(0,30);
    data(1,30) <= data(0,31);
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
  if data(1,3) <= data(1,1) then
    data(2,3) <= data(1,3);
    data(2,1) <= data(1,1);
  else
    data(2,3) <= data(1,1);
    data(2,1) <= data(1,3);
  end if;
  if data(1,6) <= data(1,4) then
    data(2,6) <= data(1,6);
    data(2,4) <= data(1,4);
  else
    data(2,6) <= data(1,4);
    data(2,4) <= data(1,6);
  end if;
  if data(1,7) <= data(1,5) then
    data(2,7) <= data(1,7);
    data(2,5) <= data(1,5);
  else
    data(2,7) <= data(1,5);
    data(2,5) <= data(1,7);
  end if;
  if data(1,10) <= data(1,8) then
    data(2,10) <= data(1,10);
    data(2,8) <= data(1,8);
  else
    data(2,10) <= data(1,8);
    data(2,8) <= data(1,10);
  end if;
  if data(1,11) <= data(1,9) then
    data(2,11) <= data(1,11);
    data(2,9) <= data(1,9);
  else
    data(2,11) <= data(1,9);
    data(2,9) <= data(1,11);
  end if;
  if data(1,14) <= data(1,12) then
    data(2,14) <= data(1,14);
    data(2,12) <= data(1,12);
  else
    data(2,14) <= data(1,12);
    data(2,12) <= data(1,14);
  end if;
  if data(1,15) <= data(1,13) then
    data(2,15) <= data(1,15);
    data(2,13) <= data(1,13);
  else
    data(2,15) <= data(1,13);
    data(2,13) <= data(1,15);
  end if;
  if data(1,18) <= data(1,16) then
    data(2,18) <= data(1,18);
    data(2,16) <= data(1,16);
  else
    data(2,18) <= data(1,16);
    data(2,16) <= data(1,18);
  end if;
  if data(1,19) <= data(1,17) then
    data(2,19) <= data(1,19);
    data(2,17) <= data(1,17);
  else
    data(2,19) <= data(1,17);
    data(2,17) <= data(1,19);
  end if;
  if data(1,22) <= data(1,20) then
    data(2,22) <= data(1,22);
    data(2,20) <= data(1,20);
  else
    data(2,22) <= data(1,20);
    data(2,20) <= data(1,22);
  end if;
  if data(1,23) <= data(1,21) then
    data(2,23) <= data(1,23);
    data(2,21) <= data(1,21);
  else
    data(2,23) <= data(1,21);
    data(2,21) <= data(1,23);
  end if;
  if data(1,26) <= data(1,24) then
    data(2,26) <= data(1,26);
    data(2,24) <= data(1,24);
  else
    data(2,26) <= data(1,24);
    data(2,24) <= data(1,26);
  end if;
  if data(1,27) <= data(1,25) then
    data(2,27) <= data(1,27);
    data(2,25) <= data(1,25);
  else
    data(2,27) <= data(1,25);
    data(2,25) <= data(1,27);
  end if;
  if data(1,30) <= data(1,28) then
    data(2,30) <= data(1,30);
    data(2,28) <= data(1,28);
  else
    data(2,30) <= data(1,28);
    data(2,28) <= data(1,30);
  end if;
  if data(1,31) <= data(1,29) then
    data(2,31) <= data(1,31);
    data(2,29) <= data(1,29);
  else
    data(2,31) <= data(1,29);
    data(2,29) <= data(1,31);
  end if;
end if;

  -- ###### Stage 2 ######
if rising_edge(clk) then
  if data(2,4) <= data(2,0) then
    data(3,4) <= data(2,4);
    data(3,0) <= data(2,0);
  else
    data(3,4) <= data(2,0);
    data(3,0) <= data(2,4);
  end if;
  if data(2,5) <= data(2,1) then
    data(3,5) <= data(2,5);
    data(3,1) <= data(2,1);
  else
    data(3,5) <= data(2,1);
    data(3,1) <= data(2,5);
  end if;
  if data(2,6) <= data(2,2) then
    data(3,6) <= data(2,6);
    data(3,2) <= data(2,2);
  else
    data(3,6) <= data(2,2);
    data(3,2) <= data(2,6);
  end if;
  if data(2,7) <= data(2,3) then
    data(3,7) <= data(2,7);
    data(3,3) <= data(2,3);
  else
    data(3,7) <= data(2,3);
    data(3,3) <= data(2,7);
  end if;
  if data(2,12) <= data(2,8) then
    data(3,12) <= data(2,12);
    data(3,8) <= data(2,8);
  else
    data(3,12) <= data(2,8);
    data(3,8) <= data(2,12);
  end if;
  if data(2,13) <= data(2,9) then
    data(3,13) <= data(2,13);
    data(3,9) <= data(2,9);
  else
    data(3,13) <= data(2,9);
    data(3,9) <= data(2,13);
  end if;
  if data(2,14) <= data(2,10) then
    data(3,14) <= data(2,14);
    data(3,10) <= data(2,10);
  else
    data(3,14) <= data(2,10);
    data(3,10) <= data(2,14);
  end if;
  if data(2,15) <= data(2,11) then
    data(3,15) <= data(2,15);
    data(3,11) <= data(2,11);
  else
    data(3,15) <= data(2,11);
    data(3,11) <= data(2,15);
  end if;
  if data(2,20) <= data(2,16) then
    data(3,20) <= data(2,20);
    data(3,16) <= data(2,16);
  else
    data(3,20) <= data(2,16);
    data(3,16) <= data(2,20);
  end if;
  if data(2,21) <= data(2,17) then
    data(3,21) <= data(2,21);
    data(3,17) <= data(2,17);
  else
    data(3,21) <= data(2,17);
    data(3,17) <= data(2,21);
  end if;
  if data(2,22) <= data(2,18) then
    data(3,22) <= data(2,22);
    data(3,18) <= data(2,18);
  else
    data(3,22) <= data(2,18);
    data(3,18) <= data(2,22);
  end if;
  if data(2,23) <= data(2,19) then
    data(3,23) <= data(2,23);
    data(3,19) <= data(2,19);
  else
    data(3,23) <= data(2,19);
    data(3,19) <= data(2,23);
  end if;
  if data(2,28) <= data(2,24) then
    data(3,28) <= data(2,28);
    data(3,24) <= data(2,24);
  else
    data(3,28) <= data(2,24);
    data(3,24) <= data(2,28);
  end if;
  if data(2,29) <= data(2,25) then
    data(3,29) <= data(2,29);
    data(3,25) <= data(2,25);
  else
    data(3,29) <= data(2,25);
    data(3,25) <= data(2,29);
  end if;
  if data(2,30) <= data(2,26) then
    data(3,30) <= data(2,30);
    data(3,26) <= data(2,26);
  else
    data(3,30) <= data(2,26);
    data(3,26) <= data(2,30);
  end if;
  if data(2,31) <= data(2,27) then
    data(3,31) <= data(2,31);
    data(3,27) <= data(2,27);
  else
    data(3,31) <= data(2,27);
    data(3,27) <= data(2,31);
  end if;
end if;

  -- ###### Stage 3 ######
if rising_edge(clk) then
  if data(3,8) <= data(3,0) then
    data(4,8) <= data(3,8);
    data(4,0) <= data(3,0);
  else
    data(4,8) <= data(3,0);
    data(4,0) <= data(3,8);
  end if;
  if data(3,9) <= data(3,1) then
    data(4,9) <= data(3,9);
    data(4,1) <= data(3,1);
  else
    data(4,9) <= data(3,1);
    data(4,1) <= data(3,9);
  end if;
  if data(3,10) <= data(3,2) then
    data(4,10) <= data(3,10);
    data(4,2) <= data(3,2);
  else
    data(4,10) <= data(3,2);
    data(4,2) <= data(3,10);
  end if;
  if data(3,11) <= data(3,3) then
    data(4,11) <= data(3,11);
    data(4,3) <= data(3,3);
  else
    data(4,11) <= data(3,3);
    data(4,3) <= data(3,11);
  end if;
  if data(3,12) <= data(3,4) then
    data(4,12) <= data(3,12);
    data(4,4) <= data(3,4);
  else
    data(4,12) <= data(3,4);
    data(4,4) <= data(3,12);
  end if;
  if data(3,13) <= data(3,5) then
    data(4,13) <= data(3,13);
    data(4,5) <= data(3,5);
  else
    data(4,13) <= data(3,5);
    data(4,5) <= data(3,13);
  end if;
  if data(3,14) <= data(3,6) then
    data(4,14) <= data(3,14);
    data(4,6) <= data(3,6);
  else
    data(4,14) <= data(3,6);
    data(4,6) <= data(3,14);
  end if;
  if data(3,15) <= data(3,7) then
    data(4,15) <= data(3,15);
    data(4,7) <= data(3,7);
  else
    data(4,15) <= data(3,7);
    data(4,7) <= data(3,15);
  end if;
  if data(3,24) <= data(3,16) then
    data(4,24) <= data(3,24);
    data(4,16) <= data(3,16);
  else
    data(4,24) <= data(3,16);
    data(4,16) <= data(3,24);
  end if;
  if data(3,25) <= data(3,17) then
    data(4,25) <= data(3,25);
    data(4,17) <= data(3,17);
  else
    data(4,25) <= data(3,17);
    data(4,17) <= data(3,25);
  end if;
  if data(3,26) <= data(3,18) then
    data(4,26) <= data(3,26);
    data(4,18) <= data(3,18);
  else
    data(4,26) <= data(3,18);
    data(4,18) <= data(3,26);
  end if;
  if data(3,27) <= data(3,19) then
    data(4,27) <= data(3,27);
    data(4,19) <= data(3,19);
  else
    data(4,27) <= data(3,19);
    data(4,19) <= data(3,27);
  end if;
  if data(3,28) <= data(3,20) then
    data(4,28) <= data(3,28);
    data(4,20) <= data(3,20);
  else
    data(4,28) <= data(3,20);
    data(4,20) <= data(3,28);
  end if;
  if data(3,29) <= data(3,21) then
    data(4,29) <= data(3,29);
    data(4,21) <= data(3,21);
  else
    data(4,29) <= data(3,21);
    data(4,21) <= data(3,29);
  end if;
  if data(3,30) <= data(3,22) then
    data(4,30) <= data(3,30);
    data(4,22) <= data(3,22);
  else
    data(4,30) <= data(3,22);
    data(4,22) <= data(3,30);
  end if;
  if data(3,31) <= data(3,23) then
    data(4,31) <= data(3,31);
    data(4,23) <= data(3,23);
  else
    data(4,31) <= data(3,23);
    data(4,23) <= data(3,31);
  end if;
end if;

  -- ###### Stage 4 ######
if rising_edge(clk) then
  if data(4,16) <= data(4,0) then
    data(5,16) <= data(4,16);
    data(5,0) <= data(4,0);
  else
    data(5,16) <= data(4,0);
    data(5,0) <= data(4,16);
  end if;
  if data(4,8) <= data(4,1) then
    data(5,8) <= data(4,8);
    data(5,1) <= data(4,1);
  else
    data(5,8) <= data(4,1);
    data(5,1) <= data(4,8);
  end if;
  if data(4,4) <= data(4,2) then
    data(5,4) <= data(4,4);
    data(5,2) <= data(4,2);
  else
    data(5,4) <= data(4,2);
    data(5,2) <= data(4,4);
  end if;
  if data(4,12) <= data(4,3) then
    data(5,12) <= data(4,12);
    data(5,3) <= data(4,3);
  else
    data(5,12) <= data(4,3);
    data(5,3) <= data(4,12);
  end if;
  if data(4,10) <= data(4,5) then
    data(5,10) <= data(4,10);
    data(5,5) <= data(4,5);
  else
    data(5,10) <= data(4,5);
    data(5,5) <= data(4,10);
  end if;
  if data(4,9) <= data(4,6) then
    data(5,9) <= data(4,9);
    data(5,6) <= data(4,6);
  else
    data(5,9) <= data(4,6);
    data(5,6) <= data(4,9);
  end if;
  if data(4,14) <= data(4,7) then
    data(5,14) <= data(4,14);
    data(5,7) <= data(4,7);
  else
    data(5,14) <= data(4,7);
    data(5,7) <= data(4,14);
  end if;
  if data(4,13) <= data(4,11) then
    data(5,13) <= data(4,13);
    data(5,11) <= data(4,11);
  else
    data(5,13) <= data(4,11);
    data(5,11) <= data(4,13);
  end if;
  if data(4,31) <= data(4,15) then
    data(5,31) <= data(4,31);
    data(5,15) <= data(4,15);
  else
    data(5,31) <= data(4,15);
    data(5,15) <= data(4,31);
  end if;
  if data(4,24) <= data(4,17) then
    data(5,24) <= data(4,24);
    data(5,17) <= data(4,17);
  else
    data(5,24) <= data(4,17);
    data(5,17) <= data(4,24);
  end if;
  if data(4,20) <= data(4,18) then
    data(5,20) <= data(4,20);
    data(5,18) <= data(4,18);
  else
    data(5,20) <= data(4,18);
    data(5,18) <= data(4,20);
  end if;
  if data(4,28) <= data(4,19) then
    data(5,28) <= data(4,28);
    data(5,19) <= data(4,19);
  else
    data(5,28) <= data(4,19);
    data(5,19) <= data(4,28);
  end if;
  if data(4,26) <= data(4,21) then
    data(5,26) <= data(4,26);
    data(5,21) <= data(4,21);
  else
    data(5,26) <= data(4,21);
    data(5,21) <= data(4,26);
  end if;
  if data(4,25) <= data(4,22) then
    data(5,25) <= data(4,25);
    data(5,22) <= data(4,22);
  else
    data(5,25) <= data(4,22);
    data(5,22) <= data(4,25);
  end if;
  if data(4,30) <= data(4,23) then
    data(5,30) <= data(4,30);
    data(5,23) <= data(4,23);
  else
    data(5,30) <= data(4,23);
    data(5,23) <= data(4,30);
  end if;
  if data(4,29) <= data(4,27) then
    data(5,29) <= data(4,29);
    data(5,27) <= data(4,27);
  else
    data(5,29) <= data(4,27);
    data(5,27) <= data(4,29);
  end if;
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
  if data(5,8) <= data(5,4) then
    data(6,8) <= data(5,8);
    data(6,4) <= data(5,4);
  else
    data(6,8) <= data(5,4);
    data(6,4) <= data(5,8);
  end if;
  if data(5,22) <= data(5,6) then
    data(6,22) <= data(5,22);
    data(6,6) <= data(5,6);
  else
    data(6,22) <= data(5,6);
    data(6,6) <= data(5,22);
  end if;
  if data(5,11) <= data(5,7) then
    data(6,11) <= data(5,11);
    data(6,7) <= data(5,7);
  else
    data(6,11) <= data(5,7);
    data(6,7) <= data(5,11);
  end if;
  if data(5,25) <= data(5,9) then
    data(6,25) <= data(5,25);
    data(6,9) <= data(5,9);
  else
    data(6,25) <= data(5,9);
    data(6,9) <= data(5,25);
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
  if data(5,18) <= data(5,17) then
    data(6,18) <= data(5,18);
    data(6,17) <= data(5,17);
  else
    data(6,18) <= data(5,17);
    data(6,17) <= data(5,18);
  end if;
  if data(5,21) <= data(5,19) then
    data(6,21) <= data(5,21);
    data(6,19) <= data(5,19);
  else
    data(6,21) <= data(5,19);
    data(6,19) <= data(5,21);
  end if;
  if data(5,24) <= data(5,20) then
    data(6,24) <= data(5,24);
    data(6,20) <= data(5,20);
  else
    data(6,24) <= data(5,20);
    data(6,20) <= data(5,24);
  end if;
  if data(5,27) <= data(5,23) then
    data(6,27) <= data(5,27);
    data(6,23) <= data(5,23);
  else
    data(6,27) <= data(5,23);
    data(6,23) <= data(5,27);
  end if;
  if data(5,28) <= data(5,26) then
    data(6,28) <= data(5,28);
    data(6,26) <= data(5,26);
  else
    data(6,28) <= data(5,26);
    data(6,26) <= data(5,28);
  end if;
  if data(5,30) <= data(5,29) then
    data(6,30) <= data(5,30);
    data(6,29) <= data(5,29);
  else
    data(6,30) <= data(5,29);
    data(6,29) <= data(5,30);
  end if;
  data(6,0) <= data(5,0);
  data(6,15) <= data(5,15);
  data(6,16) <= data(5,16);
  data(6,31) <= data(5,31);
end if;

  -- ###### Stage 6 ######
if rising_edge(clk) then
  if data(6,17) <= data(6,1) then
    data(7,17) <= data(6,17);
    data(7,1) <= data(6,1);
  else
    data(7,17) <= data(6,1);
    data(7,1) <= data(6,17);
  end if;
  if data(6,18) <= data(6,2) then
    data(7,18) <= data(6,18);
    data(7,2) <= data(6,2);
  else
    data(7,18) <= data(6,2);
    data(7,2) <= data(6,18);
  end if;
  if data(6,19) <= data(6,3) then
    data(7,19) <= data(6,19);
    data(7,3) <= data(6,3);
  else
    data(7,19) <= data(6,3);
    data(7,3) <= data(6,19);
  end if;
  if data(6,20) <= data(6,4) then
    data(7,20) <= data(6,20);
    data(7,4) <= data(6,4);
  else
    data(7,20) <= data(6,4);
    data(7,4) <= data(6,20);
  end if;
  if data(6,10) <= data(6,5) then
    data(7,10) <= data(6,10);
    data(7,5) <= data(6,5);
  else
    data(7,10) <= data(6,5);
    data(7,5) <= data(6,10);
  end if;
  if data(6,23) <= data(6,7) then
    data(7,23) <= data(6,23);
    data(7,7) <= data(6,7);
  else
    data(7,23) <= data(6,7);
    data(7,7) <= data(6,23);
  end if;
  if data(6,24) <= data(6,8) then
    data(7,24) <= data(6,24);
    data(7,8) <= data(6,8);
  else
    data(7,24) <= data(6,8);
    data(7,8) <= data(6,24);
  end if;
  if data(6,27) <= data(6,11) then
    data(7,27) <= data(6,27);
    data(7,11) <= data(6,11);
  else
    data(7,27) <= data(6,11);
    data(7,11) <= data(6,27);
  end if;
  if data(6,28) <= data(6,12) then
    data(7,28) <= data(6,28);
    data(7,12) <= data(6,12);
  else
    data(7,28) <= data(6,12);
    data(7,12) <= data(6,28);
  end if;
  if data(6,29) <= data(6,13) then
    data(7,29) <= data(6,29);
    data(7,13) <= data(6,13);
  else
    data(7,29) <= data(6,13);
    data(7,13) <= data(6,29);
  end if;
  if data(6,30) <= data(6,14) then
    data(7,30) <= data(6,30);
    data(7,14) <= data(6,14);
  else
    data(7,30) <= data(6,14);
    data(7,14) <= data(6,30);
  end if;
  if data(6,26) <= data(6,21) then
    data(7,26) <= data(6,26);
    data(7,21) <= data(6,21);
  else
    data(7,26) <= data(6,21);
    data(7,21) <= data(6,26);
  end if;
  data(7,0) <= data(6,0);
  data(7,6) <= data(6,6);
  data(7,9) <= data(6,9);
  data(7,15) <= data(6,15);
  data(7,16) <= data(6,16);
  data(7,22) <= data(6,22);
  data(7,25) <= data(6,25);
  data(7,31) <= data(6,31);
end if;

  -- ###### Stage 7 ######
if rising_edge(clk) then
  if data(7,17) <= data(7,3) then
    data(8,17) <= data(7,17);
    data(8,3) <= data(7,3);
  else
    data(8,17) <= data(7,3);
    data(8,3) <= data(7,17);
  end if;
  if data(7,16) <= data(7,4) then
    data(8,16) <= data(7,16);
    data(8,4) <= data(7,4);
  else
    data(8,16) <= data(7,4);
    data(8,4) <= data(7,16);
  end if;
  if data(7,21) <= data(7,5) then
    data(8,21) <= data(7,21);
    data(8,5) <= data(7,5);
  else
    data(8,21) <= data(7,5);
    data(8,5) <= data(7,21);
  end if;
  if data(7,18) <= data(7,6) then
    data(8,18) <= data(7,18);
    data(8,6) <= data(7,6);
  else
    data(8,18) <= data(7,6);
    data(8,6) <= data(7,18);
  end if;
  if data(7,9) <= data(7,7) then
    data(8,9) <= data(7,9);
    data(8,7) <= data(7,7);
  else
    data(8,9) <= data(7,7);
    data(8,7) <= data(7,9);
  end if;
  if data(7,20) <= data(7,8) then
    data(8,20) <= data(7,20);
    data(8,8) <= data(7,8);
  else
    data(8,20) <= data(7,8);
    data(8,8) <= data(7,20);
  end if;
  if data(7,26) <= data(7,10) then
    data(8,26) <= data(7,26);
    data(8,10) <= data(7,10);
  else
    data(8,26) <= data(7,10);
    data(8,10) <= data(7,26);
  end if;
  if data(7,23) <= data(7,11) then
    data(8,23) <= data(7,23);
    data(8,11) <= data(7,11);
  else
    data(8,23) <= data(7,11);
    data(8,11) <= data(7,23);
  end if;
  if data(7,25) <= data(7,13) then
    data(8,25) <= data(7,25);
    data(8,13) <= data(7,13);
  else
    data(8,25) <= data(7,13);
    data(8,13) <= data(7,25);
  end if;
  if data(7,28) <= data(7,14) then
    data(8,28) <= data(7,28);
    data(8,14) <= data(7,14);
  else
    data(8,28) <= data(7,14);
    data(8,14) <= data(7,28);
  end if;
  if data(7,27) <= data(7,15) then
    data(8,27) <= data(7,27);
    data(8,15) <= data(7,15);
  else
    data(8,27) <= data(7,15);
    data(8,15) <= data(7,27);
  end if;
  if data(7,24) <= data(7,22) then
    data(8,24) <= data(7,24);
    data(8,22) <= data(7,22);
  else
    data(8,24) <= data(7,22);
    data(8,22) <= data(7,24);
  end if;
  data(8,0) <= data(7,0);
  data(8,1) <= data(7,1);
  data(8,2) <= data(7,2);
  data(8,12) <= data(7,12);
  data(8,19) <= data(7,19);
  data(8,29) <= data(7,29);
  data(8,30) <= data(7,30);
  data(8,31) <= data(7,31);
end if;

  -- ###### Stage 8 ######
if rising_edge(clk) then
  if data(8,4) <= data(8,1) then
    data(9,4) <= data(8,4);
    data(9,1) <= data(8,1);
  else
    data(9,4) <= data(8,1);
    data(9,1) <= data(8,4);
  end if;
  if data(8,8) <= data(8,3) then
    data(9,8) <= data(8,8);
    data(9,3) <= data(8,3);
  else
    data(9,8) <= data(8,3);
    data(9,3) <= data(8,8);
  end if;
  if data(8,16) <= data(8,5) then
    data(9,16) <= data(8,16);
    data(9,5) <= data(8,5);
  else
    data(9,16) <= data(8,5);
    data(9,5) <= data(8,16);
  end if;
  if data(8,17) <= data(8,7) then
    data(9,17) <= data(8,17);
    data(9,7) <= data(8,7);
  else
    data(9,17) <= data(8,7);
    data(9,7) <= data(8,17);
  end if;
  if data(8,21) <= data(8,9) then
    data(9,21) <= data(8,21);
    data(9,9) <= data(8,9);
  else
    data(9,21) <= data(8,9);
    data(9,9) <= data(8,21);
  end if;
  if data(8,22) <= data(8,10) then
    data(9,22) <= data(8,22);
    data(9,10) <= data(8,10);
  else
    data(9,22) <= data(8,10);
    data(9,10) <= data(8,22);
  end if;
  if data(8,19) <= data(8,11) then
    data(9,19) <= data(8,19);
    data(9,11) <= data(8,11);
  else
    data(9,19) <= data(8,11);
    data(9,11) <= data(8,19);
  end if;
  if data(8,20) <= data(8,12) then
    data(9,20) <= data(8,20);
    data(9,12) <= data(8,12);
  else
    data(9,20) <= data(8,12);
    data(9,12) <= data(8,20);
  end if;
  if data(8,24) <= data(8,14) then
    data(9,24) <= data(8,24);
    data(9,14) <= data(8,14);
  else
    data(9,24) <= data(8,14);
    data(9,14) <= data(8,24);
  end if;
  if data(8,26) <= data(8,15) then
    data(9,26) <= data(8,26);
    data(9,15) <= data(8,15);
  else
    data(9,26) <= data(8,15);
    data(9,15) <= data(8,26);
  end if;
  if data(8,28) <= data(8,23) then
    data(9,28) <= data(8,28);
    data(9,23) <= data(8,23);
  else
    data(9,28) <= data(8,23);
    data(9,23) <= data(8,28);
  end if;
  if data(8,30) <= data(8,27) then
    data(9,30) <= data(8,30);
    data(9,27) <= data(8,27);
  else
    data(9,30) <= data(8,27);
    data(9,27) <= data(8,30);
  end if;
  data(9,0) <= data(8,0);
  data(9,2) <= data(8,2);
  data(9,6) <= data(8,6);
  data(9,13) <= data(8,13);
  data(9,18) <= data(8,18);
  data(9,25) <= data(8,25);
  data(9,29) <= data(8,29);
  data(9,31) <= data(8,31);
end if;

  -- ###### Stage 9 ######
if rising_edge(clk) then
  if data(9,5) <= data(9,2) then
    data(10,5) <= data(9,5);
    data(10,2) <= data(9,2);
  else
    data(10,5) <= data(9,2);
    data(10,2) <= data(9,5);
  end if;
  if data(9,8) <= data(9,7) then
    data(10,8) <= data(9,8);
    data(10,7) <= data(9,7);
  else
    data(10,8) <= data(9,7);
    data(10,7) <= data(9,8);
  end if;
  if data(9,18) <= data(9,9) then
    data(10,18) <= data(9,18);
    data(10,9) <= data(9,9);
  else
    data(10,18) <= data(9,9);
    data(10,9) <= data(9,18);
  end if;
  if data(9,17) <= data(9,11) then
    data(10,17) <= data(9,17);
    data(10,11) <= data(9,11);
  else
    data(10,17) <= data(9,11);
    data(10,11) <= data(9,17);
  end if;
  if data(9,16) <= data(9,12) then
    data(10,16) <= data(9,16);
    data(10,12) <= data(9,12);
  else
    data(10,16) <= data(9,12);
    data(10,12) <= data(9,16);
  end if;
  if data(9,22) <= data(9,13) then
    data(10,22) <= data(9,22);
    data(10,13) <= data(9,13);
  else
    data(10,22) <= data(9,13);
    data(10,13) <= data(9,22);
  end if;
  if data(9,20) <= data(9,14) then
    data(10,20) <= data(9,20);
    data(10,14) <= data(9,14);
  else
    data(10,20) <= data(9,14);
    data(10,14) <= data(9,20);
  end if;
  if data(9,19) <= data(9,15) then
    data(10,19) <= data(9,19);
    data(10,15) <= data(9,15);
  else
    data(10,19) <= data(9,15);
    data(10,15) <= data(9,19);
  end if;
  if data(9,24) <= data(9,23) then
    data(10,24) <= data(9,24);
    data(10,23) <= data(9,23);
  else
    data(10,24) <= data(9,23);
    data(10,23) <= data(9,24);
  end if;
  if data(9,29) <= data(9,26) then
    data(10,29) <= data(9,29);
    data(10,26) <= data(9,26);
  else
    data(10,29) <= data(9,26);
    data(10,26) <= data(9,29);
  end if;
  data(10,0) <= data(9,0);
  data(10,1) <= data(9,1);
  data(10,3) <= data(9,3);
  data(10,4) <= data(9,4);
  data(10,6) <= data(9,6);
  data(10,10) <= data(9,10);
  data(10,21) <= data(9,21);
  data(10,25) <= data(9,25);
  data(10,27) <= data(9,27);
  data(10,28) <= data(9,28);
  data(10,30) <= data(9,30);
  data(10,31) <= data(9,31);
end if;

  -- ###### Stage 10 ######
if rising_edge(clk) then
  if data(10,4) <= data(10,2) then
    data(11,4) <= data(10,4);
    data(11,2) <= data(10,2);
  else
    data(11,4) <= data(10,2);
    data(11,2) <= data(10,4);
  end if;
  if data(10,12) <= data(10,6) then
    data(11,12) <= data(10,12);
    data(11,6) <= data(10,6);
  else
    data(11,12) <= data(10,6);
    data(11,6) <= data(10,12);
  end if;
  if data(10,16) <= data(10,9) then
    data(11,16) <= data(10,16);
    data(11,9) <= data(10,9);
  else
    data(11,16) <= data(10,9);
    data(11,9) <= data(10,16);
  end if;
  if data(10,11) <= data(10,10) then
    data(11,11) <= data(10,11);
    data(11,10) <= data(10,10);
  else
    data(11,11) <= data(10,10);
    data(11,10) <= data(10,11);
  end if;
  if data(10,17) <= data(10,13) then
    data(11,17) <= data(10,17);
    data(11,13) <= data(10,13);
  else
    data(11,17) <= data(10,13);
    data(11,13) <= data(10,17);
  end if;
  if data(10,18) <= data(10,14) then
    data(11,18) <= data(10,18);
    data(11,14) <= data(10,14);
  else
    data(11,18) <= data(10,14);
    data(11,14) <= data(10,18);
  end if;
  if data(10,22) <= data(10,15) then
    data(11,22) <= data(10,22);
    data(11,15) <= data(10,15);
  else
    data(11,22) <= data(10,15);
    data(11,15) <= data(10,22);
  end if;
  if data(10,25) <= data(10,19) then
    data(11,25) <= data(10,25);
    data(11,19) <= data(10,19);
  else
    data(11,25) <= data(10,19);
    data(11,19) <= data(10,25);
  end if;
  if data(10,21) <= data(10,20) then
    data(11,21) <= data(10,21);
    data(11,20) <= data(10,20);
  else
    data(11,21) <= data(10,20);
    data(11,20) <= data(10,21);
  end if;
  if data(10,29) <= data(10,27) then
    data(11,29) <= data(10,29);
    data(11,27) <= data(10,27);
  else
    data(11,29) <= data(10,27);
    data(11,27) <= data(10,29);
  end if;
  data(11,0) <= data(10,0);
  data(11,1) <= data(10,1);
  data(11,3) <= data(10,3);
  data(11,5) <= data(10,5);
  data(11,7) <= data(10,7);
  data(11,8) <= data(10,8);
  data(11,23) <= data(10,23);
  data(11,24) <= data(10,24);
  data(11,26) <= data(10,26);
  data(11,28) <= data(10,28);
  data(11,30) <= data(10,30);
  data(11,31) <= data(10,31);
end if;

  -- ###### Stage 11 ######
if rising_edge(clk) then
  if data(11,6) <= data(11,5) then
    data(12,6) <= data(11,6);
    data(12,5) <= data(11,5);
  else
    data(12,6) <= data(11,5);
    data(12,5) <= data(11,6);
  end if;
  if data(11,12) <= data(11,8) then
    data(12,12) <= data(11,12);
    data(12,8) <= data(11,8);
  else
    data(12,12) <= data(11,8);
    data(12,8) <= data(11,12);
  end if;
  if data(11,10) <= data(11,9) then
    data(12,10) <= data(11,10);
    data(12,9) <= data(11,9);
  else
    data(12,10) <= data(11,9);
    data(12,9) <= data(11,10);
  end if;
  if data(11,13) <= data(11,11) then
    data(12,13) <= data(11,13);
    data(12,11) <= data(11,11);
  else
    data(12,13) <= data(11,11);
    data(12,11) <= data(11,13);
  end if;
  if data(11,16) <= data(11,14) then
    data(12,16) <= data(11,16);
    data(12,14) <= data(11,14);
  else
    data(12,16) <= data(11,14);
    data(12,14) <= data(11,16);
  end if;
  if data(11,17) <= data(11,15) then
    data(12,17) <= data(11,17);
    data(12,15) <= data(11,15);
  else
    data(12,17) <= data(11,15);
    data(12,15) <= data(11,17);
  end if;
  if data(11,20) <= data(11,18) then
    data(12,20) <= data(11,20);
    data(12,18) <= data(11,18);
  else
    data(12,20) <= data(11,18);
    data(12,18) <= data(11,20);
  end if;
  if data(11,23) <= data(11,19) then
    data(12,23) <= data(11,23);
    data(12,19) <= data(11,19);
  else
    data(12,23) <= data(11,19);
    data(12,19) <= data(11,23);
  end if;
  if data(11,22) <= data(11,21) then
    data(12,22) <= data(11,22);
    data(12,21) <= data(11,21);
  else
    data(12,22) <= data(11,21);
    data(12,21) <= data(11,22);
  end if;
  if data(11,26) <= data(11,25) then
    data(12,26) <= data(11,26);
    data(12,25) <= data(11,25);
  else
    data(12,26) <= data(11,25);
    data(12,25) <= data(11,26);
  end if;
  data(12,0) <= data(11,0);
  data(12,1) <= data(11,1);
  data(12,2) <= data(11,2);
  data(12,3) <= data(11,3);
  data(12,4) <= data(11,4);
  data(12,7) <= data(11,7);
  data(12,24) <= data(11,24);
  data(12,27) <= data(11,27);
  data(12,28) <= data(11,28);
  data(12,29) <= data(11,29);
  data(12,30) <= data(11,30);
  data(12,31) <= data(11,31);
end if;

  -- ###### Stage 12 ######
if rising_edge(clk) then
  if data(12,5) <= data(12,3) then
    data(13,5) <= data(12,5);
    data(13,3) <= data(12,3);
  else
    data(13,5) <= data(12,3);
    data(13,3) <= data(12,5);
  end if;
  if data(12,7) <= data(12,6) then
    data(13,7) <= data(12,7);
    data(13,6) <= data(12,6);
  else
    data(13,7) <= data(12,6);
    data(13,6) <= data(12,7);
  end if;
  if data(12,9) <= data(12,8) then
    data(13,9) <= data(12,9);
    data(13,8) <= data(12,8);
  else
    data(13,9) <= data(12,8);
    data(13,8) <= data(12,9);
  end if;
  if data(12,12) <= data(12,10) then
    data(13,12) <= data(12,12);
    data(13,10) <= data(12,10);
  else
    data(13,12) <= data(12,10);
    data(13,10) <= data(12,12);
  end if;
  if data(12,14) <= data(12,11) then
    data(13,14) <= data(12,14);
    data(13,11) <= data(12,11);
  else
    data(13,14) <= data(12,11);
    data(13,11) <= data(12,14);
  end if;
  if data(12,16) <= data(12,13) then
    data(13,16) <= data(12,16);
    data(13,13) <= data(12,13);
  else
    data(13,16) <= data(12,13);
    data(13,13) <= data(12,16);
  end if;
  if data(12,18) <= data(12,15) then
    data(13,18) <= data(12,18);
    data(13,15) <= data(12,15);
  else
    data(13,18) <= data(12,15);
    data(13,15) <= data(12,18);
  end if;
  if data(12,20) <= data(12,17) then
    data(13,20) <= data(12,20);
    data(13,17) <= data(12,17);
  else
    data(13,20) <= data(12,17);
    data(13,17) <= data(12,20);
  end if;
  if data(12,21) <= data(12,19) then
    data(13,21) <= data(12,21);
    data(13,19) <= data(12,19);
  else
    data(13,21) <= data(12,19);
    data(13,19) <= data(12,21);
  end if;
  if data(12,23) <= data(12,22) then
    data(13,23) <= data(12,23);
    data(13,22) <= data(12,22);
  else
    data(13,23) <= data(12,22);
    data(13,22) <= data(12,23);
  end if;
  if data(12,25) <= data(12,24) then
    data(13,25) <= data(12,25);
    data(13,24) <= data(12,24);
  else
    data(13,25) <= data(12,24);
    data(13,24) <= data(12,25);
  end if;
  if data(12,28) <= data(12,26) then
    data(13,28) <= data(12,28);
    data(13,26) <= data(12,26);
  else
    data(13,28) <= data(12,26);
    data(13,26) <= data(12,28);
  end if;
  data(13,0) <= data(12,0);
  data(13,1) <= data(12,1);
  data(13,2) <= data(12,2);
  data(13,4) <= data(12,4);
  data(13,27) <= data(12,27);
  data(13,29) <= data(12,29);
  data(13,30) <= data(12,30);
  data(13,31) <= data(12,31);
end if;

  -- ###### Stage 13 ######
if rising_edge(clk) then
  if data(13,4) <= data(13,3) then
    data(14,4) <= data(13,4);
    data(14,3) <= data(13,3);
  else
    data(14,4) <= data(13,3);
    data(14,3) <= data(13,4);
  end if;
  if data(13,6) <= data(13,5) then
    data(14,6) <= data(13,6);
    data(14,5) <= data(13,5);
  else
    data(14,6) <= data(13,5);
    data(14,5) <= data(13,6);
  end if;
  if data(13,8) <= data(13,7) then
    data(14,8) <= data(13,8);
    data(14,7) <= data(13,7);
  else
    data(14,8) <= data(13,7);
    data(14,7) <= data(13,8);
  end if;
  if data(13,10) <= data(13,9) then
    data(14,10) <= data(13,10);
    data(14,9) <= data(13,9);
  else
    data(14,10) <= data(13,9);
    data(14,9) <= data(13,10);
  end if;
  if data(13,12) <= data(13,11) then
    data(14,12) <= data(13,12);
    data(14,11) <= data(13,11);
  else
    data(14,12) <= data(13,11);
    data(14,11) <= data(13,12);
  end if;
  if data(13,14) <= data(13,13) then
    data(14,14) <= data(13,14);
    data(14,13) <= data(13,13);
  else
    data(14,14) <= data(13,13);
    data(14,13) <= data(13,14);
  end if;
  if data(13,16) <= data(13,15) then
    data(14,16) <= data(13,16);
    data(14,15) <= data(13,15);
  else
    data(14,16) <= data(13,15);
    data(14,15) <= data(13,16);
  end if;
  if data(13,18) <= data(13,17) then
    data(14,18) <= data(13,18);
    data(14,17) <= data(13,17);
  else
    data(14,18) <= data(13,17);
    data(14,17) <= data(13,18);
  end if;
  if data(13,20) <= data(13,19) then
    data(14,20) <= data(13,20);
    data(14,19) <= data(13,19);
  else
    data(14,20) <= data(13,19);
    data(14,19) <= data(13,20);
  end if;
  if data(13,22) <= data(13,21) then
    data(14,22) <= data(13,22);
    data(14,21) <= data(13,21);
  else
    data(14,22) <= data(13,21);
    data(14,21) <= data(13,22);
  end if;
  if data(13,24) <= data(13,23) then
    data(14,24) <= data(13,24);
    data(14,23) <= data(13,23);
  else
    data(14,24) <= data(13,23);
    data(14,23) <= data(13,24);
  end if;
  if data(13,26) <= data(13,25) then
    data(14,26) <= data(13,26);
    data(14,25) <= data(13,25);
  else
    data(14,26) <= data(13,25);
    data(14,25) <= data(13,26);
  end if;
  if data(13,28) <= data(13,27) then
    data(14,28) <= data(13,28);
    data(14,27) <= data(13,27);
  else
    data(14,28) <= data(13,27);
    data(14,27) <= data(13,28);
  end if;
  data(14,0) <= data(13,0);
  data(14,1) <= data(13,1);
  data(14,2) <= data(13,2);
  data(14,29) <= data(13,29);
  data(14,30) <= data(13,30);
  data(14,31) <= data(13,31);
end if;

end process;

sort_0 <= std_logic_vector(data(14,0));
sort_1 <= std_logic_vector(data(14,1));
sort_2 <= std_logic_vector(data(14,2));
sort_3 <= std_logic_vector(data(14,3));
sort_4 <= std_logic_vector(data(14,4));
sort_5 <= std_logic_vector(data(14,5));
sort_6 <= std_logic_vector(data(14,6));
sort_7 <= std_logic_vector(data(14,7));
sort_8 <= std_logic_vector(data(14,8));
sort_9 <= std_logic_vector(data(14,9));
sort_10 <= std_logic_vector(data(14,10));
sort_11 <= std_logic_vector(data(14,11));
sort_12 <= std_logic_vector(data(14,12));
sort_13 <= std_logic_vector(data(14,13));
sort_14 <= std_logic_vector(data(14,14));
sort_15 <= std_logic_vector(data(14,15));
sort_16 <= std_logic_vector(data(14,16));
sort_17 <= std_logic_vector(data(14,17));
sort_18 <= std_logic_vector(data(14,18));
sort_19 <= std_logic_vector(data(14,19));
sort_20 <= std_logic_vector(data(14,20));
sort_21 <= std_logic_vector(data(14,21));
sort_22 <= std_logic_vector(data(14,22));
sort_23 <= std_logic_vector(data(14,23));
sort_24 <= std_logic_vector(data(14,24));
sort_25 <= std_logic_vector(data(14,25));
sort_26 <= std_logic_vector(data(14,26));
sort_27 <= std_logic_vector(data(14,27));
sort_28 <= std_logic_vector(data(14,28));
sort_29 <= std_logic_vector(data(14,29));
sort_30 <= std_logic_vector(data(14,30));
sort_31 <= std_logic_vector(data(14,31));

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
  signal data16 : std_logic_vector(31 downto 0) := (others => '0');
  signal data17 : std_logic_vector(31 downto 0) := (others => '0');
  signal data18 : std_logic_vector(31 downto 0) := (others => '0');
  signal data19 : std_logic_vector(31 downto 0) := (others => '0');
  signal data20 : std_logic_vector(31 downto 0) := (others => '0');
  signal data21 : std_logic_vector(31 downto 0) := (others => '0');
  signal data22 : std_logic_vector(31 downto 0) := (others => '0');
  signal data23 : std_logic_vector(31 downto 0) := (others => '0');
  signal data24 : std_logic_vector(31 downto 0) := (others => '0');
  signal data25 : std_logic_vector(31 downto 0) := (others => '0');
  signal data26 : std_logic_vector(31 downto 0) := (others => '0');
  signal data27 : std_logic_vector(31 downto 0) := (others => '0');
  signal data28 : std_logic_vector(31 downto 0) := (others => '0');
  signal data29 : std_logic_vector(31 downto 0) := (others => '0');
  signal data30 : std_logic_vector(31 downto 0) := (others => '0');
  signal data31 : std_logic_vector(31 downto 0) := (others => '0');

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
    data16 <= rand_slv(32);
    data17 <= rand_slv(32);
    data18 <= rand_slv(32);
    data19 <= rand_slv(32);
    data20 <= rand_slv(32);
    data21 <= rand_slv(32);
    data22 <= rand_slv(32);
    data23 <= rand_slv(32);
    data24 <= rand_slv(32);
    data25 <= rand_slv(32);
    data26 <= rand_slv(32);
    data27 <= rand_slv(32);
    data28 <= rand_slv(32);
    data29 <= rand_slv(32);
    data30 <= rand_slv(32);
    data31 <= rand_slv(32);
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
    data_15 => data15,
    data_16 => data16,
    data_17 => data17,
    data_18 => data18,
    data_19 => data19,
    data_20 => data20,
    data_21 => data21,
    data_22 => data22,
    data_23 => data23,
    data_24 => data24,
    data_25 => data25,
    data_26 => data26,
    data_27 => data27,
    data_28 => data28,
    data_29 => data29,
    data_30 => data30,
    data_31 => data31
);

end architecture;

