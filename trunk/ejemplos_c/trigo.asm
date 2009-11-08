
fun_arcila:     file format elf32-i386


Disassembly of section .init:

0804836c <_init>:
 804836c:	push   ebp
 804836d:	mov    ebp,esp
 804836f:	push   ebx
 8048370:	sub    esp,0x4
 8048373:	call   8048378 <_init+0xc>
 8048378:	pop    ebx
 8048379:	add    ebx,0x1c7c
 804837f:	mov    edx,DWORD PTR [ebx-0x4]
 8048385:	test   edx,edx
 8048387:	je     804838e <_init+0x22>
 8048389:	call   80483ac <__gmon_start__@plt>
 804838e:	call   8048480 <frame_dummy>
 8048393:	call   8048660 <__do_global_ctors_aux>
 8048398:	pop    eax
 8048399:	pop    ebx
 804839a:	leave  
 804839b:	ret    

Disassembly of section .plt:

0804839c <__gmon_start__@plt-0x10>:
 804839c:	push   DWORD PTR ds:0x8049ff8
 80483a2:	jmp    DWORD PTR ds:0x8049ffc
 80483a8:	add    BYTE PTR [eax],al
	...

080483ac <__gmon_start__@plt>:
 80483ac:	jmp    DWORD PTR ds:0x804a000
 80483b2:	push   0x0
 80483b7:	jmp    804839c <_init+0x30>

080483bc <__libc_start_main@plt>:
 80483bc:	jmp    DWORD PTR ds:0x804a004
 80483c2:	push   0x8
 80483c7:	jmp    804839c <_init+0x30>

080483cc <printf@plt>:
 80483cc:	jmp    DWORD PTR ds:0x804a008
 80483d2:	push   0x10
 80483d7:	jmp    804839c <_init+0x30>

080483dc <__gxx_personality_v0@plt>:
 80483dc:	jmp    DWORD PTR ds:0x804a00c
 80483e2:	push   0x18
 80483e7:	jmp    804839c <_init+0x30>

Disassembly of section .text:

080483f0 <_start>:
 80483f0:	xor    ebp,ebp
 80483f2:	pop    esi
 80483f3:	mov    ecx,esp
 80483f5:	and    esp,0xfffffff0
 80483f8:	push   eax
 80483f9:	push   esp
 80483fa:	push   edx
 80483fb:	push   0x80485f0
 8048400:	push   0x8048600
 8048405:	push   ecx
 8048406:	push   esi
 8048407:	push   0x804856c
 804840c:	call   80483bc <__libc_start_main@plt>
 8048411:	hlt    
 8048412:	nop    
 8048413:	nop    
 8048414:	nop    
 8048415:	nop    
 8048416:	nop    
 8048417:	nop    
 8048418:	nop    
 8048419:	nop    
 804841a:	nop    
 804841b:	nop    
 804841c:	nop    
 804841d:	nop    
 804841e:	nop    
 804841f:	nop    

08048420 <__do_global_dtors_aux>:
 8048420:	push   ebp
 8048421:	mov    ebp,esp
 8048423:	push   ebx
 8048424:	sub    esp,0x4
 8048427:	cmp    BYTE PTR ds:0x804a018,0x0
 804842e:	jne    8048470 <__do_global_dtors_aux+0x50>
 8048430:	mov    edx,DWORD PTR ds:0x804a01c
 8048436:	mov    eax,0x8049f00
 804843b:	sub    eax,0x8049efc
 8048440:	sar    eax,0x2
 8048443:	lea    ebx,[eax-0x1]
 8048446:	cmp    edx,ebx
 8048448:	jae    8048469 <__do_global_dtors_aux+0x49>
 804844a:	lea    esi,[esi+0x0]
 8048450:	lea    eax,[edx+0x1]
 8048453:	mov    ds:0x804a01c,eax
 8048458:	call   DWORD PTR [eax*4+0x8049efc]
 804845f:	mov    edx,DWORD PTR ds:0x804a01c
 8048465:	cmp    edx,ebx
 8048467:	jb     8048450 <__do_global_dtors_aux+0x30>
 8048469:	mov    BYTE PTR ds:0x804a018,0x1
 8048470:	add    esp,0x4
 8048473:	pop    ebx
 8048474:	pop    ebp
 8048475:	ret    
 8048476:	lea    esi,[esi+0x0]
 8048479:	lea    edi,[edi+eiz*1+0x0]

08048480 <frame_dummy>:
 8048480:	push   ebp
 8048481:	mov    ebp,esp
 8048483:	sub    esp,0x8
 8048486:	mov    eax,ds:0x8049f04
 804848b:	test   eax,eax
 804848d:	je     80484a1 <frame_dummy+0x21>
 804848f:	mov    eax,0x0
 8048494:	test   eax,eax
 8048496:	je     80484a1 <frame_dummy+0x21>
 8048498:	mov    DWORD PTR [esp],0x8049f04
 804849f:	call   eax
 80484a1:	leave  
 80484a2:	ret    
 80484a3:	nop    

