
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
    data_32 : in std_logic_vector(31 downto 0);
    data_33 : in std_logic_vector(31 downto 0);
    data_34 : in std_logic_vector(31 downto 0);
    data_35 : in std_logic_vector(31 downto 0);
    data_36 : in std_logic_vector(31 downto 0);
    data_37 : in std_logic_vector(31 downto 0);
    data_38 : in std_logic_vector(31 downto 0);
    data_39 : in std_logic_vector(31 downto 0);
    data_40 : in std_logic_vector(31 downto 0);
    data_41 : in std_logic_vector(31 downto 0);
    data_42 : in std_logic_vector(31 downto 0);
    data_43 : in std_logic_vector(31 downto 0);
    data_44 : in std_logic_vector(31 downto 0);
    data_45 : in std_logic_vector(31 downto 0);
    data_46 : in std_logic_vector(31 downto 0);
    data_47 : in std_logic_vector(31 downto 0);
    data_48 : in std_logic_vector(31 downto 0);
    data_49 : in std_logic_vector(31 downto 0);
    data_50 : in std_logic_vector(31 downto 0);
    data_51 : in std_logic_vector(31 downto 0);
    data_52 : in std_logic_vector(31 downto 0);
    data_53 : in std_logic_vector(31 downto 0);
    data_54 : in std_logic_vector(31 downto 0);
    data_55 : in std_logic_vector(31 downto 0);
    data_56 : in std_logic_vector(31 downto 0);
    data_57 : in std_logic_vector(31 downto 0);
    data_58 : in std_logic_vector(31 downto 0);
    data_59 : in std_logic_vector(31 downto 0);
    data_60 : in std_logic_vector(31 downto 0);
    data_61 : in std_logic_vector(31 downto 0);
    data_62 : in std_logic_vector(31 downto 0);
    data_63 : in std_logic_vector(31 downto 0);
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
    sort_31 : out std_logic_vector(31 downto 0);
    sort_32 : out std_logic_vector(31 downto 0);
    sort_33 : out std_logic_vector(31 downto 0);
    sort_34 : out std_logic_vector(31 downto 0);
    sort_35 : out std_logic_vector(31 downto 0);
    sort_36 : out std_logic_vector(31 downto 0);
    sort_37 : out std_logic_vector(31 downto 0);
    sort_38 : out std_logic_vector(31 downto 0);
    sort_39 : out std_logic_vector(31 downto 0);
    sort_40 : out std_logic_vector(31 downto 0);
    sort_41 : out std_logic_vector(31 downto 0);
    sort_42 : out std_logic_vector(31 downto 0);
    sort_43 : out std_logic_vector(31 downto 0);
    sort_44 : out std_logic_vector(31 downto 0);
    sort_45 : out std_logic_vector(31 downto 0);
    sort_46 : out std_logic_vector(31 downto 0);
    sort_47 : out std_logic_vector(31 downto 0);
    sort_48 : out std_logic_vector(31 downto 0);
    sort_49 : out std_logic_vector(31 downto 0);
    sort_50 : out std_logic_vector(31 downto 0);
    sort_51 : out std_logic_vector(31 downto 0);
    sort_52 : out std_logic_vector(31 downto 0);
    sort_53 : out std_logic_vector(31 downto 0);
    sort_54 : out std_logic_vector(31 downto 0);
    sort_55 : out std_logic_vector(31 downto 0);
    sort_56 : out std_logic_vector(31 downto 0);
    sort_57 : out std_logic_vector(31 downto 0);
    sort_58 : out std_logic_vector(31 downto 0);
    sort_59 : out std_logic_vector(31 downto 0);
    sort_60 : out std_logic_vector(31 downto 0);
    sort_61 : out std_logic_vector(31 downto 0);
    sort_62 : out std_logic_vector(31 downto 0);
    sort_63 : out std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl of sorting_network is
  type data_array is array (natural range <>, natural range <>) of unsigned(31 downto 0);
  signal data : data_array(20 downto 0, 63 downto 0);
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
data(0,32) <= unsigned(data_32);
data(0,33) <= unsigned(data_33);
data(0,34) <= unsigned(data_34);
data(0,35) <= unsigned(data_35);
data(0,36) <= unsigned(data_36);
data(0,37) <= unsigned(data_37);
data(0,38) <= unsigned(data_38);
data(0,39) <= unsigned(data_39);
data(0,40) <= unsigned(data_40);
data(0,41) <= unsigned(data_41);
data(0,42) <= unsigned(data_42);
data(0,43) <= unsigned(data_43);
data(0,44) <= unsigned(data_44);
data(0,45) <= unsigned(data_45);
data(0,46) <= unsigned(data_46);
data(0,47) <= unsigned(data_47);
data(0,48) <= unsigned(data_48);
data(0,49) <= unsigned(data_49);
data(0,50) <= unsigned(data_50);
data(0,51) <= unsigned(data_51);
data(0,52) <= unsigned(data_52);
data(0,53) <= unsigned(data_53);
data(0,54) <= unsigned(data_54);
data(0,55) <= unsigned(data_55);
data(0,56) <= unsigned(data_56);
data(0,57) <= unsigned(data_57);
data(0,58) <= unsigned(data_58);
data(0,59) <= unsigned(data_59);
data(0,60) <= unsigned(data_60);
data(0,61) <= unsigned(data_61);
data(0,62) <= unsigned(data_62);
data(0,63) <= unsigned(data_63);

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
  if data(0,10) <= data(0,8) then
    data(1,10) <= data(0,10);
    data(1,8) <= data(0,8);
  else
    data(1,10) <= data(0,8);
    data(1,8) <= data(0,10);
  end if;
  if data(0,11) <= data(0,9) then
    data(1,11) <= data(0,11);
    data(1,9) <= data(0,9);
  else
    data(1,11) <= data(0,9);
    data(1,9) <= data(0,11);
  end if;
  if data(0,14) <= data(0,12) then
    data(1,14) <= data(0,14);
    data(1,12) <= data(0,12);
  else
    data(1,14) <= data(0,12);
    data(1,12) <= data(0,14);
  end if;
  if data(0,15) <= data(0,13) then
    data(1,15) <= data(0,15);
    data(1,13) <= data(0,13);
  else
    data(1,15) <= data(0,13);
    data(1,13) <= data(0,15);
  end if;
  if data(0,18) <= data(0,16) then
    data(1,18) <= data(0,18);
    data(1,16) <= data(0,16);
  else
    data(1,18) <= data(0,16);
    data(1,16) <= data(0,18);
  end if;
  if data(0,19) <= data(0,17) then
    data(1,19) <= data(0,19);
    data(1,17) <= data(0,17);
  else
    data(1,19) <= data(0,17);
    data(1,17) <= data(0,19);
  end if;
  if data(0,22) <= data(0,20) then
    data(1,22) <= data(0,22);
    data(1,20) <= data(0,20);
  else
    data(1,22) <= data(0,20);
    data(1,20) <= data(0,22);
  end if;
  if data(0,23) <= data(0,21) then
    data(1,23) <= data(0,23);
    data(1,21) <= data(0,21);
  else
    data(1,23) <= data(0,21);
    data(1,21) <= data(0,23);
  end if;
  if data(0,26) <= data(0,24) then
    data(1,26) <= data(0,26);
    data(1,24) <= data(0,24);
  else
    data(1,26) <= data(0,24);
    data(1,24) <= data(0,26);
  end if;
  if data(0,27) <= data(0,25) then
    data(1,27) <= data(0,27);
    data(1,25) <= data(0,25);
  else
    data(1,27) <= data(0,25);
    data(1,25) <= data(0,27);
  end if;
  if data(0,30) <= data(0,28) then
    data(1,30) <= data(0,30);
    data(1,28) <= data(0,28);
  else
    data(1,30) <= data(0,28);
    data(1,28) <= data(0,30);
  end if;
  if data(0,31) <= data(0,29) then
    data(1,31) <= data(0,31);
    data(1,29) <= data(0,29);
  else
    data(1,31) <= data(0,29);
    data(1,29) <= data(0,31);
  end if;
  if data(0,34) <= data(0,32) then
    data(1,34) <= data(0,34);
    data(1,32) <= data(0,32);
  else
    data(1,34) <= data(0,32);
    data(1,32) <= data(0,34);
  end if;
  if data(0,35) <= data(0,33) then
    data(1,35) <= data(0,35);
    data(1,33) <= data(0,33);
  else
    data(1,35) <= data(0,33);
    data(1,33) <= data(0,35);
  end if;
  if data(0,38) <= data(0,36) then
    data(1,38) <= data(0,38);
    data(1,36) <= data(0,36);
  else
    data(1,38) <= data(0,36);
    data(1,36) <= data(0,38);
  end if;
  if data(0,39) <= data(0,37) then
    data(1,39) <= data(0,39);
    data(1,37) <= data(0,37);
  else
    data(1,39) <= data(0,37);
    data(1,37) <= data(0,39);
  end if;
  if data(0,42) <= data(0,40) then
    data(1,42) <= data(0,42);
    data(1,40) <= data(0,40);
  else
    data(1,42) <= data(0,40);
    data(1,40) <= data(0,42);
  end if;
  if data(0,43) <= data(0,41) then
    data(1,43) <= data(0,43);
    data(1,41) <= data(0,41);
  else
    data(1,43) <= data(0,41);
    data(1,41) <= data(0,43);
  end if;
  if data(0,46) <= data(0,44) then
    data(1,46) <= data(0,46);
    data(1,44) <= data(0,44);
  else
    data(1,46) <= data(0,44);
    data(1,44) <= data(0,46);
  end if;
  if data(0,47) <= data(0,45) then
    data(1,47) <= data(0,47);
    data(1,45) <= data(0,45);
  else
    data(1,47) <= data(0,45);
    data(1,45) <= data(0,47);
  end if;
  if data(0,50) <= data(0,48) then
    data(1,50) <= data(0,50);
    data(1,48) <= data(0,48);
  else
    data(1,50) <= data(0,48);
    data(1,48) <= data(0,50);
  end if;
  if data(0,51) <= data(0,49) then
    data(1,51) <= data(0,51);
    data(1,49) <= data(0,49);
  else
    data(1,51) <= data(0,49);
    data(1,49) <= data(0,51);
  end if;
  if data(0,54) <= data(0,52) then
    data(1,54) <= data(0,54);
    data(1,52) <= data(0,52);
  else
    data(1,54) <= data(0,52);
    data(1,52) <= data(0,54);
  end if;
  if data(0,55) <= data(0,53) then
    data(1,55) <= data(0,55);
    data(1,53) <= data(0,53);
  else
    data(1,55) <= data(0,53);
    data(1,53) <= data(0,55);
  end if;
  if data(0,58) <= data(0,56) then
    data(1,58) <= data(0,58);
    data(1,56) <= data(0,56);
  else
    data(1,58) <= data(0,56);
    data(1,56) <= data(0,58);
  end if;
  if data(0,59) <= data(0,57) then
    data(1,59) <= data(0,59);
    data(1,57) <= data(0,57);
  else
    data(1,59) <= data(0,57);
    data(1,57) <= data(0,59);
  end if;
  if data(0,62) <= data(0,60) then
    data(1,62) <= data(0,62);
    data(1,60) <= data(0,60);
  else
    data(1,62) <= data(0,60);
    data(1,60) <= data(0,62);
  end if;
  if data(0,63) <= data(0,61) then
    data(1,63) <= data(0,63);
    data(1,61) <= data(0,61);
  else
    data(1,63) <= data(0,61);
    data(1,61) <= data(0,63);
  end if;
end if;

  -- ###### Stage 1 ######
if rising_edge(clk) then
  if data(1,1) <= data(1,0) then
    data(2,1) <= data(1,1);
    data(2,0) <= data(1,0);
  else
    data(2,1) <= data(1,0);
    data(2,0) <= data(1,1);
  end if;
  if data(1,3) <= data(1,2) then
    data(2,3) <= data(1,3);
    data(2,2) <= data(1,2);
  else
    data(2,3) <= data(1,2);
    data(2,2) <= data(1,3);
  end if;
  if data(1,5) <= data(1,4) then
    data(2,5) <= data(1,5);
    data(2,4) <= data(1,4);
  else
    data(2,5) <= data(1,4);
    data(2,4) <= data(1,5);
  end if;
  if data(1,7) <= data(1,6) then
    data(2,7) <= data(1,7);
    data(2,6) <= data(1,6);
  else
    data(2,7) <= data(1,6);
    data(2,6) <= data(1,7);
  end if;
  if data(1,9) <= data(1,8) then
    data(2,9) <= data(1,9);
    data(2,8) <= data(1,8);
  else
    data(2,9) <= data(1,8);
    data(2,8) <= data(1,9);
  end if;
  if data(1,11) <= data(1,10) then
    data(2,11) <= data(1,11);
    data(2,10) <= data(1,10);
  else
    data(2,11) <= data(1,10);
    data(2,10) <= data(1,11);
  end if;
  if data(1,13) <= data(1,12) then
    data(2,13) <= data(1,13);
    data(2,12) <= data(1,12);
  else
    data(2,13) <= data(1,12);
    data(2,12) <= data(1,13);
  end if;
  if data(1,15) <= data(1,14) then
    data(2,15) <= data(1,15);
    data(2,14) <= data(1,14);
  else
    data(2,15) <= data(1,14);
    data(2,14) <= data(1,15);
  end if;
  if data(1,17) <= data(1,16) then
    data(2,17) <= data(1,17);
    data(2,16) <= data(1,16);
  else
    data(2,17) <= data(1,16);
    data(2,16) <= data(1,17);
  end if;
  if data(1,19) <= data(1,18) then
    data(2,19) <= data(1,19);
    data(2,18) <= data(1,18);
  else
    data(2,19) <= data(1,18);
    data(2,18) <= data(1,19);
  end if;
  if data(1,21) <= data(1,20) then
    data(2,21) <= data(1,21);
    data(2,20) <= data(1,20);
  else
    data(2,21) <= data(1,20);
    data(2,20) <= data(1,21);
  end if;
  if data(1,23) <= data(1,22) then
    data(2,23) <= data(1,23);
    data(2,22) <= data(1,22);
  else
    data(2,23) <= data(1,22);
    data(2,22) <= data(1,23);
  end if;
  if data(1,25) <= data(1,24) then
    data(2,25) <= data(1,25);
    data(2,24) <= data(1,24);
  else
    data(2,25) <= data(1,24);
    data(2,24) <= data(1,25);
  end if;
  if data(1,27) <= data(1,26) then
    data(2,27) <= data(1,27);
    data(2,26) <= data(1,26);
  else
    data(2,27) <= data(1,26);
    data(2,26) <= data(1,27);
  end if;
  if data(1,29) <= data(1,28) then
    data(2,29) <= data(1,29);
    data(2,28) <= data(1,28);
  else
    data(2,29) <= data(1,28);
    data(2,28) <= data(1,29);
  end if;
  if data(1,31) <= data(1,30) then
    data(2,31) <= data(1,31);
    data(2,30) <= data(1,30);
  else
    data(2,31) <= data(1,30);
    data(2,30) <= data(1,31);
  end if;
  if data(1,33) <= data(1,32) then
    data(2,33) <= data(1,33);
    data(2,32) <= data(1,32);
  else
    data(2,33) <= data(1,32);
    data(2,32) <= data(1,33);
  end if;
  if data(1,35) <= data(1,34) then
    data(2,35) <= data(1,35);
    data(2,34) <= data(1,34);
  else
    data(2,35) <= data(1,34);
    data(2,34) <= data(1,35);
  end if;
  if data(1,37) <= data(1,36) then
    data(2,37) <= data(1,37);
    data(2,36) <= data(1,36);
  else
    data(2,37) <= data(1,36);
    data(2,36) <= data(1,37);
  end if;
  if data(1,39) <= data(1,38) then
    data(2,39) <= data(1,39);
    data(2,38) <= data(1,38);
  else
    data(2,39) <= data(1,38);
    data(2,38) <= data(1,39);
  end if;
  if data(1,41) <= data(1,40) then
    data(2,41) <= data(1,41);
    data(2,40) <= data(1,40);
  else
    data(2,41) <= data(1,40);
    data(2,40) <= data(1,41);
  end if;
  if data(1,43) <= data(1,42) then
    data(2,43) <= data(1,43);
    data(2,42) <= data(1,42);
  else
    data(2,43) <= data(1,42);
    data(2,42) <= data(1,43);
  end if;
  if data(1,45) <= data(1,44) then
    data(2,45) <= data(1,45);
    data(2,44) <= data(1,44);
  else
    data(2,45) <= data(1,44);
    data(2,44) <= data(1,45);
  end if;
  if data(1,47) <= data(1,46) then
    data(2,47) <= data(1,47);
    data(2,46) <= data(1,46);
  else
    data(2,47) <= data(1,46);
    data(2,46) <= data(1,47);
  end if;
  if data(1,49) <= data(1,48) then
    data(2,49) <= data(1,49);
    data(2,48) <= data(1,48);
  else
    data(2,49) <= data(1,48);
    data(2,48) <= data(1,49);
  end if;
  if data(1,51) <= data(1,50) then
    data(2,51) <= data(1,51);
    data(2,50) <= data(1,50);
  else
    data(2,51) <= data(1,50);
    data(2,50) <= data(1,51);
  end if;
  if data(1,53) <= data(1,52) then
    data(2,53) <= data(1,53);
    data(2,52) <= data(1,52);
  else
    data(2,53) <= data(1,52);
    data(2,52) <= data(1,53);
  end if;
  if data(1,55) <= data(1,54) then
    data(2,55) <= data(1,55);
    data(2,54) <= data(1,54);
  else
    data(2,55) <= data(1,54);
    data(2,54) <= data(1,55);
  end if;
  if data(1,57) <= data(1,56) then
    data(2,57) <= data(1,57);
    data(2,56) <= data(1,56);
  else
    data(2,57) <= data(1,56);
    data(2,56) <= data(1,57);
  end if;
  if data(1,59) <= data(1,58) then
    data(2,59) <= data(1,59);
    data(2,58) <= data(1,58);
  else
    data(2,59) <= data(1,58);
    data(2,58) <= data(1,59);
  end if;
  if data(1,61) <= data(1,60) then
    data(2,61) <= data(1,61);
    data(2,60) <= data(1,60);
  else
    data(2,61) <= data(1,60);
    data(2,60) <= data(1,61);
  end if;
  if data(1,63) <= data(1,62) then
    data(2,63) <= data(1,63);
    data(2,62) <= data(1,62);
  else
    data(2,63) <= data(1,62);
    data(2,62) <= data(1,63);
  end if;
