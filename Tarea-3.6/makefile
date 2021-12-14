
# Materia: Lenguajez de interfaz.
# Programador: Manuel Angel Real Castro
# Archivo Makefile: Código que compila los programa de ensamblador incluye limpieza para subir a GitHub.
# Fecha: 06/12/2021

# Makefile
teclado: teclado.o
        ld -o teclado teclado.o

teclado.o:
        as -g -o teclado.o teclado.s

stack: stack.o
        ld -o stack stack.o

stack.o:
        as -g -o stack.o stack.s

prime: prime.o
        ld -o prime prime.o

prime.o:
        as -g -o prime.o prime.s

hanoi: hanoi.o
        ld -o hanoi hanoi.o

hanoi.o:
        as -g -o hanoi.o hanoi.s

greet: greet.o
        ld -o greet greet.o

greet.o:
        as -g -o greet.o greet.s

delay: delay.o
        ld -o delay delay.o

delay.o:
        as -g -o delay.o delay.s

clean:
        rm teclado teclado.o
        rm stack stack.s
        rm prime prime.s
        rm hanoi hanoi.s
        rm greet greet.s
        rm delay delay.s
