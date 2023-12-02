.code
detect_vmx_support proc
    xor    rax, rax
    inc    rax
    cpuid
    bt     rcx, 5
    jc     vmx_support
    mov    rax, 0
    jmp    nop_instr
vmx_support:
    mov    rax, 1
nop_instr:
    nop
    ret
detect_vmx_support endp
end
