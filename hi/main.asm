section .data
	msg: db 'Wut', 10
	len: equ $-msg

section .bss
	inp_buff: resb 5

section .text
	global _start

_start:	      
	;Prints wut
	mov edx, len
	mov ecx, msg
	mov ebx,1
	mov eax,4
	int 80h
	
	;Reads input
	mov eax, 3
	mov ebx, 0
	mov ecx, inp_buff
	mov edx, 5
	int 80h
	
	;Writes input
	mov edx, 5
	mov ecx, inp_buff
	mov ebx, 0
	mov eax, 4
	int 80h
	
	;Closes the program
	mov ebx, 0
	mov eax, 1
	int 80h
