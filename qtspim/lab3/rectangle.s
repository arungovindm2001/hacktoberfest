.data
MSG1: .asciiz "Enter Height: " 
MSG2: .asciiz "Enter Width: " 
MSG3: .asciiz "Area: "

.text 

main:
li $v0, 4
la $a0, MSG1 
syscall
li $v0, 5 
syscall
move $t3,$v0 
li $v0, 4
la $a0, MSG2 
syscall
li $v0, 5 
syscall
move $t2,$v0 
mul $t1,$t3,$t2 
li $v0, 4
la $a0,MSG3 
syscall
li $v0,1 
move $a0,$t1 
syscall
jr $ra
