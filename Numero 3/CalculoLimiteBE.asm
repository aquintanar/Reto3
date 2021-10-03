global funcionasm

section .text


funcionasm:
    mov r8,rdi
    mov r9,1

    xorpd xmm0,xmm0
    xorpd xmm1,xmm1 
    xorpd xmm2,xmm2
    xorpd xmm3,xmm3 

    cvtsi2sd xmm0,r8
    cvtsi2sd xmm1,r9

    divsd xmm1,xmm0

    cvtsi2sd xmm0,r9 

    addsd xmm1,xmm0   ;Tenemos en xmm1 el valor


    movsd xmm0,xmm1
    mov rax,rdi
    mov r10,2
    div r10

    mov r11,1
    potencia:
        mulsd xmm1,xmm0
        inc r11
        cmp r11,rax
        jne potencia 
    
    


    mov rax,rdi
    mov r10,2

    div r10

    mov r10,0
    cmp rdx,r10
    je par
    jmp impar


    par:
        mulsd xmm1,xmm1
        movsd xmm0,xmm1  
        ret 


    impar:
        mulsd xmm1,xmm1
        mulsd xmm1,xmm0 
        movsd xmm0,xmm1
        ret



