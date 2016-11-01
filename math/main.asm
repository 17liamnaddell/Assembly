section .data
	msg: db 'Math is cool', 10
	len: equ $-msg
section .bss
section .text
	global _start

_start:
	mov ax, 0
	mov bx, 0
	cmp ax, bx
	je doprint

doprint:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 80h
	
	jmp end
	int 80h

end:
	mov eax, 1
	mov ebx, 0
	int 80h
