TITLE hw4							;94title �����٬O�i�H����
INCLUDE Irvine32.inc

.data
array  DWORD 1d,1d,8 DUP(?)				;�w�]�}�C
tmp	DWORD ?								;temp
.code
main PROC
	mov eax, array						;mov n1 to eax
	mov ebx, array+4					;mov n2 to eax
	mov ecx, 8							;to get n3~n10
	mov edx, 8							;start with n3


L1:
	
	mov [array+edx], eax				;add eax to n
	add [array+edx], ebx				;add ebx to n
	add edx, 4							;to become next indix
	mov tmp, eax
	mov eax, ebx
	add ebx, tmp
	loop L1


	;PRINT N1-N10
	mov ecx, 10
	mov ebx, 0
L2:
	mov eax, [array+ebx]	;
	call WriteDec 						;��ܰT���A�H�Q�i�����array�����e
	call Crlf					
	add ebx, 4
	loop L2


	exit			

main ENDP
END  main