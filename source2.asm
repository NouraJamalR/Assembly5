.586
.MODEL FLAT
.STACK 4096
INCLUDE io.h
.DATA
    x DWORD ?
	y DWORD ?
	z DWORD ?
	w DWORD ?
	n1 BYTE "Enter first num",0
	n2 BYTE "Enter second num",0
	n3 BYTE "Enter third num",0
	string BYTE 40 DUP(?),0
	res1 BYTE "The Result =",0
	result BYTE 11 DUP (?),0

.CODE
_MainProc PROC
    input n1,string , 40
	atod string 
	mov x,eax
	input n2,string , 40
	atod string 
	mov y,eax
	input n3,string , 40
	atod string 
	mov z,eax
	mov eax,x 
	add eax,y
	mov w,eax
	imul eax,2
	add eax,z
	dtoa result ,eax
	output res1,result
	mov eax,0
	ret

_MainProc ENDP
END