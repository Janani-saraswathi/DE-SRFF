// SR Latch (Level-triggered)
module SRflipflop(
    input S, R,        // Set and Reset inputs
    output Q, Qbar     // Outputs
);
    assign Q = ~(R | Qbar);   // NOR-based latch
    assign Qbar = ~(S | Q);   // Complementary output
endmodule
