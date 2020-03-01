.data
    output: .asciz "NWD: %d\n"
    input: .asciz "%d"
    num1: .word 0  
    num2: .word 0  

.text
.global main
main:
    push {LR}

load_numbers:
    ldr r0, =input  
    ldr r1, =num1
    bl scanf   

    ldr r0, =input  
    ldr r1, =num2 
    bl scanf  
    
    ldr r0, =num1
    ldr r0, [r0]
    ldr r1, =num2
    ldr r1, [r1]

calc_nwd:
    cmp r0, r1
    subgt r0, r0, r1
    suble r1, r1, r0 
    cmp r0, r1
    bne calc_nwd

print_nwd:
    ldr r0, =output  
    bl printf   

_exit:
    pop {LR}
    mov pc, LR
