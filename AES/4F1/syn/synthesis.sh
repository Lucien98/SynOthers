remove_design -all
set search_path {/home/lucien/git/DCSythesis/template/lib2db}
set lib_name "NangateOpenCellLibrary"
set target_library ${lib_name}.db

set link_library [concat "*" $target_library]
# check if target_library is set
get_libs

# read verilog file
analyze -format verilog  {../RTL/AffineInput_Unit.v}
analyze -format verilog  {../RTL/GF16Mul_Unit.v}
analyze -format verilog  {../RTL/GF16MulXorSqSc_Unit.v}
analyze -format verilog  {../RTL/GF256Inv_Unit.v}
analyze -format verilog  {../RTL/GF4Mul_Unit.v}
analyze -format verilog  {../RTL/GF4MulXorSqSc_Unit.v}
elaborate GF256Inv_Unit


current_design GF256Inv_Unit

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

write -format verilog -hierarchy -output ../nl/unflattened/GF256Inv_Unit.v

ungroup -all -flatten
write -format verilog -hierarchy -output ../nl/flattened/GF256Inv_Unit.v
