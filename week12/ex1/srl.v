module srl
(
  input  [31:0] rt,
  input   [4:0] shamt,
  output [31:0] in1
);

  
  assign in1 = rt >> shamt;
  
endmodule
