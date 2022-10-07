.data
MSG1: .asciiz "Enter First Number: " 
MSG2: .asciiz "Enter Second Number: " 
MSG3: .asciiz "After Swapping " 
MSG4: .asciiz "\nFirst Number: " 
MSG5: .asciiz "\nSecond Number: "
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
move $t5,$t3 
move $t3,$t2 
move $t2,$t5 
li $v0, 4
la $a0, MSG3 
syscall
li $v0, 4
la $a0, MSG4 
syscall
li $v0,1 
move $a0,$t3 
syscall
li $v0,4
la $a0,MSG5 
syscall
li $v0,1 
move $a0,$t2 
syscall
jr $ra