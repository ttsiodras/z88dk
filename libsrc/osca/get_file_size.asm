;
;	Old School Computer Architecture - interfacing FLOS
;	Stefano Bodrato, 2011
;
;	Get the size for the given file
;
;	$Id: get_file_size.asm,v 1.1 2011-08-04 14:10:13 stefano Exp $
;

    INCLUDE "flos.def"

	XLIB  get_file_size
	
get_file_size:
; __FASTCALL__, HL points to filename
	push	iy
	call	kjt_find_file
	push	ix
	pop		de
	push	iy
	pop		hl
	pop		iy
	ret	z

	ld	hl,0
	ld	d,h
	ld	e,l
	ret
