
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. en Sistemas Computacionales
@@ Autor: Manuel Angel Real Castro  @nickname: IOManuelReal
@@ Fecha de revision: 06/12/2021


@@ Nombre: ejs2.s

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
   10348:       000104c8        .word   0x000104c8
   1034c:       00010408        .word   0x00010408
   10350:       00010468        .word   0x00010468

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
   10414:       e3a03001        mov     r3, #1
   10418:       e50b3008        str     r3, [fp, #-8]
   1041c:       ea000009        b       10448 <main+0x40>
   10420:       e51b3008        ldr     r3, [fp, #-8]
   10424:       e2033001        and     r3, r3, #1
   10428:       e3530000        cmp     r3, #0
   1042c:       0a000002        beq     1043c <main+0x34>
   10430:       e51b1008        ldr     r1, [fp, #-8]
   10434:       e59f0028        ldr     r0, [pc, #40]   ; 10464 <main+0x5c>
   10438:       ebffffaa        bl      102e8 <printf@plt>
   1043c:       e51b3008        ldr     r3, [fp, #-8]
   10440:       e2833002        add     r3, r3, #2
   10444:       e50b3008        str     r3, [fp, #-8]
   10448:       e51b3008        ldr     r3, [fp, #-8]
   1044c:       e3530009        cmp     r3, #9
   10450:       dafffff2        ble     10420 <main+0x18>
   10454:       e3a03000        mov     r3, #0
   10458:       e1a00003        mov     r0, r3
   1045c:       e24bd004        sub     sp, fp, #4
   10460:       e8bd8800        pop     {fp, pc}
   10464:       000104d8        .word   0x000104d8

00010468 <__libc_csu_init>:
   10468:       e92d47f0        push    {r4, r5, r6, r7, r8, r9, sl, lr}
   1046c:       e1a07000        mov     r7, r0
   10470:       e59f6048        ldr     r6, [pc, #72]   ; 104c0 <__libc_csu_init+0x58>
   10474:       e59f5048        ldr     r5, [pc, #72]   ; 104c4 <__libc_csu_init+0x5c>
   10478:       e08f6006        add     r6, pc, r6
   1047c:       e08f5005        add     r5, pc, r5
   10480:       e0466005        sub     r6, r6, r5
   10484:       e1a08001        mov     r8, r1
   10488:       e1a09002        mov     r9, r2
   1048c:       ebffff8d        bl      102c8 <_init>
   10490:       e1b06146        asrs    r6, r6, #2
   10494:       08bd87f0        popeq   {r4, r5, r6, r7, r8, r9, sl, pc}
   10498:       e3a04000        mov     r4, #0
   1049c:       e2844001        add     r4, r4, #1
   104a0:       e4953004        ldr     r3, [r5], #4
   104a4:       e1a02009        mov     r2, r9
   104a8:       e1a01008        mov     r1, r8
   104ac:       e1a00007        mov     r0, r7
   104b0:       e12fff33        blx     r3
   104b4:       e1560004        cmp     r6, r4
   104b8:       1afffff7        bne     1049c <__libc_csu_init+0x34>
   104bc:       e8bd87f0        pop     {r4, r5, r6, r7, r8, r9, sl, pc}
   104c0:       00010a94        .word   0x00010a94
   104c4:       00010a8c        .word   0x00010a8c

000104c8 <__libc_csu_fini>:
   104c8:       e12fff1e        bx      lr

Disassembly of section .fini:

000104cc <_fini>:
   104cc:       e92d4008        push    {r3, lr}
   104d0:       e8bd8008        pop     {r3, pc}
