;directives
TITLE hw3							;94title 不打還是可以執行
INCLUDE Irvine32.inc

;set valuables
.data
A  DWORD 4d
B  DWORD 3d
C1  DWORD 2d
D  DWORD 1d

;set instructions
.code
main PROC

	mov eax, A						;mov A to eax
	add eax, B						;add B to eax to make (A+B)
	mov ebx, C1						;add C1 to ebx
	add ebx, D						;add D to ebx to make (C1+D)
	sub eax, ebx					;sub ebx to eax to make (A+B) - (C1+D)
	mov A, eax						;mov eas( (A+B) - (C1+D)  ) to A
	mov edx, A						;add A to edx so that we can see A's value
	;call DumpRegs
	;call Crlf
	INVOKE ExitProcess, 0			

main ENDP
END  main