end if;

  -- ###### Stage 2 ######
if rising_edge(clk) then
  if data(2,20) <= data(2,0) then
    data(3,20) <= data(2,20);
    data(3,0) <= data(2,0);
  else
    data(3,20) <= data(2,0);
    data(3,0) <= data(2,20);
  end if;
  if data(2,2) <= data(2,1) then
    data(3,2) <= data(2,2);
    data(3,1) <= data(2,1);
  else
    data(3,2) <= data(2,1);
    data(3,1) <= data(2,2);
  end if;
  if data(2,23) <= data(2,3) then
    data(3,23) <= data(2,23);
    data(3,3) <= data(2,3);
  else
    data(3,23) <= data(2,3);
    data(3,3) <= data(2,23);
  end if;
  if data(2,16) <= data(2,4) then
    data(3,16) <= data(2,16);
    data(3,4) <= data(2,4);
  else
    data(3,16) <= data(2,4);
    data(3,4) <= data(2,16);
  end if;
  if data(2,6) <= data(2,5) then
    data(3,6) <= data(2,6);
    data(3,5) <= data(2,5);
  else
    data(3,6) <= data(2,5);
    data(3,5) <= data(2,6);
  end if;
  if data(2,19) <= data(2,7) then
    data(3,19) <= data(2,19);
    data(3,7) <= data(2,7);
  else
    data(3,19) <= data(2,7);
    data(3,7) <= data(2,19);
  end if;
  if data(2,48) <= data(2,8) then
    data(3,48) <= data(2,48);
    data(3,8) <= data(2,8);
  else
    data(3,48) <= data(2,8);
    data(3,8) <= data(2,48);
  end if;
  if data(2,10) <= data(2,9) then
    data(3,10) <= data(2,10);
    data(3,9) <= data(2,9);
  else
    data(3,10) <= data(2,9);
    data(3,9) <= data(2,10);
  end if;
  if data(2,51) <= data(2,11) then
    data(3,51) <= data(2,51);
    data(3,11) <= data(2,11);
  else
    data(3,51) <= data(2,11);
    data(3,11) <= data(2,51);
  end if;
  if data(2,52) <= data(2,12) then
    data(3,52) <= data(2,52);
    data(3,12) <= data(2,12);
  else
    data(3,52) <= data(2,12);
    data(3,12) <= data(2,52);
  end if;
  if data(2,14) <= data(2,13) then
    data(3,14) <= data(2,14);
    data(3,13) <= data(2,13);
  else
    data(3,14) <= data(2,13);
    data(3,13) <= data(2,14);
  end if;
  if data(2,55) <= data(2,15) then
    data(3,55) <= data(2,55);
    data(3,15) <= data(2,15);
  else
    data(3,55) <= data(2,15);
    data(3,15) <= data(2,55);
  end if;
  if data(2,18) <= data(2,17) then
    data(3,18) <= data(2,18);
    data(3,17) <= data(2,17);
  else
    data(3,18) <= data(2,17);
    data(3,17) <= data(2,18);
  end if;
  if data(2,22) <= data(2,21) then
    data(3,22) <= data(2,22);
    data(3,21) <= data(2,21);
  else
    data(3,22) <= data(2,21);
    data(3,21) <= data(2,22);
  end if;
  if data(2,28) <= data(2,24) then
    data(3,28) <= data(2,28);
    data(3,24) <= data(2,24);
  else
    data(3,28) <= data(2,24);
    data(3,24) <= data(2,28);
  end if;
  if data(2,26) <= data(2,25) then
    data(3,26) <= data(2,26);
    data(3,25) <= data(2,25);
  else
    data(3,26) <= data(2,25);
    data(3,25) <= data(2,26);
  end if;
  if data(2,31) <= data(2,27) then
    data(3,31) <= data(2,31);
    data(3,27) <= data(2,27);
  else
    data(3,31) <= data(2,27);
    data(3,27) <= data(2,31);
  end if;
  if data(2,30) <= data(2,29) then
    data(3,30) <= data(2,30);
    data(3,29) <= data(2,29);
  else
    data(3,30) <= data(2,29);
    data(3,29) <= data(2,30);
  end if;
  if data(2,36) <= data(2,32) then
    data(3,36) <= data(2,36);
    data(3,32) <= data(2,32);
  else
    data(3,36) <= data(2,32);
    data(3,32) <= data(2,36);
  end if;
  if data(2,34) <= data(2,33) then
    data(3,34) <= data(2,34);
    data(3,33) <= data(2,33);
  else
    data(3,34) <= data(2,33);
    data(3,33) <= data(2,34);
  end if;
  if data(2,39) <= data(2,35) then
    data(3,39) <= data(2,39);
    data(3,35) <= data(2,35);
  else
    data(3,39) <= data(2,35);
    data(3,35) <= data(2,39);
  end if;
  if data(2,38) <= data(2,37) then
    data(3,38) <= data(2,38);
    data(3,37) <= data(2,37);
  else
    data(3,38) <= data(2,37);
    data(3,37) <= data(2,38);
  end if;
  if data(2,60) <= data(2,40) then
    data(3,60) <= data(2,60);
    data(3,40) <= data(2,40);
  else
    data(3,60) <= data(2,40);
    data(3,40) <= data(2,60);
  end if;
  if data(2,42) <= data(2,41) then
    data(3,42) <= data(2,42);
    data(3,41) <= data(2,41);
  else
    data(3,42) <= data(2,41);
    data(3,41) <= data(2,42);
  end if;
  if data(2,63) <= data(2,43) then
    data(3,63) <= data(2,63);
    data(3,43) <= data(2,43);
  else
    data(3,63) <= data(2,43);
    data(3,43) <= data(2,63);
  end if;
  if data(2,56) <= data(2,44) then
    data(3,56) <= data(2,56);
    data(3,44) <= data(2,44);
  else
    data(3,56) <= data(2,44);
    data(3,44) <= data(2,56);
  end if;
  if data(2,46) <= data(2,45) then
    data(3,46) <= data(2,46);
    data(3,45) <= data(2,45);
  else
    data(3,46) <= data(2,45);
    data(3,45) <= data(2,46);
  end if;
  if data(2,59) <= data(2,47) then
    data(3,59) <= data(2,59);
    data(3,47) <= data(2,47);
  else
    data(3,59) <= data(2,47);
    data(3,47) <= data(2,59);
  end if;
  if data(2,50) <= data(2,49) then
    data(3,50) <= data(2,50);
    data(3,49) <= data(2,49);
  else
    data(3,50) <= data(2,49);
    data(3,49) <= data(2,50);
  end if;
  if data(2,54) <= data(2,53) then
    data(3,54) <= data(2,54);
    data(3,53) <= data(2,53);
  else
    data(3,54) <= data(2,53);
    data(3,53) <= data(2,54);
  end if;
  if data(2,58) <= data(2,57) then
    data(3,58) <= data(2,58);
    data(3,57) <= data(2,57);
  else
    data(3,58) <= data(2,57);
    data(3,57) <= data(2,58);
  end if;
  if data(2,62) <= data(2,61) then
    data(3,62) <= data(2,62);
    data(3,61) <= data(2,61);
  else
    data(3,62) <= data(2,61);
    data(3,61) <= data(2,62);
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
  if data(3,21) <= data(3,1) then
    data(4,21) <= data(3,21);
    data(4,1) <= data(3,1);
  else
    data(4,21) <= data(3,1);
    data(4,1) <= data(3,21);
  end if;
  if data(3,22) <= data(3,2) then
    data(4,22) <= data(3,22);
    data(4,2) <= data(3,2);
  else
    data(4,22) <= data(3,2);
    data(4,2) <= data(3,22);
  end if;
  if data(3,11) <= data(3,3) then
    data(4,11) <= data(3,11);
    data(4,3) <= data(3,3);
  else
    data(4,11) <= data(3,3);
    data(4,3) <= data(3,11);
  end if;
  if data(3,40) <= data(3,4) then
    data(4,40) <= data(3,40);
    data(4,4) <= data(3,4);
  else
    data(4,40) <= data(3,4);
    data(4,4) <= data(3,40);
  end if;
  if data(3,17) <= data(3,5) then
    data(4,17) <= data(3,17);
    data(4,5) <= data(3,5);
  else
    data(4,17) <= data(3,5);
    data(4,5) <= data(3,17);
  end if;
  if data(3,18) <= data(3,6) then
    data(4,18) <= data(3,18);
    data(4,6) <= data(3,6);
  else
    data(4,18) <= data(3,6);
    data(4,6) <= data(3,18);
  end if;
  if data(3,43) <= data(3,7) then
    data(4,43) <= data(3,43);
    data(4,7) <= data(3,7);
  else
    data(4,43) <= data(3,7);
    data(4,7) <= data(3,43);
  end if;
  if data(3,49) <= data(3,9) then
    data(4,49) <= data(3,49);
    data(4,9) <= data(3,9);
  else
    data(4,49) <= data(3,9);
    data(4,9) <= data(3,49);
  end if;
  if data(3,50) <= data(3,10) then
    data(4,50) <= data(3,50);
    data(4,10) <= data(3,10);
  else
    data(4,50) <= data(3,10);
    data(4,10) <= data(3,50);
  end if;
  if data(3,24) <= data(3,12) then
    data(4,24) <= data(3,24);
    data(4,12) <= data(3,12);
  else
    data(4,24) <= data(3,12);
    data(4,12) <= data(3,24);
  end if;
  if data(3,53) <= data(3,13) then
    data(4,53) <= data(3,53);
    data(4,13) <= data(3,13);
  else
    data(4,53) <= data(3,13);
    data(4,13) <= data(3,53);
  end if;
  if data(3,54) <= data(3,14) then
    data(4,54) <= data(3,54);
    data(4,14) <= data(3,14);
  else
    data(4,54) <= data(3,14);
    data(4,14) <= data(3,54);
  end if;
  if data(3,27) <= data(3,15) then
    data(4,27) <= data(3,27);
    data(4,15) <= data(3,15);
  else
    data(4,27) <= data(3,15);
    data(4,15) <= data(3,27);
  end if;
  if data(3,28) <= data(3,16) then
    data(4,28) <= data(3,28);
    data(4,16) <= data(3,16);
  else
    data(4,28) <= data(3,16);
    data(4,16) <= data(3,28);
  end if;
  if data(3,31) <= data(3,19) then
    data(4,31) <= data(3,31);
    data(4,19) <= data(3,19);
  else
    data(4,31) <= data(3,19);
    data(4,19) <= data(3,31);
  end if;
  if data(3,56) <= data(3,20) then
    data(4,56) <= data(3,56);
    data(4,20) <= data(3,20);
  else
    data(4,56) <= data(3,20);
    data(4,20) <= data(3,56);
  end if;
  if data(3,59) <= data(3,23) then
    data(4,59) <= data(3,59);
    data(4,23) <= data(3,23);
  else
    data(4,59) <= data(3,23);
    data(4,23) <= data(3,59);
  end if;
  if data(3,29) <= data(3,25) then
    data(4,29) <= data(3,29);
    data(4,25) <= data(3,25);
  else
    data(4,29) <= data(3,25);
    data(4,25) <= data(3,29);
  end if;
  if data(3,30) <= data(3,26) then
    data(4,30) <= data(3,30);
    data(4,26) <= data(3,26);
  else
    data(4,30) <= data(3,26);
    data(4,26) <= data(3,30);
  end if;
  if data(3,44) <= data(3,32) then
    data(4,44) <= data(3,44);
    data(4,32) <= data(3,32);
  else
    data(4,44) <= data(3,32);
    data(4,32) <= data(3,44);
  end if;
  if data(3,37) <= data(3,33) then
    data(4,37) <= data(3,37);
    data(4,33) <= data(3,33);
  else
    data(4,37) <= data(3,33);
    data(4,33) <= data(3,37);
  end if;
  if data(3,38) <= data(3,34) then
    data(4,38) <= data(3,38);
    data(4,34) <= data(3,34);
  else
    data(4,38) <= data(3,34);
    data(4,34) <= data(3,38);
  end if;
  if data(3,47) <= data(3,35) then
    data(4,47) <= data(3,47);
    data(4,35) <= data(3,35);
  else
    data(4,47) <= data(3,35);
    data(4,35) <= data(3,47);
  end if;
  if data(3,48) <= data(3,36) then
    data(4,48) <= data(3,48);
    data(4,36) <= data(3,36);
  else
    data(4,48) <= data(3,36);
    data(4,36) <= data(3,48);
  end if;
  if data(3,51) <= data(3,39) then
    data(4,51) <= data(3,51);
    data(4,39) <= data(3,39);
  else
    data(4,51) <= data(3,39);
    data(4,39) <= data(3,51);
  end if;
  if data(3,61) <= data(3,41) then
    data(4,61) <= data(3,61);
    data(4,41) <= data(3,41);
  else
    data(4,61) <= data(3,41);
    data(4,41) <= data(3,61);
  end if;
  if data(3,62) <= data(3,42) then
    data(4,62) <= data(3,62);
    data(4,42) <= data(3,42);
  else
    data(4,62) <= data(3,42);
    data(4,42) <= data(3,62);
  end if;
  if data(3,57) <= data(3,45) then
    data(4,57) <= data(3,57);
    data(4,45) <= data(3,45);
  else
    data(4,57) <= data(3,45);
    data(4,45) <= data(3,57);
  end if;
  if data(3,58) <= data(3,46) then
    data(4,58) <= data(3,58);
    data(4,46) <= data(3,46);
  else
    data(4,58) <= data(3,46);
    data(4,46) <= data(3,58);
  end if;
  if data(3,60) <= data(3,52) then
    data(4,60) <= data(3,60);
    data(4,52) <= data(3,52);
  else
    data(4,60) <= data(3,52);
    data(4,52) <= data(3,60);
  end if;
  if data(3,63) <= data(3,55) then
    data(4,63) <= data(3,63);
    data(4,55) <= data(3,55);
  else
    data(4,63) <= data(3,55);
    data(4,55) <= data(3,63);
  end if;
end if;

  -- ###### Stage 4 ######
