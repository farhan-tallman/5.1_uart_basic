/*
Listing 4.11 in the book FPGA prototyping with Verilog examples
page 95 (128 in pdf reader)

author (minor changes only): Farhan-tallman on GitHub
*/

module mod_m_counter
    #(parameter N = 4, // number of bits in counter
                MAX = 10 // max number of counts (the mod-MAX)
                )
    (
        input wire clk, rst_n,
        output wire max_tick,   // will be set for 1 clk cycle when max count is reached
        output wire [N-1:0] counter // current value of the counter
    );

    //signal declaration
    reg     [N-1:0] r_reg;  // register to hold the counter value
    wire    [N-1:0] r_next; // holds the next value to be written to the register above

    //BODY
    //====

    //the register
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            r_reg   <= 0;
        else
            r_reg   <= r_next;
    end

    // next state logic
    assign r_next = (r_reg == (MAX-1)) ? 0 : (r_reg+1);

    //assigning outputs
    assign max_tick = (r_reg == (MAX-1)) ? 1'b1 : 1'b0;
    assign counter = r_reg;
    
endmodule