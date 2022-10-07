.data
 msg1: .asciiz "adding 3 number"

 .text 

 main:
 la $v0,5
 syscall
 move $t1,$v0
   li $t2,4
   li $t3,5
   add  $t4,$t1,$t2
   add $t4,$t4,$t3
   li $v0,4
   la $a0,msg1
   syscall
   syscall
    li $v0,1
    move $a0,$t4
    syscall
    jr $ra