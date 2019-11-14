module test(
    input clk,
	 input clk2,
    input [19:12] addr,
    inout reg [7:0] da,
	
    input _as,
    input _ds,
    input rw,
    input _txe,
    input _rdf,
    output reg _rd,
    output reg wr,
    output _ceram,
    output _cerom,
    output _oe,
    input button,
    output  status_led,
    input fc0,
    input fc1,
    output _ipl1,
    output reg _ipl2,
    output _vpa,
    inout _reset,
    inout _halt,
    output _dtack,
	 output reg [7:0] PA
    );

// MEMORY MAP
// 00000 - 77FFF : ROM
// 58000 -       : PA
// 78000 - 79FFF : serial in
// 7A000 - 7BFFF : serial out
// 7C000 - 7CFFF : serial status: _RDF
// 7D000 - 7DFFF : serial status: _TXE
// 7E000 - 7FFFF : LED register
// 80000 - FFFFF : RAM

// address decoding

// MEMORY MAP
// 00000 - 77FFF : ROM
// 78000 - 79FFF : serial in
// 7A000 - 7BFFF : serial out
// 7C000 - 7CFFF : serial status: _RDF
// 7D000 - 7DFFF : serial status: _TXE
// 7E000 - 7FFFF : LED register
// 80000 - FFFFF : RAM

// address decoding
reg a;
reg b;

initial a=0;
initial b=35;

always @(posedge clk  ) begin
    if (_txe && !wr) 
	   wr<=1'b1; 
	 if(_txe && wr && a==0)
	  begin
		da<=36;
		a<=1;
		end
	 if(_txe && wr && a==1)
	   begin
	    wr<=1'b0;
		 a<=0;
	
		end 
end	

always @ (posedge clk)
begin
b<=b+1;
if(b>80)
b<=35;
end



always @(negedge clk) begin
   if(_rdf==0)
	 begin
	   _rd<=0;
		
	 end
	if(_rd==0)
	 begin
      _rd<=1;
	 end
end		
	  

assign status_led = _rdf;



always @*
case (da[3:0])
4'b0000 :      	//Hexadecimal 0
PA[7:0] = {_txe,7'b1111110};
4'b0001 :    		//Hexadecimal 1
PA[7:0] = {_txe,7'b0110000};
4'b0010 :  		// Hexadecimal 2
PA[7:0] = {_txe,7'b1101101} ; 
4'b0011 : 		// Hexadecimal 3
PA[7:0] = {_txe,7'b1111001} ;
4'b0100 :		// Hexadecimal 4
PA[7:0] = {_txe,7'b0110011} ;
4'b0101 :		// Hexadecimal 5
PA[7:0] = {_txe,7'b1011011} ;  
4'b0110 :		// Hexadecimal 6
PA[7:0] = {_txe,7'b1011111} ;
4'b0111 :		// Hexadecimal 7
PA[7:0] = {_txe,7'b1110000};
4'b1000 :     		 //Hexadecimal 8
PA[7:0] = {_txe,7'b1111111};
4'b1001 :    		//Hexadecimal 9
PA[7:0] = {_txe,7'b1111011} ;
4'b1010 :  		// Hexadecimal A
PA[7:0] = {_txe,7'b1110111} ; 
4'b1011 : 		// Hexadecimal B
PA[7:0] = {_txe,7'b0011111};
4'b1100 :		// Hexadecimal C
PA[7:0] = {_txe,7'b1001110} ;
4'b1101 :		// Hexadecimal D
PA[7:0] = {_txe,7'b0111101} ;
4'b1110 :		// Hexadecimal E
PA[7:0] = {_txe,7'b1001111} ;
4'b1111 :		// Hexadecimal F
PA[7:0] = {_txe,7'b1000111} ;
endcase


endmodule