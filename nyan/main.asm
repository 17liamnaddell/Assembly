section .data
	msg: db 'Nyan '
	len: equ $-msg
section .text
	global _start

_start:	      
	jmp loop
loop:
	mov eax,4
	mov ebx,1
	mov ecx, msg
	mov edx, len
	int 80h
	jmp loop
