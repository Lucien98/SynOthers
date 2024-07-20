remove_design -all
set search_path {/home/lucien/git/DCSythesis/template/lib2db}
set lib_name "NangateOpenCellLibrary"
set target_library ${lib_name}.db

set link_library [concat "*" $target_library]
# check if target_library is set
get_libs

# read verilog file
analyze -format sverilog  {../RTL/affine_2sh.sv     }
analyze -format sverilog  {../RTL/s_bit3_sh1.sv}
analyze -format sverilog  {../RTL/affine_share1.sv  }
analyze -format sverilog  {../RTL/s_bit3_sh2.sv}
analyze -format sverilog  {../RTL/affine_share2.sv  }
analyze -format sverilog  {../RTL/s_bit3_sh3.sv}
analyze -format sverilog  {../RTL/s_bit3_sh4.sv}
analyze -format sverilog  {../RTL/s_bit1_sh1.sv     }
analyze -format sverilog  {../RTL/s_bit3_sh5.sv}
analyze -format sverilog  {../RTL/s_bit1_sh2.sv     }
analyze -format sverilog  {../RTL/s_bit3_sh6.sv}
analyze -format sverilog  {../RTL/s_bit1_sh3.sv     }
analyze -format sverilog  {../RTL/s_bit3_sh7.sv}
analyze -format sverilog  {../RTL/s_bit1_sh4.sv     }
analyze -format sverilog  {../RTL/s_bit3_sh8.sv}
analyze -format sverilog  {../RTL/s_bit1_sh5.sv     }
analyze -format sverilog  {../RTL/s_bit3.sv}
analyze -format sverilog  {../RTL/s_bit1_sh6.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh1.sv}
analyze -format sverilog  {../RTL/s_bit1_sh7.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh2.sv}
analyze -format sverilog  {../RTL/s_bit1_sh8.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh3.sv}
analyze -format sverilog  {../RTL/s_bit1.sv         }
analyze -format sverilog  {../RTL/s_bit4_sh4.sv}
analyze -format sverilog  {../RTL/s_bit2_sh1.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh5.sv}
analyze -format sverilog  {../RTL/s_bit2_sh2.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh6.sv}
analyze -format sverilog  {../RTL/s_bit2_sh3.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh7.sv}
analyze -format sverilog  {../RTL/s_bit2_sh4.sv     }
analyze -format sverilog  {../RTL/s_bit4_sh8.sv}
analyze -format sverilog  {../RTL/s_bit2_sh5.sv     }
analyze -format sverilog  {../RTL/s_bit4.sv}
analyze -format sverilog  {../RTL/s_bit2_sh6.sv     }
analyze -format sverilog  {../RTL/sbox_rmsk.sv}
analyze -format sverilog  {../RTL/s_bit2_sh7.sv     }
analyze -format sverilog  {../RTL/share_reg.sv}
analyze -format sverilog  {../RTL/s_bit2_sh8.sv     }
analyze -format sverilog  {../RTL/s.sv}
analyze -format sverilog  {../RTL/s_bit2.sv         }
analyze -format sverilog  {../RTL/xor_cir4.sv}
analyze -format sverilog  {../RTL/CMSSbox.sv        }

elaborate CMSSbox

current_design CMSSbox

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

write -format verilog -hierarchy -output ../nl/unflattened/CMSSbox.v

ungroup -all -flatten
write -format verilog -hierarchy -output ../nl/flattened/CMSSbox.v
