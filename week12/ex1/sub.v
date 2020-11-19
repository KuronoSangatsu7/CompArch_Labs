module sub
(
  input  [31:0] rs, rt, 
  output [31:0] in1
);

  
  assign  in1 = rs - rt;
  
endmodule
