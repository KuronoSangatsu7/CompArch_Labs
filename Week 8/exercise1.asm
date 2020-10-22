.data
message: .asciiz "Enter F degree: "
d32: .float -32.0
d5: .float 5.0
d9: .float 9.0
.text
li $v0 , 4
la $a0 , message
syscall

li $v0 , 6
syscall
mov.s $f1 , $f0
l.s $f2 , d32
l.s $f3 , d5
l.s $f4 , d9
add.s $f1 , $f1 , $f2

mul.s $f1, $f1, $f3

div.s $f1, $f1 , $f4

li $v0 , 2
mov.s $f12 , $f1
Syscall

Li $v0 , 10
Syscall
