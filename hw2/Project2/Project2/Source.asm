INCLUDE Irvine32.inc
.data
myMessage BYTE "Hello World!!"  ;�w�qmyMessage���e

.code
main PROC						;�w�q�{��

	mov edx,OFFSET myMessage	;�NOFFSET myMessage����}���ʨ�edx�Ȧs��
	call WriteString			 ;��ܰT���A���myMessage�����e
	call Crlf					;����

exit
main ENDP						;����

END main
