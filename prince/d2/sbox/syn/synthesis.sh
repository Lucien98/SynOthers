remove_design -all
set search_path {/home/lucien/git/DCSythesis/template/lib2db}
set lib_name "NangateOpenCellLibrary"
set target_library ${lib_name}.db

set link_library [concat "*" $target_library]
# check if target_library is set
get_libs

# read verilog file
analyze -format verilog  {../RTL/XOR_2.v}
analyze -format vhdl  {../RTL/XOR_n.vhd}
analyze -format vhdl  {../RTL/XOR_2n.vhd}
analyze -format verilog  {../RTL/NF_CF_1.v}
analyze -format verilog  {../RTL/MyRotation.v}
analyze -format verilog  {../RTL/TwoSboxes.v}
analyze -format verilog  {../RTL/Sbox_State.v}
analyze -format verilog  {../RTL/PRINCE_Sbox_inv.v}


set_dont_use [get_lib_cells ${lib_name}/FA*]
set_dont_use [get_lib_cells ${lib_name}/HA*]
set_dont_use [get_lib_cells ${lib_name}/AOI*]
set_dont_use [get_lib_cells ${lib_name}/OAI*]
set_dont_use [get_lib_cells ${lib_name}/MUX*]
set_dont_use [get_lib_cells ${lib_name}/CLKBUF*]
set_dont_use [get_lib_cells ${lib_name}/OR3*]
set_dont_use [get_lib_cells ${lib_name}/OR4*]
set_dont_use [get_lib_cells ${lib_name}/NOR3*]
set_dont_use [get_lib_cells ${lib_name}/NOR4*]
set_dont_use [get_lib_cells ${lib_name}/AND3*]
set_dont_use [get_lib_cells ${lib_name}/AND4*]
set_dont_use [get_lib_cells ${lib_name}/NAND3*]
set_dont_use [get_lib_cells ${lib_name}/NAND4*]
set_dont_use [get_lib_cells ${lib_name}/BUF*]

elaborate PRINCE_Sbox_inv

current_design PRINCE_Sbox_inv

compile -map_effort medium -area_effort medium
compile_ultra -no_autoungroup

write -format verilog -hierarchy -output ../nl/unflattened/PRINCE_Sbox_inv.v

ungroup -all -flatten
write -format verilog -hierarchy -output ../nl/flattened/PRINCE_Sbox_inv.v

elaborate TwoSboxes

current_design TwoSboxes

compile -map_effort medium -area_effort medium
compile_ultra -no_autoungroup

write -format verilog -hierarchy -output ../nl/unflattened/TwoSboxes.v

ungroup -all -flatten
write -format verilog -hierarchy -output ../nl/flattened/TwoSboxes.v
