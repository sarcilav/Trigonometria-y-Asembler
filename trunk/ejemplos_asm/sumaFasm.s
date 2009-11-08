format ELF

section '.text' executable

 public main
 extrn printf

 main:
	mov eax,7
	mov ebx,3
	add eax,ebx
	ccall	printf, msg,eax
	ret

section '.data' writeable

msg db "Suma -> %d.",0xA,0
