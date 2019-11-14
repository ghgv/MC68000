module test(
    input clk,
	 input clk2,
    input [19:12] addr,
    inout [7:0] da,
	 input a1,
	 input a0,
	 input a11,
    input _as,
    input _ds,
    input rw,
    input _txe,
    input _rdf,
    output _rd,
    output wr,
    output _ceram,
    output _cerom,
    output _oe,
    input button,
    output  status_led,
    input fc0,
    input fc1,
    output _ipl1,
    output _ipl2,
    output _vpa,
    output _reset,
    output _halt,
    output _dtack,
	 output reg [7:0] PA,
	 output reg [7:0] PB,
	 input INTR1,
	 input INTR2
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

assign _oe = ~rw;
wire interrupt_ack = fc0 & fc1;
wire ismem = ~_as & ~interrupt_ack;
wire isdevice = (addr[19:15] == 5'b01111);
wire isPA = (addr[19:15] == 5'b01011);
assign _ceram = ~(ismem && addr[19]);
assign _cerom = ~ismem | addr[19] | isdevice;
assign _rd = ~(ismem && isdevice && rw && (addr[14:13] == 2'b00));
assign wr = (ismem && isdevice && ~rw && ~_ds && (addr[14:13] == 2'b01));

// serial status
assign is_serial_status = (ismem && isdevice && rw && (addr[14:13] == 2'b10));
assign da[0] = is_serial_status ? (addr[12] ? _txe : _rdf) : 1'bZ;

// divide by 32K counter - makes a roughly 100 Hz timer at 3 MHz
reg [15:0] counter;
always @(posedge clk) begin
	counter <= counter + 1;
end

// interrupts

assign _ipl2= 1'b1; // timer interrupt
assign _ipl1 = 1'b1; // timer interrupt

// reset handling: sample the button at a low frequency, to help with debounce
reg buttonReg;
always @(posedge clk) begin
	if (counter == 0)
		buttonReg <= button;
end

// reset signals to CPU
assign _reset = INTR2 ? 1'b1 : 0;  //Toogle for steeping
assign _halt  = (INTR2 ? 1'b1 : 0);//Keep in zero for steeping function


// toogle flipflop. Check https://www.youtube.com/watch?v=rYkr1mFQ_50
reg Q;
reg Q1;
always @(posedge clk) 
begin
 Q<=INTR1;
end

always @(posedge clk)
begin
 Q1<=Q;
end
/////////////////////
 

///////////// bus transaction control for steeping/////////
//assign _dtack = ~(Q&~Q1);//INTR1; // always assert dtack, except when CPU is responding to an interrupt
//assign _vpa = 1; // keep in in 1 for Stepping operation
///////////////////

///////////// bus transaction control for steeping/////////
assign _dtack = interrupt_ack; // always assert dtack, except when CPU is responding to an interrupt
assign _vpa = ~interrupt_ack; // vpa is the opposite of dtack
/////////////



assign status_led= addr[19];

////////Keep this lines in Tri-state///////////
assign da[7:1]=7'dZZZZZZZ;
//////////////////////

////////////////Seven segment Display///////////////
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
reg parar;/// Not used
always @*
case (da[7:4])
4'b0000 :      	//Hexadecimal 0
PB[7:0] = {parar,7'b1111110};
4'b0001 :    		//Hexadecimal 1
PB[7:0] = {parar,7'b0110000};
4'b0010 :  		// Hexadecimal 2
PB[7:0] = {parar,7'b1101101} ; 
4'b0011 : 		// Hexadecimal 3
PB[7:0] = {parar,7'b1111001} ;
4'b0100 :		// Hexadecimal 4
PB[7:0] = {parar,7'b0110011} ;
4'b0101 :		// Hexadecimal 5
PB[7:0] = {parar,7'b1011011} ;  
4'b0110 :		// Hexadecimal 6
PB[7:0] = {parar,7'b1011111} ;
4'b0111 :		// Hexadecimal 7
PB[7:0] = {parar,7'b1110000};
4'b1000 :     		 //Hexadecimal 8
PB[7:0] = {parar,7'b1111111};
4'b1001 :    		//Hexadecimal 9
PB[7:0] = {parar,7'b1111011} ;
4'b1010 :  		// Hexadecimal A
PB[7:0] = {parar,7'b1110111} ; 
4'b1011 : 		// Hexadecimal B
PB[7:0] = {parar,7'b0011111};
4'b1100 :		// Hexadecimal C
PB[7:0] = {parar,7'b1001110} ;
4'b1101 :		// Hexadecimal D
PB[7:0] = {parar,7'b0111101} ;
4'b1110 :		// Hexadecimal E
PB[7:0] = {parar,7'b1001111} ;
4'b1111 :		// Hexadecimal F
PB[7:0] = {parar,7'b1000111} ;
endcase
/////////////////////////////////////////////

endmodule