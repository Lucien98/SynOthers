export LD_LIBRARY_PATH=/home/lucien/git/silver/lib

dut=keccak_sbox
ins=keccak_sbox2
nam=keccak_sbox
~/git/silver/bin/parser --verilog-design_file ${dut}.v --insfile ${ins}.nl  --verilog-module_name ${nam} --verilog-libfile ~/git/silver/cell/Library.txt --verbose 1 --verilog 1