if rising_edge(clk) then
  if data(4,32) <= data(4,0) then
    data(5,32) <= data(4,32);
    data(5,0) <= data(4,0);
  else
    data(5,32) <= data(4,0);
    data(5,0) <= data(4,32);
  end if;
  if data(4,9) <= data(4,1) then
    data(5,9) <= data(4,9);
    data(5,1) <= data(4,1);
  else
    data(5,9) <= data(4,1);
    data(5,1) <= data(4,9);
  end if;
  if data(4,10) <= data(4,2) then
    data(5,10) <= data(4,10);
    data(5,2) <= data(4,2);
  else
    data(5,10) <= data(4,2);
    data(5,2) <= data(4,10);
  end if;
  if data(4,35) <= data(4,3) then
    data(5,35) <= data(4,35);
    data(5,3) <= data(4,3);
  else
    data(5,35) <= data(4,3);
    data(5,3) <= data(4,35);
  end if;
  if data(4,12) <= data(4,4) then
    data(5,12) <= data(4,12);
    data(5,4) <= data(4,4);
  else
    data(5,12) <= data(4,4);
    data(5,4) <= data(4,12);
  end if;
  if data(4,41) <= data(4,5) then
    data(5,41) <= data(4,41);
    data(5,5) <= data(4,5);
  else
    data(5,41) <= data(4,5);
    data(5,5) <= data(4,41);
  end if;
  if data(4,42) <= data(4,6) then
    data(5,42) <= data(4,42);
    data(5,6) <= data(4,6);
  else
    data(5,42) <= data(4,6);
    data(5,6) <= data(4,42);
  end if;
  if data(4,15) <= data(4,7) then
    data(5,15) <= data(4,15);
    data(5,7) <= data(4,7);
  else
    data(5,15) <= data(4,7);
    data(5,7) <= data(4,15);
  end if;
  if data(4,44) <= data(4,8) then
    data(5,44) <= data(4,44);
    data(5,8) <= data(4,8);
  else
    data(5,44) <= data(4,8);
    data(5,8) <= data(4,44);
  end if;
  if data(4,47) <= data(4,11) then
    data(5,47) <= data(4,47);
    data(5,11) <= data(4,11);
  else
    data(5,47) <= data(4,11);
    data(5,11) <= data(4,47);
  end if;
  if data(4,25) <= data(4,13) then
    data(5,25) <= data(4,25);
    data(5,13) <= data(4,13);
  else
    data(5,25) <= data(4,13);
    data(5,13) <= data(4,25);
  end if;
  if data(4,26) <= data(4,14) then
    data(5,26) <= data(4,26);
    data(5,14) <= data(4,14);
  else
    data(5,26) <= data(4,14);
    data(5,14) <= data(4,26);
  end if;
  if data(4,52) <= data(4,16) then
    data(5,52) <= data(4,52);
    data(5,16) <= data(4,16);
  else
    data(5,52) <= data(4,16);
    data(5,16) <= data(4,52);
  end if;
  if data(4,29) <= data(4,17) then
    data(5,29) <= data(4,29);
    data(5,17) <= data(4,17);
  else
    data(5,29) <= data(4,17);
    data(5,17) <= data(4,29);
  end if;
  if data(4,30) <= data(4,18) then
    data(5,30) <= data(4,30);
    data(5,18) <= data(4,18);
  else
    data(5,30) <= data(4,18);
    data(5,18) <= data(4,30);
  end if;
  if data(4,55) <= data(4,19) then
    data(5,55) <= data(4,55);
    data(5,19) <= data(4,19);
  else
    data(5,55) <= data(4,19);
    data(5,19) <= data(4,55);
  end if;
  if data(4,36) <= data(4,20) then
    data(5,36) <= data(4,36);
    data(5,20) <= data(4,20);
  else
    data(5,36) <= data(4,20);
    data(5,20) <= data(4,36);
  end if;
  if data(4,57) <= data(4,21) then
    data(5,57) <= data(4,57);
    data(5,21) <= data(4,21);
  else
    data(5,57) <= data(4,21);
    data(5,21) <= data(4,57);
  end if;
  if data(4,58) <= data(4,22) then
    data(5,58) <= data(4,58);
    data(5,22) <= data(4,22);
  else
    data(5,58) <= data(4,22);
    data(5,22) <= data(4,58);
  end if;
  if data(4,39) <= data(4,23) then
    data(5,39) <= data(4,39);
    data(5,23) <= data(4,23);
  else
    data(5,39) <= data(4,23);
    data(5,23) <= data(4,39);
  end if;
  if data(4,40) <= data(4,24) then
    data(5,40) <= data(4,40);
    data(5,24) <= data(4,24);
  else
    data(5,40) <= data(4,24);
    data(5,24) <= data(4,40);
  end if;
  if data(4,43) <= data(4,27) then
    data(5,43) <= data(4,43);
    data(5,27) <= data(4,27);
  else
    data(5,43) <= data(4,27);
    data(5,27) <= data(4,43);
  end if;
  if data(4,60) <= data(4,28) then
    data(5,60) <= data(4,60);
    data(5,28) <= data(4,28);
  else
    data(5,60) <= data(4,28);
    data(5,28) <= data(4,60);
  end if;
  if data(4,63) <= data(4,31) then
    data(5,63) <= data(4,63);
    data(5,31) <= data(4,31);
  else
    data(5,63) <= data(4,31);
    data(5,31) <= data(4,63);
  end if;
  if data(4,45) <= data(4,33) then
    data(5,45) <= data(4,45);
    data(5,33) <= data(4,33);
  else
    data(5,45) <= data(4,33);
    data(5,33) <= data(4,45);
  end if;
  if data(4,46) <= data(4,34) then
    data(5,46) <= data(4,46);
    data(5,34) <= data(4,34);
  else
    data(5,46) <= data(4,34);
    data(5,34) <= data(4,46);
  end if;
  if data(4,49) <= data(4,37) then
    data(5,49) <= data(4,49);
    data(5,37) <= data(4,37);
  else
    data(5,49) <= data(4,37);
    data(5,37) <= data(4,49);
  end if;
  if data(4,50) <= data(4,38) then
    data(5,50) <= data(4,50);
    data(5,38) <= data(4,38);
  else
    data(5,50) <= data(4,38);
    data(5,38) <= data(4,50);
  end if;
  if data(4,56) <= data(4,48) then
    data(5,56) <= data(4,56);
    data(5,48) <= data(4,48);
  else
    data(5,56) <= data(4,48);
    data(5,48) <= data(4,56);
  end if;
  if data(4,59) <= data(4,51) then
    data(5,59) <= data(4,59);
    data(5,51) <= data(4,51);
  else
    data(5,59) <= data(4,51);
    data(5,51) <= data(4,59);
  end if;
  if data(4,61) <= data(4,53) then
    data(5,61) <= data(4,61);
    data(5,53) <= data(4,53);
  else
    data(5,61) <= data(4,53);
    data(5,53) <= data(4,61);
  end if;
  if data(4,62) <= data(4,54) then
    data(5,62) <= data(4,62);
    data(5,54) <= data(4,54);
  else
    data(5,62) <= data(4,54);
    data(5,54) <= data(4,62);
  end if;
end if;

  -- ###### Stage 5 ######
if rising_edge(clk) then
  if data(5,4) <= data(5,0) then
    data(6,4) <= data(5,4);
    data(6,0) <= data(5,0);
  else
    data(6,4) <= data(5,0);
    data(6,0) <= data(5,4);
  end if;
  if data(5,33) <= data(5,1) then
    data(6,33) <= data(5,33);
    data(6,1) <= data(5,1);
  else
    data(6,33) <= data(5,1);
    data(6,1) <= data(5,33);
  end if;
  if data(5,34) <= data(5,2) then
    data(6,34) <= data(5,34);
    data(6,2) <= data(5,2);
  else
    data(6,34) <= data(5,2);
    data(6,2) <= data(5,34);
  end if;
  if data(5,7) <= data(5,3) then
    data(6,7) <= data(5,7);
    data(6,3) <= data(5,3);
  else
    data(6,7) <= data(5,3);
    data(6,3) <= data(5,7);
  end if;
  if data(5,13) <= data(5,5) then
    data(6,13) <= data(5,13);
    data(6,5) <= data(5,5);
  else
    data(6,13) <= data(5,5);
    data(6,5) <= data(5,13);
  end if;
  if data(5,14) <= data(5,6) then
    data(6,14) <= data(5,14);
    data(6,6) <= data(5,6);
  else
    data(6,14) <= data(5,6);
    data(6,6) <= data(5,14);
  end if;
  if data(5,16) <= data(5,8) then
    data(6,16) <= data(5,16);
    data(6,8) <= data(5,8);
  else
    data(6,16) <= data(5,8);
    data(6,8) <= data(5,16);
  end if;
  if data(5,45) <= data(5,9) then
    data(6,45) <= data(5,45);
    data(6,9) <= data(5,9);
  else
    data(6,45) <= data(5,9);
    data(6,9) <= data(5,45);
  end if;
  if data(5,46) <= data(5,10) then
    data(6,46) <= data(5,46);
    data(6,10) <= data(5,10);
  else
    data(6,46) <= data(5,10);
    data(6,10) <= data(5,46);
  end if;
  if data(5,19) <= data(5,11) then
    data(6,19) <= data(5,19);
    data(6,11) <= data(5,11);
  else
    data(6,19) <= data(5,11);
    data(6,11) <= data(5,19);
  end if;
  if data(5,32) <= data(5,12) then
    data(6,32) <= data(5,32);
    data(6,12) <= data(5,12);
  else
    data(6,32) <= data(5,12);
    data(6,12) <= data(5,32);
  end if;
  if data(5,35) <= data(5,15) then
    data(6,35) <= data(5,35);
    data(6,15) <= data(5,15);
  else
    data(6,35) <= data(5,15);
    data(6,15) <= data(5,35);
  end if;
  if data(5,53) <= data(5,17) then
    data(6,53) <= data(5,53);
    data(6,17) <= data(5,17);
  else
    data(6,53) <= data(5,17);
    data(6,17) <= data(5,53);
  end if;
  if data(5,54) <= data(5,18) then
    data(6,54) <= data(5,54);
    data(6,18) <= data(5,18);
  else
    data(6,54) <= data(5,18);
    data(6,18) <= data(5,54);
  end if;
  if data(5,24) <= data(5,20) then
    data(6,24) <= data(5,24);
    data(6,20) <= data(5,20);
  else
    data(6,24) <= data(5,20);
    data(6,20) <= data(5,24);
  end if;
  if data(5,37) <= data(5,21) then
    data(6,37) <= data(5,37);
    data(6,21) <= data(5,21);
  else
    data(6,37) <= data(5,21);
    data(6,21) <= data(5,37);
  end if;
  if data(5,38) <= data(5,22) then
    data(6,38) <= data(5,38);
    data(6,22) <= data(5,22);
  else
    data(6,38) <= data(5,22);
    data(6,22) <= data(5,38);
  end if;
  if data(5,27) <= data(5,23) then
    data(6,27) <= data(5,27);
    data(6,23) <= data(5,23);
  else
    data(6,27) <= data(5,23);
    data(6,23) <= data(5,27);
  end if;
  if data(5,41) <= data(5,25) then
    data(6,41) <= data(5,41);
    data(6,25) <= data(5,25);
  else
    data(6,41) <= data(5,25);
    data(6,25) <= data(5,41);
  end if;
  if data(5,42) <= data(5,26) then
    data(6,42) <= data(5,42);
    data(6,26) <= data(5,26);
  else
    data(6,42) <= data(5,26);
    data(6,26) <= data(5,42);
  end if;
  if data(5,48) <= data(5,28) then
    data(6,48) <= data(5,48);
    data(6,28) <= data(5,28);
  else
    data(6,48) <= data(5,28);
    data(6,28) <= data(5,48);
  end if;
  if data(5,61) <= data(5,29) then
    data(6,61) <= data(5,61);
    data(6,29) <= data(5,29);
  else
    data(6,61) <= data(5,29);
    data(6,29) <= data(5,61);
  end if;
  if data(5,62) <= data(5,30) then
    data(6,62) <= data(5,62);
    data(6,30) <= data(5,30);
  else
    data(6,62) <= data(5,30);
    data(6,30) <= data(5,62);
  end if;
  if data(5,51) <= data(5,31) then
    data(6,51) <= data(5,51);
    data(6,31) <= data(5,31);
  else
    data(6,51) <= data(5,31);
    data(6,31) <= data(5,51);
  end if;
  if data(5,40) <= data(5,36) then
    data(6,40) <= data(5,40);
    data(6,36) <= data(5,36);
  else
    data(6,40) <= data(5,36);
    data(6,36) <= data(5,40);
  end if;
  if data(5,43) <= data(5,39) then
    data(6,43) <= data(5,43);
    data(6,39) <= data(5,39);
  else
    data(6,43) <= data(5,39);
    data(6,39) <= data(5,43);
  end if;
  if data(5,52) <= data(5,44) then
    data(6,52) <= data(5,52);
    data(6,44) <= data(5,44);
  else
    data(6,52) <= data(5,44);
    data(6,44) <= data(5,52);
  end if;
  if data(5,55) <= data(5,47) then
    data(6,55) <= data(5,55);
    data(6,47) <= data(5,47);
  else
    data(6,55) <= data(5,47);
    data(6,47) <= data(5,55);
  end if;
  if data(5,57) <= data(5,49) then
    data(6,57) <= data(5,57);
    data(6,49) <= data(5,49);
  else
    data(6,57) <= data(5,49);
    data(6,49) <= data(5,57);
  end if;
  if data(5,58) <= data(5,50) then
    data(6,58) <= data(5,58);
    data(6,50) <= data(5,50);
  else
    data(6,58) <= data(5,50);
    data(6,50) <= data(5,58);
  end if;
  if data(5,60) <= data(5,56) then
    data(6,60) <= data(5,60);
    data(6,56) <= data(5,56);
  else
    data(6,60) <= data(5,56);
    data(6,56) <= data(5,60);
  end if;
  if data(5,63) <= data(5,59) then
    data(6,63) <= data(5,63);
    data(6,59) <= data(5,59);
  else
    data(6,63) <= data(5,59);
    data(6,59) <= data(5,63);
  end if;
end if;

  -- ###### Stage 6 ######
if rising_edge(clk) then
  if data(6,5) <= data(6,1) then
    data(7,5) <= data(6,5);
    data(7,1) <= data(6,1);
  else
    data(7,5) <= data(6,1);
    data(7,1) <= data(6,5);
  end if;
  if data(6,6) <= data(6,2) then
    data(7,6) <= data(6,6);
    data(7,2) <= data(6,2);
  else
    data(7,6) <= data(6,2);
    data(7,2) <= data(6,6);
  end if;
  if data(6,12) <= data(6,4) then
    data(7,12) <= data(6,12);
    data(7,4) <= data(6,4);
  else
    data(7,12) <= data(6,4);
    data(7,4) <= data(6,12);
  end if;
  if data(6,15) <= data(6,7) then
    data(7,15) <= data(6,15);
    data(7,7) <= data(6,7);
  else
    data(7,15) <= data(6,7);
    data(7,7) <= data(6,15);
  end if;
  if data(6,20) <= data(6,8) then
    data(7,20) <= data(6,20);
    data(7,8) <= data(6,8);
  else
    data(7,20) <= data(6,8);
    data(7,8) <= data(6,20);
  end if;
  if data(6,17) <= data(6,9) then
    data(7,17) <= data(6,17);
    data(7,9) <= data(6,9);
  else
    data(7,17) <= data(6,9);
    data(7,9) <= data(6,17);
  end if;
  if data(6,18) <= data(6,10) then
    data(7,18) <= data(6,18);
    data(7,10) <= data(6,10);
  else
    data(7,18) <= data(6,10);
    data(7,10) <= data(6,18);
  end if;
  if data(6,23) <= data(6,11) then
    data(7,23) <= data(6,23);
    data(7,11) <= data(6,11);
  else
    data(7,23) <= data(6,11);
    data(7,11) <= data(6,23);
  end if;
  if data(6,33) <= data(6,13) then
    data(7,33) <= data(6,33);
    data(7,13) <= data(6,13);
  else
    data(7,33) <= data(6,13);
    data(7,13) <= data(6,33);
  end if;
  if data(6,34) <= data(6,14) then
    data(7,34) <= data(6,34);
    data(7,14) <= data(6,14);
  else
    data(7,34) <= data(6,14);
    data(7,14) <= data(6,34);
  end if;
  if data(6,32) <= data(6,16) then
    data(7,32) <= data(6,32);
    data(7,16) <= data(6,16);
  else
    data(7,32) <= data(6,16);
    data(7,16) <= data(6,32);
  end if;
  if data(6,35) <= data(6,19) then
    data(7,35) <= data(6,35);
    data(7,19) <= data(6,19);
  else
    data(7,35) <= data(6,19);
    data(7,19) <= data(6,35);
  end if;
  if data(6,25) <= data(6,21) then
    data(7,25) <= data(6,25);
    data(7,21) <= data(6,21);
  else
    data(7,25) <= data(6,21);
    data(7,21) <= data(6,25);
  end if;
  if data(6,26) <= data(6,22) then
    data(7,26) <= data(6,26);
    data(7,22) <= data(6,22);
  else
    data(7,26) <= data(6,22);
    data(7,22) <= data(6,26);
  end if;
  if data(6,36) <= data(6,24) then
    data(7,36) <= data(6,36);
    data(7,24) <= data(6,24);
  else
    data(7,36) <= data(6,24);
    data(7,24) <= data(6,36);
  end if;
  if data(6,39) <= data(6,27) then
    data(7,39) <= data(6,39);
    data(7,27) <= data(6,27);
  else
    data(7,39) <= data(6,27);
    data(7,27) <= data(6,39);
  end if;
  if data(6,44) <= data(6,28) then
    data(7,44) <= data(6,44);
    data(7,28) <= data(6,28);
  else
    data(7,44) <= data(6,28);
    data(7,28) <= data(6,44);
  end if;
  if data(6,49) <= data(6,29) then
    data(7,49) <= data(6,49);
    data(7,29) <= data(6,29);
  else
    data(7,49) <= data(6,29);
    data(7,29) <= data(6,49);
  end if;
  if data(6,50) <= data(6,30) then
    data(7,50) <= data(6,50);
    data(7,30) <= data(6,30);
  else
    data(7,50) <= data(6,30);
    data(7,30) <= data(6,50);
  end if;
  if data(6,47) <= data(6,31) then
    data(7,47) <= data(6,47);
    data(7,31) <= data(6,31);
  else
    data(7,47) <= data(6,31);
    data(7,31) <= data(6,47);
  end if;
  if data(6,41) <= data(6,37) then
    data(7,41) <= data(6,41);
    data(7,37) <= data(6,37);
  else
    data(7,41) <= data(6,37);
    data(7,37) <= data(6,41);
  end if;
  if data(6,42) <= data(6,38) then
    data(7,42) <= data(6,42);
    data(7,38) <= data(6,38);
  else
    data(7,42) <= data(6,38);
    data(7,38) <= data(6,42);
  end if;
  if data(6,52) <= data(6,40) then
    data(7,52) <= data(6,52);
    data(7,40) <= data(6,40);
  else
    data(7,52) <= data(6,40);
    data(7,40) <= data(6,52);
  end if;
  if data(6,55) <= data(6,43) then
    data(7,55) <= data(6,55);
    data(7,43) <= data(6,43);
  else
    data(7,55) <= data(6,43);
    data(7,43) <= data(6,55);
  end if;
  if data(6,53) <= data(6,45) then
    data(7,53) <= data(6,53);
    data(7,45) <= data(6,45);
  else
    data(7,53) <= data(6,45);
    data(7,45) <= data(6,53);
  end if;
  if data(6,54) <= data(6,46) then
    data(7,54) <= data(6,54);
    data(7,46) <= data(6,46);
  else
    data(7,54) <= data(6,46);
    data(7,46) <= data(6,54);
  end if;
  if data(6,56) <= data(6,48) then
    data(7,56) <= data(6,56);
    data(7,48) <= data(6,48);
  else
    data(7,56) <= data(6,48);
    data(7,48) <= data(6,56);
  end if;
  if data(6,59) <= data(6,51) then
    data(7,59) <= data(6,59);
    data(7,51) <= data(6,51);
  else
    data(7,59) <= data(6,51);
    data(7,51) <= data(6,59);
  end if;
  if data(6,61) <= data(6,57) then
    data(7,61) <= data(6,61);
    data(7,57) <= data(6,57);
  else
    data(7,61) <= data(6,57);
    data(7,57) <= data(6,61);
  end if;
  if data(6,62) <= data(6,58) then
    data(7,62) <= data(6,62);
    data(7,58) <= data(6,58);
  else
    data(7,62) <= data(6,58);
    data(7,58) <= data(6,62);
  end if;
  data(7,0) <= data(6,0);
  data(7,3) <= data(6,3);
  data(7,60) <= data(6,60);
  data(7,63) <= data(6,63);
