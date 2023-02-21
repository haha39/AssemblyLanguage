INCLUDE Irvine32.inc
.data
myMessage BYTE "Hello World!!"  ;定義myMessage內容

.code
main PROC						;定義程序

	mov edx,OFFSET myMessage	;將OFFSET myMessage的位址移動到edx暫存器
	call WriteString			 ;顯示訊息，顯示myMessage之內容
	call Crlf					;換行

exit
main ENDP						;結束

END main
