.data
MSG1: .asciiz " The result is : "
MSG2: .asciiz " Enter the numbers : "

.text
main:
li $v0,4
la $a0,MSG2 #display the MSG2
syscall

li $v0,5
syscall       #take a number as input
move $t3,$v0

li $v0,5
syscall      #take the next number
move $t2,$v0

div $t0,$t3, $t2 #divide

li $v0,4
la $a0,MSG1 #display the next text
syscall

li $v0,1
move $a0,$t0
syscall  #display the final result
   