end if;

  -- ###### Stage 7 ######
if rising_edge(clk) then
  if data(7,8) <= data(7,4) then
    data(8,8) <= data(7,8);
    data(8,4) <= data(7,4);
  else
    data(8,8) <= data(7,4);
    data(8,4) <= data(7,8);
  end if;
  if data(7,13) <= data(7,5) then
    data(8,13) <= data(7,13);
    data(8,5) <= data(7,5);
  else
    data(8,13) <= data(7,5);
    data(8,5) <= data(7,13);
  end if;
  if data(7,14) <= data(7,6) then
    data(8,14) <= data(7,14);
    data(8,6) <= data(7,6);
  else
    data(8,14) <= data(7,6);
    data(8,6) <= data(7,14);
  end if;
  if data(7,11) <= data(7,7) then
    data(8,11) <= data(7,11);
    data(8,7) <= data(7,7);
  else
    data(8,11) <= data(7,7);
    data(8,7) <= data(7,11);
  end if;
  if data(7,21) <= data(7,9) then
    data(8,21) <= data(7,21);
    data(8,9) <= data(7,9);
  else
    data(8,21) <= data(7,9);
    data(8,9) <= data(7,21);
  end if;
  if data(7,22) <= data(7,10) then
    data(8,22) <= data(7,22);
    data(8,10) <= data(7,10);
  else
    data(8,22) <= data(7,10);
    data(8,10) <= data(7,22);
  end if;
  if data(7,20) <= data(7,12) then
    data(8,20) <= data(7,20);
    data(8,12) <= data(7,12);
  else
    data(8,20) <= data(7,12);
    data(8,12) <= data(7,20);
  end if;
  if data(7,23) <= data(7,15) then
    data(8,23) <= data(7,23);
    data(8,15) <= data(7,15);
  else
    data(8,23) <= data(7,15);
    data(8,15) <= data(7,23);
  end if;
  if data(7,44) <= data(7,16) then
    data(8,44) <= data(7,44);
    data(8,16) <= data(7,16);
  else
    data(8,44) <= data(7,16);
    data(8,16) <= data(7,44);
  end if;
  if data(7,33) <= data(7,17) then
    data(8,33) <= data(7,33);
    data(8,17) <= data(7,17);
  else
    data(8,33) <= data(7,17);
    data(8,17) <= data(7,33);
  end if;
  if data(7,34) <= data(7,18) then
    data(8,34) <= data(7,34);
    data(8,18) <= data(7,18);
  else
    data(8,34) <= data(7,18);
    data(8,18) <= data(7,34);
  end if;
  if data(7,47) <= data(7,19) then
    data(8,47) <= data(7,47);
    data(8,19) <= data(7,19);
  else
    data(8,47) <= data(7,19);
    data(8,19) <= data(7,47);
  end if;
  if data(7,32) <= data(7,24) then
    data(8,32) <= data(7,32);
    data(8,24) <= data(7,24);
  else
    data(8,32) <= data(7,24);
    data(8,24) <= data(7,32);
  end if;
  if data(7,37) <= data(7,25) then
    data(8,37) <= data(7,37);
    data(8,25) <= data(7,25);
  else
    data(8,37) <= data(7,25);
    data(8,25) <= data(7,37);
  end if;
  if data(7,38) <= data(7,26) then
    data(8,38) <= data(7,38);
    data(8,26) <= data(7,26);
  else
    data(8,38) <= data(7,26);
    data(8,26) <= data(7,38);
  end if;
  if data(7,35) <= data(7,27) then
    data(8,35) <= data(7,35);
    data(8,27) <= data(7,27);
  else
    data(8,35) <= data(7,27);
    data(8,27) <= data(7,35);
  end if;
  if data(7,36) <= data(7,28) then
    data(8,36) <= data(7,36);
    data(8,28) <= data(7,28);
  else
    data(8,36) <= data(7,28);
    data(8,28) <= data(7,36);
  end if;
  if data(7,45) <= data(7,29) then
    data(8,45) <= data(7,45);
    data(8,29) <= data(7,29);
  else
    data(8,45) <= data(7,29);
    data(8,29) <= data(7,45);
  end if;
  if data(7,46) <= data(7,30) then
    data(8,46) <= data(7,46);
    data(8,30) <= data(7,30);
  else
    data(8,46) <= data(7,30);
    data(8,30) <= data(7,46);
  end if;
  if data(7,39) <= data(7,31) then
    data(8,39) <= data(7,39);
    data(8,31) <= data(7,31);
  else
    data(8,39) <= data(7,31);
    data(8,31) <= data(7,39);
  end if;
  if data(7,48) <= data(7,40) then
    data(8,48) <= data(7,48);
    data(8,40) <= data(7,40);
  else
    data(8,48) <= data(7,40);
    data(8,40) <= data(7,48);
  end if;
  if data(7,53) <= data(7,41) then
    data(8,53) <= data(7,53);
    data(8,41) <= data(7,41);
  else
    data(8,53) <= data(7,41);
    data(8,41) <= data(7,53);
  end if;
  if data(7,54) <= data(7,42) then
    data(8,54) <= data(7,54);
    data(8,42) <= data(7,42);
  else
    data(8,54) <= data(7,42);
    data(8,42) <= data(7,54);
  end if;
  if data(7,51) <= data(7,43) then
    data(8,51) <= data(7,51);
    data(8,43) <= data(7,43);
  else
    data(8,51) <= data(7,43);
    data(8,43) <= data(7,51);
  end if;
  if data(7,57) <= data(7,49) then
    data(8,57) <= data(7,57);
    data(8,49) <= data(7,49);
  else
    data(8,57) <= data(7,49);
    data(8,49) <= data(7,57);
  end if;
  if data(7,58) <= data(7,50) then
    data(8,58) <= data(7,58);
    data(8,50) <= data(7,50);
  else
    data(8,58) <= data(7,50);
    data(8,50) <= data(7,58);
  end if;
  if data(7,56) <= data(7,52) then
    data(8,56) <= data(7,56);
    data(8,52) <= data(7,52);
  else
    data(8,56) <= data(7,52);
    data(8,52) <= data(7,56);
  end if;
  if data(7,59) <= data(7,55) then
    data(8,59) <= data(7,59);
    data(8,55) <= data(7,55);
  else
    data(8,59) <= data(7,55);
    data(8,55) <= data(7,59);
  end if;
  data(8,0) <= data(7,0);
  data(8,1) <= data(7,1);
  data(8,2) <= data(7,2);
  data(8,3) <= data(7,3);
  data(8,60) <= data(7,60);
  data(8,61) <= data(7,61);
  data(8,62) <= data(7,62);
  data(8,63) <= data(7,63);
end if;

  -- ###### Stage 8 ######
if rising_edge(clk) then
  if data(8,9) <= data(8,5) then
    data(9,9) <= data(8,9);
    data(9,5) <= data(8,5);
  else
    data(9,9) <= data(8,5);
    data(9,5) <= data(8,9);
  end if;
  if data(8,10) <= data(8,6) then
    data(9,10) <= data(8,10);
    data(9,6) <= data(8,6);
  else
    data(9,10) <= data(8,6);
    data(9,6) <= data(8,10);
  end if;
  if data(8,12) <= data(8,8) then
    data(9,12) <= data(8,12);
    data(9,8) <= data(8,8);
  else
    data(9,12) <= data(8,8);
    data(9,8) <= data(8,12);
  end if;
  if data(8,15) <= data(8,11) then
    data(9,15) <= data(8,15);
    data(9,11) <= data(8,11);
  else
    data(9,15) <= data(8,11);
    data(9,11) <= data(8,15);
  end if;
  if data(8,21) <= data(8,13) then
    data(9,21) <= data(8,21);
    data(9,13) <= data(8,13);
  else
    data(9,21) <= data(8,13);
    data(9,13) <= data(8,21);
  end if;
  if data(8,22) <= data(8,14) then
    data(9,22) <= data(8,22);
    data(9,14) <= data(8,14);
  else
    data(9,22) <= data(8,14);
    data(9,14) <= data(8,22);
  end if;
  if data(8,20) <= data(8,16) then
    data(9,20) <= data(8,20);
    data(9,16) <= data(8,16);
  else
    data(9,20) <= data(8,16);
    data(9,16) <= data(8,20);
  end if;
  if data(8,45) <= data(8,17) then
    data(9,45) <= data(8,45);
    data(9,17) <= data(8,17);
  else
    data(9,45) <= data(8,17);
    data(9,17) <= data(8,45);
  end if;
  if data(8,46) <= data(8,18) then
    data(9,46) <= data(8,46);
    data(9,18) <= data(8,18);
  else
    data(9,46) <= data(8,18);
    data(9,18) <= data(8,46);
  end if;
  if data(8,23) <= data(8,19) then
    data(9,23) <= data(8,23);
    data(9,19) <= data(8,19);
  else
    data(9,23) <= data(8,19);
    data(9,19) <= data(8,23);
  end if;
  if data(8,28) <= data(8,24) then
    data(9,28) <= data(8,28);
    data(9,24) <= data(8,24);
  else
    data(9,28) <= data(8,24);
    data(9,24) <= data(8,28);
  end if;
  if data(8,33) <= data(8,25) then
    data(9,33) <= data(8,33);
    data(9,25) <= data(8,25);
  else
    data(9,33) <= data(8,25);
    data(9,25) <= data(8,33);
  end if;
  if data(8,34) <= data(8,26) then
    data(9,34) <= data(8,34);
    data(9,26) <= data(8,26);
  else
    data(9,34) <= data(8,26);
    data(9,26) <= data(8,34);
  end if;
  if data(8,31) <= data(8,27) then
    data(9,31) <= data(8,31);
    data(9,27) <= data(8,27);
  else
    data(9,31) <= data(8,27);
    data(9,27) <= data(8,31);
  end if;
  if data(8,37) <= data(8,29) then
    data(9,37) <= data(8,37);
    data(9,29) <= data(8,29);
  else
    data(9,37) <= data(8,29);
    data(9,29) <= data(8,37);
  end if;
  if data(8,38) <= data(8,30) then
    data(9,38) <= data(8,38);
    data(9,30) <= data(8,30);
  else
    data(9,38) <= data(8,30);
    data(9,30) <= data(8,38);
  end if;
  if data(8,36) <= data(8,32) then
    data(9,36) <= data(8,36);
    data(9,32) <= data(8,32);
  else
    data(9,36) <= data(8,32);
    data(9,32) <= data(8,36);
  end if;
  if data(8,39) <= data(8,35) then
    data(9,39) <= data(8,39);
    data(9,35) <= data(8,35);
  else
    data(9,39) <= data(8,35);
    data(9,35) <= data(8,39);
  end if;
  if data(8,44) <= data(8,40) then
    data(9,44) <= data(8,44);
    data(9,40) <= data(8,40);
  else
    data(9,44) <= data(8,40);
    data(9,40) <= data(8,44);
  end if;
  if data(8,49) <= data(8,41) then
    data(9,49) <= data(8,49);
    data(9,41) <= data(8,41);
  else
    data(9,49) <= data(8,41);
    data(9,41) <= data(8,49);
  end if;
  if data(8,50) <= data(8,42) then
    data(9,50) <= data(8,50);
    data(9,42) <= data(8,42);
  else
    data(9,50) <= data(8,42);
    data(9,42) <= data(8,50);
  end if;
  if data(8,47) <= data(8,43) then
    data(9,47) <= data(8,47);
    data(9,43) <= data(8,43);
  else
    data(9,47) <= data(8,43);
    data(9,43) <= data(8,47);
  end if;
  if data(8,52) <= data(8,48) then
    data(9,52) <= data(8,52);
    data(9,48) <= data(8,48);
  else
    data(9,52) <= data(8,48);
    data(9,48) <= data(8,52);
  end if;
  if data(8,55) <= data(8,51) then
    data(9,55) <= data(8,55);
    data(9,51) <= data(8,51);
  else
    data(9,55) <= data(8,51);
    data(9,51) <= data(8,55);
  end if;
  if data(8,57) <= data(8,53) then
    data(9,57) <= data(8,57);
    data(9,53) <= data(8,53);
  else
    data(9,57) <= data(8,53);
    data(9,53) <= data(8,57);
  end if;
  if data(8,58) <= data(8,54) then
    data(9,58) <= data(8,58);
    data(9,54) <= data(8,54);
  else
    data(9,58) <= data(8,54);
    data(9,54) <= data(8,58);
  end if;
  data(9,0) <= data(8,0);
  data(9,1) <= data(8,1);
  data(9,2) <= data(8,2);
  data(9,3) <= data(8,3);
  data(9,4) <= data(8,4);
  data(9,7) <= data(8,7);
  data(9,56) <= data(8,56);
  data(9,59) <= data(8,59);
  data(9,60) <= data(8,60);
  data(9,61) <= data(8,61);
  data(9,62) <= data(8,62);
  data(9,63) <= data(8,63);
end if;

  -- ###### Stage 9 ######
