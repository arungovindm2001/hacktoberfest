.data
.text

main:
li $a1, 3 #load value 3 into the $2
addi $a1,6 #addi command
li $v0,1 #special character to execute the command
syscall  #print