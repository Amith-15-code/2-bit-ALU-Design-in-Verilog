module alu_2bit (
    input  [1:0] A,
    input  [1:0] B,
    input  [2:0] sel,
    output reg [1:0] result,
    output reg carry
);

always @(*) begin
    carry  = 1'b0;
    result = 2'b00;

    case (sel)
        3'b000: {carry, result} = A + B; // ADD
        3'b001: {carry, result} = A - B; // SUB
        3'b010: result = A & B;           // AND
        3'b011: result = A | B;           // OR
        3'b100: result = A ^ B;           // XOR
        default: begin
            result = 2'b00;
            carry  = 1'b0;
        end
    endcase
end

endmodule
