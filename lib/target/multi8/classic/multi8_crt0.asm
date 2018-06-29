;       CRT0 for the Multi8
;


	MODULE multi8_crt0 

;-------
; Include zcc_opt.def to find out information about us
;-------

        defc    crt0 = 1
	INCLUDE "zcc_opt.def"

;-------
; Some general scope declarations
;-------

	EXTERN    _main           ;main() is always external to crt0 code

	PUBLIC    cleanup         ;jp'd to by exit()
	PUBLIC    l_dcal          ;jp(hl)



        defc    TAR__fputc_cons_generic = 1
        defc    CONSOLE_ROWS = 20
        defc    CONSOLE_COLUMNS = 40
	defc	CRT_KEY_DEL = 8

	defc	__CPU_CLOCK = 4000000


IF startup = 2
        INCLUDE "target/multi8/classic/64k.asm"
ELSE
        INCLUDE "target/multi8/classic/16k.asm"
ENDIF
l_dcal:	jp	(hl)		;Used for function pointer calls


         defm  "Small C+ Multi8"	;Unnecessary file signature
         defb	0

        INCLUDE "crt/classic/crt_runtime_selection.asm"
	INCLUDE "crt/classic/crt_section.asm"

	SECTION data_crt
	PUBLIC	__vram_in
	PUBLIC	__vram_out
__vram_in:	defb	VRAM_IN
__vram_out:	defb	VRAM_OUT
