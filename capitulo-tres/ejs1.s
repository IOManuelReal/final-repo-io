
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. en Sistemas Computacionales
@@ Autor: Manuel Angel Real Castro  @nickname: IOManuelReal
@@ Fecha de revision: 07/12/2021

/*
* Dado un vector de enteros y su longitud, escribe una función en ensamblador
* que recorra todos los elementos del vector y nos devuelva el valor mínimo. Para
* comprobar su funcionamiento, haz .global la función y tras ensamblarla, enlázala
* con este programa en C.
*/

@@ Nombre: ejs1.s

.data
var1:
  .ascii "%d \n"

.text
.global main

/* Guardamos los registros */
main:
  push  {r4, lr}

/* Iniciamos el contador del bucle donde r4 = 0 */
  mov   r4, #0

/* Bucle que imprime los 10 valores */
bucle:
  mov   r0, r4      @ tomo el contador como parametro
  bl    menor       @ llamo a la funcion
  mov   r1, r0      @ paso resultado a r1
  ldr   r0, =var1   @ pongo cadena en r0
  bl    printf      @ llamo a funcion printf
  add   r4, r4, #1  @ incremento contador de bucle
  cmp   r4, #10     @ comparo si nuestro valor es menor a 10
  bne   bucle       @ si llegamos a 10 salgo del bucle
  
/* Recupero registros y salgo de main */
  pop   {r4, lr}
  bx    lr
  
menor:
  
