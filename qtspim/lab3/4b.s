.data
prompt: .asciiz "Enter a value for x: " 
prompt1: .asciiz "Enter a value for y: " 
prompt2: .asciiz "Enter a value for z: " 
result: .asciiz "The result is: "
.text
.globl main 
main:
addi $v0, $zero, 4 
la $a0, prompt 
syscall
addi $v0, $zero, 5 
syscall
move $s0, $v0
addi $v0, $zero, 4 
la $a0, prompt1 
syscall
addi $v0, $zero, 5 
syscall
move $s7, $v0 
addi $v0, $zero, 4 
la $a0, prompt2 
syscall
addi $v0, $zero, 5 
syscall
move $s6, $v0 
mul $t0, $s0, 5 
mul $t1, $s7, 3 
add $t0, $t0, $t1 
add $s1, $t0, $s6 
addi $v0, $zero, 4 
la $a0, result 
syscall
addi $v0, $zero, 1 
move $a0, $s1 
syscall