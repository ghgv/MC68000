`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:22:34 12/31/2014 
// Design Name: 
// Module Name:    cpld 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cpld(
    input clk, 1
    input [19:12] addr, 8
    inout d0, 1
    input _as,1
    input _ds,1
    input rw,1
    input _txe1,
    input _rdf,1
    output _rd,1
    output wr,1
    output _ceram,1
    output _cerom,1
    output _oe,1
    input button,1
    output reg status_led,1
    input fc0,1
    input fc1,1
    output _ipl1,1
    output reg _ipl2,1
    output _vpa,1
    inout _reset,1
    inout _halt,1
    output _dtack 1
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
assign _oe = ~rw;
wire interrupt_ack = fc0 & fc1;
wire ismem = ~_as & ~interrupt_ack;
wire isdevice = (addr[19:15] == 5'b01111);
assign _ceram = ~(ismem && addr[19]);
assign _cerom = ~ismem | addr[19] | isdevice;
assign _rd = ~(ismem && isdevice && rw && (addr[14:13] == 2'b00));
assign wr = (ismem && isdevice && ~rw && ~_ds && (addr[14:13] == 2'b01));

// serial status
assign is_serial_status = (ismem && isdevice && rw && (addr[14:13] == 2'b10));
assign d0 = is_serial_status ? (addr[12] ? _txe : _rdf) : 1'bZ;

// divide by 32K counter - makes a roughly 100 Hz timer at 3 MHz
reg [14:0] counter;
always @(posedge clk) begin
	counter <= counter + 1;
end

// interrupts
always @(posedge clk) begin
	_ipl2 <= ~((counter == 0) || (~_ipl2 && ~interrupt_ack)); // timer interrupt
end
assign _ipl1 = ~(~_rdf && _ipl2); // USB serial input interrupt, don't assert if timer interrupt is active

// reset handling: sample the button at a low frequency, to help with debounce
reg buttonReg;
always @(posedge clk) begin
	if (counter == 0)
		buttonReg <= button;
end

// reset signals to CPU
assign _reset = buttonReg ? 1'bZ : 0;
assign _halt = buttonReg ? 1'bZ : 0;

// status LED
always @(posedge clk) begin
	if (ismem && isdevice && ~rw && ~_ds && (addr[14:13] == 3'b11)) begin
		status_led <= d0;
	end
end

// bus transaction control
assign _dtack = interrupt_ack; // always assert dtack, except when CPU is responding to an interrupt
assign _vpa = ~interrupt_ack; // vpa is the opposite of dtack



endmodule
