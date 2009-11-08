
fun_arcila:     file format elf32-i386


Disassembly of section .init:

0804836c <_init>:
 804836c:	55                   	push   %ebp
 804836d:	89 e5                	mov    %esp,%ebp
 804836f:	53                   	push   %ebx
 8048370:	83 ec 04             	sub    $0x4,%esp
 8048373:	e8 00 00 00 00       	call   8048378 <_init+0xc>
 8048378:	5b                   	pop    %ebx
 8048379:	81 c3 7c 1c 00 00    	add    $0x1c7c,%ebx
 804837f:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 8048385:	85 d2                	test   %edx,%edx
 8048387:	74 05                	je     804838e <_init+0x22>
 8048389:	e8 1e 00 00 00       	call   80483ac <__gmon_start__@plt>
 804838e:	e8 ed 00 00 00       	call   8048480 <frame_dummy>
 8048393:	e8 c8 02 00 00       	call   8048660 <__do_global_ctors_aux>
 8048398:	58                   	pop    %eax
 8048399:	5b                   	pop    %ebx
 804839a:	c9                   	leave  
 804839b:	c3                   	ret    

Disassembly of section .plt:

0804839c <__gmon_start__@plt-0x10>:
 804839c:	ff 35 f8 9f 04 08    	pushl  0x8049ff8
 80483a2:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483a8:	00 00                	add    %al,(%eax)
	...

080483ac <__gmon_start__@plt>:
 80483ac:	ff 25 00 a0 04 08    	jmp    *0x804a000
 80483b2:	68 00 00 00 00       	push   $0x0
 80483b7:	e9 e0 ff ff ff       	jmp    804839c <_init+0x30>

080483bc <__libc_start_main@plt>:
 80483bc:	ff 25 04 a0 04 08    	jmp    *0x804a004
 80483c2:	68 08 00 00 00       	push   $0x8
 80483c7:	e9 d0 ff ff ff       	jmp    804839c <_init+0x30>

080483cc <printf@plt>:
 80483cc:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483d2:	68 10 00 00 00       	push   $0x10
 80483d7:	e9 c0 ff ff ff       	jmp    804839c <_init+0x30>

080483dc <__gxx_personality_v0@plt>:
 80483dc:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483e2:	68 18 00 00 00       	push   $0x18
 80483e7:	e9 b0 ff ff ff       	jmp    804839c <_init+0x30>

Disassembly of section .text:

080483f0 <_start>:
 80483f0:	31 ed                	xor    %ebp,%ebp
 80483f2:	5e                   	pop    %esi
 80483f3:	89 e1                	mov    %esp,%ecx
 80483f5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483f8:	50                   	push   %eax
 80483f9:	54                   	push   %esp
 80483fa:	52                   	push   %edx
 80483fb:	68 f0 85 04 08       	push   $0x80485f0
 8048400:	68 00 86 04 08       	push   $0x8048600
 8048405:	51                   	push   %ecx
 8048406:	56                   	push   %esi
 8048407:	68 6c 85 04 08       	push   $0x804856c
 804840c:	e8 ab ff ff ff       	call   80483bc <__libc_start_main@plt>
 8048411:	f4                   	hlt    
 8048412:	90                   	nop    
 8048413:	90                   	nop    
 8048414:	90                   	nop    
 8048415:	90                   	nop    
 8048416:	90                   	nop    
 8048417:	90                   	nop    
 8048418:	90                   	nop    
 8048419:	90                   	nop    
 804841a:	90                   	nop    
 804841b:	90                   	nop    
 804841c:	90                   	nop    
 804841d:	90                   	nop    
 804841e:	90                   	nop    
 804841f:	90                   	nop    

