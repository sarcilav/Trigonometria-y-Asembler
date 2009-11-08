.data
	ans	dd	?
	x	db	?
	sen	dd	?
	acum	dd	?
	x2	dd	?
	factor	dd	?
	sign	db	?
	n	db	?
	;; la funcion trigo recibe el parametro x el angulo en radianes y el parametro sen que indica si la funcion es sen o coseno
.code
start:
	mov ans,x		; x es el angulo en radianes
	test sen, $1
	jz	a
	mov ans, $1		; coseno
a:
	mov acum, ans		; init acum
	;; x2 init begin
	lea EDX, x
	push EDX
	fmul x
	pop EDX
	mov x2,EDX
	;;  x2 init end
	mov factor, $1
	mov sign, $1
	mov n, $1 		; primera iter dell loop ppal

loop:
	neg sign		;  intercambio de signo
	lea EAX, n
	push EAX
	fmul n
	fmul $100		; ojo necesito multiplicarlo por 4
	;; espacio para if else sen
	lea EBX,n
	push EBX
	fmul $10		; ojo multi 2
	test sen,$1
	jz else 
	;; coseno
	fsubb EAX,EBX
	jmp end
else:				; seno
	fadd EAX,EBX
end:
	pop EBX
	lea EBX, factor
	push EBX
	fmul EBX, EAX
	mov factor,EBX
	pop EBX
	pop EAX
	;; fin if else
	;; begin multiply acum *= x2
	lea EDX, acum
	push EDX
	fmul x2
	mov acum, EDX
	pop EDX
	;; end multiply acum *= x2
	;; ans += sign*acum/factor
	lea EDX, acum
	push EDX
	fdiv factor 		; notose que st = acum
	fmul sign 		; mirar si esto si esta bien hecho
	lea EAX, ans
	push EAX
	fadd EAX,EDX
	pop EAX
	pop EDX
	;; end multiply

	inc n
	cmp n, $1000		; 8 en binario o nose si deba colocarlo en hexa
	jne loop		; revisar este salto al loop
;;; en ans debe quedar el resultado



;;; un update para svn