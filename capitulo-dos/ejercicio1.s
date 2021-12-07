
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. en Sistemas Computacionales
@@ Autor: Manuel Angel Real Castro  @nickname: IOManuelReal
@@ Fecha de revision: 06/12/2021

/*
* Basándonos en los ejemplos anteriores, escribe un bucle for que imprima los 50
* primeros números pares naturales en orden inverso (desde 100 hasta 2 en pasos de
* 2). Una vez hecho esto, aplica desenrollamiento de bucle de tal forma que el salto
* condicional se ejecute 10 veces, con 5 repeticiones cada vez.
*/

@@ Nombre: ejercicio1.s

.data
var1 : .asciz " %d\ 012 "
.text
.global main
main : push { r4, lr }
  mov r1, # 0
  ldr r4, = var1
  mov r0, r4
  bl printf
  mov r0, r4
  mov r1, # 1
  bl printf
  mov r0, r4
  mov r1, # 2
  bl printf
  mov r0, r4
  mov r1, # 3
  bl printf
  mov r0, r4
  mov r1, # 4
  pop { r4, lr }
  b printf

