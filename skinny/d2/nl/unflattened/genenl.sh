export LD_LIBRARY_PATH=/home/lucien/git/silver/lib

dut=SKINNY_SBOX
ins=SKINNY_SBOX
nam=SKINNY_SBOX
~/git/silver/bin/parser --verilog-design_file ${dut}.v --insfile ${ins}.nl  --verilog-module_name ${nam} --verilog-libfile ~/git/silver/cell/Library.txt --verbose 1 --verilog 1

dut=TwoSboxes
ins=TwoSboxes
nam=TwoSboxes
~/git/silver/bin/parser --verilog-design_file ${dut}.v --insfile ${ins}.nl  --verilog-module_name ${nam} --verilog-libfile ~/git/silver/cell/Library.txt --verbose 1 --verilog 1
