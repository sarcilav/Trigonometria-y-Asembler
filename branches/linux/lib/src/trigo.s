	;; TODOs
	;; Solo tomar angulos entre 0 - 90 grados
	
        SECTION .data		; Data section, initialized variables

factor_conversion:	dd	0.017453292519943295
        SECTION .text                   ; Code section.
global coseno:
coseno:	
	push   ebp
	mov    ebp,esp 		
	sub    esp,0x24		;Reservando memoria para las variables locales y la direccion de retorno
	fild   DWORD  [ebp+0x8]	;Mete el parametro angulo entero a la fpu 
	fstp   DWORD  [ebp-0x4] ;Saca el parametro entero como un flotante en la variale ebp-0x4 : x flotante
	mov    eax,0x0
	mov    DWORD  [ebp-0x8],eax ; Inicializa el acumulador de la serie de taylor en 0, ebp-0x8: ans, ans = 0.0
	mov    eax,0x3f800000	    ; 0x3f800000: 1.0
	mov    DWORD  [ebp-0xc],eax ;  factorial = 1.0 ebp-0xc:factorial
	mov    eax,0x3f800000	    ;0x3f800000: 1.0
	mov    DWORD  [ebp-0x10],eax ;acum_x2n = 1.9 ebp-0x10:acum_x2n
	mov    DWORD  [ebp-0x14],0xffffffff ; sign = 1 ebp-0x14:sign
	fld    DWORD  [ebp-0x4]		    ; Mete x a la fpu
	fmul   DWORD  [factor_conversion]   ; pasa st(0) que es x a radianes
	fstp   DWORD  [ebp-0x4]		    ; x=st(0), es decir x queda en radianes
	mov    DWORD  [ebp-0x18],0x1	    ; ebp-0x18 :i i=1
forcoseno:	
	neg    DWORD  [ebp-0x14] ;sign cambiar de signo 
	fild   DWORD  [ebp-0x14] ;Metemos el sign a la fpu
	fmul   DWORD  [ebp-0x10] ;st(0) =sign*acum_x2n
	fdiv   DWORD  [ebp-0xc]	 ;st(0) /= factorial
	fld    DWORD  [ebp-0x8]  ; cargamos el ans en st(0) y el n-termino pasa a st(1)
	faddp			 ;sign*acum_x2n/factorial + ans lo guarda en st(1) ,saca st(0) , es decir lo guarda en el n-termino
	fstp   DWORD  [ebp-0x8]	 ;saca st(0) y lo guarda en ans
	fld    DWORD  [ebp-0x4]	 ; Mete x a la fpu
	fmul   DWORD  [ebp-0x4]	 ; Obtiene x^2
	fld    DWORD  [ebp-0x10] ; Carga acum_x2n
	fmulp			 ;Multiplica x^2 por acum_x2n, saca el acum_x2n, y guarda en el st(0)
	fstp   DWORD  [ebp-0x10] ; Saca st(0) que es el acum_x2n y lo guarda en acum_x2n
	mov    eax,DWORD  [ebp-0x18] ; Cargamos i 
	add    eax,eax		     ;2*i
	lea    edx,[eax-0x1]	     ; lo que hay en eax - 1 se almacene en edx
	mov    eax,DWORD  [ebp-0x18] ; Cargamos i
	add    eax,eax		     ;2*i
	imul   eax,edx		     ;eax = (2*i)(2*i-1), eax = 2i, edx = 2i-1
	push   eax		     ;
	fild   DWORD  [esp]	     ;carga lo que habia en eax, al fpu
	lea    esp,[esp+0x4]	     ;vuelvo al esp viejo, pre push eax
	fld    DWORD  [ebp-0xc]	     ;Cargo factorial
	fmulp			     ;factorial *= (2i)*(2i-1)
	fstp   DWORD  [ebp-0xc]	     ;actualizo factorial
	add    DWORD  [ebp-0x18],0x1 ;incremento el i
	cmp    DWORD  [ebp-0x18],0xa ;comparo i <=10
	jle    forcoseno	     ;permanezco dentro del loop mientras se cumpla la condicion
	mov    eax,DWORD  [ebp-0x8]  ;eax = ans
	mov    DWORD  [ebp-0x24],eax ;dir retorno = eax
	fld    DWORD  [ebp-0x24]     ;st(0) -> ans para retorno
	leave			     ;hacen esp = ebp, y luego popea ebp
	ret    

