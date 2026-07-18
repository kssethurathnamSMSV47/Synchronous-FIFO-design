## Clock Signals
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_15 Sch=uclk
create_clock -add -name sys_clk_pin -period 83.333 -waveform {0 41.667} [get_ports { clk }];

## =========================
## LEDs (4 LEDs)
## =========================
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { data_out[0] }]; #IO_L16N_T2_A27_15 Sch=led[2]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { data_out[1] }]; #IO_L17P_T2_A26_15 Sch=led[3]
set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { data_out[2] }]; #IO_L17N_T2_A25_15 Sch=led[4]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { data_out[3] }]; #IO_L18P_T2_A24_15 Sch=led[5]

## =========================
## Buttons (4 push buttons)
## =========================
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L18N_T2_A23_15 Sch=btn[0]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { wr_en }]; #IO_L19P_T3_A22_15 Sch=btn[1]
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { rd_en }]; #IO_L19N_T3_A21_VREF_15 Sch=btn[2]
#set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L20P_T3_A20_15 Sch=btn[3]

## =========================
## Switches (4 slide switches)
## =========================
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { data_in[0] }]; #IO_L20N_T3_A19_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { data_in[1] }]; #IO_L21P_T3_DQS_15 Sch=sw[1]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { data_in[2] }]; #IO_L21N_T3_DQS_A18_15 Sch=sw[2]
set_property -dict { PACKAGE_PIN M5    IOSTANDARD LVCMOS33 } [get_ports { data_in[3] }]; #IO_L6N_T0_VREF_34 Sch=sw[3]
