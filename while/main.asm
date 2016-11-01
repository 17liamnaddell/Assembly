section .data
	msg: db 'Math is cool', 10
	len: equ $-msg
	nmb: equ 10
section .bss
section .text
	global _start

_start:
	jmp doprint

doprint:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 80h
	
	
	mov eax, nmb
	mov ebx, '1'
	add eax, ebx
	cmp eax, 10d
	jge doprint
	int 80h

end:
	mov eax, 1
	mov ebx, 0
	int 80h
