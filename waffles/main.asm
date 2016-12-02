section .data
	msg: db 'Do you like waffles?', 10
	len: equ $-msg
	msg2: db 'yes'
	len2: equ $-msg2

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

	mov eax, inp_buff
	mov ebx, msg2
	mov ecx, len2
	cmp eax, ebx
	je trueloop
	int 80h

end:
	;Closes the program
	mov ebx, 0
	mov eax, 1
	int 80h

trueloop:
	mov eax, 1
	mov ebx, 4
	mov ecx, msg
	mov edx, len
	int 80h
	jmp end
	int 80h
