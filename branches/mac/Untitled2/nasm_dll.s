        SECTION .data		; Data section, initialized variables
aux2:	dq 	0.0
angle :  dd     37
factor_conversion:	dd	0.017453292519943295
        SECTION .text                   ; Code section.
global _coseno
_coseno:
	push   ebp
	mov    ebp,esp
	sub    esp,0x24
	fild   DWORD  [ebp+0x8]
	fstp   DWORD  [ebp-0x4]
	mov    eax,0x0
	mov    DWORD  [ebp-0x8],eax
	mov    eax,0x3f800000
	mov    DWORD  [ebp-0xc],eax
	mov    eax,0x3f800000
	mov    DWORD  [ebp-0x10],eax
	mov    DWORD  [ebp-0x14],0xffffffff
	fld    DWORD  [ebp-0x4]
	fmul   DWORD  [factor_conversion]
	fstp   DWORD  [ebp-0x4]
	mov    DWORD  [ebp-0x18],0x1
forcoseno:	
	neg    DWORD  [ebp-0x14]
	fild   DWORD  [ebp-0x14]
	fmul   DWORD  [ebp-0x10]
	fdiv   DWORD  [ebp-0xc]
	fld    DWORD  [ebp-0x8]
	faddp  ST1
	fstp   DWORD  [ebp-0x8]
	fld    DWORD  [ebp-0x4]
	fmul   DWORD  [ebp-0x4]
	fld    DWORD  [ebp-0x10]
	fmulp  ST1
	fstp   DWORD  [ebp-0x10]
	mov    eax,DWORD  [ebp-0x18]
	add    eax,eax
	lea    edx,[eax-0x1]
	mov    eax,DWORD  [ebp-0x18]
	add    eax,eax
	imul   eax,edx
	push   eax
	fild   DWORD  [esp]
	lea    esp,[esp+0x4]
	fld    DWORD  [ebp-0xc]
	fmulp  ST1
	fstp   DWORD  [ebp-0xc]
	add    DWORD  [ebp-0x18],0x1
	cmp    DWORD  [ebp-0x18],0x7
	jle    forcoseno
	mov    eax,DWORD  [ebp-0x8]
	mov    DWORD  [ebp-0x24],eax
	fld    DWORD  [ebp-0x24]
	leave

	ret    

global _seno
_seno:
	push   ebp
	mov    ebp,esp
	sub    esp,0x24
	fild   DWORD  [ebp+0x8]
	fstp   DWORD  [ebp-0x4]
	mov    eax,0x0
	mov    DWORD  [ebp-0x8],eax
	mov    eax,0x3f800000
	mov    DWORD  [ebp-0xc],eax
	fld    DWORD  [ebp-0x4]
	fmul   DWORD [factor_conversion]
	fstp   DWORD  [ebp-0x4]
	mov    eax,DWORD  [ebp-0x4]
	mov    DWORD  [ebp-0x10],eax
	mov    DWORD  [ebp-0x14],0xffffffff
	mov    DWORD  [ebp-0x18],0x1
forseno:
	neg    DWORD  [ebp-0x14]
	fild   DWORD  [ebp-0x14]
	fmul   DWORD  [ebp-0x10]
	fdiv   DWORD  [ebp-0xc]
	fld    DWORD  [ebp-0x8]
	faddp  ST1
	fstp   DWORD  [ebp-0x8]
	fld    DWORD  [ebp-0x4]
	fmul   DWORD  [ebp-0x4]
	fld    DWORD  [ebp-0x10]
	fmulp  ST1
	fstp   DWORD  [ebp-0x10]
	mov    eax,DWORD  [ebp-0x18]
	lea    edx,[eax+eax*1]
	mov    eax,DWORD  [ebp-0x18]
	add    eax,eax
	add    eax,0x1
	imul   eax,edx
	push   eax
	fild   DWORD  [esp]
	lea    esp,[esp+0x4]
	fld    DWORD  [ebp-0xc]
	fmulp  ST1
	fstp   DWORD  [ebp-0xc]
	add    DWORD  [ebp-0x18],0x1
	cmp    DWORD  [ebp-0x18],0x7
	jle    forseno
	mov    eax,DWORD  [ebp-0x8]
	mov    DWORD  [ebp-0x24],eax
	fld    DWORD  [ebp-0x24]
	leave
	ret    

global _tangente
_tangente:
	push   ebp
	mov    ebp,esp
	sub    esp,0x18
	mov    eax,DWORD [ebp+0x8]
	mov    DWORD [esp],eax
	call   _seno
	fstp   DWORD [ebp-0x4]
	mov    eax,DWORD [ebp+0x8]
	mov    DWORD [esp],eax
	call   _coseno
	fld    DWORD [ebp-0x4]
	fdivrp ST1
	fstp   DWORD [ebp-0x4]
	mov    eax,DWORD [ebp-0x4]
	mov    DWORD [ebp-0x14],eax
	fld    DWORD [ebp-0x14]
	leave  

	ret  