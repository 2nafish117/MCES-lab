mov r0, #0F0h
mov r1, #30h

mov a, r0
anl a, #0Fh
cjne a, #10, HERE
HERE:
jc SMALL
BIG:
add a, #55
sjmp L1
SMALL:
add a, #'0';add '0'
L1:
mov @r1, a

inc r1

mov a, r0
anl a, #0F0h
swap a
cjne a, #10, HERE1
HERE1:
jc SMALL1
BIG1:
add a, #55
sjmp L2
SMALL1:
add a, #'0';add '0'
L2:
mov @r1, a

sjmp $
end