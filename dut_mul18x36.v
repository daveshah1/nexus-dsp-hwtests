module dut(
	input a_signed, b_signed,
	input [17:0] a,
	input [35:0] b,
	output [53:0] z
);

	MULT18X36 #(
		.REGINPUTA("BYPASS"),
		.REGINPUTB("BYPASS"),
		.REGOUTPUT("BYPASS"),
		.GSR("DISABLED")
	) mult_i (
		.A(a),
		.B(b),
		.SIGNEDA(a_signed),
		.SIGNEDB(b_signed),
		.Z(z)
	);

endmodule