if rising_edge(clk) then
  if data(9,13) <= data(9,9) then
    data(10,13) <= data(9,13);
    data(10,9) <= data(9,9);
  else
    data(10,13) <= data(9,9);
    data(10,9) <= data(9,13);
  end if;
  if data(9,14) <= data(9,10) then
    data(10,14) <= data(9,14);
    data(10,10) <= data(9,10);
  else
    data(10,14) <= data(9,10);
    data(10,10) <= data(9,14);
  end if;
  if data(9,24) <= data(9,16) then
    data(10,24) <= data(9,24);
    data(10,16) <= data(9,16);
  else
    data(10,24) <= data(9,16);
    data(10,16) <= data(9,24);
  end if;
  if data(9,21) <= data(9,17) then
    data(10,21) <= data(9,21);
    data(10,17) <= data(9,17);
  else
    data(10,21) <= data(9,17);
    data(10,17) <= data(9,21);
  end if;
  if data(9,22) <= data(9,18) then
    data(10,22) <= data(9,22);
    data(10,18) <= data(9,18);
  else
    data(10,22) <= data(9,18);
    data(10,18) <= data(9,22);
  end if;
  if data(9,27) <= data(9,19) then
    data(10,27) <= data(9,27);
    data(10,19) <= data(9,19);
  else
    data(10,27) <= data(9,19);
    data(10,19) <= data(9,27);
  end if;
  if data(9,28) <= data(9,20) then
    data(10,28) <= data(9,28);
    data(10,20) <= data(9,20);
  else
    data(10,28) <= data(9,20);
    data(10,20) <= data(9,28);
  end if;
  if data(9,31) <= data(9,23) then
    data(10,31) <= data(9,31);
    data(10,23) <= data(9,23);
  else
    data(10,31) <= data(9,23);
    data(10,23) <= data(9,31);
  end if;
  if data(9,29) <= data(9,25) then
    data(10,29) <= data(9,29);
    data(10,25) <= data(9,25);
  else
    data(10,29) <= data(9,25);
    data(10,25) <= data(9,29);
  end if;
  if data(9,30) <= data(9,26) then
    data(10,30) <= data(9,30);
    data(10,26) <= data(9,26);
  else
    data(10,30) <= data(9,26);
    data(10,26) <= data(9,30);
  end if;
  if data(9,40) <= data(9,32) then
    data(10,40) <= data(9,40);
    data(10,32) <= data(9,32);
  else
    data(10,40) <= data(9,32);
    data(10,32) <= data(9,40);
  end if;
  if data(9,37) <= data(9,33) then
    data(10,37) <= data(9,37);
    data(10,33) <= data(9,33);
  else
    data(10,37) <= data(9,33);
    data(10,33) <= data(9,37);
  end if;
  if data(9,38) <= data(9,34) then
    data(10,38) <= data(9,38);
    data(10,34) <= data(9,34);
  else
    data(10,38) <= data(9,34);
    data(10,34) <= data(9,38);
  end if;
  if data(9,43) <= data(9,35) then
    data(10,43) <= data(9,43);
    data(10,35) <= data(9,35);
  else
    data(10,43) <= data(9,35);
    data(10,35) <= data(9,43);
  end if;
  if data(9,44) <= data(9,36) then
    data(10,44) <= data(9,44);
    data(10,36) <= data(9,36);
  else
    data(10,44) <= data(9,36);
    data(10,36) <= data(9,44);
  end if;
  if data(9,47) <= data(9,39) then
    data(10,47) <= data(9,47);
    data(10,39) <= data(9,39);
  else
    data(10,47) <= data(9,39);
    data(10,39) <= data(9,47);
  end if;
  if data(9,45) <= data(9,41) then
    data(10,45) <= data(9,45);
    data(10,41) <= data(9,41);
  else
    data(10,45) <= data(9,41);
    data(10,41) <= data(9,45);
  end if;
  if data(9,46) <= data(9,42) then
    data(10,46) <= data(9,46);
    data(10,42) <= data(9,42);
  else
    data(10,46) <= data(9,42);
    data(10,42) <= data(9,46);
  end if;
  if data(9,53) <= data(9,49) then
    data(10,53) <= data(9,53);
    data(10,49) <= data(9,49);
  else
    data(10,53) <= data(9,49);
    data(10,49) <= data(9,53);
  end if;
  if data(9,54) <= data(9,50) then
    data(10,54) <= data(9,54);
    data(10,50) <= data(9,50);
  else
    data(10,54) <= data(9,50);
    data(10,50) <= data(9,54);
  end if;
  data(10,0) <= data(9,0);
  data(10,1) <= data(9,1);
  data(10,2) <= data(9,2);
  data(10,3) <= data(9,3);
  data(10,4) <= data(9,4);
  data(10,5) <= data(9,5);
  data(10,6) <= data(9,6);
  data(10,7) <= data(9,7);
  data(10,8) <= data(9,8);
  data(10,11) <= data(9,11);
  data(10,12) <= data(9,12);
  data(10,15) <= data(9,15);
  data(10,48) <= data(9,48);
  data(10,51) <= data(9,51);
  data(10,52) <= data(9,52);
  data(10,55) <= data(9,55);
  data(10,56) <= data(9,56);
  data(10,57) <= data(9,57);
  data(10,58) <= data(9,58);
  data(10,59) <= data(9,59);
  data(10,60) <= data(9,60);
  data(10,61) <= data(9,61);
  data(10,62) <= data(9,62);
  data(10,63) <= data(9,63);
end if;

  -- ###### Stage 10 ######
if rising_edge(clk) then
  if data(10,16) <= data(10,12) then
    data(11,16) <= data(10,16);
    data(11,12) <= data(10,12);
  else
    data(11,16) <= data(10,12);
    data(11,12) <= data(10,16);
  end if;
  if data(10,19) <= data(10,15) then
    data(11,19) <= data(10,19);
    data(11,15) <= data(10,15);
  else
    data(11,19) <= data(10,15);
    data(11,15) <= data(10,19);
  end if;
  if data(10,25) <= data(10,17) then
    data(11,25) <= data(10,25);
    data(11,17) <= data(10,17);
  else
    data(11,25) <= data(10,17);
    data(11,17) <= data(10,25);
  end if;
  if data(10,26) <= data(10,18) then
    data(11,26) <= data(10,26);
    data(11,18) <= data(10,18);
  else
    data(11,26) <= data(10,18);
    data(11,18) <= data(10,26);
  end if;
  if data(10,24) <= data(10,20) then
    data(11,24) <= data(10,24);
    data(11,20) <= data(10,20);
  else
    data(11,24) <= data(10,20);
    data(11,20) <= data(10,24);
  end if;
  if data(10,29) <= data(10,21) then
    data(11,29) <= data(10,29);
    data(11,21) <= data(10,21);
  else
    data(11,29) <= data(10,21);
    data(11,21) <= data(10,29);
  end if;
  if data(10,30) <= data(10,22) then
    data(11,30) <= data(10,30);
    data(11,22) <= data(10,22);
  else
    data(11,30) <= data(10,22);
    data(11,22) <= data(10,30);
  end if;
  if data(10,27) <= data(10,23) then
    data(11,27) <= data(10,27);
    data(11,23) <= data(10,23);
  else
    data(11,27) <= data(10,23);
    data(11,23) <= data(10,27);
  end if;
  if data(10,32) <= data(10,28) then
    data(11,32) <= data(10,32);
    data(11,28) <= data(10,28);
  else
    data(11,32) <= data(10,28);
    data(11,28) <= data(10,32);
  end if;
  if data(10,35) <= data(10,31) then
    data(11,35) <= data(10,35);
    data(11,31) <= data(10,31);
  else
    data(11,35) <= data(10,31);
    data(11,31) <= data(10,35);
  end if;
  if data(10,41) <= data(10,33) then
    data(11,41) <= data(10,41);
    data(11,33) <= data(10,33);
  else
    data(11,41) <= data(10,33);
    data(11,33) <= data(10,41);
  end if;
  if data(10,42) <= data(10,34) then
    data(11,42) <= data(10,42);
    data(11,34) <= data(10,34);
  else
    data(11,42) <= data(10,34);
    data(11,34) <= data(10,42);
  end if;
  if data(10,40) <= data(10,36) then
    data(11,40) <= data(10,40);
    data(11,36) <= data(10,36);
  else
    data(11,40) <= data(10,36);
    data(11,36) <= data(10,40);
  end if;
  if data(10,45) <= data(10,37) then
    data(11,45) <= data(10,45);
    data(11,37) <= data(10,37);
  else
    data(11,45) <= data(10,37);
    data(11,37) <= data(10,45);
  end if;
  if data(10,46) <= data(10,38) then
    data(11,46) <= data(10,46);
    data(11,38) <= data(10,38);
  else
    data(11,46) <= data(10,38);
    data(11,38) <= data(10,46);
  end if;
  if data(10,43) <= data(10,39) then
    data(11,43) <= data(10,43);
    data(11,39) <= data(10,39);
  else
    data(11,43) <= data(10,39);
    data(11,39) <= data(10,43);
  end if;
  if data(10,48) <= data(10,44) then
    data(11,48) <= data(10,48);
    data(11,44) <= data(10,44);
  else
    data(11,48) <= data(10,44);
    data(11,44) <= data(10,48);
  end if;
  if data(10,51) <= data(10,47) then
    data(11,51) <= data(10,51);
    data(11,47) <= data(10,47);
  else
    data(11,51) <= data(10,47);
    data(11,47) <= data(10,51);
  end if;
  data(11,0) <= data(10,0);
  data(11,1) <= data(10,1);
  data(11,2) <= data(10,2);
  data(11,3) <= data(10,3);
  data(11,4) <= data(10,4);
  data(11,5) <= data(10,5);
  data(11,6) <= data(10,6);
  data(11,7) <= data(10,7);
  data(11,8) <= data(10,8);
  data(11,9) <= data(10,9);
  data(11,10) <= data(10,10);
  data(11,11) <= data(10,11);
  data(11,13) <= data(10,13);
  data(11,14) <= data(10,14);
  data(11,49) <= data(10,49);
  data(11,50) <= data(10,50);
  data(11,52) <= data(10,52);
  data(11,53) <= data(10,53);
  data(11,54) <= data(10,54);
  data(11,55) <= data(10,55);
  data(11,56) <= data(10,56);
  data(11,57) <= data(10,57);
  data(11,58) <= data(10,58);
  data(11,59) <= data(10,59);
  data(11,60) <= data(10,60);
  data(11,61) <= data(10,61);
  data(11,62) <= data(10,62);
  data(11,63) <= data(10,63);
end if;

  -- ###### Stage 11 ######
if rising_edge(clk) then
  if data(11,16) <= data(11,1) then
    data(12,16) <= data(11,16);
    data(12,1) <= data(11,1);
  else
    data(12,16) <= data(11,1);
    data(12,1) <= data(11,16);
  end if;
  if data(11,32) <= data(11,2) then
    data(12,32) <= data(11,32);
    data(12,2) <= data(11,2);
  else
    data(12,32) <= data(11,2);
    data(12,2) <= data(11,32);
  end if;
  if data(11,20) <= data(11,5) then
    data(12,20) <= data(11,20);
    data(12,5) <= data(11,5);
  else
    data(12,20) <= data(11,5);
    data(12,5) <= data(11,20);
  end if;
  if data(11,36) <= data(11,6) then
    data(12,36) <= data(11,36);
    data(12,6) <= data(11,6);
  else
    data(12,36) <= data(11,6);
    data(12,6) <= data(11,36);
  end if;
  if data(11,24) <= data(11,9) then
    data(12,24) <= data(11,24);
    data(12,9) <= data(11,9);
  else
    data(12,24) <= data(11,9);
    data(12,9) <= data(11,24);
  end if;
  if data(11,40) <= data(11,10) then
    data(12,40) <= data(11,40);
    data(12,10) <= data(11,10);
  else
    data(12,40) <= data(11,10);
    data(12,10) <= data(11,40);
  end if;
  if data(11,17) <= data(11,13) then
    data(12,17) <= data(11,17);
    data(12,13) <= data(11,13);
  else
    data(12,17) <= data(11,13);
    data(12,13) <= data(11,17);
  end if;
  if data(11,18) <= data(11,14) then
    data(12,18) <= data(11,18);
    data(12,14) <= data(11,14);
  else
    data(12,18) <= data(11,14);
    data(12,14) <= data(11,18);
  end if;
  if data(11,25) <= data(11,21) then
    data(12,25) <= data(11,25);
    data(12,21) <= data(11,21);
  else
    data(12,25) <= data(11,21);
    data(12,21) <= data(11,25);
  end if;
  if data(11,26) <= data(11,22) then
    data(12,26) <= data(11,26);
    data(12,22) <= data(11,22);
  else
    data(12,26) <= data(11,22);
    data(12,22) <= data(11,26);
  end if;
  if data(11,53) <= data(11,23) then
    data(12,53) <= data(11,53);
    data(12,23) <= data(11,23);
  else
    data(12,53) <= data(11,23);
    data(12,23) <= data(11,53);
  end if;
  if data(11,57) <= data(11,27) then
    data(12,57) <= data(11,57);
    data(12,27) <= data(11,27);
  else
    data(12,57) <= data(11,27);
    data(12,27) <= data(11,57);
  end if;
  if data(11,33) <= data(11,29) then
    data(12,33) <= data(11,33);
    data(12,29) <= data(11,29);
  else
    data(12,33) <= data(11,29);
    data(12,29) <= data(11,33);
  end if;
  if data(11,34) <= data(11,30) then
    data(12,34) <= data(11,34);
    data(12,30) <= data(11,30);
  else
    data(12,34) <= data(11,30);
    data(12,30) <= data(11,34);
  end if;
  if data(11,61) <= data(11,31) then
    data(12,61) <= data(11,61);
    data(12,31) <= data(11,31);
  else
    data(12,61) <= data(11,31);
    data(12,31) <= data(11,61);
  end if;
  if data(11,41) <= data(11,37) then
    data(12,41) <= data(11,41);
    data(12,37) <= data(11,37);
  else
    data(12,41) <= data(11,37);
    data(12,37) <= data(11,41);
  end if;
  if data(11,42) <= data(11,38) then
    data(12,42) <= data(11,42);
    data(12,38) <= data(11,38);
  else
    data(12,42) <= data(11,38);
    data(12,38) <= data(11,42);
  end if;
  if data(11,54) <= data(11,39) then
    data(12,54) <= data(11,54);
    data(12,39) <= data(11,39);
  else
    data(12,54) <= data(11,39);
    data(12,39) <= data(11,54);
  end if;
  if data(11,58) <= data(11,43) then
    data(12,58) <= data(11,58);
    data(12,43) <= data(11,43);
  else
    data(12,58) <= data(11,43);
    data(12,43) <= data(11,58);
  end if;
  if data(11,49) <= data(11,45) then
    data(12,49) <= data(11,49);
    data(12,45) <= data(11,45);
  else
    data(12,49) <= data(11,45);
    data(12,45) <= data(11,49);
  end if;
  if data(11,50) <= data(11,46) then
    data(12,50) <= data(11,50);
    data(12,46) <= data(11,46);
  else
    data(12,50) <= data(11,46);
    data(12,46) <= data(11,50);
  end if;
  if data(11,62) <= data(11,47) then
    data(12,62) <= data(11,62);
    data(12,47) <= data(11,47);
  else
    data(12,62) <= data(11,47);
    data(12,47) <= data(11,62);
  end if;
  data(12,0) <= data(11,0);
  data(12,3) <= data(11,3);
  data(12,4) <= data(11,4);
  data(12,7) <= data(11,7);
  data(12,8) <= data(11,8);
  data(12,11) <= data(11,11);
  data(12,12) <= data(11,12);
  data(12,15) <= data(11,15);
  data(12,19) <= data(11,19);
  data(12,28) <= data(11,28);
  data(12,35) <= data(11,35);
  data(12,44) <= data(11,44);
  data(12,48) <= data(11,48);
  data(12,51) <= data(11,51);
  data(12,52) <= data(11,52);
  data(12,55) <= data(11,55);
  data(12,56) <= data(11,56);
  data(12,59) <= data(11,59);
  data(12,60) <= data(11,60);
  data(12,63) <= data(11,63);
end if;

  -- ###### Stage 12 ######
if rising_edge(clk) then
  if data(12,4) <= data(12,1) then
    data(13,4) <= data(12,4);
    data(13,1) <= data(12,1);
  else
    data(13,4) <= data(12,1);
    data(13,1) <= data(12,4);
  end if;
  if data(12,8) <= data(12,2) then
    data(13,8) <= data(12,8);
    data(13,2) <= data(12,2);
  else
    data(13,8) <= data(12,2);
    data(13,2) <= data(12,8);
  end if;
  if data(12,33) <= data(12,3) then
    data(13,33) <= data(12,33);
    data(13,3) <= data(12,3);
  else
    data(13,33) <= data(12,3);
    data(13,3) <= data(12,33);
  end if;
  if data(12,12) <= data(12,6) then
    data(13,12) <= data(12,12);
    data(13,6) <= data(12,6);
  else
    data(13,12) <= data(12,6);
    data(13,6) <= data(12,12);
  end if;
  if data(12,37) <= data(12,7) then
    data(13,37) <= data(12,37);
    data(13,7) <= data(12,7);
  else
    data(13,37) <= data(12,7);
    data(13,7) <= data(12,37);
  end if;
  if data(12,24) <= data(12,10) then
    data(13,24) <= data(12,24);
    data(13,10) <= data(12,10);
  else
    data(13,24) <= data(12,10);
    data(13,10) <= data(12,24);
  end if;
  if data(12,41) <= data(12,11) then
    data(13,41) <= data(12,41);
    data(13,11) <= data(12,11);
  else
    data(13,41) <= data(12,11);
    data(13,11) <= data(12,41);
  end if;
  if data(12,28) <= data(12,13) then
    data(13,28) <= data(12,28);
    data(13,13) <= data(12,13);
  else
    data(13,28) <= data(12,13);
    data(13,13) <= data(12,28);
  end if;
  if data(12,44) <= data(12,14) then
    data(13,44) <= data(12,44);
    data(13,14) <= data(12,14);
  else
    data(13,44) <= data(12,14);
    data(13,14) <= data(12,44);
  end if;
  if data(12,45) <= data(12,15) then
    data(13,45) <= data(12,45);
    data(13,15) <= data(12,15);
  else
    data(13,45) <= data(12,15);
    data(13,15) <= data(12,45);
  end if;
  if data(12,48) <= data(12,18) then
    data(13,48) <= data(12,48);
    data(13,18) <= data(12,18);
  else
    data(13,48) <= data(12,18);
    data(13,18) <= data(12,48);
  end if;
  if data(12,49) <= data(12,19) then
    data(13,49) <= data(12,49);
    data(13,19) <= data(12,19);
  else
    data(13,49) <= data(12,19);
    data(13,19) <= data(12,49);
  end if;
  if data(12,36) <= data(12,21) then
    data(13,36) <= data(12,36);
    data(13,21) <= data(12,21);
  else
    data(13,36) <= data(12,21);
    data(13,21) <= data(12,36);
  end if;
  if data(12,52) <= data(12,22) then
    data(13,52) <= data(12,52);
    data(13,22) <= data(12,22);
  else
    data(13,52) <= data(12,22);
    data(13,22) <= data(12,52);
  end if;
  if data(12,56) <= data(12,26) then
    data(13,56) <= data(12,56);
    data(13,26) <= data(12,26);
  else
    data(13,56) <= data(12,26);
    data(13,26) <= data(12,56);
  end if;
  if data(12,42) <= data(12,27) then
    data(13,42) <= data(12,42);
    data(13,27) <= data(12,27);
  else
    data(13,42) <= data(12,27);
    data(13,27) <= data(12,42);
  end if;
  if data(12,60) <= data(12,30) then
    data(13,60) <= data(12,60);
    data(13,30) <= data(12,30);
  else
    data(13,60) <= data(12,30);
    data(13,30) <= data(12,60);
  end if;
  if data(12,50) <= data(12,35) then
    data(13,50) <= data(12,50);
    data(13,35) <= data(12,35);
  else
    data(13,50) <= data(12,35);
    data(13,35) <= data(12,50);
  end if;
  if data(12,53) <= data(12,39) then
    data(13,53) <= data(12,53);
    data(13,39) <= data(12,39);
  else
    data(13,53) <= data(12,39);
    data(13,39) <= data(12,53);
  end if;
  if data(12,57) <= data(12,51) then
    data(13,57) <= data(12,57);
    data(13,51) <= data(12,51);
  else
    data(13,57) <= data(12,51);
    data(13,51) <= data(12,57);
  end if;
  if data(12,61) <= data(12,55) then
    data(13,61) <= data(12,61);
    data(13,55) <= data(12,55);
  else
    data(13,61) <= data(12,55);
    data(13,55) <= data(12,61);
  end if;
  if data(12,62) <= data(12,59) then
    data(13,62) <= data(12,62);
    data(13,59) <= data(12,59);
  else
    data(13,62) <= data(12,59);
    data(13,59) <= data(12,62);
  end if;
  data(13,0) <= data(12,0);
  data(13,5) <= data(12,5);
  data(13,9) <= data(12,9);
  data(13,16) <= data(12,16);
  data(13,17) <= data(12,17);
  data(13,20) <= data(12,20);
  data(13,23) <= data(12,23);
  data(13,25) <= data(12,25);
  data(13,29) <= data(12,29);
  data(13,31) <= data(12,31);
  data(13,32) <= data(12,32);
  data(13,34) <= data(12,34);
  data(13,38) <= data(12,38);
  data(13,40) <= data(12,40);
  data(13,43) <= data(12,43);
  data(13,46) <= data(12,46);
  data(13,47) <= data(12,47);
  data(13,54) <= data(12,54);
  data(13,58) <= data(12,58);
  data(13,63) <= data(12,63);
