# Title: Lab 2.2 - Hello Name Program
# Author: Tristan Jadman
# Date: September 28, 2025
# Description:
# This program asks the user to enter their name, then prints "Hello "
# followed by the entered name.

# Input:  A string (name) from the user.
# Output: Prints "Hello <name>"

################### Data segment #####################

.data
str1:	.asciiz "Enter your name: "
str2:	.asciiz	"Hello "
name:	.space 32	#reserve 32 bytes for name input
 . . .

################### Code segment #####################

.text

.globl main

main:				# main function entry
	#prompt user
	li	$v0,	4
	la	$a0,	str1
	syscall
	
	#read string (syscall 8)
	li	$v0,	8
	la	$a0,	name
	li	$a1,	32
	syscall
	
	#print "Hello "
	li	$v0,	4
	la	$a0,	str2
	syscall
	
	#print name
	li	$v0,	4
	la	$a0,	name
	syscall

 . . .

li $v0, 10 

syscall				# system call to exit program