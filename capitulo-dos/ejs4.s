
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. en Sistemas Computacionales
@@ Autor: Manuel Angel Real Castro  @nickname: IOManuelReal
@@ Fecha de revision: 06/12/2021


@@ Nombre: ejs4.s

000102c8 <_init>:
   102c8:       e92d4008        push    {r3, lr}
   102cc:       eb000020        bl      10354 <call_weak_fn>
   102d0:       e8bd8008        pop     {r3, pc}

Disassembly of section .plt:

000102d4 <.plt>:
   102d4:       e52de004        push    {lr}            ; (str lr, [sp, #-4]!)
   102d8:       e59fe004        ldr     lr, [pc, #4]    ; 102e4 <.plt+0x10>
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
   10328:       e52d2004        push    {r2}            ; (str r2, [sp, #-4]!)
   1032c:       e52d0004        push    {r0}            ; (str r0, [sp, #-4]!)
   10330:       e59fc010        ldr     ip, [pc, #16]   ; 10348 <_start+0x30>
   10334:       e52dc004        push    {ip}            ; (str ip, [sp, #-4]!)
   10338:       e59f000c        ldr     r0, [pc, #12]   ; 1034c <_start+0x34>
   1033c:       e59f300c        ldr     r3, [pc, #12]   ; 10350 <_start+0x38>
   10340:       ebffffeb        bl      102f4 <__libc_start_main@plt>
   10344:       ebfffff0        bl      1030c <abort@plt>
   10348:       00010508        .word   0x00010508
   1034c:       00010408        .word   0x00010408
   10350:       000104a8        .word   0x000104a8

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
   10398:       00021028        .word   0x00021028
   1039c:       00021028        .word   0x00021028
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
   103d0:       00021028        .word   0x00021028
   103d4:       00021028        .word   0x00021028
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
   10400:       00021028        .word   0x00021028

00010404 <frame_dummy>:
   10404:       eaffffe6        b       103a4 <register_tm_clones>

00010408 <main>:
   10408:       e92d4800        push    {fp, lr}
   1040c:       e28db004        add     fp, sp, #4
   10410:       e24dd008        sub     sp, sp, #8
   10414:       e59f3078        ldr     r3, [pc, #120]  ; 10494 <main+0x8c>
   10418:       e50b3008        str     r3, [fp, #-8]
   1041c:       ea000014        b       10474 <main+0x6c>
   10420:       e51b3008        ldr     r3, [fp, #-8]
   10424:       e2033003        and     r3, r3, #3
   10428:       e3530000        cmp     r3, #0
   1042c:       0a000002        beq     1043c <main+0x34>
   10430:       e3530002        cmp     r3, #2
   10434:       0a000004        beq     1044c <main+0x44>
   10438:       ea000007        b       1045c <main+0x54>
   1043c:       e51b1008        ldr     r1, [fp, #-8]
   10440:       e59f0050        ldr     r0, [pc, #80]   ; 10498 <main+0x90>
   10444:       ebffffa7        bl      102e8 <printf@plt>
   10448:       ea000006        b       10468 <main+0x60>
   1044c:       e51b1008        ldr     r1, [fp, #-8]
   10450:       e59f0044        ldr     r0, [pc, #68]   ; 1049c <main+0x94>
   10454:       ebffffa3        bl      102e8 <printf@plt>
   10458:       ea000002        b       10468 <main+0x60>
   1045c:       e51b1008        ldr     r1, [fp, #-8]
   10460:       e59f0038        ldr     r0, [pc, #56]   ; 104a0 <main+0x98>
   10464:       ebffff9f        bl      102e8 <printf@plt>
   10468:       e51b3008        ldr     r3, [fp, #-8]
   1046c:       e2833001        add     r3, r3, #1
   10470:       e50b3008        str     r3, [fp, #-8]
   10474:       e51b3008        ldr     r3, [fp, #-8]
   10478:       e59f2024        ldr     r2, [pc, #36]   ; 104a4 <main+0x9c>
   1047c:       e1530002        cmp     r3, r2
   10480:       daffffe6        ble     10420 <main+0x18>
   10484:       e3a03000        mov     r3, #0
   10488:       e1a00003        mov     r0, r3
   1048c:       e24bd004        sub     sp, fp, #4
   10490:       e8bd8800        pop     {fp, pc}
   10494:       0000079e        .word   0x0000079e
   10498:       00010518        .word   0x00010518
   1049c:       00010530        .word   0x00010530
   104a0:       00010550        .word   0x00010550
   104a4:       000007de        .word   0x000007de

000104a8 <__libc_csu_init>:
   104a8:       e92d47f0        push    {r4, r5, r6, r7, r8, r9, sl, lr}
   104ac:       e1a07000        mov     r7, r0
   104b0:       e59f6048        ldr     r6, [pc, #72]   ; 10500 <__libc_csu_init+0x58>
   104b4:       e59f5048        ldr     r5, [pc, #72]   ; 10504 <__libc_csu_init+0x5c>
   104b8:       e08f6006        add     r6, pc, r6
   104bc:       e08f5005        add     r5, pc, r5
   104c0:       e0466005        sub     r6, r6, r5
   104c4:       e1a08001        mov     r8, r1
   104c8:       e1a09002        mov     r9, r2
   104cc:       ebffff7d        bl      102c8 <_init>
   104d0:       e1b06146        asrs    r6, r6, #2
   104d4:       08bd87f0        popeq   {r4, r5, r6, r7, r8, r9, sl, pc}
   104d8:       e3a04000        mov     r4, #0
   104dc:       e2844001        add     r4, r4, #1
   104e0:       e4953004        ldr     r3, [r5], #4
   104e4:       e1a02009        mov     r2, r9
   104e8:       e1a01008        mov     r1, r8
   104ec:       e1a00007        mov     r0, r7
   104f0:       e12fff33        blx     r3
   104f4:       e1560004        cmp     r6, r4
   104f8:       1afffff7        bne     104dc <__libc_csu_init+0x34>
   104fc:       e8bd87f0        pop     {r4, r5, r6, r7, r8, r9, sl, pc}
   10500:       00010a54        .word   0x00010a54
   10504:       00010a4c        .word   0x00010a4c

00010508 <__libc_csu_fini>:
   10508:       e12fff1e        bx      lr

Disassembly of section .fini:

0001050c <_fini>:
   1050c:       e92d4008        push    {r3, lr}
   10510:       e8bd8008        pop     {r3, pc}
