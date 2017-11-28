.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    w1 DWORD ?
    w2 DWORD ?
    w3 DWORD ?
    w4 DWORD ?
    g1 DWORD ?
    g2 DWORD ?
    g3 DWORD ?
    g4 DWORD ?
    s1 DWORD ?
  m1 Byte "Enter grade 1",0
  m2 Byte "Enter weight 1",0
  m3 Byte "Enter grade 2",0
  m4 Byte "Enter weight 2",0
  m5 Byte "Enter grade 3",0
  m6 Byte "Enter weight 3",0
  m7 Byte "Enter grade 4",0
  m8 Byte "Enter weight 4",0
    string BYTE 40 DUP(?),0
    re BYTE "weight sum=",0
    string1 BYTE 40 DUP(?),0
    re1 BYTE "Sum of weight",0
    string2 BYTE 11 DUP(?),0
    re2 BYTE "weighted average=",0
    string3 BYTE 11 DUP(?),0
.CODE
_MainProc PROC
       input m1,string,40
         atod string
         mov g1,eax
       input m2,string,40
         atod string
         mov w1,eax
       input m3,string,40
         atod string
         mov g2,eax
       input m4,string,40
         atod string
         mov w2,eax
       input m5,string,40
         atod string
         mov g3,eax
       input m6,string,40
         atod string
         mov w3,eax
       input m7,string,40
         atod string
         mov g4,eax
       input m8,string,40
         atod string
         mov w4,eax
         mov eax,g1
         imul eax,w1
         mov s1,eax
         mov eax,g2
         imul eax,w2
         add eax,s1
         mov s1,eax
         mov eax,g3
         imul eax,w3
         add eax,s1
         mov s1,eax
         mov eax,g4
         imul eax,w4
         add eax,s1 
         mov ebx,eax
         dtoa string1,eax
         output re1,string1
         mov eax,w1
         add eax,w2
         add eax,w3
         add eax,w4
         dtoa string2,eax
         output re2,string2
         atod string2
         xchg eax,ebx
         cdq
         div ebx
         dtoa string3,eax
         output re3,string3
          mov eax,0
          ret
_MainProc ENDP
END

   
