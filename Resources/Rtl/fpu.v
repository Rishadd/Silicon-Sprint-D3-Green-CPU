module fpu(
    input i_vld,
    input [15:0] i_a,
    input [15:0] i_b,
    input [3:0] opcode,
    output reg [15:0] o_res,
    output reg overflow
);
wire [31:0] add_o_res, mul_o_res;
wire add_overflow, mul_overflow;

adder_fpu u_adder_fpu(
    .i_a(i_a),
    .i_b(i_b),
    .i_vld(i_vld),
    .o_res(add_o_res),
    .o_res_vld(add_o_res_vld),
    .overflow(add_overflow)
);

multiplier_fpu u_multiplier_fpu(
    .i_a(i_a),
    .i_b(i_b),
    .i_vld(i_vld),
    .o_res(mul_o_res),
    .o_res_vld(mul_o_res_vld),
    .overflow(mul_overflow)
);

always @(*) begin
    case (opcode)// must be modified
        4'b1110: begin
            o_res = add_o_res;
            overflow = add_overflow;
        end
        4'b1111: begin
            o_res = mul_o_res;
            overflow = mul_overflow;
        end
        default: begin
            o_res = 32'b0;
        end
    endcase
end

endmodule