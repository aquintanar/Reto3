global funcionasm
section .text

funcionasm:
    mov r8,rdi
    xorpd xmm0,xmm0
    xorpd xmm1,xmm1
    xorpd xmm2,xmm2
    xorpd xmm3,xmm3

    mov r9,1
    cvtsi2sd xmm2,r9
    mov r10,r8
    cvtsi2sd xmm3,r10
    divsd xmm2,xmm3

    cvtsi2sd xmm0,r9
    addsd xmm0,xmm2 

    mov r11,1

    movsd xmm1,xmm0
     
    potencia:
        mulsd xmm0,xmm1
        inc r11
        cmp r11,rdi
        jne potencia
    ret 