end if;

  -- ###### Stage 13 ######
if rising_edge(clk) then
  if data(13,4) <= data(13,2) then
    data(14,4) <= data(13,4);
    data(14,2) <= data(13,2);
  else
    data(14,4) <= data(13,2);
    data(14,2) <= data(13,4);
  end if;
  if data(13,17) <= data(13,3) then
    data(14,17) <= data(13,17);
    data(14,3) <= data(13,3);
  else
    data(14,17) <= data(13,3);
    data(14,3) <= data(13,17);
  end if;
  if data(13,6) <= data(13,5) then
    data(14,6) <= data(13,6);
    data(14,5) <= data(13,5);
  else
    data(14,6) <= data(13,5);
    data(14,5) <= data(13,6);
  end if;
  if data(13,22) <= data(13,7) then
    data(14,22) <= data(13,22);
    data(14,7) <= data(13,7);
  else
    data(14,22) <= data(13,7);
    data(14,7) <= data(13,22);
  end if;
  if data(13,16) <= data(13,8) then
    data(14,16) <= data(13,16);
    data(14,8) <= data(13,8);
  else
    data(14,16) <= data(13,8);
    data(14,8) <= data(13,16);
  end if;
  if data(13,25) <= data(13,11) then
    data(14,25) <= data(13,25);
    data(14,11) <= data(13,11);
  else
    data(14,25) <= data(13,11);
    data(14,11) <= data(13,25);
  end if;
  if data(13,20) <= data(13,12) then
    data(14,20) <= data(13,20);
    data(14,12) <= data(13,12);
  else
    data(14,20) <= data(13,12);
    data(14,12) <= data(13,20);
  end if;
  if data(13,28) <= data(13,14) then
    data(14,28) <= data(13,28);
    data(14,14) <= data(13,14);
  else
    data(14,28) <= data(13,14);
    data(14,14) <= data(13,28);
  end if;
  if data(13,29) <= data(13,15) then
    data(14,29) <= data(13,29);
    data(14,15) <= data(13,15);
  else
    data(14,29) <= data(13,15);
    data(14,15) <= data(13,29);
  end if;
  if data(13,32) <= data(13,18) then
    data(14,32) <= data(13,32);
    data(14,18) <= data(13,18);
  else
    data(14,32) <= data(13,18);
    data(14,18) <= data(13,32);
  end if;
  if data(13,33) <= data(13,19) then
    data(14,33) <= data(13,33);
    data(14,19) <= data(13,19);
  else
    data(14,33) <= data(13,19);
    data(14,19) <= data(13,33);
  end if;
  if data(13,37) <= data(13,23) then
    data(14,37) <= data(13,37);
    data(14,23) <= data(13,23);
  else
    data(14,37) <= data(13,23);
    data(14,23) <= data(13,37);
  end if;
  if data(13,40) <= data(13,26) then
    data(14,40) <= data(13,40);
    data(14,26) <= data(13,26);
  else
    data(14,40) <= data(13,26);
    data(14,26) <= data(13,40);
  end if;
  if data(13,44) <= data(13,30) then
    data(14,44) <= data(13,44);
    data(14,30) <= data(13,30);
  else
    data(14,44) <= data(13,30);
    data(14,30) <= data(13,44);
  end if;
  if data(13,45) <= data(13,31) then
    data(14,45) <= data(13,45);
    data(14,31) <= data(13,31);
  else
    data(14,45) <= data(13,31);
    data(14,31) <= data(13,45);
  end if;
  if data(13,48) <= data(13,34) then
    data(14,48) <= data(13,48);
    data(14,34) <= data(13,34);
  else
    data(14,48) <= data(13,34);
    data(14,34) <= data(13,48);
  end if;
  if data(13,49) <= data(13,35) then
    data(14,49) <= data(13,49);
    data(14,35) <= data(13,35);
  else
    data(14,49) <= data(13,35);
    data(14,35) <= data(13,49);
  end if;
  if data(13,52) <= data(13,38) then
    data(14,52) <= data(13,52);
    data(14,38) <= data(13,38);
  else
    data(14,52) <= data(13,38);
    data(14,38) <= data(13,52);
  end if;
  if data(13,56) <= data(13,41) then
    data(14,56) <= data(13,56);
    data(14,41) <= data(13,41);
  else
    data(14,56) <= data(13,41);
    data(14,41) <= data(13,56);
  end if;
  if data(13,51) <= data(13,43) then
    data(14,51) <= data(13,51);
    data(14,43) <= data(13,43);
  else
    data(14,51) <= data(13,43);
    data(14,43) <= data(13,51);
  end if;
  if data(13,60) <= data(13,46) then
    data(14,60) <= data(13,60);
    data(14,46) <= data(13,46);
  else
    data(14,60) <= data(13,46);
    data(14,46) <= data(13,60);
  end if;
  if data(13,55) <= data(13,47) then
    data(14,55) <= data(13,55);
    data(14,47) <= data(13,47);
  else
    data(14,55) <= data(13,47);
    data(14,47) <= data(13,55);
  end if;
  if data(13,58) <= data(13,57) then
    data(14,58) <= data(13,58);
    data(14,57) <= data(13,57);
  else
    data(14,58) <= data(13,57);
    data(14,57) <= data(13,58);
  end if;
  if data(13,61) <= data(13,59) then
    data(14,61) <= data(13,61);
    data(14,59) <= data(13,59);
  else
    data(14,61) <= data(13,59);
    data(14,59) <= data(13,61);
  end if;
  data(14,0) <= data(13,0);
  data(14,1) <= data(13,1);
  data(14,9) <= data(13,9);
  data(14,10) <= data(13,10);
  data(14,13) <= data(13,13);
  data(14,21) <= data(13,21);
  data(14,24) <= data(13,24);
  data(14,27) <= data(13,27);
  data(14,36) <= data(13,36);
  data(14,39) <= data(13,39);
  data(14,42) <= data(13,42);
  data(14,50) <= data(13,50);
  data(14,53) <= data(13,53);
  data(14,54) <= data(13,54);
  data(14,62) <= data(13,62);
  data(14,63) <= data(13,63);
end if;

  -- ###### Stage 14 ######
if rising_edge(clk) then
  if data(14,18) <= data(14,3) then
    data(15,18) <= data(14,18);
    data(15,3) <= data(14,3);
  else
    data(15,18) <= data(14,3);
    data(15,3) <= data(14,18);
  end if;
  if data(14,21) <= data(14,7) then
    data(15,21) <= data(14,21);
    data(15,7) <= data(14,7);
  else
    data(15,21) <= data(14,7);
    data(15,7) <= data(14,21);
  end if;
  if data(14,32) <= data(14,11) then
    data(15,32) <= data(14,32);
    data(15,11) <= data(14,11);
  else
    data(15,32) <= data(14,11);
    data(15,11) <= data(14,32);
  end if;
  if data(14,30) <= data(14,15) then
    data(15,30) <= data(14,30);
    data(15,15) <= data(14,15);
  else
    data(15,30) <= data(14,15);
    data(15,15) <= data(14,30);
  end if;
  if data(14,26) <= data(14,17) then
    data(15,26) <= data(14,26);
    data(15,17) <= data(14,17);
  else
    data(15,26) <= data(14,17);
    data(15,17) <= data(14,26);
  end if;
  if data(14,25) <= data(14,19) then
    data(15,25) <= data(14,25);
    data(15,19) <= data(14,19);
  else
    data(15,25) <= data(14,19);
    data(15,19) <= data(14,25);
  end if;
  if data(14,36) <= data(14,22) then
    data(15,36) <= data(14,36);
    data(15,22) <= data(14,22);
  else
    data(15,36) <= data(14,22);
    data(15,22) <= data(14,36);
  end if;
  if data(14,29) <= data(14,23) then
    data(15,29) <= data(14,29);
    data(15,23) <= data(14,23);
  else
    data(15,29) <= data(14,23);
    data(15,23) <= data(14,29);
  end if;
  if data(14,41) <= data(14,27) then
    data(15,41) <= data(14,41);
    data(15,27) <= data(14,27);
  else
    data(15,41) <= data(14,27);
    data(15,27) <= data(14,41);
  end if;
  if data(14,52) <= data(14,31) then
    data(15,52) <= data(14,52);
    data(15,31) <= data(14,31);
  else
    data(15,52) <= data(14,31);
    data(15,31) <= data(14,52);
  end if;
  if data(14,48) <= data(14,33) then
    data(15,48) <= data(14,48);
    data(15,33) <= data(14,33);
  else
    data(15,48) <= data(14,33);
    data(15,33) <= data(14,48);
  end if;
  if data(14,40) <= data(14,34) then
    data(15,40) <= data(14,40);
    data(15,34) <= data(14,34);
  else
    data(15,40) <= data(14,34);
    data(15,34) <= data(14,40);
  end if;
  if data(14,46) <= data(14,37) then
    data(15,46) <= data(14,46);
    data(15,37) <= data(14,37);
  else
    data(15,46) <= data(14,37);
    data(15,37) <= data(14,46);
  end if;
  if data(14,44) <= data(14,38) then
    data(15,44) <= data(14,44);
    data(15,38) <= data(14,38);
  else
    data(15,44) <= data(14,38);
    data(15,38) <= data(14,44);
  end if;
  if data(14,56) <= data(14,42) then
    data(15,56) <= data(14,56);
    data(15,42) <= data(14,42);
  else
    data(15,56) <= data(14,42);
    data(15,42) <= data(14,56);
  end if;
  if data(14,60) <= data(14,45) then
    data(15,60) <= data(14,60);
    data(15,45) <= data(14,45);
  else
    data(15,60) <= data(14,45);
    data(15,45) <= data(14,60);
  end if;
  data(15,0) <= data(14,0);
  data(15,1) <= data(14,1);
  data(15,2) <= data(14,2);
  data(15,4) <= data(14,4);
  data(15,5) <= data(14,5);
  data(15,6) <= data(14,6);
  data(15,8) <= data(14,8);
  data(15,9) <= data(14,9);
  data(15,10) <= data(14,10);
  data(15,12) <= data(14,12);
  data(15,13) <= data(14,13);
  data(15,14) <= data(14,14);
  data(15,16) <= data(14,16);
  data(15,20) <= data(14,20);
  data(15,24) <= data(14,24);
  data(15,28) <= data(14,28);
  data(15,35) <= data(14,35);
  data(15,39) <= data(14,39);
  data(15,43) <= data(14,43);
  data(15,47) <= data(14,47);
  data(15,49) <= data(14,49);
  data(15,50) <= data(14,50);
  data(15,51) <= data(14,51);
  data(15,53) <= data(14,53);
  data(15,54) <= data(14,54);
  data(15,55) <= data(14,55);
  data(15,57) <= data(14,57);
  data(15,58) <= data(14,58);
  data(15,59) <= data(14,59);
  data(15,61) <= data(14,61);
  data(15,62) <= data(14,62);
  data(15,63) <= data(14,63);
end if;

  -- ###### Stage 15 ######
if rising_edge(clk) then
  if data(15,16) <= data(15,3) then
    data(16,16) <= data(15,16);
    data(16,3) <= data(15,3);
  else
    data(16,16) <= data(15,3);
    data(16,3) <= data(15,16);
  end if;
  if data(15,20) <= data(15,7) then
    data(16,20) <= data(15,20);
    data(16,7) <= data(15,7);
  else
    data(16,20) <= data(15,7);
    data(16,7) <= data(15,20);
  end if;
  if data(15,24) <= data(15,11) then
    data(16,24) <= data(15,24);
    data(16,11) <= data(15,11);
  else
    data(16,24) <= data(15,11);
    data(16,11) <= data(15,24);
  end if;
  if data(15,21) <= data(15,15) then
    data(16,21) <= data(15,21);
    data(16,15) <= data(15,15);
  else
    data(16,21) <= data(15,15);
    data(16,15) <= data(15,21);
  end if;
  if data(15,18) <= data(15,17) then
    data(16,18) <= data(15,18);
    data(16,17) <= data(15,17);
  else
    data(16,18) <= data(15,17);
    data(16,17) <= data(15,18);
  end if;
  if data(15,34) <= data(15,19) then
    data(16,34) <= data(15,34);
    data(16,19) <= data(15,19);
  else
    data(16,34) <= data(15,19);
    data(16,19) <= data(15,34);
  end if;
  if data(15,28) <= data(15,22) then
    data(16,28) <= data(15,28);
    data(16,22) <= data(15,22);
  else
    data(16,28) <= data(15,22);
    data(16,22) <= data(15,28);
  end if;
  if data(15,38) <= data(15,23) then
    data(16,38) <= data(15,38);
    data(16,23) <= data(15,23);
  else
    data(16,38) <= data(15,23);
    data(16,23) <= data(15,38);
  end if;
  if data(15,40) <= data(15,25) then
    data(16,40) <= data(15,40);
    data(16,25) <= data(15,25);
  else
    data(16,40) <= data(15,25);
    data(16,25) <= data(15,40);
  end if;
  if data(15,32) <= data(15,26) then
    data(16,32) <= data(15,32);
    data(16,26) <= data(15,26);
  else
    data(16,32) <= data(15,26);
    data(16,26) <= data(15,32);
  end if;
  if data(15,33) <= data(15,27) then
    data(16,33) <= data(15,33);
    data(16,27) <= data(15,27);
  else
    data(16,33) <= data(15,27);
    data(16,27) <= data(15,33);
  end if;
  if data(15,44) <= data(15,29) then
    data(16,44) <= data(15,44);
    data(16,29) <= data(15,29);
  else
    data(16,44) <= data(15,29);
    data(16,29) <= data(15,44);
  end if;
  if data(15,36) <= data(15,30) then
    data(16,36) <= data(15,36);
    data(16,30) <= data(15,30);
  else
    data(16,36) <= data(15,30);
    data(16,30) <= data(15,36);
  end if;
  if data(15,37) <= data(15,31) then
    data(16,37) <= data(15,37);
    data(16,31) <= data(15,31);
  else
    data(16,37) <= data(15,31);
    data(16,31) <= data(15,37);
  end if;
  if data(15,41) <= data(15,35) then
    data(16,41) <= data(15,41);
    data(16,35) <= data(15,35);
  else
    data(16,41) <= data(15,35);
    data(16,35) <= data(15,41);
  end if;
  if data(15,52) <= data(15,39) then
    data(16,52) <= data(15,52);
    data(16,39) <= data(15,39);
  else
    data(16,52) <= data(15,39);
    data(16,39) <= data(15,52);
  end if;
  if data(15,48) <= data(15,42) then
    data(16,48) <= data(15,48);
    data(16,42) <= data(15,42);
  else
    data(16,48) <= data(15,42);
    data(16,42) <= data(15,48);
  end if;
  if data(15,56) <= data(15,43) then
    data(16,56) <= data(15,56);
    data(16,43) <= data(15,43);
  else
    data(16,56) <= data(15,43);
    data(16,43) <= data(15,56);
  end if;
  if data(15,46) <= data(15,45) then
    data(16,46) <= data(15,46);
    data(16,45) <= data(15,45);
  else
    data(16,46) <= data(15,45);
    data(16,45) <= data(15,46);
  end if;
  if data(15,60) <= data(15,47) then
    data(16,60) <= data(15,60);
    data(16,47) <= data(15,47);
  else
    data(16,60) <= data(15,47);
    data(16,47) <= data(15,60);
  end if;
  data(16,0) <= data(15,0);
  data(16,1) <= data(15,1);
  data(16,2) <= data(15,2);
  data(16,4) <= data(15,4);
  data(16,5) <= data(15,5);
  data(16,6) <= data(15,6);
  data(16,8) <= data(15,8);
  data(16,9) <= data(15,9);
  data(16,10) <= data(15,10);
  data(16,12) <= data(15,12);
  data(16,13) <= data(15,13);
  data(16,14) <= data(15,14);
  data(16,49) <= data(15,49);
  data(16,50) <= data(15,50);
  data(16,51) <= data(15,51);
  data(16,53) <= data(15,53);
  data(16,54) <= data(15,54);
  data(16,55) <= data(15,55);
  data(16,57) <= data(15,57);
  data(16,58) <= data(15,58);
  data(16,59) <= data(15,59);
  data(16,61) <= data(15,61);
  data(16,62) <= data(15,62);
  data(16,63) <= data(15,63);
