.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    cent DWORD ?
    nickels DWORD ?
    dims DWORD ?
    quarter DWORD ?
    fifty DWORD ?
    dolar DWORD ?
   p1 BYTE "Enter Cent",0
   p2 BYTE "Enter Nickles",0
   p3 BYTE "Enter Dimes",0
   p4 BYTE "Enter Quarter",0
   p5 BYTE "Enter Fifty-cent",0
   p6 BYTE "Enter Dolar",0
   string BYTE 40 DUP(?),0
   s1 BYTE "The Result is",0
   res1 BYTE 11 DUP(?),0
   s2 byte "Reminder =",0
   res2 BYTE 11 DUP(?)
.CODE
_MainProc PROC
         input p1,string,40
          atod string 
          mov cent,eax
         input p2,string,40
          atod string 
          mov nickels,eax
         input p3,string,40
          atod string 
          mov dims,eax
         input p4,string,40
          atod string 
          mov quarter,eax
         input p5,string,40
          atod string 
          mov fifty,eax
         input p6,string,40
          atod string 
          mov dolar,eax
         mov eax,cent
         mov eax,nickels
         imul eax,5
         mov nickels,eax
         mov eax,dims
         imul eax,10
         mov dims,eax
         mov eax,quarter
         imul eax,25
         mov quarter,eax
         mov eax,fifty
         imul eax,50
         mov fifty,eax
         mov eax,dolar
         imul eax,100
         ;mov dolar,eax
         add eax,nickels
         add eax,dims
         add eax,quarter
         add eax,fifty
         add eax,cent
         mov ebx,100
         cdq
         idiv ebx
         dtoa string,eax
         output s1,string
         dtoa res2,edx
         output s2,res2
          mov eax,0
          ret
_MainProc ENDP
END

