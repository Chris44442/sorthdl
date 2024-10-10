use serde::{Deserialize, Serialize};
use clap::Parser;
use std::fs::File;
use std::io::{self, Read};
use std::path::PathBuf;

/// CLI tool to print HDL code for SorterHunter sorting network json files
#[derive(Parser)]
struct Cli {
    /// Set the input file path. If left blank the input will be stdin instead
    file: Option<PathBuf>,

    /// Set the data type
    #[arg(short, long, default_value_t = String::from("unsigned"), value_parser = ["unsigned", "signed"],)]
    data_type: String,

    /// Set the data width
    #[arg(short, long, default_value_t = 32,)]
    width: usize,

    /// Set pipelined stages, in hex, e.g. "0xAAAA" will set a pipeline
    /// register at every other stage. The number of digits must be equal or greater than the
    /// number of sorting network stages. Default is to pipeline-register all stages.
    #[arg(short, long, default_value_t = String::from("0xFFFFFFFF"))]
    pipeline: String,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
struct Sort {
    #[serde(rename = "N")]
    n: usize,
    #[serde(rename = "L")]
    l: usize,
    #[serde(rename = "D")]
    d: usize,
    symmetric: bool,
    nw: Vec<[usize; 2]>,
}

fn main() -> io::Result<()> {

    let args = Cli::parse();
    let mut content = String::new();
    if let Some(file_path) = args.file {
        let mut file = File::open(file_path)?;
        file.read_to_string(&mut content)?;
    } else {
        io::stdin().read_to_string(&mut content)?;
    }

    let data_type : &str = &args.data_type;
    let data_width : usize = args.width;

    let num = u32::from_str_radix(&args.pipeline[2..], 16).
        expect("Pipeline parameter is not a valid hex string");
    let binary_str = format!("{:0>32b}", num);

    //println!("{:?}", binary_str);

    let pipeline_stage : Vec<bool> = binary_str
        .chars()
        .map(|c| c == '1')
        .collect();

    //let pipeline_stage : Vec<bool> = pipeline_stage.reverse();

    let sort: Sort = serde_json::from_str(&content)?;

    assert!(pipeline_stage.len() >= sort.d, "Pipeline stage parameter number of digits must be greater or equal than the sorting network stages.");

    let tupel = sort.nw;
    let mut tupel_switched_current_stage : Vec<[usize; 2]> = vec![];
    let mut tupel_compared : Vec<Vec<[usize; 2]>> = vec![];
    let mut tupel_was_switched = vec![false; sort.n];
    
    let mut elem_not_switched_this_stage : Vec<usize> = vec![];
    let mut elem_not_compared : Vec<Vec<usize>> = vec![];

    for i in 0..sort.l {
        let (t1, t2) = (tupel[i][0],tupel[i][1]);
        if tupel_was_switched[t1] || tupel_was_switched[t2] {
            for (m, k) in tupel_was_switched.iter().enumerate() {
                if !*k {
                    elem_not_switched_this_stage.push(m);
                }
            }
            elem_not_compared.push(elem_not_switched_this_stage);
            elem_not_switched_this_stage = vec![];

            tupel_was_switched = vec![false; sort.n];
            tupel_compared.push(tupel_switched_current_stage);
            tupel_switched_current_stage = vec![];
        }
        tupel_switched_current_stage.push(tupel[i]);
        tupel_was_switched[t1] = true;
        tupel_was_switched[t2] = true;
    }

    for (m, k) in tupel_was_switched.iter().enumerate() {
        if !*k {
            elem_not_switched_this_stage.push(m);
        }
    }
    elem_not_compared.push(elem_not_switched_this_stage);
    tupel_compared.push(tupel_switched_current_stage);
    //println!("{:?}", tupel_switched);
    //println!("{:?}", elem_not_switched);


    let vhdl_code = r#"
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sorting_network is
  port(
    clk : in std_logic;"#;
    println!("{}", vhdl_code);
    for i in 0..sort.n {
        println!("{}",(format!("    data_{} : in std_logic_vector({} downto 0);", i, data_width-1)));
    }
    for i in 0..sort.n-1 {
        println!("{}",(format!("    sort_{} : out std_logic_vector({} downto 0);", i, data_width-1)));
    }
    println!("    sort_{} : out std_logic_vector({} downto 0)", sort.n-1, data_width-1);
    let vhdl_code = r#"  );
end entity;

architecture rtl of sorting_network is"#;
    println!("{}", vhdl_code);

    println!("  type data_array is array (natural range <>, natural range <>) of {}({} downto 0);", data_type ,data_width-1);
    println!("  signal data : data_array({} downto 0, {} downto 0);", sort.d, sort.n-1);
    println!("begin");
    println!("");

    for i in 0..sort.n {
        println!("data(0,{}) <= {}(data_{});", i, data_type, i);
    }

    println!("");
    println!("process(clk) begin");

    //println!("if rising_edge(clk) then");
    for stage in 0..sort.d {
        println!("");
        println!("  -- ###### Stage {:?} ######", stage);
        if pipeline_stage[31-stage] {println!("if rising_edge(clk) then")};
        for tupel_nr in 0..tupel_compared[stage].len() {
            println!("  if data({:?},{:?}) <= data({:?},{:?}) then",
                stage, tupel_compared[stage][tupel_nr][1], stage, tupel_compared[stage][tupel_nr][0]);
            println!("    data({:?},{:?}) <= data({:?},{:?});",
                stage+1, tupel_compared[stage][tupel_nr][1], stage, tupel_compared[stage][tupel_nr][1]);
            println!("    data({:?},{:?}) <= data({:?},{:?});",
                stage+1, tupel_compared[stage][tupel_nr][0], stage, tupel_compared[stage][tupel_nr][0]);
            println!("  else");
            println!("    data({:?},{:?}) <= data({:?},{:?});",
                stage+1, tupel_compared[stage][tupel_nr][1], stage, tupel_compared[stage][tupel_nr][0]);
            println!("    data({:?},{:?}) <= data({:?},{:?});",
                stage+1, tupel_compared[stage][tupel_nr][0], stage, tupel_compared[stage][tupel_nr][1]);
            println!("  end if;");
        }
        for elem_nr in 0..elem_not_compared[stage].len() {
            println!("  data({:?},{:?}) <= data({:?},{:?});",
                stage+1, elem_not_compared[stage][elem_nr], stage, elem_not_compared[stage][elem_nr]);
        }
        if pipeline_stage[31-stage] {println!("end if;")};
    }
    println!("");
    //println!("end if;");
    println!("end process;");
    println!("");
    for i in 0..sort.n {
        println!("sort_{} <= std_logic_vector(data({},{}));", i, sort.d, i);
    }
    println!("");
    println!("end architecture;");
    println!("");


// ##########  Testbench  ##########

    let vhdl_code = r#"
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
  signal clk : std_logic := '0';"#;

    println!("{}", vhdl_code);

    for i in 0..sort.n {
        println!("  signal data{} : std_logic_vector({} downto 0) := (others => '0');", i, data_width-1);
    }

    let vhdl_code = r#"
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

  for i in 0 to NO_RUNS-1 loop"#;

    println!("{}", vhdl_code);
    for i in 0..sort.n {
        println!("    data{} <= rand_slv({});", i, data_width);
    }

    let vhdl_code = r#"    wait for PERIOD;
  end loop;

  wait for 40*PERIOD;
  test_runner_cleanup(runner);
end process;

sort_i: entity work.sorting_network
  port map(
    clk => clk,"#;
    println!("{}", vhdl_code);

    for i in 0..sort.n-1 {
        println!("    data_{} => data{},", i, i);
    }
    println!("    data_{} => data{}", sort.n-1, sort.n-1);

    println!(");");
    println!("");
    println!("end architecture;");
    println!("");

    Ok(())
}

