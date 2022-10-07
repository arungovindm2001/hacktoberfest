        .data
MSG1:   .asciiz "Enter value of x: "
res1:   .asciiz "result for question a: "
res2:   .asciiz "\nresult for question b: "
res3:   .asciiz "\nresult for question c: "
res4:   .asciiz "\nresult for question d: "
        .text

main:
li $t2,0xabcd1234
li $t3,16
sll $t1,$t2,8
li $v0,4
la $a0,res1
syscall
li $v0,1
move $a0,$t1
syscall
srl $t1,$t2,4
li $v0 ,4
la $a0,res2
syscall
li $v0,1
move $a0,$t1
syscall
sra $t1,$t2,4
li $v0,4
la $a0,res3
syscall
li $v0,1
move $a0,$t1
syscall
srlv $t1,$t2,$t3
li $v0,4
la $a0,res4
syscall
li $v0,1
move $a0,$t1
syscall
li $v0,10
syscall
