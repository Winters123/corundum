module md_process #(
	// Slave
	parameter C_S_AXIS_DATA_WIDTH = 256,
	parameter C_S_AXIS_TUSER_WIDTH = 128

)
(
	input										clk,		// axis clk
	input										aresetn,	
	/*
     * input Slave AXI Stream
     */
	input [C_S_AXIS_DATA_WIDTH-1:0]				s_axis_tdata,
	input [((C_S_AXIS_DATA_WIDTH/8))-1:0]		s_axis_tkeep,
	input [C_S_AXIS_TUSER_WIDTH-1:0]			s_axis_tuser,
	input										s_axis_tvalid,
	output										s_axis_tready,
	input										s_axis_tlast,

	/*
     * output Master AXI Stream
     */
	output     [C_S_AXIS_DATA_WIDTH-1:0]		m_axis_tdata,
	output     [((C_S_AXIS_DATA_WIDTH/8))-1:0]	m_axis_tkeep,
	output     [C_S_AXIS_TUSER_WIDTH-1:0]		m_axis_tuser,
	output    									m_axis_tvalid,
	input										m_axis_tready,
	output  									m_axis_tlast
	
);

endmodule