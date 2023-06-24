module sqrt_data_path (num, load_data, incr_delta, find_next_sq, clear, clk, finish, result);
  input load_data, incr_delta, find_next_sq, clear, clk;
  input [6:0] num;
  output reg finish;
  output [3:0] result;
  reg[6:0] Rn = 7'b0000001;
  reg[4:0] Rdelta = 5'b00101;
  reg[6:0] Rdata;
  always @ (posedge clk) begin
    if (load_data) Rdata = num;
    if (incr_delta) Rdelta = Rdelta + 2;
    if (find_next_sq) Rn = Rn + Rdelta;
    if (Rn >= Rdata) finish = 1;
    else finish = 0;
    end
    assign result = Rdelta >>> 1;
endmodule