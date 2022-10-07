
     .data   #.data section is required so as to initialize ordinary data, in this case it is a message
MSG1:.asciiz "Substracting 19 from 10:"  # MSG1 is a label then it is followed by data type .asciiz, followed by message to be printed on to the console window
     .text

main:
  li $t1,10  #used to load value into $t1
  li $t2,19 #used to load value into $t2
  sub $t1,$t1,$t2  #$t1=$t1-$t2
  li $v0,4 #special register v0 and 4 to print string
  la $a0,MSG1 #load string to register
  syscall  #print 
  li $v0,1 # special register to print integer
  move $a0,$t1 #move value from $t1 to $a0
  syscall #print
  jr $ra  #return value
  
  //add 2 numbers
add:
     li $t1,10  #used to load value into $t1
     li $t2,19 #used to load value into $t2
     add $t1,$t1,$t2  #$t1=$t1+$t2
     li $v0,4 #special register v0 and 4 to print string
     la $a0,MSG1 #load string to register
     syscall  #print 
     li $v0,1 # special register to print integer
     move $a0,$t1 #move value from $t1 to $a0
     syscall #print
     jr $ra  #return value