# Title: Lab 2.4 - Compare two registers
# Author: Tristan Jadman
# Date: September 28, 2025
# Description:
# This program reads two integers from the user.
# If they are equal, it prints "equal". Otherwise, it prints "not equal".

# Input: Two integer value
# Output: equal or not equal based on the two integer

################### Data segment #####################

.data
prompt1:	.asciiz "Enter first integer: "
prompt2:	.asciiz	"Enter second integer: "
equal:		.asciiz "Equal\n"
not_equal:	.asciiz "Not Equal\n"

 . . .

################### Code segment #####################

.text

.globl main

main:				# main function entry
	#first
	li	$v0,	4
	la	$a0,	prompt1
	syscall
	
	li	$v0,	5
	syscall
	move	$t0,	$v0

	#second
	li	$v0,	4
	la	$a0,	prompt2
	syscall
	
	li	$v0,	5
	syscall
	move	$t1,	$v0
	
	#compare
	beq	$t0,	$t1, print_equal
	
	#if not equal
	li	$v0,	4
	la	$a0,	not_equal
	syscall
	j	end_program
	
print_equal:
	#if equal
	li	$v0,	4
	la	$a0,	equal
	syscall
 . . .

end_program:
	li $v0, 10 
	syscall				# system call to exit program