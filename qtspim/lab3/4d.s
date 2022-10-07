#Program to evaluate ((4x/3)*y)
.data
Msg1: .asciiz "Enter the coeffecient of x: " 
Msg2: .asciiz "Enter the coeffecient of y: " 
Msg3: .asciiz "Result: "
.text 
main: 
li $t4,4 
li $t5,3 
li $v0,4
la $a0,Msg1 
syscall
li $v0,5 
syscall
move $t0,$v0 #x 
li $v0,4
la $a0,Msg2 
syscall
li $v0,5 
syscall
move $t1,$v0 #y 
mul $t3,$t0,$t4 
div $t3,$t3,$t5 
mul $t3,$t3,$t1 
li $v0,4
la $a0,Msg3 
syscall
li $v0,1 
move $a0,$t3 
syscall
jr $ra