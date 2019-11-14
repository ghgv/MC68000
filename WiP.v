module test(
    input clk,
    input [19:12] addr,
    inout d0,
	 inout [6:0] da,
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
    output reg status_led,
    input fc0,
    input fc1,
    output _ipl1,
    output  _ipl2,
    output _vpa,
    inout _reset,
    inout _halt,
    output _dtack
    );

// MEMORY MAP
// 00000 - 77FFF : ROM
// 78000 - 79FFF : serial in
// 7A000 - 7BFFF : serial out
// 7C000 - 7CFFF : serial status: _RDF
// 7D000 - 7DFFF : serial status: _TXE
// 7E000 - 7FFFF : LED register
// 80000 - FFFFF : RAM

// address decoding

wire isdevice = (addr[19:15] == 5'b01111);

reg [14:0] counter;
reg [14:0] counter2;
always @(posedge clk) begin
	counter <= counter + 1;
end

always @(posedge clk ) begin
	if(counter==0)
		counter2 <= counter2 + 1;
end


reg buttonReg;
always @(posedge clk) begin
	if (counter2 == 0)
	 begin
		buttonReg <= button;
		
	end;
		
end

assign _reset = buttonReg ? 1'bZ : 0;
assign _halt = buttonReg ? 1'bZ : 0;



// status LED

always @(posedge clk) 
begin
	if ( counter2>1000 && !buttonReg) 
		status_led <= 1'b0;
	else
	 status_led<=1'b1;
end

assign is_serial_status = (isdevice && rw && (addr[14:13] == 2'b10));

assign d0 = is_serial_status ? (addr[12] ? _txe : _rdf) : 1'bZ;
assign _ceram = 1'b1;
assign _oe = ~rw;
wire interrupt_ack = fc0 & fc1;
wire ismem = ~_as & ~interrupt_ack;
assign _cerom = ~ismem | addr[19] | isdevice;

// bus transaction control
assign _dtack = interrupt_ack; // always assert dtack, except when CPU is responding to an interrupt
assign _vpa = ~interrupt_ack; // vpa is the opposite of dtack

assign _ipl1 =1;
assign _ipl2 =1;
assign da[6:0] = 7'bZZZZZZZ;
endmodule