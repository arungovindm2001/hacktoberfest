# Program to add two numbers.

     .data 
MSG1: .asciiz " The numbers 35 and 10 are added together : " 
      .text 

main: 
 li $t1,10  #load 10 to $t1
 li $t2,35  # load 35 to $t2
 add $t1,$t1,$t2  #$t1=$t1+$t2
 li $v0,4      #special register v0 to print anything,4 indicate string
 la $a0,MSG1   # load value of MSG1 to a0
 syscall       # print to console
 li $v0,1      #special register v0 to print anything,1 indicate integer
 move $a0,$t1  #move value from $t1 to $a0
 syscall       #print
 jr $ra        #return value