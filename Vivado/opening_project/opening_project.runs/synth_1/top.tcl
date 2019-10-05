# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7k70tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.cache/wt [current_project]
set_property parent.project_path /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/timescale.v
set_property file_type "Verilog Header" [get_files /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/timescale.v]
set_property is_global_include true [get_files /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/timescale.v]
read_verilog -library xil_defaultlib {
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/FifoBuffer.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/async_fifo.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/clock_generator.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/fftTop.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/mgtTop.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_defines.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_alu.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_cfgr.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_cpu.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_ctrl.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dc_fsm.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dc_ram.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dc_tag.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dc_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dmmu_tlb.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dmmu_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_dpram_256x32.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_du.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_except.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_freeze.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_genpc.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_gmultp2_32x32.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_ic_fsm.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_ic_ram.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_ic_tag.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_ic_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_if.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_immu_tlb.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_immu_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_iwb_biu.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_lsu.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_mem2reg.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_mult_mac.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_operandmuxes.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_pic.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_pm.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_qmem_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_reg2mem.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_rf.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_rfram_generic.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_sb.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_sb_fifo.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_spram_2048x32_bw.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_spram_512x20.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_spram_64x14.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_spram_64x22.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_spram_64x24.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_sprs.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_tt.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_wb_biu.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/or1200/or1200_wbmux.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt_frame_check.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt_frame_gen.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt_usrclk_source.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/rtlRam.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_defines.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_crc16.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_crc5.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_ep_rf.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_idma.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_mem_arb.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_pa.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_pd.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_pe.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_pl.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_rf.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_utmi_if.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_utmi_ls.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/usbf/usbf_wb.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_defines.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_arb.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_master_if.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_msel.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_pri_dec.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_pri_enc.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_rf.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_slave_if.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_top.v
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/top.v
}
read_vhdl -library bftLib {
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bftLib/bft_package.vhdl
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bftLib/core_transform.vhdl
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bftLib/round_1.vhdl
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bftLib/round_2.vhdl
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bftLib/round_3.vhdl
  /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bftLib/round_4.vhdl
}
read_vhdl -library xil_defaultlib /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/sources_1/imports/Sources/bft.vhdl
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/constrs_2/imports/kintex7/top_full.xdc
set_property used_in_implementation false [get_files /home/vitalyr/projects/learn/Vivado/opening_project/opening_project.srcs/constrs_2/imports/kintex7/top_full.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7k70tfbg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
