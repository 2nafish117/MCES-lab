org 0000
sjmp MAIN
org 0030h
N equ 6
ELEMENTS: DB 20h, 4h, 7h, 2h, 3h, 1h

MAIN:
mov dptr, #ELEMENTS

mov r0, #30h
mov r1, #N
;copy to data memory starting 30h
L1:
clr a
movc a, @a+dptr
mov @r0, a
inc r0
inc dptr
djnz r1, L1

;start sorting
mov r1, #N - 1
mov r2, #N - 1

LOOP1:
mov r2, #N-1
mov r0, #30h
	LOOP2:
	mov a, @r0
	inc r0
	mov b, @r0
	clr c
	cjne a, b, HERE
	HERE:
	jc SKIP
	mov a, b
	dec r0
	xch a, @r0
	inc r0
	mov @r0, a
	SKIP:
	djnz r2, LOOP2
djnz r1, LOOP1

sjmp $
end






