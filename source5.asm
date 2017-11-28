.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    g1 DWORD ?
	g2 DWORD ?
	g3 DWORD ?
	g4 DWORD ?
	x BYTE "Enter first Grade",0
	y BYTE "Enter second Grade",0
	z BYTE "Enter third Grade",0
	w BYTE "Enter fourth Grade",0
	string BYTE 40 DUP(?),0
	re1 BYTE "Sum =",0
	result1 BYTE 11 DUP(?),0
	re2 BYTE "Average =",0
	result2 BYTE 11 DUP(?),0
.CODE
_MainProc PROC
    input x,string,40
	atod string
	mov g1,eax
	input y,string,40
	atod string
	mov g2,eax
	input z,string,40
	atod string
	mov g3,eax
	input w,string,40
	atod string
	mov g4,eax

	mov eax,g1
	add eax,g2
	add eax,g3
	add eax,g4
	dtoa result1,eax
	output re1,result1

	mov eax,g1
	add eax,g2
	add eax,g3
	add eax,g4
	mov ebx,4
	cdq
	div ebx 
	dtoa result2,eax
	output re2,result2
	mov eax,0
	ret 
_MainProc ENDP
END

