mov eax, [ebx + ecx*4] ; potential buffer overflow if ecx is too large

mov [eax], 10 ; write to memory location pointed to by eax, potential segfault if eax points to invalid memory