end if;

  -- ###### Stage 16 ######
if rising_edge(clk) then
  if data(16,9) <= data(16,3) then
    data(17,9) <= data(16,9);
    data(17,3) <= data(16,3);
  else
    data(17,9) <= data(16,3);
    data(17,3) <= data(16,9);
  end if;
  if data(16,13) <= data(16,7) then
    data(17,13) <= data(16,13);
    data(17,7) <= data(16,7);
  else
    data(17,13) <= data(16,7);
    data(17,7) <= data(16,13);
  end if;
  if data(16,16) <= data(16,10) then
    data(17,16) <= data(16,16);
    data(17,10) <= data(16,10);
  else
    data(17,16) <= data(16,10);
    data(17,10) <= data(16,16);
  end if;
  if data(16,17) <= data(16,11) then
    data(17,17) <= data(16,17);
    data(17,11) <= data(16,11);
  else
    data(17,17) <= data(16,11);
    data(17,11) <= data(16,17);
  end if;
  if data(16,20) <= data(16,14) then
    data(17,20) <= data(16,20);
    data(17,14) <= data(16,14);
  else
    data(17,20) <= data(16,14);
    data(17,14) <= data(16,20);
  end if;
  if data(16,22) <= data(16,15) then
    data(17,22) <= data(16,22);
    data(17,15) <= data(16,15);
  else
    data(17,22) <= data(16,15);
    data(17,15) <= data(16,22);
  end if;
  if data(16,24) <= data(16,18) then
    data(17,24) <= data(16,24);
    data(17,18) <= data(16,18);
  else
    data(17,24) <= data(16,18);
    data(17,18) <= data(16,24);
  end if;
  if data(16,26) <= data(16,19) then
    data(17,26) <= data(16,26);
    data(17,19) <= data(16,19);
  else
    data(17,26) <= data(16,19);
    data(17,19) <= data(16,26);
  end if;
  if data(16,28) <= data(16,21) then
    data(17,28) <= data(16,28);
    data(17,21) <= data(16,21);
  else
    data(17,28) <= data(16,21);
    data(17,21) <= data(16,28);
  end if;
  if data(16,30) <= data(16,23) then
    data(17,30) <= data(16,30);
    data(17,23) <= data(16,23);
  else
    data(17,30) <= data(16,23);
    data(17,23) <= data(16,30);
  end if;
  if data(16,32) <= data(16,25) then
    data(17,32) <= data(16,32);
    data(17,25) <= data(16,25);
  else
    data(17,32) <= data(16,25);
    data(17,25) <= data(16,32);
  end if;
  if data(16,34) <= data(16,27) then
    data(17,34) <= data(16,34);
    data(17,27) <= data(16,27);
  else
    data(17,34) <= data(16,27);
    data(17,27) <= data(16,34);
  end if;
  if data(16,36) <= data(16,29) then
    data(17,36) <= data(16,36);
    data(17,29) <= data(16,29);
  else
    data(17,36) <= data(16,29);
    data(17,29) <= data(16,36);
  end if;
  if data(16,38) <= data(16,31) then
    data(17,38) <= data(16,38);
    data(17,31) <= data(16,31);
  else
    data(17,38) <= data(16,31);
    data(17,31) <= data(16,38);
  end if;
  if data(16,40) <= data(16,33) then
    data(17,40) <= data(16,40);
    data(17,33) <= data(16,33);
  else
    data(17,40) <= data(16,33);
    data(17,33) <= data(16,40);
  end if;
  if data(16,42) <= data(16,35) then
    data(17,42) <= data(16,42);
    data(17,35) <= data(16,35);
  else
    data(17,42) <= data(16,35);
    data(17,35) <= data(16,42);
  end if;
  if data(16,44) <= data(16,37) then
    data(17,44) <= data(16,44);
    data(17,37) <= data(16,37);
  else
    data(17,44) <= data(16,37);
    data(17,37) <= data(16,44);
  end if;
  if data(16,45) <= data(16,39) then
    data(17,45) <= data(16,45);
    data(17,39) <= data(16,39);
  else
    data(17,45) <= data(16,39);
    data(17,39) <= data(16,45);
  end if;
  if data(16,48) <= data(16,41) then
    data(17,48) <= data(16,48);
    data(17,41) <= data(16,41);
  else
    data(17,48) <= data(16,41);
    data(17,41) <= data(16,48);
  end if;
  if data(16,49) <= data(16,43) then
    data(17,49) <= data(16,49);
    data(17,43) <= data(16,43);
  else
    data(17,49) <= data(16,43);
    data(17,43) <= data(16,49);
  end if;
  if data(16,52) <= data(16,46) then
    data(17,52) <= data(16,52);
    data(17,46) <= data(16,46);
  else
    data(17,52) <= data(16,46);
    data(17,46) <= data(16,52);
  end if;
  if data(16,53) <= data(16,47) then
    data(17,53) <= data(16,53);
    data(17,47) <= data(16,47);
  else
    data(17,53) <= data(16,47);
    data(17,47) <= data(16,53);
  end if;
  if data(16,56) <= data(16,50) then
    data(17,56) <= data(16,56);
    data(17,50) <= data(16,50);
  else
    data(17,56) <= data(16,50);
    data(17,50) <= data(16,56);
  end if;
  if data(16,60) <= data(16,54) then
    data(17,60) <= data(16,60);
    data(17,54) <= data(16,54);
  else
    data(17,60) <= data(16,54);
    data(17,54) <= data(16,60);
  end if;
  data(17,0) <= data(16,0);
  data(17,1) <= data(16,1);
  data(17,2) <= data(16,2);
  data(17,4) <= data(16,4);
  data(17,5) <= data(16,5);
  data(17,6) <= data(16,6);
  data(17,8) <= data(16,8);
  data(17,12) <= data(16,12);
  data(17,51) <= data(16,51);
  data(17,55) <= data(16,55);
  data(17,57) <= data(16,57);
  data(17,58) <= data(16,58);
  data(17,59) <= data(16,59);
  data(17,61) <= data(16,61);
  data(17,62) <= data(16,62);
  data(17,63) <= data(16,63);
end if;

  -- ###### Stage 17 ######
if rising_edge(clk) then
  if data(17,8) <= data(17,3) then
    data(18,8) <= data(17,8);
    data(18,3) <= data(17,3);
  else
    data(18,8) <= data(17,3);
    data(18,3) <= data(17,8);
  end if;
  if data(17,10) <= data(17,7) then
    data(18,10) <= data(17,10);
    data(18,7) <= data(17,7);
  else
    data(18,10) <= data(17,7);
    data(18,7) <= data(17,10);
  end if;
  if data(17,12) <= data(17,9) then
    data(18,12) <= data(17,12);
    data(18,9) <= data(17,9);
  else
    data(18,12) <= data(17,9);
    data(18,9) <= data(17,12);
  end if;
  if data(17,16) <= data(17,11) then
    data(18,16) <= data(17,16);
    data(18,11) <= data(17,11);
  else
    data(18,16) <= data(17,11);
    data(18,11) <= data(17,16);
  end if;
  if data(17,14) <= data(17,13) then
    data(18,14) <= data(17,14);
    data(18,13) <= data(17,13);
  else
    data(18,14) <= data(17,13);
    data(18,13) <= data(17,14);
  end if;
  if data(17,17) <= data(17,15) then
    data(18,17) <= data(17,17);
    data(18,15) <= data(17,15);
  else
    data(18,17) <= data(17,15);
    data(18,15) <= data(17,17);
  end if;
  if data(17,20) <= data(17,18) then
    data(18,20) <= data(17,20);
    data(18,18) <= data(17,18);
  else
    data(18,20) <= data(17,18);
    data(18,18) <= data(17,20);
  end if;
  if data(17,22) <= data(17,19) then
    data(18,22) <= data(17,22);
    data(18,19) <= data(17,19);
  else
    data(18,22) <= data(17,19);
    data(18,19) <= data(17,22);
  end if;
  if data(17,24) <= data(17,21) then
    data(18,24) <= data(17,24);
    data(18,21) <= data(17,21);
  else
    data(18,24) <= data(17,21);
    data(18,21) <= data(17,24);
  end if;
  if data(17,26) <= data(17,23) then
    data(18,26) <= data(17,26);
    data(18,23) <= data(17,23);
  else
    data(18,26) <= data(17,23);
    data(18,23) <= data(17,26);
  end if;
  if data(17,28) <= data(17,25) then
    data(18,28) <= data(17,28);
    data(18,25) <= data(17,25);
  else
    data(18,28) <= data(17,25);
    data(18,25) <= data(17,28);
  end if;
  if data(17,29) <= data(17,27) then
    data(18,29) <= data(17,29);
    data(18,27) <= data(17,27);
  else
    data(18,29) <= data(17,27);
    data(18,27) <= data(17,29);
  end if;
  if data(17,32) <= data(17,30) then
    data(18,32) <= data(17,32);
    data(18,30) <= data(17,30);
  else
    data(18,32) <= data(17,30);
    data(18,30) <= data(17,32);
  end if;
  if data(17,33) <= data(17,31) then
    data(18,33) <= data(17,33);
    data(18,31) <= data(17,31);
  else
    data(18,33) <= data(17,31);
    data(18,31) <= data(17,33);
  end if;
  if data(17,36) <= data(17,34) then
    data(18,36) <= data(17,36);
    data(18,34) <= data(17,34);
  else
    data(18,36) <= data(17,34);
    data(18,34) <= data(17,36);
  end if;
  if data(17,38) <= data(17,35) then
    data(18,38) <= data(17,38);
    data(18,35) <= data(17,35);
  else
    data(18,38) <= data(17,35);
    data(18,35) <= data(17,38);
  end if;
  if data(17,40) <= data(17,37) then
    data(18,40) <= data(17,40);
    data(18,37) <= data(17,37);
  else
    data(18,40) <= data(17,37);
    data(18,37) <= data(17,40);
  end if;
  if data(17,42) <= data(17,39) then
    data(18,42) <= data(17,42);
    data(18,39) <= data(17,39);
  else
    data(18,42) <= data(17,39);
    data(18,39) <= data(17,42);
  end if;
  if data(17,44) <= data(17,41) then
    data(18,44) <= data(17,44);
    data(18,41) <= data(17,41);
  else
    data(18,44) <= data(17,41);
    data(18,41) <= data(17,44);
  end if;
  if data(17,45) <= data(17,43) then
    data(18,45) <= data(17,45);
    data(18,43) <= data(17,43);
  else
    data(18,45) <= data(17,43);
    data(18,43) <= data(17,45);
  end if;
  if data(17,48) <= data(17,46) then
    data(18,48) <= data(17,48);
    data(18,46) <= data(17,46);
  else
    data(18,48) <= data(17,46);
    data(18,46) <= data(17,48);
  end if;
  if data(17,52) <= data(17,47) then
    data(18,52) <= data(17,52);
    data(18,47) <= data(17,47);
  else
    data(18,52) <= data(17,47);
    data(18,47) <= data(17,52);
  end if;
  if data(17,50) <= data(17,49) then
    data(18,50) <= data(17,50);
    data(18,49) <= data(17,49);
  else
    data(18,50) <= data(17,49);
    data(18,49) <= data(17,50);
  end if;
  if data(17,54) <= data(17,51) then
    data(18,54) <= data(17,54);
    data(18,51) <= data(17,51);
  else
    data(18,54) <= data(17,51);
    data(18,51) <= data(17,54);
  end if;
  if data(17,56) <= data(17,53) then
    data(18,56) <= data(17,56);
    data(18,53) <= data(17,53);
  else
    data(18,56) <= data(17,53);
    data(18,53) <= data(17,56);
  end if;
  if data(17,60) <= data(17,55) then
    data(18,60) <= data(17,60);
    data(18,55) <= data(17,55);
  else
    data(18,60) <= data(17,55);
    data(18,55) <= data(17,60);
  end if;
  data(18,0) <= data(17,0);
  data(18,1) <= data(17,1);
  data(18,2) <= data(17,2);
  data(18,4) <= data(17,4);
  data(18,5) <= data(17,5);
  data(18,6) <= data(17,6);
  data(18,57) <= data(17,57);
  data(18,58) <= data(17,58);
  data(18,59) <= data(17,59);
  data(18,61) <= data(17,61);
  data(18,62) <= data(17,62);
  data(18,63) <= data(17,63);
end if;

  -- ###### Stage 18 ######
if rising_edge(clk) then
  if data(18,5) <= data(18,3) then
    data(19,5) <= data(18,5);
    data(19,3) <= data(18,3);
  else
    data(19,5) <= data(18,3);
    data(19,3) <= data(18,5);
  end if;
  if data(18,8) <= data(18,6) then
    data(19,8) <= data(18,8);
    data(19,6) <= data(18,6);
  else
    data(19,8) <= data(18,6);
    data(19,6) <= data(18,8);
  end if;
  if data(18,9) <= data(18,7) then
    data(19,9) <= data(18,9);
    data(19,7) <= data(18,7);
  else
    data(19,9) <= data(18,7);
    data(19,7) <= data(18,9);
  end if;
  if data(18,12) <= data(18,10) then
    data(19,12) <= data(18,12);
    data(19,10) <= data(18,10);
  else
    data(19,12) <= data(18,10);
    data(19,10) <= data(18,12);
  end if;
  if data(18,13) <= data(18,11) then
    data(19,13) <= data(18,13);
    data(19,11) <= data(18,11);
  else
    data(19,13) <= data(18,11);
    data(19,11) <= data(18,13);
  end if;
  if data(18,16) <= data(18,14) then
    data(19,16) <= data(18,16);
    data(19,14) <= data(18,14);
  else
    data(19,16) <= data(18,14);
    data(19,14) <= data(18,16);
  end if;
  if data(18,18) <= data(18,15) then
    data(19,18) <= data(18,18);
    data(19,15) <= data(18,15);
  else
    data(19,18) <= data(18,15);
    data(19,15) <= data(18,18);
  end if;
  if data(18,20) <= data(18,17) then
    data(19,20) <= data(18,20);
    data(19,17) <= data(18,17);
  else
    data(19,20) <= data(18,17);
    data(19,17) <= data(18,20);
  end if;
  if data(18,21) <= data(18,19) then
    data(19,21) <= data(18,21);
    data(19,19) <= data(18,19);
  else
    data(19,21) <= data(18,19);
    data(19,19) <= data(18,21);
  end if;
  if data(18,24) <= data(18,22) then
    data(19,24) <= data(18,24);
    data(19,22) <= data(18,22);
  else
    data(19,24) <= data(18,22);
    data(19,22) <= data(18,24);
  end if;
  if data(18,25) <= data(18,23) then
    data(19,25) <= data(18,25);
    data(19,23) <= data(18,23);
  else
    data(19,25) <= data(18,23);
    data(19,23) <= data(18,25);
  end if;
  if data(18,28) <= data(18,26) then
    data(19,28) <= data(18,28);
    data(19,26) <= data(18,26);
  else
    data(19,28) <= data(18,26);
    data(19,26) <= data(18,28);
  end if;
  if data(18,30) <= data(18,27) then
    data(19,30) <= data(18,30);
    data(19,27) <= data(18,27);
  else
    data(19,30) <= data(18,27);
    data(19,27) <= data(18,30);
  end if;
  if data(18,32) <= data(18,29) then
    data(19,32) <= data(18,32);
    data(19,29) <= data(18,29);
  else
    data(19,32) <= data(18,29);
    data(19,29) <= data(18,32);
  end if;
  if data(18,34) <= data(18,31) then
    data(19,34) <= data(18,34);
    data(19,31) <= data(18,31);
  else
    data(19,34) <= data(18,31);
    data(19,31) <= data(18,34);
  end if;
  if data(18,36) <= data(18,33) then
    data(19,36) <= data(18,36);
    data(19,33) <= data(18,33);
  else
    data(19,36) <= data(18,33);
    data(19,33) <= data(18,36);
  end if;
  if data(18,37) <= data(18,35) then
    data(19,37) <= data(18,37);
    data(19,35) <= data(18,35);
  else
    data(19,37) <= data(18,35);
    data(19,35) <= data(18,37);
  end if;
  if data(18,40) <= data(18,38) then
    data(19,40) <= data(18,40);
    data(19,38) <= data(18,38);
  else
    data(19,40) <= data(18,38);
    data(19,38) <= data(18,40);
  end if;
  if data(18,41) <= data(18,39) then
    data(19,41) <= data(18,41);
    data(19,39) <= data(18,39);
  else
    data(19,41) <= data(18,39);
    data(19,39) <= data(18,41);
  end if;
  if data(18,44) <= data(18,42) then
    data(19,44) <= data(18,44);
    data(19,42) <= data(18,42);
  else
    data(19,44) <= data(18,42);
    data(19,42) <= data(18,44);
  end if;
  if data(18,46) <= data(18,43) then
    data(19,46) <= data(18,46);
    data(19,43) <= data(18,43);
  else
    data(19,46) <= data(18,43);
    data(19,43) <= data(18,46);
  end if;
  if data(18,48) <= data(18,45) then
    data(19,48) <= data(18,48);
    data(19,45) <= data(18,45);
  else
    data(19,48) <= data(18,45);
    data(19,45) <= data(18,48);
  end if;
  if data(18,49) <= data(18,47) then
    data(19,49) <= data(18,49);
    data(19,47) <= data(18,47);
  else
    data(19,49) <= data(18,47);
    data(19,47) <= data(18,49);
  end if;
  if data(18,52) <= data(18,50) then
    data(19,52) <= data(18,52);
    data(19,50) <= data(18,50);
  else
    data(19,52) <= data(18,50);
    data(19,50) <= data(18,52);
  end if;
  if data(18,53) <= data(18,51) then
    data(19,53) <= data(18,53);
    data(19,51) <= data(18,51);
  else
    data(19,53) <= data(18,51);
    data(19,51) <= data(18,53);
  end if;
  if data(18,56) <= data(18,54) then
    data(19,56) <= data(18,56);
    data(19,54) <= data(18,54);
  else
    data(19,56) <= data(18,54);
    data(19,54) <= data(18,56);
  end if;
  if data(18,57) <= data(18,55) then
    data(19,57) <= data(18,57);
    data(19,55) <= data(18,55);
  else
    data(19,57) <= data(18,55);
    data(19,55) <= data(18,57);
  end if;
  if data(18,60) <= data(18,58) then
    data(19,60) <= data(18,60);
    data(19,58) <= data(18,58);
  else
    data(19,60) <= data(18,58);
    data(19,58) <= data(18,60);
  end if;
  data(19,0) <= data(18,0);
  data(19,1) <= data(18,1);
  data(19,2) <= data(18,2);
  data(19,4) <= data(18,4);
  data(19,59) <= data(18,59);
  data(19,61) <= data(18,61);
  data(19,62) <= data(18,62);
  data(19,63) <= data(18,63);
