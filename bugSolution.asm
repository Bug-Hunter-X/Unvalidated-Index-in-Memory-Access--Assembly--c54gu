mov ecx, some_value
; Check for out-of-bounds values
cmp ecx, 0 ;Check for negative value
jle error_handling
mov eax, some_size ; Get the size of the array
cmp ecx, eax ; Compare ecx with size
jge error_handling
mov eax, [ebx+ecx*4] ; Access memory safely
jmp next_instruction
error_handling:
; Handle the out-of-bounds error appropriately
; For example, set eax to a default value or return an error code
mov eax, 0
next_instruction:
; Continue execution