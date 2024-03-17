**INTEL & AT&T**

mov eax, edx       ; eax <- edx. Intel
mov %edx, %eax     # edx -> eax. AT&T
_________________________________________________

b (byte)    1
w (word)    2
l (long)    4
q (quad)    8
t (ten)     10
o (octo)    16

mov eax, edx       ; edx -> eax. Intel.
movl %edx, %eax     # edx -> eax, AT&T.
mov ax, dx         ; dx -> ax. Intel.
movw %dx, %ax       # dx -> ax, AT&T.
mov al, dl         ; dl -> al. Intel.
movb %dl, %al       # dl -> al, AT&T.
_________________________________________________

mov eax, 0x20       ; number 0x20 -> eax. Intel.
movl $0x20, %eax     # number 0x20 -> eax, AT&T.
_________________________________________________

mov eax, dword [0x404010]     ; Move 4 bytes (dword) to
                                eax from memory at address 0x404010. Intel.
movl 0x404010, %eax           # Move 4 bytes (dword) to
                                eax from memory at address 0x404010. AT&T.
mov eax, dword [variable]     ; Move 4 bytes (dword) to
                                eax from memory at the address of variable. Intel.
movl variable, %eax           # Move 4 bytes (dword) to
                                eax from memory at the address of variable. AT&T.
_________________________________________________

**segment register**

es:0x1a       ; Intel
%es.0x1a       # AT&T
_________________________________________________

mov eax, [edx]               ; Move 4 bytes (dword) to eax from memory
                              at the address from edx. Intel.
movl (%edx), %eax            # Move 4 bytes (dword) to eax from memory
                              at the address from edx. AT&T.
add eax, [edx+ebx*4-30]                 ; Add data from memory to eax
                                        at the address, which is calculated as follows: edx+ebx*4-30. Intel.
addl -30(%edx, %ebx, 4), %eax           # Add data from memory to eax
                                        at the address, which is calculated as follows: edx+ebx*4-30. AT&T.
_________________________________________________
