.data
msg1: .asciiz "Enter N : "

.text
li $v0,  4
la $a0,  msg1
syscall
li $v0,  5
syscall
add $a0, $v0, $zero
move $t0 , $a0
jal calc
la $a0 , ($v0)
li $v0 , 1
syscall

li $v0, 10
syscall

calc:
    addi $sp, $sp, -8
    sw   $ra, 0($sp)
    sw   $s0, 4($sp)
    add $s0, $a0, $zero
    beq  $s0, $zero, return0
    
    addi $a0, $s0, -1
    jal calc
    add $v0, $v0, $s0

    exit:
        lw   $ra, 0($sp)
        lw   $s0, 4($sp)
        addi $sp, $sp, 8
        jr $ra

    return0:     
        li $v0,0
        j exit