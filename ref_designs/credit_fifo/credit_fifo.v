module fifo_credit_valid #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16
) (
    input logic clk,
    input logic rst_n,

    // Push interface
    input logic push_valid,
    output logic push_credit,
    input logic [DATA_WIDTH-1:0] push_data,

    // Pop interface
    output logic pop_valid,
    input logic pop_credit,
    output logic [DATA_WIDTH-1:0] pop_data
);

    // Internal FIFO storage
    logic [DATA_WIDTH-1:0] fifo_mem [0:DEPTH-1];
    logic [$clog2(DEPTH):0] rd_ptr, wr_ptr;
    logic [$clog2(DEPTH):0] fifo_count;

    // Credit counters
    logic [$clog2(DEPTH):0] push_credits, pop_credits;

    // Credit initialization after reset
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            push_credits <= DEPTH;
            pop_credits <= 0;
            rd_ptr <= 0;
            wr_ptr <= 0;
            fifo_count <= 0;
        end else begin
            // Manage push credits
            if (push_valid) begin
                if (!push_credit) begin
                    push_credits <= push_credits - 1;
                end
                fifo_mem[wr_ptr] <= push_data;
                wr_ptr <= wr_ptr + 1;
                fifo_count <= fifo_count + 1;
            end else if (push_credit) begin
                push_credits <= push_credits + 1;
            end

            // Manage pop credits
            if (pop_valid) begin
                if (!pop_credit) begin
                    pop_credits <= pop_credits - 1;
                end
                pop_data <= fifo_mem[rd_ptr];
                rd_ptr <= rd_ptr + 1;
                fifo_count <= fifo_count - 1;
            end else if (pop_credit) begin
                pop_credits <= pop_credits + 1;
            end
        end
    end

    // Credit and valid management
    assign push_credit = (push_credits > 0);
    assign pop_valid = (pop_credits > 0) && (fifo_count > 0);

endmodule