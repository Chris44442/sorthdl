# Sorting network HDL generator CLI tool

Everybody loves sorting networks. Too bad though that it is very hard to find
the best ones in terms of necessary stages and comparisons, especially when you
have an unusal number of input and output signals. Luckily we have
[SorterHunter](https://github.com/bertdobbelaere/SorterHunter), a program that
searches for those. On their github they have  listed the best sorting networks
found so far (by anyone ever, presumably) as json files.  

Coding sorting networks manually can be incredibly time-consuming and daunting.
Which is why I have created a CLI tool to generate complete HDL modules from
these json files (or any similar custom sorting network json files). The tool
lets you specify the data type (unsigned or signed, I might also add fixed
point data types later) and data width, while having granular control over
which stages will be pipeline-registered to achieve the latency and fmax you
need. Right now only VHDL (tested with 2008) is supported, but I might add
Verilog later. The tool also generates a test bench at the bottom of the file
for users to quickly verify the design (right now you need vunit to run the
test bench, but I might make it optional in the future).  

There is a prebuilt binary available for Linux x86. I have also generated a few
sample HDL modules to check out. To build the tool from source you need Cargo
or Docker.  

Happy sorting!

## Build the tool

Use the release binary, or build the tool from source.

- Build with Docker:

```bash
./build.sh
```

- Build with Cargo:

```bash
cargo build --release
```

Find the binary in ```./target/release/```.

## How to use the tool

Use the builtin help function:

```bash
./sorthdl -h
```

Tip: Use stdin and stdout to your advantage with piping:

```bash
cat sort.json | ./sorthdl -p=0xAAAA -w=20 -d=signed > sort.vhd
```

The pipeline option might seem a bit confusing initially. The most useful settings are probably 0xFFFF, 0xAAAA, 0x4924 and 0x0000. Those set all, every other, every third or no stages respectively as pipeline-registered.

```txt
CLI tool to print HDL code for SorterHunter sorting network json files

Usage: sorthdl [OPTIONS] [FILE]

Arguments:
  [FILE]  Set the input file path. If left blank the input will be stdin instead

Options:
  -d, --data-type <DATA_TYPE>  Set the data type [default: unsigned] [possible values: unsigned, signed]
  -w, --width <WIDTH>          Set the data width [default: 32]
  -p, --pipeline <PIPELINE>    Set pipelined stages, in hex, e.g. "0xAAAA" will set a pipeline register at every other stage. The number of digits must be equal or greater than the number of sorting network stages. Default is to pipeline-register all stages [default: 0xFFFFFFFF]
  -h, --help                   Print help
```