08048420 <__do_global_dtors_aux>:
 8048420:	55                   	push   %ebp
 8048421:	89 e5                	mov    %esp,%ebp
 8048423:	53                   	push   %ebx
 8048424:	83 ec 04             	sub    $0x4,%esp
 8048427:	80 3d 18 a0 04 08 00 	cmpb   $0x0,0x804a018
 804842e:	75 40                	jne    8048470 <__do_global_dtors_aux+0x50>
 8048430:	8b 15 1c a0 04 08    	mov    0x804a01c,%edx
 8048436:	b8 00 9f 04 08       	mov    $0x8049f00,%eax
 804843b:	2d fc 9e 04 08       	sub    $0x8049efc,%eax
 8048440:	c1 f8 02             	sar    $0x2,%eax
 8048443:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8048446:	39 da                	cmp    %ebx,%edx
 8048448:	73 1f                	jae    8048469 <__do_global_dtors_aux+0x49>
 804844a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048450:	8d 42 01             	lea    0x1(%edx),%eax
 8048453:	a3 1c a0 04 08       	mov    %eax,0x804a01c
 8048458:	ff 14 85 fc 9e 04 08 	call   *0x8049efc(,%eax,4)
 804845f:	8b 15 1c a0 04 08    	mov    0x804a01c,%edx
 8048465:	39 da                	cmp    %ebx,%edx
 8048467:	72 e7                	jb     8048450 <__do_global_dtors_aux+0x30>
 8048469:	c6 05 18 a0 04 08 01 	movb   $0x1,0x804a018
 8048470:	83 c4 04             	add    $0x4,%esp
 8048473:	5b                   	pop    %ebx
 8048474:	5d                   	pop    %ebp
 8048475:	c3                   	ret    
 8048476:	8d 76 00             	lea    0x0(%esi),%esi
 8048479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048480 <frame_dummy>:
 8048480:	55                   	push   %ebp
 8048481:	89 e5                	mov    %esp,%ebp
 8048483:	83 ec 08             	sub    $0x8,%esp
 8048486:	a1 04 9f 04 08       	mov    0x8049f04,%eax
 804848b:	85 c0                	test   %eax,%eax
 804848d:	74 12                	je     80484a1 <frame_dummy+0x21>
 804848f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048494:	85 c0                	test   %eax,%eax
 8048496:	74 09                	je     80484a1 <frame_dummy+0x21>
 8048498:	c7 04 24 04 9f 04 08 	movl   $0x8049f04,(%esp)
 804849f:	ff d0                	call   *%eax
 80484a1:	c9                   	leave  
 80484a2:	c3                   	ret    
 80484a3:	90                   	nop    

080484a4 <_Z5trigofb>:
 80484a4:	55                   	push   %ebp
 80484a5:	89 e5                	mov    %esp,%ebp
 80484a7:	83 ec 28             	sub    $0x28,%esp
 80484aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484ad:	88 45 dc             	mov    %al,-0x24(%ebp)
 80484b0:	8b 45 08             	mov    0x8(%ebp),%eax
 80484b3:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80484b6:	0f b6 45 dc          	movzbl -0x24(%ebp),%eax
 80484ba:	83 f0 01             	xor    $0x1,%eax
 80484bd:	84 c0                	test   %al,%al
 80484bf:	74 08                	je     80484c9 <_Z5trigofb+0x25>
 80484c1:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
 80484c6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80484c9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80484cc:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80484cf:	d9 45 08             	flds   0x8(%ebp)
 80484d2:	d8 4d 08             	fmuls  0x8(%ebp)
 80484d5:	d9 5d f4             	fstps  -0xc(%ebp)
 80484d8:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
 80484dd:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80484e0:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 80484e7:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 80484ee:	eb 6b                	jmp    804855b <_Z5trigofb+0xb7>
 80484f0:	f7 5d ec             	negl   -0x14(%ebp)
 80484f3:	80 7d dc 00          	cmpb   $0x0,-0x24(%ebp)
 80484f7:	74 23                	je     804851c <_Z5trigofb+0x78>
 80484f9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80484fc:	8d 14 00             	lea    (%eax,%eax,1),%edx
 80484ff:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048502:	01 c0                	add    %eax,%eax
 8048504:	83 c0 01             	add    $0x1,%eax
 8048507:	0f af c2             	imul   %edx,%eax
 804850a:	50                   	push   %eax
 804850b:	db 04 24             	fildl  (%esp)
 804850e:	8d 64 24 04          	lea    0x4(%esp),%esp
 8048512:	d9 45 f0             	flds   -0x10(%ebp)
 8048515:	de c9                	fmulp  %st,%st(1)
 8048517:	d9 5d f0             	fstps  -0x10(%ebp)
 804851a:	eb 21                	jmp    804853d <_Z5trigofb+0x99>
 804851c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804851f:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8048522:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048525:	01 c0                	add    %eax,%eax
 8048527:	83 e8 01             	sub    $0x1,%eax
 804852a:	0f af c2             	imul   %edx,%eax
 804852d:	50                   	push   %eax
 804852e:	db 04 24             	fildl  (%esp)
 8048531:	8d 64 24 04          	lea    0x4(%esp),%esp
 8048535:	d9 45 f0             	flds   -0x10(%ebp)
 8048538:	de c9                	fmulp  %st,%st(1)
 804853a:	d9 5d f0             	fstps  -0x10(%ebp)
 804853d:	d9 45 f8             	flds   -0x8(%ebp)
 8048540:	d8 4d f4             	fmuls  -0xc(%ebp)
 8048543:	d9 5d f8             	fstps  -0x8(%ebp)
 8048546:	db 45 ec             	fildl  -0x14(%ebp)
 8048549:	d8 4d f8             	fmuls  -0x8(%ebp)
 804854c:	d8 75 f0             	fdivs  -0x10(%ebp)
 804854f:	d9 45 fc             	flds   -0x4(%ebp)
 8048552:	de c1                	faddp  %st,%st(1)
 8048554:	d9 5d fc             	fstps  -0x4(%ebp)
 8048557:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 804855b:	83 7d e8 07          	cmpl   $0x7,-0x18(%ebp)
 804855f:	7e 8f                	jle    80484f0 <_Z5trigofb+0x4c>
 8048561:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048564:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048567:	d9 45 d8             	flds   -0x28(%ebp)
 804856a:	c9                   	leave  
 804856b:	c3                   	ret    

