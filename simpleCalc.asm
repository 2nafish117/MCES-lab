OPTION equ 00h
ADDI equ 0h
DIFF equ 1h
MULT equ 2h
DIVI equ 3h
	
NUM1 equ 2
NUM2 equ 6
RES equ 30h
REM equ 31h
	
org 0000h
mov r0, #DIVI
ADDITION: 
cjne r0, #ADDI, DIFFERENCE
mov a, #NUM1
mov b, #NUM2
add a, b
sjmp DONE

DIFFERENCE:
cjne r0, #DIFF, MULTIPLICATION
mov a, #NUM1
mov b, #NUM2
subb a, b
sjmp DONE

MULTIPLICATION:
cjne r0, #MULT, DIVISION
mov a, #NUM1
mov b, #NUM2
mul ab
sjmp DONE

DIVISION: 
cjne r0, #DIVI, DONE
mov a, #NUM1
mov b, #NUM2
div ab

DONE:
mov RES, a
mov REM, b 
sjmp $
end