set moduleName matrixmul
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matrixmul}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a_0 int 8 regular {fifo 0 volatile }  }
	{ a_1 int 8 regular {fifo 0 volatile }  }
	{ a_2 int 8 regular {fifo 0 volatile }  }
	{ b_0 int 8 regular {fifo 0 volatile }  }
	{ b_1 int 8 regular {fifo 0 volatile }  }
	{ b_2 int 8 regular {fifo 0 volatile }  }
	{ res int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_1_dout sc_in sc_lv 8 signal 4 } 
	{ b_1_empty_n sc_in sc_logic 1 signal 4 } 
	{ b_1_read sc_out sc_logic 1 signal 4 } 
	{ b_0_dout sc_in sc_lv 8 signal 3 } 
	{ b_0_empty_n sc_in sc_logic 1 signal 3 } 
	{ b_0_read sc_out sc_logic 1 signal 3 } 
	{ b_2_dout sc_in sc_lv 8 signal 5 } 
	{ b_2_empty_n sc_in sc_logic 1 signal 5 } 
	{ b_2_read sc_out sc_logic 1 signal 5 } 
	{ a_0_dout sc_in sc_lv 8 signal 0 } 
	{ a_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ a_0_read sc_out sc_logic 1 signal 0 } 
	{ a_1_dout sc_in sc_lv 8 signal 1 } 
	{ a_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ a_1_read sc_out sc_logic 1 signal 1 } 
	{ a_2_dout sc_in sc_lv 8 signal 2 } 
	{ a_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ a_2_read sc_out sc_logic 1 signal 2 } 
	{ res_din sc_out sc_lv 16 signal 6 } 
	{ res_full_n sc_in sc_logic 1 signal 6 } 
	{ res_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_1", "role": "dout" }} , 
 	{ "name": "b_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "empty_n" }} , 
 	{ "name": "b_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "read" }} , 
 	{ "name": "b_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_0", "role": "dout" }} , 
 	{ "name": "b_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "empty_n" }} , 
 	{ "name": "b_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "read" }} , 
 	{ "name": "b_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_2", "role": "dout" }} , 
 	{ "name": "b_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "empty_n" }} , 
 	{ "name": "b_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "read" }} , 
 	{ "name": "a_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_0", "role": "dout" }} , 
 	{ "name": "a_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "empty_n" }} , 
 	{ "name": "a_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "read" }} , 
 	{ "name": "a_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_1", "role": "dout" }} , 
 	{ "name": "a_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "empty_n" }} , 
 	{ "name": "a_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "read" }} , 
 	{ "name": "a_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_2", "role": "dout" }} , 
 	{ "name": "a_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "empty_n" }} , 
 	{ "name": "a_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "read" }} , 
 	{ "name": "res_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res", "role": "din" }} , 
 	{ "name": "res_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "full_n" }} , 
 	{ "name": "res_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "matrixmul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "a_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "a_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_16_4_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul {
		a_0 {Type I LastRead 3 FirstWrite -1}
		a_1 {Type I LastRead 3 FirstWrite -1}
		a_2 {Type I LastRead 3 FirstWrite -1}
		b_0 {Type I LastRead 3 FirstWrite -1}
		b_1 {Type I LastRead 3 FirstWrite -1}
		b_2 {Type I LastRead 3 FirstWrite -1}
		res {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_fifo {  { a_0_dout fifo_data_in 0 8 }  { a_0_empty_n fifo_status 0 1 }  { a_0_read fifo_port_we 1 1 } } }
	a_1 { ap_fifo {  { a_1_dout fifo_data_in 0 8 }  { a_1_empty_n fifo_status 0 1 }  { a_1_read fifo_port_we 1 1 } } }
	a_2 { ap_fifo {  { a_2_dout fifo_data_in 0 8 }  { a_2_empty_n fifo_status 0 1 }  { a_2_read fifo_port_we 1 1 } } }
	b_0 { ap_fifo {  { b_0_dout fifo_data_in 0 8 }  { b_0_empty_n fifo_status 0 1 }  { b_0_read fifo_port_we 1 1 } } }
	b_1 { ap_fifo {  { b_1_dout fifo_data_in 0 8 }  { b_1_empty_n fifo_status 0 1 }  { b_1_read fifo_port_we 1 1 } } }
	b_2 { ap_fifo {  { b_2_dout fifo_data_in 0 8 }  { b_2_empty_n fifo_status 0 1 }  { b_2_read fifo_port_we 1 1 } } }
	res { ap_fifo {  { res_din fifo_data_in 1 16 }  { res_full_n fifo_status 0 1 }  { res_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	a_0 { fifo_read 8 no_conditional }
	a_1 { fifo_read 8 no_conditional }
	a_2 { fifo_read 8 no_conditional }
	b_0 { fifo_read 24 has_conditional }
	b_1 { fifo_read 24 has_conditional }
	b_2 { fifo_read 24 has_conditional }
	res { fifo_write 8 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