0804856c <main>:
 804856c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048570:	83 e4 f0             	and    $0xfffffff0,%esp
 8048573:	ff 71 fc             	pushl  -0x4(%ecx)
 8048576:	55                   	push   %ebp
 8048577:	89 e5                	mov    %esp,%ebp
 8048579:	51                   	push   %ecx
 804857a:	83 ec 24             	sub    $0x24,%esp
 804857d:	b8 db 0f 49 40       	mov    $0x40490fdb,%eax
 8048582:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048585:	d9 45 f8             	flds   -0x8(%ebp)
 8048588:	d9 05 c0 86 04 08    	flds   0x80486c0
 804858e:	de f9                	fdivrp %st,%st(1)
 8048590:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048597:	00 
 8048598:	d9 1c 24             	fstps  (%esp)
 804859b:	e8 04 ff ff ff       	call   80484a4 <_Z5trigofb>
 80485a0:	dd 5c 24 04          	fstpl  0x4(%esp)
 80485a4:	c7 04 24 b0 86 04 08 	movl   $0x80486b0,(%esp)
 80485ab:	e8 1c fe ff ff       	call   80483cc <printf@plt>
 80485b0:	d9 45 f8             	flds   -0x8(%ebp)
 80485b3:	d9 05 c0 86 04 08    	flds   0x80486c0
 80485b9:	de f9                	fdivrp %st,%st(1)
 80485bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80485c2:	00 
 80485c3:	d9 1c 24             	fstps  (%esp)
 80485c6:	e8 d9 fe ff ff       	call   80484a4 <_Z5trigofb>
 80485cb:	dd 5c 24 04          	fstpl  0x4(%esp)
 80485cf:	c7 04 24 b8 86 04 08 	movl   $0x80486b8,(%esp)
 80485d6:	e8 f1 fd ff ff       	call   80483cc <printf@plt>
 80485db:	b8 00 00 00 00       	mov    $0x0,%eax
 80485e0:	83 c4 24             	add    $0x24,%esp
 80485e3:	59                   	pop    %ecx
 80485e4:	5d                   	pop    %ebp
 80485e5:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80485e8:	c3                   	ret    
 80485e9:	90                   	nop    
 80485ea:	90                   	nop    
 80485eb:	90                   	nop    
 80485ec:	90                   	nop    
 80485ed:	90                   	nop    
 80485ee:	90                   	nop    
 80485ef:	90                   	nop    

