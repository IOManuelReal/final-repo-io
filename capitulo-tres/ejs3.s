
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. en Sistemas Computacionales
@@ Autor: Manuel Angel Real Castro  @nickname: IOManuelReal
@@ Fecha de revision: 07/12/2021

/*
* Escoge un algoritmo de ordenación de entre los 4 siguientes e impleméntalo en
* ensamblador:
*   Burbuja.
*   Selección.
*   Inserción.
*   Quicksort.
*/

@@ Nombre: ejs3.s 

000102c8 <_init>:
   102c8:       e92d4008        push    {r3, lr}
   102cc:       eb000020        bl      10354 <call_weak_fn>
   102d0:       e8bd8008        pop     {r3, pc}

Disassembly of section .plt:

000102d4 <.plt>:
   102d4:       e52de004        push    {lr}            ; (str lr, [sp, #-4]!)   102d8:       e59fe004        ldr     lr, [pc, #4]    ; 102e4 <.plt+0x10>
   102dc:       e08fe00e        add     lr, pc, lr
   102e0:       e5bef008        ldr     pc, [lr, #8]!
   102e4:       00010d1c        .word   0x00010d1c

000102e8 <printf@plt>:
   102e8:       e28fc600        add     ip, pc, #0, 12
   102ec:       e28cca10        add     ip, ip, #16, 20 ; 0x10000
   102f0:       e5bcfd1c        ldr     pc, [ip, #3356]!        ; 0xd1c

000102f4 <__libc_start_main@plt>:
   102f4:       e28fc600        add     ip, pc, #0, 12
   102f8:       e28cca10        add     ip, ip, #16, 20 ; 0x10000
   102fc:       e5bcfd14        ldr     pc, [ip, #3348]!        ; 0xd14

00010300 <__gmon_start__@plt>:
   10300:       e28fc600        add     ip, pc, #0, 12
   10304:       e28cca10        add     ip, ip, #16, 20 ; 0x10000
   10308:       e5bcfd0c        ldr     pc, [ip, #3340]!        ; 0xd0c

0001030c <abort@plt>:
   1030c:       e28fc600        add     ip, pc, #0, 12
   10310:       e28cca10        add     ip, ip, #16, 20 ; 0x10000
   10314:       e5bcfd04        ldr     pc, [ip, #3332]!        ; 0xd04

Disassembly of section .text:

00010318 <_start>:
   10318:       e3a0b000        mov     fp, #0
   1031c:       e3a0e000        mov     lr, #0
   10320:       e49d1004        pop     {r1}            ; (ldr r1, [sp], #4)
   10324:       e1a0200d        mov     r2, sp
   10328:       e52d2004        push    {r2}            ; (str r2, [sp, #-4]!)   1032c:       e52d0004        push    {r0}            ; (str r0, [sp, #-4]!)   10330:       e59fc010        ldr     ip, [pc, #16]   ; 10348 <_start+0x30>
   10334:       e52dc004        push    {ip}            ; (str ip, [sp, #-4]!)   10338:       e59f000c        ldr     r0, [pc, #12]   ; 1034c <_start+0x34>
   1033c:       e59f300c        ldr     r3, [pc, #12]   ; 10350 <_start+0x38>
   10340:       ebffffeb        bl      102f4 <__libc_start_main@plt>
   10344:       ebfffff0        bl      1030c <abort@plt>
   10348:       000105dc        .word   0x000105dc
   1034c:       00010514        .word   0x00010514
   10350:       0001057c        .word   0x0001057c

00010354 <call_weak_fn>:
   10354:       e59f3014        ldr     r3, [pc, #20]   ; 10370 <call_weak_fn+0x1c>
   10358:       e59f2014        ldr     r2, [pc, #20]   ; 10374 <call_weak_fn+0x20>
   1035c:       e08f3003        add     r3, pc, r3
   10360:       e7932002        ldr     r2, [r3, r2]
   10364:       e3520000        cmp     r2, #0
   10368:       012fff1e        bxeq    lr
   1036c:       eaffffe3        b       10300 <__gmon_start__@plt>
   10370:       00010c9c        .word   0x00010c9c
   10374:       0000001c        .word   0x0000001c

00010378 <deregister_tm_clones>:
   10378:       e59f0018        ldr     r0, [pc, #24]   ; 10398 <deregister_tm_clones+0x20>
   1037c:       e59f3018        ldr     r3, [pc, #24]   ; 1039c <deregister_tm_clones+0x24>
   10380:       e1530000        cmp     r3, r0
   10384:       012fff1e        bxeq    lr
   10388:       e59f3010        ldr     r3, [pc, #16]   ; 103a0 <deregister_tm_clones+0x28>
   1038c:       e3530000        cmp     r3, #0
   10390:       012fff1e        bxeq    lr
   10394:       e12fff13        bx      r3
   10398:       00021048        .word   0x00021048
   1039c:       00021048        .word   0x00021048
   103a0:       00000000        .word   0x00000000

000103a4 <register_tm_clones>:
   103a4:       e59f0024        ldr     r0, [pc, #36]   ; 103d0 <register_tm_clones+0x2c>
   103a8:       e59f1024        ldr     r1, [pc, #36]   ; 103d4 <register_tm_clones+0x30>
   103ac:       e0411000        sub     r1, r1, r0
   103b0:       e1a01141        asr     r1, r1, #2
   103b4:       e0811fa1        add     r1, r1, r1, lsr #31
   103b8:       e1b010c1        asrs    r1, r1, #1
   103bc:       012fff1e        bxeq    lr
   103c0:       e59f3010        ldr     r3, [pc, #16]   ; 103d8 <register_tm_clones+0x34>
   103c4:       e3530000        cmp     r3, #0
   103c8:       012fff1e        bxeq    lr
   103cc:       e12fff13        bx      r3
   103d0:       00021048        .word   0x00021048
   103d4:       00021048        .word   0x00021048
   103d8:       00000000        .word   0x00000000

000103dc <__do_global_dtors_aux>:
   103dc:       e92d4010        push    {r4, lr}
   103e0:       e59f4018        ldr     r4, [pc, #24]   ; 10400 <__do_global_dtors_aux+0x24>
   103e4:       e5d43000        ldrb    r3, [r4]
   103e8:       e3530000        cmp     r3, #0
   103ec:       18bd8010        popne   {r4, pc}
   103f0:       ebffffe0        bl      10378 <deregister_tm_clones>
   103f4:       e3a03001        mov     r3, #1
   103f8:       e5c43000        strb    r3, [r4]
   103fc:       e8bd8010        pop     {r4, pc}
   10400:       00021048        .word   0x00021048

00010404 <frame_dummy>:
   10404:       eaffffe6        b       103a4 <register_tm_clones>

00010408 <ordena>:
   10408:       e52db004        push    {fp}            ; (str fp, [sp, #-4]!)   1040c:       e28db000        add     fp, sp, #0
   10410:       e24dd01c        sub     sp, sp, #28
   10414:       e50b0018        str     r0, [fp, #-24]  ; 0xffffffe8
   10418:       e50b101c        str     r1, [fp, #-28]  ; 0xffffffe4
   1041c:       e3a03001        mov     r3, #1
   10420:       e50b3008        str     r3, [fp, #-8]
   10424:       ea000032        b       104f4 <ordena+0xec>
   10428:       e3a03000        mov     r3, #0
   1042c:       e50b300c        str     r3, [fp, #-12]
   10430:       ea000027        b       104d4 <ordena+0xcc>
   10434:       e51b300c        ldr     r3, [fp, #-12]
   10438:       e1a03103        lsl     r3, r3, #2
   1043c:       e51b2018        ldr     r2, [fp, #-24]  ; 0xffffffe8
   10440:       e0823003        add     r3, r2, r3
   10444:       e5932000        ldr     r2, [r3]
   10448:       e51b300c        ldr     r3, [fp, #-12]
   1044c:       e2833001        add     r3, r3, #1
   10450:       e1a03103        lsl     r3, r3, #2
   10454:       e51b1018        ldr     r1, [fp, #-24]  ; 0xffffffe8
   10458:       e0813003        add     r3, r1, r3
   1045c:       e5933000        ldr     r3, [r3]
   10460:       e1520003        cmp     r2, r3
   10464:       da000017        ble     104c8 <ordena+0xc0>
   10468:       e51b300c        ldr     r3, [fp, #-12]
   1046c:       e1a03103        lsl     r3, r3, #2
   10470:       e51b2018        ldr     r2, [fp, #-24]  ; 0xffffffe8
   10474:       e0823003        add     r3, r2, r3
   10478:       e5933000        ldr     r3, [r3]
   1047c:       e50b3010        str     r3, [fp, #-16]
   10480:       e51b300c        ldr     r3, [fp, #-12]
   10484:       e2833001        add     r3, r3, #1
   10488:       e1a03103        lsl     r3, r3, #2
   1048c:       e51b2018        ldr     r2, [fp, #-24]  ; 0xffffffe8
   10490:       e0822003        add     r2, r2, r3
   10494:       e51b300c        ldr     r3, [fp, #-12]
   10498:       e1a03103        lsl     r3, r3, #2
   1049c:       e51b1018        ldr     r1, [fp, #-24]  ; 0xffffffe8
   104a0:       e0813003        add     r3, r1, r3
   104a4:       e5922000        ldr     r2, [r2]
   104a8:       e5832000        str     r2, [r3]
   104ac:       e51b300c        ldr     r3, [fp, #-12]
   104b0:       e2833001        add     r3, r3, #1
   104b4:       e1a03103        lsl     r3, r3, #2
   104b8:       e51b2018        ldr     r2, [fp, #-24]  ; 0xffffffe8
   104bc:       e0823003        add     r3, r2, r3
   104c0:       e51b2010        ldr     r2, [fp, #-16]
   104c4:       e5832000        str     r2, [r3]
   104c8:       e51b300c        ldr     r3, [fp, #-12]
   104cc:       e2833001        add     r3, r3, #1
   104d0:       e50b300c        str     r3, [fp, #-12]
   104d4:       e51b301c        ldr     r3, [fp, #-28]  ; 0xffffffe4
   104d8:       e2433001        sub     r3, r3, #1
   104dc:       e51b200c        ldr     r2, [fp, #-12]
   104e0:       e1520003        cmp     r2, r3
   104e4:       baffffd2        blt     10434 <ordena+0x2c>
   104e8:       e51b3008        ldr     r3, [fp, #-8]
   104ec:       e2833001        add     r3, r3, #1
   104f0:       e50b3008        str     r3, [fp, #-8]
   104f4:       e51b2008        ldr     r2, [fp, #-8]
   104f8:       e51b301c        ldr     r3, [fp, #-28]  ; 0xffffffe4
   104fc:       e1520003        cmp     r2, r3
   10500:       baffffc8        blt     10428 <ordena+0x20>
   10504:       e1a00000        nop                     ; (mov r0, r0)
   10508:       e28bd000        add     sp, fp, #0
   1050c:       e49db004        pop     {fp}            ; (ldr fp, [sp], #4)
   10510:       e12fff1e        bx      lr

00010514 <main>:
   10514:       e92d4800        push    {fp, lr}
   10518:       e28db004        add     fp, sp, #4
   1051c:       e24dd008        sub     sp, sp, #8
   10520:       e3a01008        mov     r1, #8
   10524:       e59f0048        ldr     r0, [pc, #72]   ; 10574 <main+0x60>
   10528:       ebffffb6        bl      10408 <ordena>
   1052c:       e3a03000        mov     r3, #0
   10530:       e50b3008        str     r3, [fp, #-8]
   10534:       ea000008        b       1055c <main+0x48>
   10538:       e59f2034        ldr     r2, [pc, #52]   ; 10574 <main+0x60>
   1053c:       e51b3008        ldr     r3, [fp, #-8]
   10540:       e7923103        ldr     r3, [r2, r3, lsl #2]
   10544:       e1a01003        mov     r1, r3
   10548:       e59f0028        ldr     r0, [pc, #40]   ; 10578 <main+0x64>
   1054c:       ebffff65        bl      102e8 <printf@plt>
   10550:       e51b3008        ldr     r3, [fp, #-8]
   10554:       e2833001        add     r3, r3, #1
   10558:       e50b3008        str     r3, [fp, #-8]
   1055c:       e51b3008        ldr     r3, [fp, #-8]
   10560:       e3530007        cmp     r3, #7
   10564:       dafffff3        ble     10538 <main+0x24>
   10568:       e1a00000        nop                     ; (mov r0, r0)
   1056c:       e24bd004        sub     sp, fp, #4
   10570:       e8bd8800        pop     {fp, pc}
   10574:       00021028        .word   0x00021028
   10578:       000105ec        .word   0x000105ec

0001057c <__libc_csu_init>:
   1057c:       e92d47f0        push    {r4, r5, r6, r7, r8, r9, sl, lr}
   10580:       e1a07000        mov     r7, r0
   10584:       e59f6048        ldr     r6, [pc, #72]   ; 105d4 <__libc_csu_init+0x58>
   10588:       e59f5048        ldr     r5, [pc, #72]   ; 105d8 <__libc_csu_init+0x5c>
   1058c:       e08f6006        add     r6, pc, r6
   10590:       e08f5005        add     r5, pc, r5
   10594:       e0466005        sub     r6, r6, r5
   10598:       e1a08001        mov     r8, r1
   1059c:       e1a09002        mov     r9, r2
   105a0:       ebffff48        bl      102c8 <_init>
   105a4:       e1b06146        asrs    r6, r6, #2
   105a8:       08bd87f0        popeq   {r4, r5, r6, r7, r8, r9, sl, pc}
   105ac:       e3a04000        mov     r4, #0
   105b0:       e2844001        add     r4, r4, #1
   105b4:       e4953004        ldr     r3, [r5], #4
   105b8:       e1a02009        mov     r2, r9
   105bc:       e1a01008        mov     r1, r8
   105c0:       e1a00007        mov     r0, r7
   105c4:       e12fff33        blx     r3
   105c8:       e1560004        cmp     r6, r4
   105cc:       1afffff7        bne     105b0 <__libc_csu_init+0x34>
   105d0:       e8bd87f0        pop     {r4, r5, r6, r7, r8, r9, sl, pc}
   105d4:       00010980        .word   0x00010980
   105d8:       00010978        .word   0x00010978

000105dc <__libc_csu_fini>:
   105dc:       e12fff1e        bx      lr

Disassembly of section .fini:

000105e0 <_fini>:
   105e0:       e92d4008        push    {r3, lr}
   105e4:       e8bd8008        pop     {r3, pc}
