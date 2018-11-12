ORG 0000h
	sjmp AHEAD
	LIST: db 20h, 30h, 40h, 50h, 60h
		
	AHEAD:
	N equ 5
	KEY equ 40h
	RES equ 30h
	
	mov dptr, #LIST
	mov r0, #N
	
	CONTINUE:
	clr a
	movc a, @a+dptr
	cjne a, #KEY, NOTFOUND
	mov RES, #0F0h
	sjmp DONE
	
	NOTFOUND:
	inc dptr
	djnz r0, CONTINUE
	
	mov RES, #0Fh
	DONE:
	sjmp $
	end