#GAS
	.intel_syntax #para usar la sintaxis de la clase
	.data
	.text #inicia codigo
.globl _start
_start:	
trigo:	push	ebp
	mov	ebp, esp
	mov	eax, [ebp+8]	// parametro seno
	mov	sen, eax	//se debe cargar en un registro
	mov	eax, [ebp+12]	// parametro x
	mov	x, eax
	mov	ans, eax	// iniciar ans con x
	cmp	DWORD PTR [sen], 1// if sen==false
	je	fi
	mov	DWORD PTR [ans], 1		//-TODO es feo!
fi:
	mov	eax, ans
	mov	acum, eax
	//x2=x*x
	fld	DWORD PTR [x]	//cargar x en la pila de operaciones flotantes
	fmul	DWORD PTR [x]
	fstp	DWORD PTR [x2]
	//fin x2
	mov	eax, 1
	mov	factor, eax
	mov	sign, eax
	mov	n, eax
loop:
	mov	eax, sign
	neg	eax
	mov	DWORD PTR [sign], eax	//-TODO MUEVE! pero feo!!
	//4*n*n
	fld	DWORD PTR [n]	//manejo de pila coprocesador
	fmul	DWORD PTR [n]
	fmul	DWORD PTR [4]
	fstp	DWORD PTR [eax]
	// fin 4*n*n
	//2n
	fld	DWORD PTR [n]
	fmul	DWORD PTR [2]
	fstp	DWORD PTR [ebx]
	//fin 2n
	cmp	DWORD PTR [sen], 1
	jz	else
	//coseno
	fld	DWORD PTR [eax]
	fsub	DWORD PTR [ebx]
	fstp	DWORD PTR [eax]
	jmp	end
else:
	fld	DWORD PTR [eax]
	fadd	DWORD PTR [ebx]
	fstp	DWORD PTR [eax]
end:
	inc	DWORD PTR [n]
	cmp	DWORD PTR [n], 8
//	jne	loop		//-TODO no sirve!!
	ret


#variables globales
.comm ans,4	#respuesta
.comm sen,4	#flag de seno (1) o coseno (0)
.comm x,4	#angulo en rads
.comm acum,4	#acumulador
.comm x2,4	#variable para usar la exponenciacion
.comm factor,4	#variable para usar el factorial
.comm sign,4	#indicador de signo
.comm n,4	#numero de la iteracion
