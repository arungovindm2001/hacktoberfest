        .data
MSG1:   .asciiz "\nEnter the value: "
result: .asciiz "result"
        .text
main:
        li $t3,8
        li $v0,4
        la $a0,MSG1
        syscall
        li $v0,5
        syscall
        move $t1,$v0
        bne $t1,0,binary
        li $v0,10
        syscall
binary: andi $t2,$t1,1
        srl $t1,$t1,1
        li $v0,1
        move $a0,$t2
        syscall
        sub $t3,$t3,1
        beq $t3,0,read
        bne $t3,0,binary