section .data
	msg: db 'Math is uncool', 10
	len: equ $-msg
	msg2: db 'Math is cool', 10
	len2: equ $-msg2

section .text
	global _start

_start:	      
	;Prints wut
	mov ax, 1d
	mov bx, 1d
	cmp ax, bx 
	jne true
	je false
	int 80h

end:
	;Closes the program
	mov eax, 1
	mov ebx, 0
	int 80h

true:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 80h
	jmp end
	int 80h

false:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, len2
	int 80h
	jmp end
	int 80h
