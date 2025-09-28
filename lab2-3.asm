# Title: Lab 2.3 - Compute s = (a + b) - (c + 101)
# Author: Tristan Jadman
# Date: September 28, 2025
# Description:
# This program reads three integers (a, b, c) from the user,
# then computes s = (a + b) - (c + 101), and prints the result.

# Input:  Integer value of a, b , and c.
# Output: Computation of s = (a + b) - (c + 101)"

################### Data segment #####################

.data
promptA:	.asciiz "Enter value for a: "
promptB:	.asciiz "Enter value for b: "
promptC:	.asciiz "Enter value for c: "
result:		.asciiz "Result (s): "
newline:	.asciiz "\n"
 . . .

################### Code segment #####################

.text

.globl main

main:				# main function entry
	#a
	li	$v0,	4
	la	$a0,	promptA
	syscall
	
	li	$v0,	5
	syscall
	move	$t0,	$v0
	
	#b
	li	$v0,	4
	la	$a0,	promptB
	syscall
	
	li	$v0,	5
	syscall
	move	$t1,	$v0
	
	#c
	li	$v0,	4
	la	$a0,	promptC
	syscall
	
	li	$v0,	5
	syscall
	move	$t2,	$v0
	
	# s= (a + b) - (c + 101) 
	add	$t3, $t0, $t1	#t3 = a + b
	addi	$t4, $t2, 101	#t4 = c + 101
	sub	$t5, $t3, $t4	#t5 = t3 + t4
	
	#print result message
	li	$v0,	4
	la	$a0, result
	syscall
	
	li	$v0,	1
	move	$a0,	$t5
	syscall
	
	li	$v0,	4
	la	$a0,	newline
	syscall

 . . .

li $v0, 10 

syscall				# system call to exit program