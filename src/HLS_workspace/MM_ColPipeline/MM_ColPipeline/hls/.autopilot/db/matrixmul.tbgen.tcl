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
dict set ap_memory_interface_dict a { MEM_WIDTH 8 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 8 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict res { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 8 regular {bram 9 { 1 } 1 1 }  }
	{ b int 8 regular {bram 9 { 1 } 1 1 }  }
	{ res int 16 regular {array 9 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_Addr_A sc_out sc_lv 32 signal 0 } 
	{ a_EN_A sc_out sc_logic 1 signal 0 } 
	{ a_WEN_A sc_out sc_lv 1 signal 0 } 
	{ a_Din_A sc_out sc_lv 8 signal 0 } 
	{ a_Dout_A sc_in sc_lv 8 signal 0 } 
	{ a_Clk_A sc_out sc_logic 1 signal 0 } 
	{ a_Rst_A sc_out sc_logic 1 signal 0 } 
	{ b_Addr_A sc_out sc_lv 32 signal 1 } 
	{ b_EN_A sc_out sc_logic 1 signal 1 } 
	{ b_WEN_A sc_out sc_lv 1 signal 1 } 
	{ b_Din_A sc_out sc_lv 8 signal 1 } 
	{ b_Dout_A sc_in sc_lv 8 signal 1 } 
	{ b_Clk_A sc_out sc_logic 1 signal 1 } 
	{ b_Rst_A sc_out sc_logic 1 signal 1 } 
	{ res_address0 sc_out sc_lv 4 signal 2 } 
	{ res_ce0 sc_out sc_logic 1 signal 2 } 
	{ res_we0 sc_out sc_logic 1 signal 2 } 
	{ res_d0 sc_out sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_A" }} , 
 	{ "name": "a_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_A" }} , 
 	{ "name": "a_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "WEN_A" }} , 
 	{ "name": "a_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "Din_A" }} , 
 	{ "name": "a_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "Dout_A" }} , 
 	{ "name": "a_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "Clk_A" }} , 
 	{ "name": "a_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "Rst_A" }} , 
 	{ "name": "b_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_A" }} , 
 	{ "name": "b_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_A" }} , 
 	{ "name": "b_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "WEN_A" }} , 
 	{ "name": "b_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "Din_A" }} , 
 	{ "name": "b_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "Dout_A" }} , 
 	{ "name": "b_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "Clk_A" }} , 
 	{ "name": "b_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "Rst_A" }} , 
 	{ "name": "res_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res", "role": "address0" }} , 
 	{ "name": "res_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "ce0" }} , 
 	{ "name": "res_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "we0" }} , 
 	{ "name": "res_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "matrixmul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "res", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Row_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_16_4_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul {
		a {Type I LastRead 2 FirstWrite -1}
		b {Type I LastRead 2 FirstWrite -1}
		res {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 1 }  { a_Din_A MemPortDIN2 1 8 }  { a_Dout_A MemPortDOUT2 0 8 }  { a_Clk_A mem_clk 1 1 }  { a_Rst_A mem_rst 1 1 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 1 }  { b_Din_A MemPortDIN2 1 8 }  { b_Dout_A MemPortDOUT2 0 8 }  { b_Clk_A mem_clk 1 1 }  { b_Rst_A mem_rst 1 1 } } }
	res { ap_memory {  { res_address0 mem_address 1 4 }  { res_ce0 mem_ce 1 1 }  { res_we0 mem_we 1 1 }  { res_d0 mem_din 1 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
