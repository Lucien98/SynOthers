export LD_LIBRARY_PATH=/home/lucien/git/silver/lib

dut=GF256Inv_Unit
ins=GF256Inv_Unit
nam=GF256Inv_Unit
~/git/silver/bin/parser --verilog-design_file ${dut}.v --insfile ${ins}.nl  --verilog-module_name ${nam} --verilog-libfile ~/git/silver/cell/Library.txt --verbose 1 --verilog 1