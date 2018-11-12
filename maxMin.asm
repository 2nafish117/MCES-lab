org 0000
sjmp MAIN

N equ 6
MAX equ 30h
MIN equ 31h
ELEMENTS: DB 1h, 45h, 22h, 8h, 4h, 45h

MAIN:
mov dptr, #ELEMENTS
mov r0, #N

clr a
movc a, @a+dptr
mov MIN, a
mov MAX, a

LOOP:
clr a
movc a, @a+dptr
inc dptr

cjne a, MAX, HERE1
HERE1:
jc SMALLER
mov MAX, a
SMALLER:

cjne a, MIN, HERE2
HERE2:
jnc BIGGER
mov MIN, a
BIGGER:

djnz r0, LOOP

sjmp $
end
