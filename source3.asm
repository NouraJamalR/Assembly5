.586
.MODEL FLAT
.STACK 4096
INCLUDE io.h
.DATA
    l DWORD ?
	w DWORD ?
	len BYTE "Enter length",0
	wid BYTE "Enter width",0
	string BYTE 40 DUP(?),0
	res BYTE "The perimeter",0
	result BYTE 11 DUP(?),0
	.CODE
_MainProc PROC
    input len,string,40
	atod string
	mov l,eax
	input wid,string,40
	atod string
	mov w,eax
	mov eax,l
	add eax,w
	imul eax,2
	dtoa result,eax
	output res,result
	mov eax,0
	ret
_MainProc ENDP
END
