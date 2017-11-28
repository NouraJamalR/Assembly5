.586
.MODEL FLAT
.STACK 4096
 INCLUDE io.h
.DATA
    x DWORD ?
	y DWORD ?
	z DWORD ?
	w DWORD ?
	f1 BYTE "Enter first num",0
	f2 BYTE "Enter second num",0
	f3 BYTE "Enter third num",0
	string BYTE 40 DUP(?),0
	res1 BYTE "The Result =",0
	result BYTE 11 DUP (?),0
.CODE
_MainProc PROC
        input f1,string,40
	      atod string 
	      mov x,eax
	    input f2,string,40
	      atod string 
	      mov y,eax
	    input f3,string,40
	      atod string 
	      mov z,eax
	      mov eax,x 
	      add eax,y
	      mov w,eax
	      mov eax,z
	      imul eax,2
	      sub w,eax
	      add w,1
	      mov eax,w
	      neg eax
	      dtoa result ,eax
	      output res1,result
	    mov eax,0
	    ret
_MainProc ENDP
END