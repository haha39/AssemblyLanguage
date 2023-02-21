TITLE hw4							;94title 不打還是可以執行
INCLUDE Irvine32.inc

;set valuables
.data
array  WORD 1d,1d,8 DUP(?)

;set instructions
.code
main PROC

	;print n1~n2
	mov eax, array						;mov n1 to eax
	;call DumpRegs
	;call Crlf
	mov ebx, array+2					;mov n2 to eax
	;call DumpRegs
	;call Crlf
	mov ecx, 8							;to get n3~n10
	mov edx, 4

	;print n3~n10
LLC1:
	
	add array+edx, eax						;add eax to n3 
	add array+edx, ebx						;add ebx to n3
	add edx, 2
	mov eax, ebx
	mov ebx array+edx
	;call DumpRegs
	;call Crlf
	loop LLC1

	INVOKE ExitProcess, 0			

main ENDP
END  main