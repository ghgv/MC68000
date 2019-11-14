module test(
    input clk,
    input [19:12] addr,
	inout reg [7:0] d0,
    input _as,
    input _ds,
    input rw,
    input _txe,
    input _rdf,
    output _rd,
    output reg wr,
    output _ceram,
    output _cerom,
    output _oe,
    input button,
    output reg status_led,
    input fc0,
    input fc1,
    output _ipl1,
    output reg _ipl2,
    output _vpa,
    inout _reset,
    inout _halt,
    output _dtack
    );
	 
reg a;
initial a=0;
always @(posedge clk  ) begin
    if (_txe && !wr) 
	   wr<=1'b1; 
	 if(_txe && wr && a==0)
	  begin
		d0<=35;
		a<=1;
		end
	 if(_txe && wr && a==1)
	   begin
	    wr<=1'b0;
		 a<=0;
		end 
end




endmodule
