.data
output2: .asciiz " e^2/pi= "
e : .float 2.71828
pi: .float 3.1415
zeroAsFloat: .float 0.0
.text

jal calculate
li $v0 , 4
la $a0 , output2
syscall
li $v0, 2
syscall
li $v0, 10
syscall

calculate:
    l.s $f2, pi  
    l.s $f4, e  
    mul.s $f5 , $f4, $f4
    div.s $f12 , $f5, $f2
    s.s $f12, zeroAsFloat
    jr $ra
