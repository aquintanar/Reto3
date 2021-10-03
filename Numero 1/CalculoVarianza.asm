global calcular_varianzaASM
section .text

calcular_varianzaASM:
;rdi y rsi    
    mov r8,rdi
    mov r9,rsi 
    xorpd xmm0,xmm0
    xorpd xmm1,xmm1
    xorpd xmm2,xmm2 
    xorpd xmm5,xmm5 
    mov r10,0
    mov r11,0
    media:
        movsd xmm0,[rdi]
        addsd xmm1,xmm0 
        add rdi,8
        inc r11 
        cmp r11,r9
        jne media 
    movsd xmm5,xmm1 
    cvtsi2sd xmm2,r9
    divsd xmm5,xmm2 

    mov r10,0
    mov r11,0
    mov rdi,r8
    xorpd xmm1,xmm1
    xorpd xmm0,xmm0 
    sumatoria:
        movsd xmm0,[rdi]
        subsd xmm0,xmm5 
        mulsd xmm0,xmm0
        addsd xmm1,xmm0 
        inc r11 
        add rdi,8
        cmp r11,r9
        jne sumatoria 
    
    cvtsi2sd xmm2,r9
    divsd xmm1,xmm2

    movsd xmm0,xmm1 

    ret  

