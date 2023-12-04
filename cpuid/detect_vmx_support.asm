public detect_vmx_support
.code _text
detect_vmx_support proc public
    xor    rax, rax       ; set rax to 0
    inc    rax            ; set rax to 1
    cpuid                 ; call cpuid
    bt     rcx, 5         ; check bit 5 of rcx
    jc     vmx_support    ; if bit 5 is set(1), jump to vmx_support
    mov    rax, 0         ; set rax to 0
    jmp    nop_instr      ; jump to nop_instr
vmx_support:
    mov    rax, 1         ; set return value to 1
nop_instr:
    nop                   ; keep return value 0
    ret
detect_vmx_support endp
end
