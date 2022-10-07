.data
FibArray: .space 20
msg: .asciiz "The fibinacci series of 1st twenty numbers are:\n"
msg1: .asciiz " "
.text
main:
la $a0,msg
syscall

li $t0,0
li $t1,0

loop:
   beq $t0,5,exit 
   la $a0,msg1
   syscall
   li $v0,5
   syscall
   move $s0,$v0
   sw $s0,fibarray($t0)
   addi $t0,$t0,4
lw $t4,fibarray($t1)
addi $t1,$t1,4
li $v0,1
move $a0,$t4
syscall
j loop

exit:
 jr $ra
