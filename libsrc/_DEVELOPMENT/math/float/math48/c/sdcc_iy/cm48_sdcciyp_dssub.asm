
; float __fssub (float left, float right)

SECTION code_clib
SECTION code_fp_math48

PUBLIC cm48_sdcciyp_dssub

EXTERN cm48_sdcciyp_dread2, am48_dsub, cm48_sdcciyp_m482d

cm48_sdcciyp_dssub:

   ; subtract two sdcc floats
   ;
   ; enter : stack = sdcc_float right, sdcc_float left, ret
   ;
   ; exit  : dehl = sdcc_float(left-right)
   ;
   ; uses  : af, bc, de, hl, af', bc', de', hl'
   
   call cm48_sdcciyp_dread2

   ; AC = right
   ; AC'= left

   call am48_dsub

   jp cm48_sdcciyp_m482d
