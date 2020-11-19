module alu_testbench;

// input and output test signals
reg [4:0] rs, rt, rd, shamt;
reg [5:0] funct;

ex2 ex2(); //Initialize 32 32-bit registers to zeros
alu alu(rs, rt, rd, shamt, funct);

initial
begin
ex2.r[0] = 32'b00000000000000000000000000000001;
ex2.r[1] = 32'b00000000000000000000000000000010;
ex2.r[2] = 32'b00000000000000000000000000000100;
rs = 5'b00000;
rt = 5'b00001;
rd = 5'b00010;
funct = 6'b100000; //add
#5;
rs = 5'b00000;
rt = 5'b00010;
rd = 5'b00001;
#5;
rt = 5'b00001;
rd = 5'b00010;
shamt = 5'b00010;
funct = 6'b000010; //srl
#5;
rs = 5'b00001;
rt = 5'b00010;
rd = 5'b00000;
funct = 6'b100010; //sub
end

initial
$monitor("rs = %b rt = %b rd = %b r0 = %b r1 = %b r2 = %b funct = %b shamt = %b", rs, rt, rd, ex2.r[0], ex2.r[1], ex2.r[2], funct, shamt);

initial
$dumpvars;

endmodule
