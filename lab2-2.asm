# Title: Lab 2.1 - Repeat Main
# Author: Tristan Jadman
# Date: September 28, 2025
# Description:
# prints the integer entered, and asks if the user wants to repeat.
# If the user enters 'y', the program repeats and moves to the next line.

# Input: a character ('y' or 'n').
# Output: repeat.

################### Data segment #####################

.data
str1:   .asciiz "Enter an integer: "
str2:   .asciiz "You entered "
newline:  .asciiz "\n"
repeatQ:  .asciiz "\nRepeat [y/n]? "
 . . .

################### Code segment #####################
.globl main

.text

main:				# main function entry
	#prompt user for input
	li	$v0,	4
	la	$a0,	str1
	syscall
	
	#read integer
	li	$v0,	5
	syscall
	move	$s0,	$v0
	
	
	#print result message
	li	$v0,	4
	la	$a0,	str2
	syscall
	
	#print doubled value
	li	$v0,	1
	move	$a0,	$s0
	syscall
	
	#print newline
	li	$v0,	4
	la	$a0,	newline
	syscall
	
	#ask to repeat
	li	$v0,	4
	la	$a0,	repeatQ
	syscall
	
	li	$v0,	12
	syscall
	
	li	$t2,	'y'
	beq	$v0, $t2, do_repeat
	
 . . .

li $v0, 10 

syscall				# system call to exit program

do_repeat:
	li	$v0,	4
	la	$a0,	newline
	syscall
	j main
