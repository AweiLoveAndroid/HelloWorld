module hello
(
    input  wire clock    , // clock input
    input  wire reset_n  , // active low ,reset 
    input  wire switch_in, // switch input
    output wire led        // led 
);

reg led_reg; // led register

always@(posedge clock) begin
    if(!reset_n) begin
        led_reg <= 1'b0     ;
    end else begin
        led_reg <= switch_in;
    end
end

assign led = led_reg;

endmodule
