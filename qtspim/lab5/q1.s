      .data
MSG1: .asciiz "Enter an integer: "
      .text
main:
      li $v0, 4
      la $a0,MSG1
      syscall
      li $v0,5
      syscall
      move $t0,$v0
      sll $t0,$t0,2
      li $v0,1
      move $a0,$t0
      syscall
      li $v0,10
      syscall