if {! [is_attribute wlec_internal_to_write_lec_db_for_invocation -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_invocation}
if {! [is_attribute wlec_internal_to_write_lec_db_for_label -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_label}
if {! [is_attribute wlec_internal_to_write_lec_label_data -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_label_data}
set_db wlec_internal_to_write_lec_label_data {{calling_function write_lec top_design xtea label rtl fvdir fv/xtea filename N/A filename_absolute N/A} {calling_function write_lec top_design xtea label fv_map fvdir fv/xtea filename fv/xtea/fv_map.v.gz filename_absolute /users/iacana.weber/asyncCircuits/fv/xtea/fv_map.v.gz}}
set_db wlec_internal_to_write_lec_db_for_label {write_lec {xtea {fv_map {do_set_vars {{set env(RC_VERSION)     "18.14-s037_1"} {set env(CDN_SYNTH_ROOT) "/soft64/cadence/ferramentas/GENUS181/tools.lnx86"} {set CDN_SYNTH_ROOT      "/soft64/cadence/ferramentas/GENUS181/tools.lnx86"} {set env(CW_DIR) "/soft64/cadence/ferramentas/GENUS181/tools.lnx86/lib/chipware"} {set CW_DIR      "/soft64/cadence/ferramentas/GENUS181/tools.lnx86/lib/chipware"}} do_set_naming {{set_naming_style rc -golden} {set_naming_rule "%s\[%d\]" -instance_array -golden} {set_naming_rule "%s_reg" -register -golden} {set_naming_rule "%L.%s" "%L\[%d\].%s" "%s" -instance -golden} {set_naming_rule "%L.%s" "%L\[%d\].%s" "%s" -variable -golden}} do_set_hdl_options {{# Align LEC's treatment of mismatched port widths with constant} {# connections with Genus's. Genus message CDFG-467 and LEC message} {# HRC3.6 may indicate the presence of this issue. This option is} {# only available with LEC 17.20-d301 or later.} {set lec_version_required "17.20301"} if\ \{\$lec_version\ >=\ \$lec_version_required\}\ \{ {    set_hdl_options -const_port_extend} \} {set_hdl_options -VERILOG_INCLUDE_DIR "incdir:sep:src:cwd"}} do_set_undriven {{set_undriven_signal 0 -golden}} do_set_undefined {{# default is to error out when module definitions are missing} {set_undefined_cell black_box -noascend -both}} do_read_library {{add_search_path . /soft64/async/ferramentas/pulsar-1.0/tech/st65 -library -both} {read_library -liberty -both   /soft64/async/ferramentas/pulsar-1.0/tech/st65/CORE65GPSVT_wc_0.90V_125C.lib /soft64/async/ferramentas/pulsar-1.0/tech/st65/ASCEND_NCL65GPSVT_SS_0.90V_125C_letiflop.lib /soft64/async/ferramentas/pulsar-1.0/tech/st65/ASCEND_NCLP65GPSVT_SS_0.90V_125C.lib}} do_read_rtl {{delete_search_path -all -design -golden} {add_search_path . rtl /soft64/async/ferramentas/pulsar-1.0/tech/st65 -design -golden} {read_design -enumconstraint  -define SYNTHESIS  -merge bbox -golden -lastmod -noelab -sv09 /soft64/async/ferramentas/pulsar-1.0/tech/sdds.sv} {delete_search_path -all -design -golden} {add_search_path . rtl /soft64/async/ferramentas/pulsar-1.0/tech/st65 -design -golden} {read_design -enumconstraint  -define SYNTHESIS  -merge bbox -golden -lastmod -noelab -sv09 /soft64/async/ferramentas/pulsar-1.0/tech/st65/sdds.sv} {delete_search_path -all -design -golden} {add_search_path . rtl /soft64/async/ferramentas/pulsar-1.0/tech/st65 -design -golden} {read_design -enumconstraint  -define SYNTHESIS  -merge bbox -golden -lastmod -noelab -sv09 output/xtea/ncl_xtea.v} {elaborate_design -golden -root {xtea} -rootonly }} do_read_design_revised {{read_design -verilog95   -revised -lastmod -noelab fv/xtea/fv_map.v.gz} {elaborate_design -revised -root {xtea}}} do_uniquify {{uniquify -all -nolib -golden}} do_int_reports {report_design_data report_black_box} do_flatten {{set_flatten_model -seq_constant} {set_flatten_model -seq_constant_x_to 0} {set_flatten_model -nodff_to_dlat_zero} {set_flatten_model -nodff_to_dlat_feedback} {set_flatten_model -hier_seq_merge}} alias_file_name {singlebit {original_name fv/xtea/fv_map.singlebit.original_name.alias.json.gz hdl_name fv/xtea/fv_map.singlebit.hdl_name.alias.json.gz}} do_alias_mapping {{#add_name_alias fv/xtea/fv_map.singlebit.original_name.alias.json.gz -revised} {#set_mapping_method -alias -revised} {#add_renaming_rule r1alias _reg((\\\[%w\\\])*(/U\\\$%d)*)$ @1 -type dff dlat -both}} mapping_file_name fv/xtea/fv_map.map.do revised_hier_compare 1 retimed_modules {} unresolved_modules {} partial_sum_outputs_modules {} lock true}}}}
set_db wlec_internal_to_write_lec_db_for_invocation {write_lec {xtea {fvdir fv/xtea current_label fv_map smart_lec false exit_at_end 1 dofile_replace 0 dofile_name fv/xtea/rtl_to_fv_map.do logfile_name fv/xtea/rtl_to_fv_map.log outdir {} verbose 0 save_session {} checkpoint {} no_dft 0 no_lp 0 sim_lib {} sim_plus_lib 0 env_vars {} pre_read {} pre_design_read {} pre_compare {} pre_exit {} dft_constraint_file {} cw_sim {} golden_cpf {} revised_cpf {} golden_1801 {} revised_1801 {} golden_design rtl revised_design fv/xtea/fv_map.v.gz revised_design_legacy {} hier_compare 1 flat_compare 0 no_insert_iso_in_dof 0 lp_ec_flow 0 lp_cpf_flow 0 lp_1801_flow 0 pipeline_comp_exists 0 need_retiming_lec 0 jtag_macro_exists_in_golden 0 cw_comp_list {} pipeline_comps {} vhdl_specified_as_golden {} hdl_param {} share_dp_analysis {} dft_constraints {} top_design_in_rtl xtea top_design_in_lec xtea start_time 1576593286222645 label_list {rtl fv_map} revised_design_normalized /users/iacana.weber/asyncCircuits/fv/xtea/fv_map.v.gz imp_label_rev fv_map rtl_top {} auto_analyze true analyze_abort false analyze_setup false cg_declone_hier_compare true name_for_alias_flow original_name alias_flow true mapping_file_flow true add_golden_driver_info true cut_point none add_noblack_box_retime_subdesign true parallel_threads 4 compare_threads 4 hier_comp_threshold 50 low_power_analysis false write_cpf_lp_ec_flow true use_cpf_for_library true stop_after_syn_eqn_mismatch false set_cdn_synth_root false composite_compare true ncprotect_keydb true uniquify true retimed_module_uniquify true use_io_pad true use_constant_function_timing_model true use_lec_model true one_hot_mux false g1_has_iso_inserted false use_extconst false multithread_license_list {} golden_is_rtl 1 golden_cpf_files {} revised_cpf_files {} golden_1801_files {} revised_1801_files {} fvdir_list fv/xtea cw_vhdllib_list {} cw_model_list {} auto_verilog_detect_is_used {} all_clk clk all_test_clk {} pincon_rvz {} pincon_gdn {} generating_fv_map_info 1 rcv_vi_index 1 need_datapath_lec 1 hier_dofile_index 1}}}