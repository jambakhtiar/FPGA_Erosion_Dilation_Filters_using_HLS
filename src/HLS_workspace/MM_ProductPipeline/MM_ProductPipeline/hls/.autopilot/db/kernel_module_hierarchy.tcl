set ModuleHierarchy {[{
"Name" : "matrixmul","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "Row","ID" : "1","Type" : "no",
	"SubLoops" : [
	{"Name" : "Col","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_matrixmul_Pipeline_Product_fu_81","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Product","ID" : "4","Type" : "pipeline"},]},]},]},]
}]}