.data
MSG2: .asciiz " Enter the value of n : "
MSG1: .asciiz " the product is :"


.text
main:
li $v0,4
la $a0,MSG2 #display the MSG2
syscall

li $v0,5
syscall       #take a number as input
move $t3,$v0

li	$t1, 1 #counter
li	$t2, 1 #product count

loop : addi $t1, $t1, 1 #iterator
       mul $t2, $t1,$t2 #multiply
       beq $t3,$t1,exit #branch exit
       j loop

exit:
li $v0,4
la $a0,MSG1
syscall
                                                                                                                                                                                                                  
li $v0,1
move $a0,$t2
syscall

jr $ra
