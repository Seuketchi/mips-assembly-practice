# Title: Lab 2.1 - Double an Integer and User Input
# Author: Tristan Jadman
# Date: September 28, 2025
# Description:
# This program asks the user for an integer, doubles it using 'add',
# prints the result

# Input:  An integer.
# Output: The doubled value of that integer.

################### Data segment #####################

.data
str1:   .asciiz "Enter an integer: "
str2:   .asciiz "The doubled value is: "

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
	move	$t0,	$v0
	
	#double the number
	add	$t1, $t0, $t0
	
	#print result message
	li	$v0,	4
	la	$a0,	str2
	syscall
	
	#print doubled value
	li	$v0,	1
	move	$a0,	$t1
	syscall
	

 . . .

li $v0, 10 

syscall				# system call to exit program
