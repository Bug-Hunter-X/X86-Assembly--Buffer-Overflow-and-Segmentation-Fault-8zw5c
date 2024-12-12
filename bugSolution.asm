section .data

buffer times 100 db 0 ;Example Buffer
bufferSize equ $ - buffer

section .text
  global _start

_start:
  ; Example safe access to buffer
  mov ecx, 5 ; Accessing the 6th element (index 5)
  cmp ecx, bufferSize ; Check bounds before accessing
jge error_handling ;Jump to error handler if index out of bounds
  mov ebx, buffer
  mov eax, [ebx + ecx*1] ; Accessing element at index ecx.  We use 1 instead of 4 to read bytes, not dwords
  ; ... process eax safely ...
  jmp end

error_handling:
  ; Handle the error appropriately
  ; Example: Exit with error code
  mov eax, 1
  xor ebx, ebx
  int 0x80

end:
  mov eax, 1 ; sys_exit
  xor ebx, ebx ; exit code 0
  int 0x80