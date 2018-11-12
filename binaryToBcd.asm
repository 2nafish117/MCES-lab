org 0000

mov r1, #30h
mov r0, #0FFh

mov a, r0

mov b, #10
div ab
mov @r1, b

inc r1
mov b, #10
div ab
mov @r1, b

inc r1
mov b, #10
div ab
mov @r1, b

sjmp $
end