080484a4 <_Z5trigofb>:
 80484a4:	push   ebp
 80484a5:	mov    ebp,esp
 80484a7:	sub    esp,0x28
 80484aa:	mov    eax,DWORD PTR [ebp+0xc]
 80484ad:	mov    BYTE PTR [ebp-0x24],al
 80484b0:	mov    eax,DWORD PTR [ebp+0x8]
 80484b3:	mov    DWORD PTR [ebp-0x4],eax
 80484b6:	movzx  eax,BYTE PTR [ebp-0x24]
 80484ba:	xor    eax,0x1
 80484bd:	test   al,al
 80484bf:	je     80484c9 <_Z5trigofb+0x25>
 80484c1:	mov    eax,0x3f800000
 80484c6:	mov    DWORD PTR [ebp-0x4],eax
 80484c9:	mov    eax,DWORD PTR [ebp-0x4]
 80484cc:	mov    DWORD PTR [ebp-0x8],eax
 80484cf:	fld    DWORD PTR [ebp+0x8]
 80484d2:	fmul   DWORD PTR [ebp+0x8]
 80484d5:	fstp   DWORD PTR [ebp-0xc]
 80484d8:	mov    eax,0x3f800000
 80484dd:	mov    DWORD PTR [ebp-0x10],eax
 80484e0:	mov    DWORD PTR [ebp-0x14],0x1
 80484e7:	mov    DWORD PTR [ebp-0x18],0x1
 80484ee:	jmp    804855b <_Z5trigofb+0xb7>
 80484f0:	neg    DWORD PTR [ebp-0x14]
 80484f3:	cmp    BYTE PTR [ebp-0x24],0x0
 80484f7:	je     804851c <_Z5trigofb+0x78>
 80484f9:	mov    eax,DWORD PTR [ebp-0x18]
 80484fc:	lea    edx,[eax+eax*1]
 80484ff:	mov    eax,DWORD PTR [ebp-0x18]
 8048502:	add    eax,eax
 8048504:	add    eax,0x1
 8048507:	imul   eax,edx
 804850a:	push   eax
 804850b:	fild   DWORD PTR [esp]
 804850e:	lea    esp,[esp+0x4]
 8048512:	fld    DWORD PTR [ebp-0x10]
 8048515:	fmulp  st(1),st
 8048517:	fstp   DWORD PTR [ebp-0x10]
 804851a:	jmp    804853d <_Z5trigofb+0x99>
 804851c:	mov    eax,DWORD PTR [ebp-0x18]
 804851f:	lea    edx,[eax+eax*1]
 8048522:	mov    eax,DWORD PTR [ebp-0x18]
 8048525:	add    eax,eax
 8048527:	sub    eax,0x1
 804852a:	imul   eax,edx
 804852d:	push   eax
 804852e:	fild   DWORD PTR [esp]
 8048531:	lea    esp,[esp+0x4]
 8048535:	fld    DWORD PTR [ebp-0x10]
 8048538:	fmulp  st(1),st
 804853a:	fstp   DWORD PTR [ebp-0x10]
 804853d:	fld    DWORD PTR [ebp-0x8]
 8048540:	fmul   DWORD PTR [ebp-0xc]
 8048543:	fstp   DWORD PTR [ebp-0x8]
 8048546:	fild   DWORD PTR [ebp-0x14]
 8048549:	fmul   DWORD PTR [ebp-0x8]
 804854c:	fdiv   DWORD PTR [ebp-0x10]
 804854f:	fld    DWORD PTR [ebp-0x4]
 8048552:	faddp  st(1),st
 8048554:	fstp   DWORD PTR [ebp-0x4]
 8048557:	add    DWORD PTR [ebp-0x18],0x1
 804855b:	cmp    DWORD PTR [ebp-0x18],0x7
 804855f:	jle    80484f0 <_Z5trigofb+0x4c>
 8048561:	mov    eax,DWORD PTR [ebp-0x4]
 8048564:	mov    DWORD PTR [ebp-0x28],eax
 8048567:	fld    DWORD PTR [ebp-0x28]
 804856a:	leave  
 804856b:	ret    

