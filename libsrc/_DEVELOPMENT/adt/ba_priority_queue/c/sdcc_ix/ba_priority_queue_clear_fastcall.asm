
; void ba_priority_queue_clear_fastcall(ba_priority_queue_t *q)

SECTION code_adt_ba_priority_queue

PUBLIC _ba_priority_queue_clear_fastcall

defc _ba_priority_queue_clear_fastcall = asm_ba_priority_queue_clear

INCLUDE "adt/ba_priority_queue/z80/asm_ba_priority_queue_clear.asm"
