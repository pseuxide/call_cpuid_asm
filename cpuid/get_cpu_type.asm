public get_cpu_type
.code _text
get_cpu_type proc public
    mov     rax, 0                  ; cpuid behaves differently based on the value in rax
    mov     rdi, rcx                ; assign param to rdi which is the sys_type buffer.
    cpuid                           ; call cpuid
    mov     dword ptr [rdi], ebx    ; put first part of result to rdi
    mov     dword ptr [rdi+4], edx  ; put second part of result to rdi
    mov     dword ptr [rdi+8], ecx  ; put third part of result to rdi
    ret
get_cpu_type endp
end
