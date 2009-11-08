;; Make: fasm trigolib.asm trigolib.so
format ELF
section '.data' readable
	ans dd ?
	sen dd ?
	x dd ?
	acum dd ?
	x2 dd ?
	factor dd ?
	sign dd ?
	n dd ?
section '.text' executable
public seno
seno:	

public coseno
coseno:
public tangente
tangente:

trigo:
	push EBP
	mov EBP,ESP

	;; Primer parametro flotante 32 bits
	mov x, [EBP+12] 	; x : parametro 
	mov sen, [EBP+8] 	; sen : parametro
	;;
	mov ans, x 		; ans = x
	test sen, 1		; if (sen == false)
	jz fi			;
	mov ans, 1		;ans = 1
fi:	
	mov acum, ans 		; acum = ans
	;; x2 = x*x
	mov EAX, x
	fmul x
	mov x2, EAX
	;; end x2
	mov factor, 1		;factor = 1
	mov sign, 1		;sign = 1
	mov n, 1		;n = 1
loop:
	neg sign 		;cambio de signo
	;; 4*n*n
	mov EAX,n
	push EAX
	fmul n
	fmul 4
	;; end 4*n*n
	;; 2*n
	mov EBX, n
	push EBX
	fmul 2
	;; end 2*n
	test sen, 1		;if(sen == false)
	jz else
	;; coseno
	fsub EAX,EBX
	jmp end			
	;;
else:
	fadd EAX,EBX
end:
	pop EBX
	;; hasta aqui tengo el valor(EAX) que se
	;; va multiplicar factor
	;;  todo  acum *= x2;      ans += sign*acum/factor;
	;; 

	inc n			;++n
	cmp n,8 		; n ? 8
	jne loop		;goto loop
