
; int b_vector_front_fastcall(b_vector_t *v)

SECTION code_adt_b_vector

PUBLIC _b_vector_front_fastcall

EXTERN _b_array_front_fastcall

defc _b_vector_front_fastcall = _b_array_front_fastcall

INCLUDE "adt/b_vector/z80/asm_b_vector_front.asm"