global seno:
seno:
	push   ebp
	mov    ebp,esp
	sub    esp,0x24		;Resevando espacio en la pila para las variables locales y la dirección de retorno
	fild   DWORD  [ebp+0x8] ; Carga el parametro x dentro de la fpu para pasarlo a punto flotante
	fstp   DWORD  [ebp-0x4]	; ebp-0x4:x en float
	mov    eax,0x0		
	mov    DWORD  [ebp-0x8],eax ;ebp-0x8:ans = 0
	mov    eax,0x3f800000	    ;1.0
	mov    DWORD  [ebp-0xc],eax ;ebp-0xc:factorial = 1.0
	fld    DWORD  [ebp-0x4]	    ;x push fpu
	fmul   DWORD [factor_conversion] ; st(0)*= factor conversion , x en radianes
	fstp   DWORD  [ebp-0x4]		 ;x=st(0)
	mov    eax,DWORD  [ebp-0x4]	 ;eax = x
	mov    DWORD  [ebp-0x10],eax	 ;ebp-0x10: acum_x2n = x
	mov    DWORD  [ebp-0x14],0xffffffff ; ebp-0x14:sign = -1
	mov    DWORD  [ebp-0x18],0x1	    ;ebp-0x18:i=1
forseno:
	neg    DWORD  [ebp-0x14] ;intercambio de sign
	fild   DWORD  [ebp-0x14] ;Cargando el signo en la fpu
	fmul   DWORD  [ebp-0x10] ;signo*=acum_x2n (st(0))
	fdiv   DWORD  [ebp-0xc]	 ;signo/=factorial(st(0))
	fld    DWORD  [ebp-0x8]	 ;Cargando al fpu el ans
	faddp			 ;signo+=ans (st(1), pop st(0))
	fstp   DWORD  [ebp-0x8]	 ;ans = st(0),ans+signo*acum_x2n/factorial
	fld    DWORD  [ebp-0x4]	 ;Cargando x a fpu
	fmul   DWORD  [ebp-0x4]	 ;x*=x (st(0)*=x)
	fld    DWORD  [ebp-0x10] ;cargando acum_x2n a fpu st(0) = acum_x2n
	fmulp			 ;x^2*=acum_x2n, (st(1)*=st(0), pop st(0)
	fstp   DWORD  [ebp-0x10] ;acum_x2n=st(0)
	mov    eax,DWORD  [ebp-0x18] ;eax = i
	lea    edx,[eax+eax*1]	     ;edx = 2i
	mov    eax,DWORD  [ebp-0x18] ;eax=i
	add    eax,eax		     ;eax = 2i
	add    eax,0x1		     ;eax=2i+1
	imul   eax,edx		     ;(2i)(2i+1)
	push   eax		     ;push (2i)(2i+1)
	fild   DWORD  [esp]	     ;Esta cargando el tope de la pila en el fpu es decir (2i)(2i+1)
	lea    esp,[esp+0x4]	     ;Retorna el esp a el esp pre push eax
	fld    DWORD  [ebp-0xc]	     ;Carga factorial en el fpu
	fmulp			     ;(2i)(2i+1)*=factorial,(st(1)*=st(0),pop st(0)
	fstp   DWORD  [ebp-0xc]	     ;actualiza el nuevo factorial
	add    DWORD  [ebp-0x18],0x1 ;i++
	cmp    DWORD  [ebp-0x18],0xa ;compara i<=10
	jle    forseno
	mov    eax,DWORD  [ebp-0x8] ;eax = ans
	mov    DWORD  [ebp-0x24],eax ; dir retorno = eax = ans
	fld    DWORD  [ebp-0x24]     ; push al fpu dir retorno -> eax -> ans
	leave			     ; mov esp = ebp, pop ebp, limpia el frame stack
	ret    

global tangente:
tangente:	
	push   ebp
	mov    ebp,esp
	sub    esp,0x18		;Reservando memoria para las variables locales y direccion de retorno
	mov    eax,DWORD [ebp+0x8] ;saca el parametro angulo a eax
	mov    DWORD [esp],eax	   ;Mete en el tope del stack el parametro
	call   seno		   ;llama seno
	fstp   DWORD [ebp-0x4]	   ;saca el retorno de seno 
	mov    eax,DWORD [ebp+0x8] ;saca el parametro angulo a eax
	mov    DWORD [esp],eax	   ;Mete en el tope del stack el parametro
	call   coseno		   ;llama coseno
	fld    DWORD [ebp-0x4]	   ;Mete el resultado de seno al fpu
	fdivrp			   ;seno/cos -> st(0)/st(1) y popea st(0) guardando el dato en st(1)
	fstp   DWORD [ebp-0x4]	   ;Guarda el resultado de la division
	mov    eax,DWORD [ebp-0x4] ;Gestiona de aqui hasta leave la direccion de retorno y su paso por el fpu al receptor
	mov    DWORD [ebp-0x14],eax
	fld    DWORD [ebp-0x14]
	leave  			;esp = ebp - > pop ebp
	ret  