remove_design -all
set search_path {../lib2db}
set lib_name "NangateOpenCellLibrary"
set target_library ${lib_name}.db

set link_library [concat "*" $target_library]
# check if target_library is set
get_libs

# read verilog file
analyze -format verilog  {../RTL/gf22mul_scaling.v}
analyze -format verilog  {../RTL/gf22mul.v}
analyze -format verilog  {../RTL/gf24mul.v}
analyze -format verilog  {../RTL/SqSc.v}
analyze -format verilog  {../RTL/Stage1.v}
analyze -format verilog  {../RTL/Stage2.v}
analyze -format verilog  {../RTL/gf22mul_scl_factoring.v}
analyze -format verilog  {../RTL/gf22mul_factoring.v}
analyze -format verilog  {../RTL/gf24mul_factoring.v}
analyze -format verilog  {../RTL/Stage3.v}
analyze -format verilog  {../RTL/inversion_TI.v}

elaborate inversion_TI


current_design inversion_TI

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

compile -map_effort medium -area_effort medium
compile_ultra -no_autoungroup

write -format verilog -hierarchy -output ../nl/unflattened/inversion_TI.v

ungroup -all -flatten
write -format verilog -hierarchy -output ../nl/flattened/inversion_TI.v