0804856c <main>:
 804856c:	lea    ecx,[esp+0x4]
 8048570:	and    esp,0xfffffff0
 8048573:	push   DWORD PTR [ecx-0x4]
 8048576:	push   ebp
 8048577:	mov    ebp,esp
 8048579:	push   ecx
 804857a:	sub    esp,0x24
 804857d:	mov    eax,0x40490fdb
 8048582:	mov    DWORD PTR [ebp-0x8],eax
 8048585:	fld    DWORD PTR [ebp-0x8]
 8048588:	fld    DWORD PTR ds:0x80486c0
 804858e:	fdivp  st(1),st
 8048590:	mov    DWORD PTR [esp+0x4],0x1
 8048598:	fstp   DWORD PTR [esp]
 804859b:	call   80484a4 <_Z5trigofb>
 80485a0:	fstp   QWORD PTR [esp+0x4]
 80485a4:	mov    DWORD PTR [esp],0x80486b0
 80485ab:	call   80483cc <printf@plt>
 80485b0:	fld    DWORD PTR [ebp-0x8]
 80485b3:	fld    DWORD PTR ds:0x80486c0
 80485b9:	fdivp  st(1),st
 80485bb:	mov    DWORD PTR [esp+0x4],0x0
 80485c3:	fstp   DWORD PTR [esp]
 80485c6:	call   80484a4 <_Z5trigofb>
 80485cb:	fstp   QWORD PTR [esp+0x4]
 80485cf:	mov    DWORD PTR [esp],0x80486b8
 80485d6:	call   80483cc <printf@plt>
 80485db:	mov    eax,0x0
 80485e0:	add    esp,0x24
 80485e3:	pop    ecx
 80485e4:	pop    ebp
 80485e5:	lea    esp,[ecx-0x4]
 80485e8:	ret    
 80485e9:	nop    
 80485ea:	nop    
 80485eb:	nop    
 80485ec:	nop    
 80485ed:	nop    
 80485ee:	nop    
 80485ef:	nop    

080485f0 <__libc_csu_fini>:
 80485f0:	push   ebp
 80485f1:	mov    ebp,esp
 80485f3:	pop    ebp
 80485f4:	ret    
 80485f5:	lea    esi,[esi+eiz*1+0x0]
 80485f9:	lea    edi,[edi+eiz*1+0x0]

08048600 <__libc_csu_init>:
 8048600:	push   ebp
 8048601:	mov    ebp,esp
 8048603:	push   edi
 8048604:	push   esi
 8048605:	push   ebx
 8048606:	call   804865a <__i686.get_pc_thunk.bx>
 804860b:	add    ebx,0x19e9
 8048611:	sub    esp,0xc
 8048614:	call   804836c <_init>
 8048619:	lea    edi,[ebx-0x100]
 804861f:	lea    eax,[ebx-0x100]
 8048625:	sub    edi,eax
 8048627:	sar    edi,0x2
 804862a:	test   edi,edi
 804862c:	je     8048652 <__libc_csu_init+0x52>
 804862e:	xor    esi,esi
 8048630:	mov    eax,DWORD PTR [ebp+0x10]
 8048633:	mov    DWORD PTR [esp+0x8],eax
 8048637:	mov    eax,DWORD PTR [ebp+0xc]
 804863a:	mov    DWORD PTR [esp+0x4],eax
 804863e:	mov    eax,DWORD PTR [ebp+0x8]
 8048641:	mov    DWORD PTR [esp],eax
 8048644:	call   DWORD PTR [ebx+esi*4-0x100]
 804864b:	add    esi,0x1
 804864e:	cmp    esi,edi
 8048650:	jb     8048630 <__libc_csu_init+0x30>
 8048652:	add    esp,0xc
 8048655:	pop    ebx
 8048656:	pop    esi
 8048657:	pop    edi
 8048658:	pop    ebp
 8048659:	ret    

0804865a <__i686.get_pc_thunk.bx>:
 804865a:	mov    ebx,DWORD PTR [esp]
 804865d:	ret    
 804865e:	nop    
 804865f:	nop    

08048660 <__do_global_ctors_aux>:
 8048660:	push   ebp
 8048661:	mov    ebp,esp
 8048663:	push   ebx
 8048664:	sub    esp,0x4
 8048667:	mov    eax,ds:0x8049ef4
 804866c:	cmp    eax,0xffffffff
 804866f:	je     8048684 <__do_global_ctors_aux+0x24>
 8048671:	mov    ebx,0x8049ef4
 8048676:	xchg   ax,ax
 8048678:	sub    ebx,0x4
 804867b:	call   eax
 804867d:	mov    eax,DWORD PTR [ebx]
 804867f:	cmp    eax,0xffffffff
 8048682:	jne    8048678 <__do_global_ctors_aux+0x18>
 8048684:	add    esp,0x4
 8048687:	pop    ebx
 8048688:	pop    ebp
 8048689:	ret    
 804868a:	nop    
 804868b:	nop    

Disassembly of section .fini:

0804868c <_fini>:
 804868c:	push   ebp
 804868d:	mov    ebp,esp
 804868f:	push   ebx
 8048690:	sub    esp,0x4
 8048693:	call   8048698 <_fini+0xc>
 8048698:	pop    ebx
 8048699:	add    ebx,0x195c
 804869f:	call   8048420 <__do_global_dtors_aux>
 80486a4:	pop    ecx
 80486a5:	pop    ebx
 80486a6:	leave  
 80486a7:	ret    