080485f0 <__libc_csu_fini>:
 80485f0:	55                   	push   %ebp
 80485f1:	89 e5                	mov    %esp,%ebp
 80485f3:	5d                   	pop    %ebp
 80485f4:	c3                   	ret    
 80485f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048600 <__libc_csu_init>:
 8048600:	55                   	push   %ebp
 8048601:	89 e5                	mov    %esp,%ebp
 8048603:	57                   	push   %edi
 8048604:	56                   	push   %esi
 8048605:	53                   	push   %ebx
 8048606:	e8 4f 00 00 00       	call   804865a <__i686.get_pc_thunk.bx>
 804860b:	81 c3 e9 19 00 00    	add    $0x19e9,%ebx
 8048611:	83 ec 0c             	sub    $0xc,%esp
 8048614:	e8 53 fd ff ff       	call   804836c <_init>
 8048619:	8d bb 00 ff ff ff    	lea    -0x100(%ebx),%edi
 804861f:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 8048625:	29 c7                	sub    %eax,%edi
 8048627:	c1 ff 02             	sar    $0x2,%edi
 804862a:	85 ff                	test   %edi,%edi
 804862c:	74 24                	je     8048652 <__libc_csu_init+0x52>
 804862e:	31 f6                	xor    %esi,%esi
 8048630:	8b 45 10             	mov    0x10(%ebp),%eax
 8048633:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048637:	8b 45 0c             	mov    0xc(%ebp),%eax
 804863a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804863e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048641:	89 04 24             	mov    %eax,(%esp)
 8048644:	ff 94 b3 00 ff ff ff 	call   *-0x100(%ebx,%esi,4)
 804864b:	83 c6 01             	add    $0x1,%esi
 804864e:	39 fe                	cmp    %edi,%esi
 8048650:	72 de                	jb     8048630 <__libc_csu_init+0x30>
 8048652:	83 c4 0c             	add    $0xc,%esp
 8048655:	5b                   	pop    %ebx
 8048656:	5e                   	pop    %esi
 8048657:	5f                   	pop    %edi
 8048658:	5d                   	pop    %ebp
 8048659:	c3                   	ret    

0804865a <__i686.get_pc_thunk.bx>:
 804865a:	8b 1c 24             	mov    (%esp),%ebx
 804865d:	c3                   	ret    
 804865e:	90                   	nop    
 804865f:	90                   	nop    

08048660 <__do_global_ctors_aux>:
 8048660:	55                   	push   %ebp
 8048661:	89 e5                	mov    %esp,%ebp
 8048663:	53                   	push   %ebx
 8048664:	83 ec 04             	sub    $0x4,%esp
 8048667:	a1 f4 9e 04 08       	mov    0x8049ef4,%eax
 804866c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804866f:	74 13                	je     8048684 <__do_global_ctors_aux+0x24>
 8048671:	bb f4 9e 04 08       	mov    $0x8049ef4,%ebx
 8048676:	66 90                	xchg   %ax,%ax
 8048678:	83 eb 04             	sub    $0x4,%ebx
 804867b:	ff d0                	call   *%eax
 804867d:	8b 03                	mov    (%ebx),%eax
 804867f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048682:	75 f4                	jne    8048678 <__do_global_ctors_aux+0x18>
 8048684:	83 c4 04             	add    $0x4,%esp
 8048687:	5b                   	pop    %ebx
 8048688:	5d                   	pop    %ebp
 8048689:	c3                   	ret    
 804868a:	90                   	nop    
 804868b:	90                   	nop    

Disassembly of section .fini:

0804868c <_fini>:
 804868c:	55                   	push   %ebp
 804868d:	89 e5                	mov    %esp,%ebp
 804868f:	53                   	push   %ebx
 8048690:	83 ec 04             	sub    $0x4,%esp
 8048693:	e8 00 00 00 00       	call   8048698 <_fini+0xc>
 8048698:	5b                   	pop    %ebx
 8048699:	81 c3 5c 19 00 00    	add    $0x195c,%ebx
 804869f:	e8 7c fd ff ff       	call   8048420 <__do_global_dtors_aux>
 80486a4:	59                   	pop    %ecx
 80486a5:	5b                   	pop    %ebx
 80486a6:	c9                   	leave  
 80486a7:	c3                   	ret    
