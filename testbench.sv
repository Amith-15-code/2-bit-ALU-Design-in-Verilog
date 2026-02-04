module alu_2bit_tb;

reg  [1:0] A;
reg  [1:0] B;
reg  [2:0] sel;
wire [1:0] result;
wire carry;

// DUT instantiation
alu_2bit dut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin
    // Enable waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_2bit_tb);

    // Test set 1
    A = 2'b01; B = 2'b10;
    sel = 3'b000; #10;   // ADD
    sel = 3'b001; #10;   // SUB
    sel = 3'b010; #10;   // AND
    sel = 3'b011; #10;   // OR
    sel = 3'b100; #10;   // XOR

    // Test set 2
    A = 2'b11; B = 2'b01;
    sel = 3'b000; #10;
    sel = 3'b001; #10;

    $finish;
end

endmodule
