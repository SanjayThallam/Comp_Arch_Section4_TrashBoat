module regfile32by64(dataIn, decoderSelectIn, muxSelectA, muxSelectB, reset, clock, outA, outB);

	input[63:0] dataIn;
	input[4:0] decoderSelectIn, muxSelectA, muxSelectB;
	input reset, clock;
	output[63:0] outA, outB;
	wire[63:0] rOut0, rOut1, rOut2, rOut3, rOut4, rOut5, rOut6, rOut7, rOut8, rOut9, rOut10, rOut11, rOut12, rOut13, rOut14, rOut15, rOut16, rOut17, rOut18, rOut19, rOut20, rOut21, rOut22, rOut23, rOut24, rOut25, rOut26, rOut27, rOut28, rOut29, rOut30, rOut31;
	wire[31:0] load;
	
	FivetoThirtyTwoDecoder myDecoder(decoderSelectIn, clock, load);
	
	Register64Bit reg0(rOut0, dataIn, reset, load[0], clock);
	Register64Bit reg1(rOut1, dataIn, reset, load[1], clock);
	Register64Bit reg2(rOut2, dataIn, reset, load[2], clock);
	Register64Bit reg3(rOut3, dataIn, reset, load[3], clock);
	Register64Bit reg4(rOut4, dataIn, reset, load[4], clock);
	Register64Bit reg5(rOut5, dataIn, reset, load[5], clock);
	Register64Bit reg6(rOut6, dataIn, reset, load[6], clock);
	Register64Bit reg7(rOut7, dataIn, reset, load[7], clock);
	Register64Bit reg8(rOut8, dataIn, reset, load[8], clock);
	Register64Bit reg9(rOut9, dataIn, reset, load[9], clock);
	Register64Bit reg10(rOut10, dataIn, reset, load[10], clock);
	Register64Bit reg11(rOut11, dataIn, reset, load[11], clock);
	Register64Bit reg12(rOut12, dataIn, reset, load[12], clock);
	Register64Bit reg13(rOut13, dataIn, reset, load[13], clock);
	Register64Bit reg14(rOut14, dataIn, reset, load[14], clock);
	Register64Bit reg15(rOut15, dataIn, reset, load[15], clock);
	Register64Bit reg16(rOut16, dataIn, reset, load[16], clock);
	Register64Bit reg17(rOut17, dataIn, reset, load[17], clock);
	Register64Bit reg18(rOut18, dataIn, reset, load[18], clock);
	Register64Bit reg19(rOut19, dataIn, reset, load[19], clock);
	Register64Bit reg20(rOut20, dataIn, reset, load[20], clock);
	Register64Bit reg21(rOut21, dataIn, reset, load[21], clock);
	Register64Bit reg22(rOut22, dataIn, reset, load[22], clock);
	Register64Bit reg23(rOut23, dataIn, reset, load[23], clock);
	Register64Bit reg24(rOut24, dataIn, reset, load[24], clock);
	Register64Bit reg25(rOut25, dataIn, reset, load[25], clock);
	Register64Bit reg26(rOut26, dataIn, reset, load[26], clock);
	Register64Bit reg27(rOut27, dataIn, reset, load[27], clock);
	Register64Bit reg28(rOut28, dataIn, reset, load[28], clock);
	Register64Bit reg29(rOut29, dataIn, reset, load[29], clock);
	Register64Bit reg30(rOut30, dataIn, reset, load[30], clock);
	Register64Bit reg31(rOut31, dataIn, reset, load[31], clock);
	
	mux32to1 muxA(muxSelectA,rOut0, rOut1, rOut2, rOut3, rOut4, rOut5, rOut6, rOut7, rOut8, rOut9, rOut10, rOut11, rOut12, rOut13, rOut14, rOut15, rOut16, rOut17, rOut18, rOut19, rOut20, rOut21, rOut22, rOut23, rOut24, rOut25, rOut26, rOut27, rOut28, rOut29, rOut30, rOut31, outA);
	mux32to1 muxB(muxSelectB,rOut0, rOut1, rOut2, rOut3, rOut4, rOut5, rOut6, rOut7, rOut8, rOut9, rOut10, rOut11, rOut12, rOut13, rOut14, rOut15, rOut16, rOut17, rOut18, rOut19, rOut20, rOut21, rOut22, rOut23, rOut24, rOut25, rOut26, rOut27, rOut28, rOut29, rOut30, rOut31, outB);

endmodule

module regfileTestbench();

	reg clk;
	
	initial begin
		clk = 0;
	
	end



endmodule 