#comments are for note-taking :>>	

#typical program flow: load data -> request syscall -> execute -> exit
	
	.data 	#tells MARS that what follows is data, not code
hello:	.asciiz "Hello, world!\n"
	.text	#tells MARS that what follows is code or instructions
	.global main

main: 
	la $a0, hello	#load address of string to $a0
	li $v0, 4	#asks MARS to perform system call 4 which means "PRINT STRING"
	syscall		#system call is like execution
	li $v0, 10	#asks MARS to perform system call 10 which means "exit"
	syscall