end if;

  -- ###### Stage 19 ######
if rising_edge(clk) then
  if data(19,4) <= data(19,3) then
    data(20,4) <= data(19,4);
    data(20,3) <= data(19,3);
  else
    data(20,4) <= data(19,3);
    data(20,3) <= data(19,4);
  end if;
  if data(19,6) <= data(19,5) then
    data(20,6) <= data(19,6);
    data(20,5) <= data(19,5);
  else
    data(20,6) <= data(19,5);
    data(20,5) <= data(19,6);
  end if;
  if data(19,8) <= data(19,7) then
    data(20,8) <= data(19,8);
    data(20,7) <= data(19,7);
  else
    data(20,8) <= data(19,7);
    data(20,7) <= data(19,8);
  end if;
  if data(19,10) <= data(19,9) then
    data(20,10) <= data(19,10);
    data(20,9) <= data(19,9);
  else
    data(20,10) <= data(19,9);
    data(20,9) <= data(19,10);
  end if;
  if data(19,12) <= data(19,11) then
    data(20,12) <= data(19,12);
    data(20,11) <= data(19,11);
  else
    data(20,12) <= data(19,11);
    data(20,11) <= data(19,12);
  end if;
  if data(19,14) <= data(19,13) then
    data(20,14) <= data(19,14);
    data(20,13) <= data(19,13);
  else
    data(20,14) <= data(19,13);
    data(20,13) <= data(19,14);
  end if;
  if data(19,16) <= data(19,15) then
    data(20,16) <= data(19,16);
    data(20,15) <= data(19,15);
  else
    data(20,16) <= data(19,15);
    data(20,15) <= data(19,16);
  end if;
  if data(19,18) <= data(19,17) then
    data(20,18) <= data(19,18);
    data(20,17) <= data(19,17);
  else
    data(20,18) <= data(19,17);
    data(20,17) <= data(19,18);
  end if;
  if data(19,20) <= data(19,19) then
    data(20,20) <= data(19,20);
    data(20,19) <= data(19,19);
  else
    data(20,20) <= data(19,19);
    data(20,19) <= data(19,20);
  end if;
  if data(19,22) <= data(19,21) then
    data(20,22) <= data(19,22);
    data(20,21) <= data(19,21);
  else
    data(20,22) <= data(19,21);
    data(20,21) <= data(19,22);
  end if;
  if data(19,24) <= data(19,23) then
    data(20,24) <= data(19,24);
    data(20,23) <= data(19,23);
  else
    data(20,24) <= data(19,23);
    data(20,23) <= data(19,24);
  end if;
  if data(19,26) <= data(19,25) then
    data(20,26) <= data(19,26);
    data(20,25) <= data(19,25);
  else
    data(20,26) <= data(19,25);
    data(20,25) <= data(19,26);
  end if;
  if data(19,28) <= data(19,27) then
    data(20,28) <= data(19,28);
    data(20,27) <= data(19,27);
  else
    data(20,28) <= data(19,27);
    data(20,27) <= data(19,28);
  end if;
  if data(19,30) <= data(19,29) then
    data(20,30) <= data(19,30);
    data(20,29) <= data(19,29);
  else
    data(20,30) <= data(19,29);
    data(20,29) <= data(19,30);
  end if;
  if data(19,32) <= data(19,31) then
    data(20,32) <= data(19,32);
    data(20,31) <= data(19,31);
  else
    data(20,32) <= data(19,31);
    data(20,31) <= data(19,32);
  end if;
  if data(19,34) <= data(19,33) then
    data(20,34) <= data(19,34);
    data(20,33) <= data(19,33);
  else
    data(20,34) <= data(19,33);
    data(20,33) <= data(19,34);
  end if;
  if data(19,36) <= data(19,35) then
    data(20,36) <= data(19,36);
    data(20,35) <= data(19,35);
  else
    data(20,36) <= data(19,35);
    data(20,35) <= data(19,36);
  end if;
  if data(19,38) <= data(19,37) then
    data(20,38) <= data(19,38);
    data(20,37) <= data(19,37);
  else
    data(20,38) <= data(19,37);
    data(20,37) <= data(19,38);
  end if;
  if data(19,40) <= data(19,39) then
    data(20,40) <= data(19,40);
    data(20,39) <= data(19,39);
  else
    data(20,40) <= data(19,39);
    data(20,39) <= data(19,40);
  end if;
  if data(19,42) <= data(19,41) then
    data(20,42) <= data(19,42);
    data(20,41) <= data(19,41);
  else
    data(20,42) <= data(19,41);
    data(20,41) <= data(19,42);
  end if;
  if data(19,44) <= data(19,43) then
    data(20,44) <= data(19,44);
    data(20,43) <= data(19,43);
  else
    data(20,44) <= data(19,43);
    data(20,43) <= data(19,44);
  end if;
  if data(19,46) <= data(19,45) then
    data(20,46) <= data(19,46);
    data(20,45) <= data(19,45);
  else
    data(20,46) <= data(19,45);
    data(20,45) <= data(19,46);
  end if;
  if data(19,48) <= data(19,47) then
    data(20,48) <= data(19,48);
    data(20,47) <= data(19,47);
  else
    data(20,48) <= data(19,47);
    data(20,47) <= data(19,48);
  end if;
  if data(19,50) <= data(19,49) then
    data(20,50) <= data(19,50);
    data(20,49) <= data(19,49);
  else
    data(20,50) <= data(19,49);
    data(20,49) <= data(19,50);
  end if;
  if data(19,52) <= data(19,51) then
    data(20,52) <= data(19,52);
    data(20,51) <= data(19,51);
  else
    data(20,52) <= data(19,51);
    data(20,51) <= data(19,52);
  end if;
  if data(19,54) <= data(19,53) then
    data(20,54) <= data(19,54);
    data(20,53) <= data(19,53);
  else
    data(20,54) <= data(19,53);
    data(20,53) <= data(19,54);
  end if;
  if data(19,56) <= data(19,55) then
    data(20,56) <= data(19,56);
    data(20,55) <= data(19,55);
  else
    data(20,56) <= data(19,55);
    data(20,55) <= data(19,56);
  end if;
  if data(19,58) <= data(19,57) then
    data(20,58) <= data(19,58);
    data(20,57) <= data(19,57);
  else
    data(20,58) <= data(19,57);
    data(20,57) <= data(19,58);
  end if;
  if data(19,60) <= data(19,59) then
    data(20,60) <= data(19,60);
    data(20,59) <= data(19,59);
  else
    data(20,60) <= data(19,59);
    data(20,59) <= data(19,60);
  end if;
  data(20,0) <= data(19,0);
  data(20,1) <= data(19,1);
  data(20,2) <= data(19,2);
  data(20,61) <= data(19,61);
  data(20,62) <= data(19,62);
  data(20,63) <= data(19,63);
end if;

end process;

sort_0 <= std_logic_vector(data(20,0));
sort_1 <= std_logic_vector(data(20,1));
sort_2 <= std_logic_vector(data(20,2));
sort_3 <= std_logic_vector(data(20,3));
sort_4 <= std_logic_vector(data(20,4));
sort_5 <= std_logic_vector(data(20,5));
sort_6 <= std_logic_vector(data(20,6));
sort_7 <= std_logic_vector(data(20,7));
sort_8 <= std_logic_vector(data(20,8));
sort_9 <= std_logic_vector(data(20,9));
sort_10 <= std_logic_vector(data(20,10));
sort_11 <= std_logic_vector(data(20,11));
sort_12 <= std_logic_vector(data(20,12));
sort_13 <= std_logic_vector(data(20,13));
sort_14 <= std_logic_vector(data(20,14));
sort_15 <= std_logic_vector(data(20,15));
sort_16 <= std_logic_vector(data(20,16));
sort_17 <= std_logic_vector(data(20,17));
sort_18 <= std_logic_vector(data(20,18));
sort_19 <= std_logic_vector(data(20,19));
sort_20 <= std_logic_vector(data(20,20));
sort_21 <= std_logic_vector(data(20,21));
sort_22 <= std_logic_vector(data(20,22));
sort_23 <= std_logic_vector(data(20,23));
sort_24 <= std_logic_vector(data(20,24));
sort_25 <= std_logic_vector(data(20,25));
sort_26 <= std_logic_vector(data(20,26));
sort_27 <= std_logic_vector(data(20,27));
sort_28 <= std_logic_vector(data(20,28));
sort_29 <= std_logic_vector(data(20,29));
sort_30 <= std_logic_vector(data(20,30));
sort_31 <= std_logic_vector(data(20,31));
sort_32 <= std_logic_vector(data(20,32));
sort_33 <= std_logic_vector(data(20,33));
sort_34 <= std_logic_vector(data(20,34));
sort_35 <= std_logic_vector(data(20,35));
sort_36 <= std_logic_vector(data(20,36));
sort_37 <= std_logic_vector(data(20,37));
sort_38 <= std_logic_vector(data(20,38));
sort_39 <= std_logic_vector(data(20,39));
sort_40 <= std_logic_vector(data(20,40));
sort_41 <= std_logic_vector(data(20,41));
sort_42 <= std_logic_vector(data(20,42));
sort_43 <= std_logic_vector(data(20,43));
sort_44 <= std_logic_vector(data(20,44));
sort_45 <= std_logic_vector(data(20,45));
sort_46 <= std_logic_vector(data(20,46));
sort_47 <= std_logic_vector(data(20,47));
sort_48 <= std_logic_vector(data(20,48));
sort_49 <= std_logic_vector(data(20,49));
sort_50 <= std_logic_vector(data(20,50));
sort_51 <= std_logic_vector(data(20,51));
sort_52 <= std_logic_vector(data(20,52));
sort_53 <= std_logic_vector(data(20,53));
sort_54 <= std_logic_vector(data(20,54));
sort_55 <= std_logic_vector(data(20,55));
sort_56 <= std_logic_vector(data(20,56));
sort_57 <= std_logic_vector(data(20,57));
sort_58 <= std_logic_vector(data(20,58));
sort_59 <= std_logic_vector(data(20,59));
sort_60 <= std_logic_vector(data(20,60));
sort_61 <= std_logic_vector(data(20,61));
sort_62 <= std_logic_vector(data(20,62));
sort_63 <= std_logic_vector(data(20,63));

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
  signal data32 : std_logic_vector(31 downto 0) := (others => '0');
  signal data33 : std_logic_vector(31 downto 0) := (others => '0');
  signal data34 : std_logic_vector(31 downto 0) := (others => '0');
  signal data35 : std_logic_vector(31 downto 0) := (others => '0');
  signal data36 : std_logic_vector(31 downto 0) := (others => '0');
  signal data37 : std_logic_vector(31 downto 0) := (others => '0');
  signal data38 : std_logic_vector(31 downto 0) := (others => '0');
  signal data39 : std_logic_vector(31 downto 0) := (others => '0');
  signal data40 : std_logic_vector(31 downto 0) := (others => '0');
  signal data41 : std_logic_vector(31 downto 0) := (others => '0');
  signal data42 : std_logic_vector(31 downto 0) := (others => '0');
  signal data43 : std_logic_vector(31 downto 0) := (others => '0');
  signal data44 : std_logic_vector(31 downto 0) := (others => '0');
  signal data45 : std_logic_vector(31 downto 0) := (others => '0');
  signal data46 : std_logic_vector(31 downto 0) := (others => '0');
  signal data47 : std_logic_vector(31 downto 0) := (others => '0');
  signal data48 : std_logic_vector(31 downto 0) := (others => '0');
  signal data49 : std_logic_vector(31 downto 0) := (others => '0');
  signal data50 : std_logic_vector(31 downto 0) := (others => '0');
  signal data51 : std_logic_vector(31 downto 0) := (others => '0');
  signal data52 : std_logic_vector(31 downto 0) := (others => '0');
  signal data53 : std_logic_vector(31 downto 0) := (others => '0');
  signal data54 : std_logic_vector(31 downto 0) := (others => '0');
  signal data55 : std_logic_vector(31 downto 0) := (others => '0');
  signal data56 : std_logic_vector(31 downto 0) := (others => '0');
  signal data57 : std_logic_vector(31 downto 0) := (others => '0');
  signal data58 : std_logic_vector(31 downto 0) := (others => '0');
  signal data59 : std_logic_vector(31 downto 0) := (others => '0');
  signal data60 : std_logic_vector(31 downto 0) := (others => '0');
  signal data61 : std_logic_vector(31 downto 0) := (others => '0');
  signal data62 : std_logic_vector(31 downto 0) := (others => '0');
  signal data63 : std_logic_vector(31 downto 0) := (others => '0');

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
    data32 <= rand_slv(32);
    data33 <= rand_slv(32);
    data34 <= rand_slv(32);
    data35 <= rand_slv(32);
    data36 <= rand_slv(32);
    data37 <= rand_slv(32);
    data38 <= rand_slv(32);
    data39 <= rand_slv(32);
    data40 <= rand_slv(32);
    data41 <= rand_slv(32);
    data42 <= rand_slv(32);
    data43 <= rand_slv(32);
    data44 <= rand_slv(32);
    data45 <= rand_slv(32);
    data46 <= rand_slv(32);
    data47 <= rand_slv(32);
    data48 <= rand_slv(32);
    data49 <= rand_slv(32);
    data50 <= rand_slv(32);
    data51 <= rand_slv(32);
    data52 <= rand_slv(32);
    data53 <= rand_slv(32);
    data54 <= rand_slv(32);
    data55 <= rand_slv(32);
    data56 <= rand_slv(32);
    data57 <= rand_slv(32);
    data58 <= rand_slv(32);
    data59 <= rand_slv(32);
    data60 <= rand_slv(32);
    data61 <= rand_slv(32);
    data62 <= rand_slv(32);
    data63 <= rand_slv(32);
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
    data_31 => data31,
    data_32 => data32,
    data_33 => data33,
    data_34 => data34,
    data_35 => data35,
    data_36 => data36,
    data_37 => data37,
    data_38 => data38,
    data_39 => data39,
    data_40 => data40,
    data_41 => data41,
    data_42 => data42,
    data_43 => data43,
    data_44 => data44,
    data_45 => data45,
    data_46 => data46,
    data_47 => data47,
    data_48 => data48,
    data_49 => data49,
    data_50 => data50,
    data_51 => data51,
    data_52 => data52,
    data_53 => data53,
    data_54 => data54,
    data_55 => data55,
    data_56 => data56,
    data_57 => data57,
    data_58 => data58,
    data_59 => data59,
    data_60 => data60,
    data_61 => data61,
    data_62 => data62,
    data_63 => data63
);

end architecture;

