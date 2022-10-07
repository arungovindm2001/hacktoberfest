.data
.text

main:
 li $t1,1 #load value of 1 into the $t1
li $t2,0  #load value 1 into the $2
or $t0,$t1,$t2 #store the value of nor  in $t0
li $v0,10 #special character to execute the command
syscall  #print