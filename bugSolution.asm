mov ecx, [some_validated_ecx_value] ;Ensure ecx is validated
;Add checks to ensure that ecx * 4 does not overflow
mov eax, ecx
mov edx, 4
mul edx ;Multiply ecx by 4. Check the carry flag (CF) to see if there is an overflow.
jnc no_overflow ;Jump if no overflow
;Handle overflow error (e.g., set ecx to a safe value)
no_overflow:
add eax, ebx
mov eax, [eax]; Access memory safely

;Alternative using larger registers
mov rdx, rcx ;Use 64-bit register
mov rax, 4
mul rax ;Multiply rcx by 4
add rax, rbx
mov eax, [rax] ;Access memory
