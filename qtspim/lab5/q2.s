      .data
MSG1: .asciiz "result when x,y,z,w = 20,30,40,50 is: "
      .text
main:
      li $v0,5
      li $s1,20
      li $s2,30
      li $s3,40
      li $s4,50
      add $t0,$s1,$s2
      add $t0,$t0,$s3
      sub $t0,$t0,$s4
      li $v0,4
      la $a0,MSG1
      syscall
      li $v0,1
      move $a0,$t0
      syscall
      li $v0,10
      syscall
     