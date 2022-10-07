.data
prompt: .asciiz "Enter a value for x: " 
prompt1: .asciiz "Enter a value for y: "
prompt2: .asciiz "Enter a value for z: " 
result: .asciiz "The result is: "
.text
.globl main
main:
# Get input value, x 
addi $v0, $zero, 4 
la $a0, prompt 
syscall
addi $v0, $zero, 5 
syscall
move $s0, $v0
# Get input value, y 
addi $v0, $zero, 4 
la $a0, prompt1 
syscall
addi $v0, $zero, 5 
syscall
move $s7, $v0
# Get input value, z 
addi $v0, $zero, 4 
la $a0, prompt2 
syscall
addi $v0, $zero, 5 
syscall
move $s6, $v0
# Calculate the result of 5x+3y+z and store it in $s1.
mul $t0, $s0, 5 
mul $t1, $s7, 3 
add $t0, $t0, $t1 
add $s1, $t0, $s6 
div $s1, $s1, 2 
mul $s1, $s1, 3 
# Print output
addi $v0, $zero, 4 # Print result string 
la $a0, result
syscall
addi $v0, $zero, 1 # Print result 
move $a0, $s1
syscall
#Exit program 
addi $v0, $zero, 10 
syscall