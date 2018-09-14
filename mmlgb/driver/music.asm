;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Wed Sep 12 19:33:30 2018

;--------------------------------------------------------
	.module lcc53900
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mus_rep_depth4
	.globl _mus_rep_depth3
	.globl _mus_rep_depth2
	.globl _mus_rep_depth1
	.globl _mus_repeats4
	.globl _mus_repeats3
	.globl _mus_repeats2
	.globl _mus_repeats1
	.globl _mus_rep4
	.globl _mus_rep3
	.globl _mus_rep2
	.globl _mus_rep1
	.globl _mus_po3
	.globl _mus_po2
	.globl _mus_po1
	.globl _mus_noise_step
	.globl _mus_vib_delay2
	.globl _mus_vib_delay1
	.globl _mus_vib_pos2
	.globl _mus_vib_pos1
	.globl _mus_vib_table2
	.globl _mus_vib_table1
	.globl _mus_vib_speed2
	.globl _mus_vib_speed1
	.globl _mus_porta4
	.globl _mus_porta2
	.globl _mus_porta1
	.globl _mus_slide4
	.globl _mus_slide2
	.globl _mus_slide1
	.globl _mus_target4
	.globl _mus_target2
	.globl _mus_target1
	.globl _mus_wait4
	.globl _mus_wait3
	.globl _mus_wait2
	.globl _mus_wait1
	.globl _mus_duty2
	.globl _mus_duty1
	.globl _mus_pan4
	.globl _mus_pan3
	.globl _mus_pan2
	.globl _mus_pan1
	.globl _mus_env4
	.globl _mus_env2
	.globl _mus_env1
	.globl _mus_volume4
	.globl _mus_volume3
	.globl _mus_volume2
	.globl _mus_volume1
	.globl _mus_length4
	.globl _mus_length3
	.globl _mus_length2
	.globl _mus_length1
	.globl _mus_octave4
	.globl _mus_octave3
	.globl _mus_octave2
	.globl _mus_octave1
	.globl _mus_loop4
	.globl _mus_loop3
	.globl _mus_loop2
	.globl _mus_loop1
	.globl _mus_data4
	.globl _mus_data3
	.globl _mus_data2
	.globl _mus_data1
	.globl _mus_freq4
	.globl _mus_freq3
	.globl _mus_freq2
	.globl _mus_freq1
	.globl _mus_done4
	.globl _mus_done3
	.globl _mus_done2
	.globl _mus_done1
	.globl _mus_enabled4
	.globl _mus_enabled1
	.globl _mus_song
	.globl _mus_step
	.globl _mus_paused
	.globl _mus_init
	.globl _mus_setPaused
	.globl _mus_togglePaused
	.globl _mus_disable1
	.globl _mus_disable4
	.globl _mus_restore1
	.globl _mus_restore4
	.globl _mus_is_done
	.globl _mus_update
	.globl _mus_update1
	.globl _mus_update2
	.globl _mus_update3
	.globl _mus_update4
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area _DATA
_mus_paused::
	.ds 1
_mus_step::
	.ds 1
_mus_song::
	.ds 2
_mus_enabled1::
	.ds 1
_mus_enabled4::
	.ds 1
_mus_done1::
	.ds 1
_mus_done2::
	.ds 1
_mus_done3::
	.ds 1
_mus_done4::
	.ds 1
_mus_freq1::
	.ds 2
_mus_freq2::
	.ds 2
_mus_freq3::
	.ds 2
_mus_freq4::
	.ds 1
_mus_data1::
	.ds 2
_mus_data2::
	.ds 2
_mus_data3::
	.ds 2
_mus_data4::
	.ds 2
_mus_loop1::
	.ds 2
_mus_loop2::
	.ds 2
_mus_loop3::
	.ds 2
_mus_loop4::
	.ds 2
_mus_octave1::
	.ds 1
_mus_octave2::
	.ds 1
_mus_octave3::
	.ds 1
_mus_octave4::
	.ds 1
_mus_length1::
	.ds 1
_mus_length2::
	.ds 1
_mus_length3::
	.ds 1
_mus_length4::
	.ds 1
_mus_volume1::
	.ds 1
_mus_volume2::
	.ds 1
_mus_volume3::
	.ds 1
_mus_volume4::
	.ds 1
_mus_env1::
	.ds 1
_mus_env2::
	.ds 1
_mus_env4::
	.ds 1
_mus_pan1::
	.ds 1
_mus_pan2::
	.ds 1
_mus_pan3::
	.ds 1
_mus_pan4::
	.ds 1
_mus_duty1::
	.ds 1
_mus_duty2::
	.ds 1
_mus_wait1::
	.ds 1
_mus_wait2::
	.ds 1
_mus_wait3::
	.ds 1
_mus_wait4::
	.ds 1
_mus_target1::
	.ds 2
_mus_target2::
	.ds 2
_mus_target4::
	.ds 2
_mus_slide1::
	.ds 1
_mus_slide2::
	.ds 1
_mus_slide4::
	.ds 1
_mus_porta1::
	.ds 1
_mus_porta2::
	.ds 1
_mus_porta4::
	.ds 1
_mus_vib_speed1::
	.ds 1
_mus_vib_speed2::
	.ds 1
_mus_vib_table1::
	.ds 2
_mus_vib_table2::
	.ds 2
_mus_vib_pos1::
	.ds 1
_mus_vib_pos2::
	.ds 1
_mus_vib_delay1::
	.ds 1
_mus_vib_delay2::
	.ds 1
_mus_noise_step::
	.ds 1
_mus_po1::
	.ds 1
_mus_po2::
	.ds 1
_mus_po3::
	.ds 1
_mus_rep1::
	.ds 8
_mus_rep2::
	.ds 8
_mus_rep3::
	.ds 8
_mus_rep4::
	.ds 8
_mus_repeats1::
	.ds 4
_mus_repeats2::
	.ds 4
_mus_repeats3::
	.ds 4
_mus_repeats4::
	.ds 4
_mus_rep_depth1::
	.ds 1
_mus_rep_depth2::
	.ds 1
_mus_rep_depth3::
	.ds 1
_mus_rep_depth4::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area _ISEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area _BSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area _XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;	music.c 42
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_init
; ---------------------------------
___mus_init_start:
_mus_init:
	lda	sp,-2(sp)
;	music.c 45
;	genAssign
	ld	bc,#0xFF26
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	music.c 46
;	genAssign
	ld	bc,#0xFF25
;	genAssign (pointer)
	ld	a,#0xFF
	ld	(bc),a
;	music.c 47
;	genAssign
	ld	bc,#0xFF24
;	genAssign (pointer)
	ld	a,#0xFF
	ld	(bc),a
;	music.c 50
;	genAssign
	ld	bc,#0xFF10
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 51
;	genAssign
	ld	bc,#0xFF12
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 52
;	genAssign
	ld	bc,#0xFF17
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 53
;	genAssign
	ld	bc,#0xFF1A
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 54
;	genAssign
	ld	bc,#0xFF1C
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 55
;	genAssign
	ld	bc,#0xFF21
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 58
;	genAssign
	ld	bc,#0xFF07
;	genAssign (pointer)
	ld	a,#0x04
	ld	(bc),a
;	music.c 59
;	genAssign
	ld	bc,#0xFF06
;	genAssign (pointer)
	ld	a,#0xCC
	ld	(bc),a
;	music.c 62
;	genAssign
;	AOP_HL for _mus_paused
	ld	hl,#_mus_paused
	ld	(hl),#0x00
;	music.c 63
;	genAssign
;	AOP_HL for _mus_step
	ld	hl,#_mus_step
	ld	(hl),#0x00
;	music.c 65
;	genAssign
;	AOP_STK for 
;	AOP_HL for _mus_song
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_song
	ld	(hl+),a
	ld	(hl),e
;	music.c 66
;	genAssign
;	AOP_HL for _mus_song
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_HL for _mus_song
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl)
	add	a,c
	ld	c,a
	inc	hl
	ld	a,(hl)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_HL for _mus_loop1
	ld	hl,#_mus_loop1
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	music.c 67
;	genAssign
;	AOP_HL for _mus_song
	ld	hl,#_mus_song
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_HL for _mus_song
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl)
	add	a,c
	ld	c,a
	inc	hl
	ld	a,(hl)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_HL for _mus_loop2
	ld	hl,#_mus_loop2
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	music.c 68
;	genAssign
;	AOP_HL for _mus_song
	ld	hl,#_mus_song
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_HL for _mus_song
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl)
	add	a,c
	ld	c,a
	inc	hl
	ld	a,(hl)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_HL for _mus_loop3
	ld	hl,#_mus_loop3
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	music.c 69
;	genAssign
;	AOP_HL for _mus_song
	ld	hl,#_mus_song
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,c
	add	a,#0x06
	ld	c,a
	ld	a,b
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_HL for _mus_song
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl)
	add	a,c
	ld	c,a
	inc	hl
	ld	a,(hl)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_HL for _mus_loop4
	ld	hl,#_mus_loop4
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	music.c 71
;	genAssign
;	AOP_HL for _mus_enabled4
	ld	hl,#_mus_enabled4
	ld	(hl),#0x01
;	genAssign
;	AOP_HL for _mus_enabled1
	ld	hl,#_mus_enabled1
	ld	(hl),#0x01
;	music.c 72
;	genAssign
;	AOP_HL for _mus_done4
	ld	hl,#_mus_done4
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_done3
	ld	hl,#_mus_done3
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_done2
	ld	hl,#_mus_done2
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_done1
	ld	hl,#_mus_done1
	ld	(hl),#0x00
;	music.c 73
;	genAssign
;	AOP_HL for _mus_wait4
	ld	hl,#_mus_wait4
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_wait3
	ld	hl,#_mus_wait3
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_wait2
	ld	hl,#_mus_wait2
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_wait1
	ld	hl,#_mus_wait1
	ld	(hl),#0x00
;	music.c 74
;	genAssign
;	AOP_HL for _mus_octave4
	ld	hl,#_mus_octave4
	ld	(hl),#0x04
;	genAssign
;	AOP_HL for _mus_octave3
	ld	hl,#_mus_octave3
	ld	(hl),#0x04
;	genAssign
;	AOP_HL for _mus_octave2
	ld	hl,#_mus_octave2
	ld	(hl),#0x04
;	genAssign
;	AOP_HL for _mus_octave1
	ld	hl,#_mus_octave1
	ld	(hl),#0x04
;	music.c 75
;	genAssign
;	AOP_HL for _mus_length4
	ld	hl,#_mus_length4
	ld	(hl),#0x30
;	genAssign
;	AOP_HL for _mus_length3
	ld	hl,#_mus_length3
	ld	(hl),#0x30
;	genAssign
;	AOP_HL for _mus_length2
	ld	hl,#_mus_length2
	ld	(hl),#0x30
;	genAssign
;	AOP_HL for _mus_length1
	ld	hl,#_mus_length1
	ld	(hl),#0x30
;	music.c 76
;	genAssign
;	AOP_HL for _mus_volume4
	ld	hl,#_mus_volume4
	ld	(hl),#0xF0
;	genAssign
;	AOP_HL for _mus_volume2
	ld	hl,#_mus_volume2
	ld	(hl),#0xF0
;	genAssign
;	AOP_HL for _mus_volume1
	ld	hl,#_mus_volume1
	ld	(hl),#0xF0
;	music.c 77
;	genAssign
;	AOP_HL for _mus_volume3
	ld	hl,#_mus_volume3
	ld	(hl),#0x20
;	music.c 78
;	genAssign
;	AOP_HL for _mus_env4
	ld	hl,#_mus_env4
	ld	(hl),#0x03
;	genAssign
;	AOP_HL for _mus_env2
	ld	hl,#_mus_env2
	ld	(hl),#0x03
;	genAssign
;	AOP_HL for _mus_env1
	ld	hl,#_mus_env1
	ld	(hl),#0x03
;	music.c 79
;	genAssign
;	AOP_HL for _mus_rep_depth4
	ld	hl,#_mus_rep_depth4
	ld	(hl),#0xFF
;	genAssign
;	AOP_HL for _mus_rep_depth3
	ld	hl,#_mus_rep_depth3
	ld	(hl),#0xFF
;	genAssign
;	AOP_HL for _mus_rep_depth2
	ld	hl,#_mus_rep_depth2
	ld	(hl),#0xFF
;	genAssign
;	AOP_HL for _mus_rep_depth1
	ld	hl,#_mus_rep_depth1
	ld	(hl),#0xFF
;	music.c 80
;	genAssign
;	AOP_HL for _mus_slide4
	ld	hl,#_mus_slide4
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_slide2
	ld	hl,#_mus_slide2
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_slide1
	ld	hl,#_mus_slide1
	ld	(hl),#0x00
;	music.c 81
;	genAssign
;	AOP_HL for _mus_porta4
	ld	hl,#_mus_porta4
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_porta2
	ld	hl,#_mus_porta2
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_porta1
	ld	hl,#_mus_porta1
	ld	(hl),#0x00
;	music.c 82
;	genAssign
;	AOP_HL for _mus_vib_speed2
	ld	hl,#_mus_vib_speed2
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _mus_vib_speed1
	ld	hl,#_mus_vib_speed1
	ld	(hl),#0x00
;	music.c 83
;	genAssign
;	AOP_HL for _mus_noise_step
	ld	hl,#_mus_noise_step
	ld	(hl),#0x00
;	music.c 84
;	genAssign
;	AOP_HL for _mus_po3
	ld	hl,#_mus_po3
	ld	(hl),#0x80
;	genAssign
;	AOP_HL for _mus_po2
	ld	hl,#_mus_po2
	ld	(hl),#0x80
;	genAssign
;	AOP_HL for _mus_po1
	ld	hl,#_mus_po1
	ld	(hl),#0x80
;	music.c 85
;	genAssign
;	AOP_HL for _mus_pan4
	ld	hl,#_mus_pan4
	ld	(hl),#0x11
;	genAssign
;	AOP_HL for _mus_pan3
	ld	hl,#_mus_pan3
	ld	(hl),#0x11
;	genAssign
;	AOP_HL for _mus_pan2
	ld	hl,#_mus_pan2
	ld	(hl),#0x11
;	genAssign
;	AOP_HL for _mus_pan1
	ld	hl,#_mus_pan1
	ld	(hl),#0x11
;	music.c 87
;	genAssign
	ld	c,#0x00
;	genLabel
00101$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	a,#0x04
	jp	z,00105$
00109$:
;	music.c 88
;	genPlus
;	AOP_STK for _mus_init_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_repeats1
	ld	l,c
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _mus_init_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	music.c 89
;	genPlus
;	AOP_STK for _mus_init_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_repeats2
	ld	l,c
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _mus_init_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	music.c 90
;	genPlus
;	AOP_STK for _mus_init_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_repeats3
	ld	l,c
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _mus_init_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	music.c 91
;	genPlus
;	AOP_STK for _mus_init_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_repeats4
	ld	l,c
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _mus_init_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	music.c 87
;	genPlus
;	genPlusIncr
; Removed redundent load
	inc	c
;	genGoto
	jp	00101$
;	genLabel
00105$:
;	genEndFunction
	lda	sp,2(sp)
	ret
___mus_init_end:
;	music.c 95
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_setPaused
; ---------------------------------
___mus_setPaused_start:
_mus_setPaused:
	lda	sp,-6(sp)
;	music.c 96
;	genAssign
;	AOP_STK for 
;	AOP_HL for _mus_paused
	lda	hl,8(sp)
	ld	a,(hl)
	ld	hl,#_mus_paused
	ld	(hl),a
;	music.c 98
;	genIfx
;	AOP_HL for _mus_paused
	xor	a,a
	or	a,(hl)
	jp	z,00103$
;	music.c 99
;	genAssign
	ld	bc,#0xFF12
;	genAssign
;	AOP_STK for _mus_setPaused_sloc0_1_0
	lda	hl,4(sp)
	ld	(hl),#0x17
	inc	hl
	ld	(hl),#0xFF
;	genAssign
;	AOP_STK for _mus_setPaused_sloc1_1_0
	lda	hl,2(sp)
	ld	(hl),#0x1C
	inc	hl
	ld	(hl),#0xFF
;	genAssign
;	AOP_STK for _mus_setPaused_sloc2_1_0
	lda	hl,0(sp)
	ld	(hl),#0x21
	inc	hl
	ld	(hl),#0xFF
;	genAssign (pointer)
;	AOP_STK for _mus_setPaused_sloc2_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	genAssign (pointer)
;	AOP_STK for _mus_setPaused_sloc1_1_0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	genAssign (pointer)
;	AOP_STK for _mus_setPaused_sloc0_1_0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 100
;	genAssign
	ld	bc,#0xFF14
;	genAssign
;	AOP_STK for _mus_setPaused_sloc2_1_0
	lda	hl,0(sp)
	ld	(hl),#0x19
	inc	hl
	ld	(hl),#0xFF
;	genAssign
;	AOP_STK for _mus_setPaused_sloc1_1_0
	inc	hl
	ld	(hl),#0x1E
	inc	hl
	ld	(hl),#0xFF
;	genAssign
;	AOP_STK for _mus_setPaused_sloc0_1_0
	inc	hl
	ld	(hl),#0x23
	inc	hl
	ld	(hl),#0xFF
;	genAssign (pointer)
;	AOP_STK for _mus_setPaused_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x80
	ld	(de),a
;	genAssign (pointer)
;	AOP_STK for _mus_setPaused_sloc1_1_0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x80
	ld	(de),a
;	genAssign (pointer)
;	AOP_STK for _mus_setPaused_sloc2_1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x80
	ld	(de),a
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	genLabel
00103$:
;	genEndFunction
	lda	sp,6(sp)
	ret
___mus_setPaused_end:
;	music.c 104
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_togglePaused
; ---------------------------------
___mus_togglePaused_start:
_mus_togglePaused:
	
;	music.c 105
;	genXor
;	AOP_HL for _mus_paused
	ld	a,#0x01
	ld	hl,#_mus_paused
	xor	a,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genCall
	call	_mus_setPaused
	lda	sp,1(sp)
;	genLabel
00101$:
;	genEndFunction
	
	ret
___mus_togglePaused_end:
;	music.c 108
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_disable1
; ---------------------------------
___mus_disable1_start:
_mus_disable1:
	
;	music.c 109
;	genAssign
;	AOP_HL for _mus_enabled1
	ld	hl,#_mus_enabled1
	ld	(hl),#0x00
;	music.c 110
;	genAssign
	ld	bc,#0xFF13
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 111
;	genAssign
	ld	bc,#0xFF14
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	genLabel
00101$:
;	genEndFunction
	
	ret
___mus_disable1_end:
;	music.c 114
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_disable4
; ---------------------------------
___mus_disable4_start:
_mus_disable4:
	
;	music.c 115
;	genAssign
;	AOP_HL for _mus_enabled4
	ld	hl,#_mus_enabled4
	ld	(hl),#0x00
;	music.c 116
;	genAssign
	ld	bc,#0xFF22
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 117
;	genAssign
	ld	bc,#0xFF23
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	genLabel
00101$:
;	genEndFunction
	
	ret
___mus_disable4_end:
;	music.c 120
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_restore1
; ---------------------------------
___mus_restore1_start:
_mus_restore1:
	lda	sp,-3(sp)
;	music.c 121
;	genAssign
;	AOP_HL for _mus_enabled1
	ld	hl,#_mus_enabled1
	ld	(hl),#0x02
;	music.c 122
;	genAssign
	ld	bc,#0xFF25
;	genAssign
;	AOP_STK for _mus_restore1_sloc0_1_0
	lda	hl,1(sp)
	ld	(hl),#0x25
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _mus_restore1_sloc0_1_0
;	AOP_STK for _mus_restore1_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genAnd
;	AOP_STK for _mus_restore1_sloc1_1_0
;	AOP_STK for _mus_restore1_sloc0_1_0
	ld      (hl),a
	ld      a,a
	and	a,#0xEE
	inc	hl
;	genOr
;	AOP_STK for _mus_restore1_sloc0_1_0
;	AOP_HL for _mus_pan1
	ld      (hl),a
	ld      a,a
	ld	hl,#_mus_pan1
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 123
;	genAssign
	ld	bc,#0xFF11
;	genLeftShift
;	AOP_HL for _mus_duty1
;	AOP_STK for _mus_restore1_sloc1_1_0
	ld	hl,#_mus_duty1
	ld	a,(hl)
	srl	a
	rr	a
	rr	a
	and	a,#0xE0
	lda	hl,0(sp)
;	genAssign (pointer)
;	AOP_STK for _mus_restore1_sloc1_1_0
	ld      (hl),a
	ld      a,a
	ld	(bc),a
;	music.c 124
;	genAssign
	ld	bc,#0xFF12
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 125
;	genAssign
	ld	bc,#0xFF14
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	genLabel
00101$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___mus_restore1_end:
;	music.c 128
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_restore4
; ---------------------------------
___mus_restore4_start:
_mus_restore4:
	lda	sp,-3(sp)
;	music.c 129
;	genAssign
;	AOP_HL for _mus_enabled4
	ld	hl,#_mus_enabled4
	ld	(hl),#0x02
;	music.c 130
;	genAssign
	ld	bc,#0xFF25
;	genAssign
;	AOP_STK for _mus_restore4_sloc0_1_0
	lda	hl,1(sp)
	ld	(hl),#0x25
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _mus_restore4_sloc0_1_0
;	AOP_STK for _mus_restore4_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genAnd
;	AOP_STK for _mus_restore4_sloc1_1_0
;	AOP_STK for _mus_restore4_sloc0_1_0
	ld      (hl),a
	ld      a,a
	and	a,#0x77
	inc	hl
	ld	(hl),a
;	genLeftShift
;	AOP_HL for _mus_pan4
;	AOP_STK for _mus_restore4_sloc1_1_0
	ld	hl,#_mus_pan4
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	and	a,#0xF8
	lda	hl,0(sp)
;	genOr
;	AOP_STK for _mus_restore4_sloc0_1_0
;	AOP_STK for _mus_restore4_sloc1_1_0
	ld	(hl+),a
	ld	a,(hl)
	dec	hl
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 131
;	genAssign
	ld	bc,#0xFF21
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 132
;	genAssign
	ld	bc,#0xFF23
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	genLabel
00101$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___mus_restore4_end:
;	music.c 135
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_is_done
; ---------------------------------
___mus_is_done_start:
_mus_is_done:
	
;	music.c 136
;	genAndOp
;	AOP_HL for _mus_done1
;	AOP_HL for _mus_done2
	xor	a,a
	ld	hl,#_mus_done1
	or	a,(hl)
	jr	z,00103$
	xor	a,a
	ld	hl,#_mus_done2
	or	a,(hl)
00103$:
	jr	z,00104$
	ld	a,#0x01
00104$:
	ld	c,a
;	genAndOp
;	AOP_HL for _mus_done3
	xor	a,a
	or	a,c
	jr	z,00105$
	xor	a,a
	ld	hl,#_mus_done3
	or	a,(hl)
00105$:
	jr	z,00106$
	ld	a,#0x01
00106$:
	ld	c,a
;	genAndOp
;	AOP_HL for _mus_done4
	xor	a,a
	or	a,c
	jr	z,00107$
	xor	a,a
	ld	hl,#_mus_done4
	or	a,(hl)
00107$:
	jr	z,00108$
	ld	a,#0x01
00108$:
	ld	c,a
;	genOrOp
;	AOP_HL for _mus_paused
	xor	a,a
	ld	hl,#_mus_paused
	or	a,(hl)
	jr	nz,00109$
	xor	a,a
	or	a,c
00109$:
	jr	z,00110$
	ld	a,#0x01
00110$:
	ld	c,a
;	genRet
	ld	e,c
;	genLabel
00101$:
;	genEndFunction
	
	ret
___mus_is_done_end:
;	music.c 139
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_update
; ---------------------------------
___mus_update_start:
_mus_update:
	
;	music.c 140
;	genIfx
;	AOP_HL for _mus_paused
	xor	a,a
	ld	hl,#_mus_paused
	or	a,(hl)
;	genRet
;	genLabel
	jp	nz,00103$
00102$:
;	music.c 142
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_mus_update1
;	music.c 143
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_mus_update2
;	music.c 144
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_mus_update3
;	music.c 145
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_mus_update4
;	genLabel
00103$:
;	genEndFunction
	
	ret
___mus_update_end:
;	music.c 148
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_update1
; ---------------------------------
___mus_update1_start:
_mus_update1:
	lda	sp,-8(sp)
;	music.c 152
;	genIfx
;	AOP_HL for _mus_slide1
	xor	a,a
	ld	hl,#_mus_slide1
	or	a,(hl)
	jp	z,00113$
;	genAnd
;	AOP_HL for _mus_step
	ld	hl,#_mus_step
	ld	a,(hl)
	and	a,#0x03
	jr	nz,00247$
	jp	00248$
00247$:
	jp	00113$
00248$:
;	music.c 153
;	genCmpGt
;	AOP_HL for _mus_target1
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_freq1
	ld	a,(hl)
	ld	hl,#_mus_target1
	sub	a,(hl)
	ld	hl,#_mus_freq1 + 1
	ld	a,(hl)
	ld	hl,#_mus_target1 + 1
	sbc	a,(hl)
	jp	nc,00108$
;	music.c 154
;	genCast
;	AOP_HL for _mus_slide1
	ld	hl,#_mus_slide1
	ld	c,(hl)
	ld	b,#0x00
;	genPlus
;	AOP_HL for _mus_freq1
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_freq1
	ld	a,(hl)
	add	a,c
	ld	(hl+),a
	ld	a,(hl)
	adc	a,b
	ld	(hl),a
;	music.c 155
;	genCmpGt
;	AOP_HL for _mus_freq1
;	AOP_HL for _mus_target1
	ld	hl,#_mus_target1
	ld	a,(hl)
	ld	hl,#_mus_freq1
	sub	a,(hl)
	ld	hl,#_mus_target1 + 1
	ld	a,(hl)
	ld	hl,#_mus_freq1 + 1
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 156
;	genAssign
;	AOP_HL for _mus_target1
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_target1
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_freq1
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00109$
;	genLabel
00108$:
;	music.c 159
;	genCmpLt
;	AOP_HL for _mus_target1
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_target1
	ld	a,(hl)
	ld	hl,#_mus_freq1
	sub	a,(hl)
	ld	hl,#_mus_target1 + 1
	ld	a,(hl)
	ld	hl,#_mus_freq1 + 1
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 160
;	genCast
;	AOP_HL for _mus_slide1
	ld	hl,#_mus_slide1
	ld	c,(hl)
	ld	b,#0x00
;	genMinus
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_freq1
	ld	a,(hl)
	sub	a,c
	ld	(hl+),a
	ld	a,(hl)
	sbc	a,b
;	music.c 161
;	genCmpLt
;	AOP_HL for _mus_freq1
;	AOP_HL for _mus_target1
	ld      (hl-),a
	ld	a,(hl)
	ld	hl,#_mus_target1
	sub	a,(hl)
	ld	hl,#_mus_freq1 + 1
	ld	a,(hl)
	ld	hl,#_mus_target1 + 1
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 162
;	genAssign
;	AOP_HL for _mus_target1
;	AOP_HL for _mus_freq1
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_freq1
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00109$:
;	music.c 165
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00113$
;	music.c 166
;	genAssign
	ld	bc,#0xFF13
;	genCast
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_freq1
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 167
;	genAssign
	ld	bc,#0xFF14
;	genRightShift
;	AOP_HL for _mus_freq1
;	AOP_STK for _mus_update1_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genCast
;	AOP_STK for _mus_update1_sloc0_1_0
	dec	hl
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00113$:
;	music.c 171
;	genIfx
;	AOP_HL for _mus_vib_delay1
	xor	a,a
	ld	hl,#_mus_vib_delay1
	or	a,(hl)
	jp	z,00120$
;	music.c 172
;	genMinus
;	AOP_HL for _mus_vib_delay1
	dec	(hl)
;	genGoto
	jp	00121$
;	genLabel
00120$:
;	music.c 174
;	genIfx
;	AOP_HL for _mus_vib_speed1
	xor	a,a
	ld	hl,#_mus_vib_speed1
	or	a,(hl)
	jp	z,00121$
;	music.c 175
;	genPlus
;	AOP_HL for _mus_vib_pos1
;	AOP_HL for _mus_vib_speed1
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_vib_pos1
	ld	a,(hl)
	ld	hl,#_mus_vib_speed1
	add	a,(hl)
;	genAnd
;	AOP_HL for _mus_vib_pos1
	ld	c,a
	and	a,#0x3F
	ld	hl,#_mus_vib_pos1
	ld	(hl),a
;	music.c 176
;	genAssign
;	AOP_HL for _mus_vib_table1
	ld	hl,#_mus_vib_table1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genMinus
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_freq1
	ld	a,(hl)
	sub	a,c
	ld	c,a
	inc	hl
	ld	a,(hl)
	sbc	a,b
	ld	b,a
;	genPlus
;	AOP_HL for _mus_vib_table1
;	AOP_HL for _mus_vib_pos1
;	AOP_STK for _mus_update1_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_vib_table1
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#_mus_vib_pos1
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,3(sp)
;	genPointerGet
;	AOP_STK for _mus_update1_sloc0_1_0
;	AOP_STK for _mus_update1_sloc1_1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
;	genCast
;	AOP_STK for _mus_update1_sloc1_1_0
;	AOP_STK for _mus_update1_sloc0_1_0
	ld	a,(hl+)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update1_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for _mus_update1_vib_freq_1_1
	lda	hl,5(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	music.c 178
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00121$
;	music.c 179
;	genAssign
	ld	bc,#0xFF13
;	genCast
;	AOP_STK for _mus_update1_vib_freq_1_1
	lda	hl,5(sp)
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 180
;	genAssign
	ld	bc,#0xFF14
;	genRightShift
;	AOP_STK for _mus_update1_vib_freq_1_1
;	AOP_STK for _mus_update1_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genCast
;	AOP_STK for _mus_update1_sloc0_1_0
	dec	hl
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00121$:
;	music.c 184
;	genIfx
;	AOP_HL for _mus_wait1
	xor	a,a
	ld	hl,#_mus_wait1
	or	a,(hl)
	jp	z,00206$
;	music.c 185
;	genMinus
;	AOP_HL for _mus_wait1
	dec	(hl)
;	music.c 186
;	genIfx
;	AOP_HL for _mus_wait1
	xor	a,a
	or	a,(hl)
;	genRet
;	music.c 189
;	genLabel
	jp	nz,00208$
00206$:
;	music.c 190
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00249$
	inc	hl
	inc	(hl)
00249$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 191
;	genCmpLt
;	AOP_STK for _mus_update1_note_1_1
	ld	a,(hl)
	cp	#0x14
	jp	c,00147$
;	music.c 192
;	genAnd
;	AOP_STK for _mus_update1_note_1_1
	ld	a,(hl)
	and	a,#0x80
	jr	nz,00250$
	jp	00127$
00250$:
;	music.c 193
;	genXor
;	AOP_STK for _mus_update1_note_1_1
	ld	a,#0x80
	lda	hl,7(sp)
	xor	a,(hl)
	ld	(hl),a
;	music.c 194
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00251$
	inc	hl
	inc	(hl)
00251$:
;	genPointerGet
;	AOP_HL for _mus_wait1
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	hl,#_mus_wait1
	ld	(hl),a
;	genGoto
	jp	00128$
;	genLabel
00127$:
;	music.c 197
;	genAssign
;	AOP_HL for _mus_length1
;	AOP_HL for _mus_wait1
	ld	hl,#_mus_length1
	ld	a,(hl)
	ld	hl,#_mus_wait1
	ld	(hl),a
;	genLabel
00128$:
;	music.c 199
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x21
	jp	nz,00140$
	jr	00253$
00252$:
	jp	00140$
00253$:
;	music.c 200
;	genRet
	jp	00208$
;	genLabel
00140$:
;	music.c 201
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x20
	jp	nz,00137$
	jr	00255$
00254$:
	jp	00137$
00255$:
;	music.c 202
;	genAssign
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_freq1
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	music.c 203
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00141$
;	genAssign
	ld	bc,#0xFF12
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	genGoto
	jp	00141$
;	genLabel
00137$:
;	music.c 205
;	genIfx
;	AOP_HL for _mus_porta1
	xor	a,a
	ld	hl,#_mus_porta1
	or	a,(hl)
	jp	z,00132$
;	music.c 206
;	genLeftShift
;	AOP_HL for _mus_octave1
	ld	hl,#_mus_octave1
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update1_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,7(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_freq
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_HL for _mus_po1
;	AOP_STK for _mus_update1_sloc0_1_0
	ld	hl,#_mus_po1
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update1_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_HL for _mus_target1
	ld	a,c
	add	a,#0x80
	ld	hl,#_mus_target1
	ld	(hl),a
	ld	a,b
	adc	a,#0xFF
	inc	hl
	ld	(hl),a
;	genGoto
	jp	00133$
;	genLabel
00132$:
;	music.c 208
;	genLeftShift
;	AOP_HL for _mus_octave1
	ld	hl,#_mus_octave1
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update1_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,7(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_freq
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_HL for _mus_po1
;	AOP_STK for _mus_update1_sloc0_1_0
	ld	hl,#_mus_po1
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update1_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_HL for _mus_freq1
	ld	a,c
	add	a,#0x80
	ld	hl,#_mus_freq1
	ld	(hl),a
	ld	a,b
	adc	a,#0xFF
	inc	hl
	ld	(hl),a
;	genLabel
00133$:
;	music.c 210
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00141$
;	genAssign
	ld	bc,#0xFF12
;	genOr
;	AOP_HL for _mus_volume1
;	AOP_HL for _mus_env1
	ld	hl,#_mus_volume1
	ld	a,(hl)
	ld	hl,#_mus_env1
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00141$:
;	music.c 212
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00145$
;	music.c 213
;	genCmpEq
;	AOP_HL for _mus_enabled1
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00143$
	jr	00261$
00260$:
	jp	00143$
00261$:
;	music.c 214
;	genMinus
;	AOP_HL for _mus_enabled1
	ld	hl,#_mus_enabled1
	dec	(hl)
;	music.c 215
;	genAssign
	ld	bc,#0xFF12
;	genOr
;	AOP_HL for _mus_volume1
;	AOP_HL for _mus_env1
	ld	hl,#_mus_volume1
	ld	a,(hl)
	ld	hl,#_mus_env1
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00143$:
;	music.c 217
;	genAssign
	ld	bc,#0xFF13
;	genCast
;	AOP_HL for _mus_freq1
	ld	hl,#_mus_freq1
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 218
;	genAssign
	ld	bc,#0xFF14
;	genRightShift
;	AOP_HL for _mus_freq1
;	AOP_STK for _mus_update1_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for _mus_update1_sloc0_1_0
;	AOP_STK for _mus_update1_sloc2_1_0
	dec	hl
	ld	a,(hl)
	or	a,#0x80
	lda	hl,0(sp)
	ld	(hl),a
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,1(sp)
;	genCast
;	AOP_STK for _mus_update1_sloc2_1_0
	ld      (hl-),a
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00145$:
;	music.c 220
;	genRet
	jp	00208$
;	genLabel
00147$:
;	music.c 222
;	genCmpGt
;	AOP_STK for _mus_update1_note_1_1
	ld	a,#0x13
	lda	hl,7(sp)
	sub	a,(hl)
	jp	c,00206$
;	genJumpTab
;	AOP_STK for _mus_update1_note_1_1
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#00262$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00262$:
	jp	00148$
	jp	00149$
	jp	00150$
	jp	00151$
	jp	00152$
	jp	00155$
	jp	00158$
	jp	00161$
	jp	00164$
	jp	00165$
	jp	00169$
	jp	00179$
	jp	00189$
	jp	00190$
	jp	00196$
	jp	00197$
	jp	00198$
	jp	00199$
	jp	00200$
	jp	00201$
;	music.c 224
;	genLabel
00148$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00263$
	inc	hl
	inc	(hl)
00263$:
;	genPointerGet
;	AOP_HL for _mus_length1
	ld	a,(bc)
	ld	hl,#_mus_length1
	ld	(hl),a
;	music.c 225
;	genGoto
	jp	00206$
;	music.c 227
;	genLabel
00149$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00264$
	inc	hl
	inc	(hl)
00264$:
;	genPointerGet
;	AOP_HL for _mus_octave1
	ld	a,(bc)
	ld	hl,#_mus_octave1
	ld	(hl),a
;	music.c 228
;	genGoto
	jp	00206$
;	music.c 230
;	genLabel
00150$:
;	genPlus
;	AOP_HL for _mus_octave1
;	genPlusIncr
	ld	hl,#_mus_octave1
	inc	(hl)
;	music.c 231
;	genGoto
	jp	00206$
;	music.c 233
;	genLabel
00151$:
;	genMinus
;	AOP_HL for _mus_octave1
	ld	hl,#_mus_octave1
	dec	(hl)
;	music.c 234
;	genGoto
	jp	00206$
;	music.c 236
;	genLabel
00152$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00265$
	inc	hl
	inc	(hl)
00265$:
;	genPointerGet
;	AOP_HL for _mus_volume1
	ld	a,(bc)
	ld	hl,#_mus_volume1
	ld	(hl),a
;	music.c 237
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00206$
;	genAssign
	ld	bc,#0xFF12
;	genOr
;	AOP_HL for _mus_volume1
;	AOP_HL for _mus_env1
	ld	hl,#_mus_volume1
	ld	a,(hl)
	ld	hl,#_mus_env1
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 238
;	genGoto
	jp	00206$
;	music.c 240
;	genLabel
00155$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00266$
	inc	hl
	inc	(hl)
00266$:
;	genPointerGet
;	AOP_HL for _mus_env1
	ld	a,(bc)
	ld	hl,#_mus_env1
	ld	(hl),a
;	music.c 241
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00206$
;	genAssign
	ld	bc,#0xFF12
;	genOr
;	AOP_HL for _mus_volume1
;	AOP_HL for _mus_env1
	ld	hl,#_mus_volume1
	ld	a,(hl)
	ld	hl,#_mus_env1
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 242
;	genGoto
	jp	00206$
;	music.c 244
;	genLabel
00158$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00267$
	inc	hl
	inc	(hl)
00267$:
;	genPointerGet
;	AOP_HL for _mus_duty1
	ld	a,(bc)
	ld	hl,#_mus_duty1
	ld	(hl),a
;	music.c 245
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00206$
;	genAssign
	ld	bc,#0xFF11
;	genLeftShift
;	AOP_HL for _mus_duty1
;	AOP_STK for _mus_update1_sloc2_1_0
	ld	hl,#_mus_duty1
	ld	a,(hl)
	srl	a
	rr	a
	rr	a
	and	a,#0xE0
	lda	hl,0(sp)
;	genAssign (pointer)
;	AOP_STK for _mus_update1_sloc2_1_0
	ld      (hl),a
; Removed redundent load
	ld	(bc),a
;	music.c 246
;	genGoto
	jp	00206$
;	music.c 248
;	genLabel
00161$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00268$
	inc	hl
	inc	(hl)
00268$:
;	genPointerGet
;	AOP_HL for _mus_pan1
	ld	a,(bc)
	ld	hl,#_mus_pan1
	ld	(hl),a
;	music.c 249
;	genIfx
;	AOP_HL for _mus_enabled1
	xor	a,a
	ld	hl,#_mus_enabled1
	or	a,(hl)
	jp	z,00206$
;	genAssign
	ld	bc,#0xFF25
;	genAssign
;	AOP_STK for _mus_update1_sloc2_1_0
	lda	hl,0(sp)
	ld	(hl),#0x25
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _mus_update1_sloc2_1_0
;	AOP_STK for _mus_update1_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	inc	hl
;	genAnd
;	AOP_STK for _mus_update1_sloc1_1_0
;	AOP_STK for _mus_update1_sloc2_1_0
	ld      (hl),a
; Removed redundent load
	and	a,#0xEE
	dec	hl
	dec	hl
;	genOr
;	AOP_STK for _mus_update1_sloc2_1_0
;	AOP_HL for _mus_pan1
	ld      (hl),a
; Removed redundent load
	ld	hl,#_mus_pan1
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 250
;	genGoto
	jp	00206$
;	music.c 252
;	genLabel
00164$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00269$
	inc	hl
	inc	(hl)
00269$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_HL for _mus_porta1
	ld	hl,#_mus_porta1
	ld	(hl),c
;	genAssign
;	AOP_HL for _mus_slide1
	ld	hl,#_mus_slide1
	ld	(hl),c
;	music.c 253
;	genGoto
	jp	00206$
;	music.c 255
;	genLabel
00165$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00270$
	inc	hl
	inc	(hl)
00270$:
;	genPointerGet
;	AOP_HL for _mus_slide1
	ld	a,(bc)
	ld	hl,#_mus_slide1
	ld	(hl),a
;	music.c 256
;	genAssign
;	AOP_HL for _mus_porta1
	ld	hl,#_mus_porta1
	ld	(hl),#0x00
;	music.c 257
;	genCmpLt
;	AOP_HL for _mus_slide1
	ld	hl,#_mus_slide1
	ld	a,(hl)
	cp	#0x80
	jp	c,00167$
;	music.c 258
;	genAssign
;	AOP_HL for _mus_target1
	ld	hl,#_mus_target1
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;	music.c 259
;	genMinus
;	AOP_HL for _mus_slide1
	ld	hl,#_mus_slide1
	ld	a,(hl)
	add	a,#0x80
	ld	(hl),a
;	genGoto
	jp	00206$
;	genLabel
00167$:
;	music.c 261
;	genAssign
;	AOP_HL for _mus_target1
	ld	hl,#_mus_target1
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	music.c 262
;	genMinus
;	AOP_HL for _mus_slide1
	ld	a,#0x80
	ld	hl,#_mus_slide1
	sub	a,(hl)
	ld	(hl),a
;	music.c 264
;	genGoto
	jp	00206$
;	music.c 266
;	genLabel
00169$:
;	genAssign
;	AOP_HL for _mus_vib_pos1
	ld	hl,#_mus_vib_pos1
	ld	(hl),#0x00
;	music.c 267
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00271$
	inc	hl
	inc	(hl)
00271$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 268
;	genAnd
;	AOP_STK for _mus_update1_note_1_1
;	AOP_HL for _mus_vib_speed1
	ld	a,(hl)
	and	a,#0x0F
	ld	hl,#_mus_vib_speed1
	ld	(hl),a
;	music.c 269
;	genRightShift
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	a,(hl)
	srl	a
	srl	a
	srl	a
	srl	a
;	music.c 270
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	ld      (hl),a
; Removed redundent load
	cp	a,#0x01
	jp	nz,00177$
	jr	00273$
00272$:
	jp	00177$
00273$:
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib1
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00178$
;	genLabel
00177$:
;	music.c 271
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00174$
	jr	00275$
00274$:
	jp	00174$
00275$:
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib2
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00178$
;	genLabel
00174$:
;	music.c 272
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x03
	jp	nz,00171$
	jr	00277$
00276$:
	jp	00171$
00277$:
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib3
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00178$
;	genLabel
00171$:
;	music.c 273
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib4
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00178$:
;	music.c 274
;	genAssign
;	AOP_HL for _mus_vib_delay1
	ld	hl,#_mus_vib_delay1
	ld	(hl),#0x00
;	music.c 275
;	genGoto
	jp	00206$
;	music.c 277
;	genLabel
00179$:
;	genAssign
;	AOP_HL for _mus_vib_pos1
	ld	hl,#_mus_vib_pos1
	ld	(hl),#0x00
;	music.c 278
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00278$
	inc	hl
	inc	(hl)
00278$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 279
;	genAnd
;	AOP_STK for _mus_update1_note_1_1
;	AOP_HL for _mus_vib_speed1
	ld	a,(hl)
	and	a,#0x0F
	ld	hl,#_mus_vib_speed1
	ld	(hl),a
;	music.c 280
;	genRightShift
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	a,(hl)
	srl	a
	srl	a
	srl	a
	srl	a
;	music.c 281
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	ld      (hl),a
; Removed redundent load
	cp	a,#0x01
	jp	nz,00187$
	jr	00280$
00279$:
	jp	00187$
00280$:
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib1
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00188$
;	genLabel
00187$:
;	music.c 282
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00184$
	jr	00282$
00281$:
	jp	00184$
00282$:
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib2
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00188$
;	genLabel
00184$:
;	music.c 283
;	genCmpEq
;	AOP_STK for _mus_update1_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x03
	jp	nz,00181$
	jr	00284$
00283$:
	jp	00181$
00284$:
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib3
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00188$
;	genLabel
00181$:
;	music.c 284
;	genAddrOf
;	AOP_HL for _mus_vib_table1
	ld	de,#_vib4
	ld	hl,#_mus_vib_table1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00188$:
;	music.c 285
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00285$
	inc	hl
	inc	(hl)
00285$:
;	genPointerGet
;	AOP_HL for _mus_vib_delay1
	ld	a,(bc)
	ld	hl,#_mus_vib_delay1
	ld	(hl),a
;	music.c 286
;	genGoto
	jp	00206$
;	music.c 288
;	genLabel
00189$:
;	genPlus
;	AOP_HL for _mus_rep_depth1
;	genPlusIncr
	ld	hl,#_mus_rep_depth1
	inc	(hl)
;	music.c 289
;	genCast
;	AOP_HL for _mus_rep_depth1
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep1
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_HL for _mus_data1
	ld	e,c
	ld	d,b
	ld	hl,#_mus_data1
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	music.c 290
;	genGoto
	jp	00206$
;	music.c 292
;	genLabel
00190$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00288$
	inc	hl
	inc	(hl)
00288$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 293
;	genPlus
;	AOP_HL for _mus_rep_depth1
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,#<_mus_repeats1
	ld	hl,#_mus_rep_depth1
	add	a,(hl)
	ld	c,a
	ld	a,#>_mus_repeats1
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	nz,00192$
;	music.c 294
;	genAssign (pointer)
;	AOP_STK for _mus_update1_note_1_1
	lda	hl,7(sp)
	ld	a,(hl)
	ld	(bc),a
;	music.c 295
;	genCast
;	AOP_HL for _mus_rep_depth1
;	AOP_STK for _mus_update1_sloc2_1_0
	ld	hl,#_mus_rep_depth1
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genLeftShift
;	AOP_STK for _mus_update1_sloc2_1_0
;	AOP_STK for _mus_update1_sloc0_1_0
	dec	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld      (hl-),a
	dec	hl
	ld	a,(hl)
	lda	hl,4(sp)
	ld      (hl-),a
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _mus_update1_sloc0_1_0
;	AOP_STK for _mus_update1_sloc2_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_rep1
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _mus_update1_sloc2_1_0
;	AOP_HL for _mus_data1
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	hl,#_mus_data1
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genLabel
00192$:
;	music.c 297
;	genPointerGet
;	AOP_STK for _mus_update1_sloc2_1_0
	ld	a,(bc)
	lda	hl,0(sp)
;	genMinus
;	AOP_STK for _mus_update1_sloc2_1_0
;	AOP_STK for _mus_update1_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	add	a,#0xFF
	inc	hl
	inc	hl
;	genAssign (pointer)
;	AOP_STK for _mus_update1_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	ld	(bc),a
;	music.c 298
;	genIfx
;	AOP_STK for _mus_update1_sloc1_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00194$
;	music.c 299
;	genCast
;	AOP_HL for _mus_rep_depth1
	ld	hl,#_mus_rep_depth1
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep1
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_HL for _mus_data1
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	hl,#_mus_data1
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genGoto
	jp	00206$
;	genLabel
00194$:
;	music.c 301
;	genMinus
;	AOP_HL for _mus_rep_depth1
	ld	hl,#_mus_rep_depth1
	dec	(hl)
;	music.c 303
;	genGoto
	jp	00206$
;	music.c 305
;	genLabel
00196$:
;	genAssign
;	AOP_HL for _mus_data1
;	AOP_HL for _mus_loop1
	ld	hl,#_mus_data1
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_loop1
	ld	(hl+),a
	ld	(hl),e
;	music.c 306
;	genGoto
	jp	00206$
;	music.c 308
;	genLabel
00197$:
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00293$
	inc	hl
	inc	(hl)
00293$:
;	genPointerGet
;	AOP_HL for _mus_po1
	ld	a,(bc)
	ld	hl,#_mus_po1
	ld	(hl),a
;	music.c 309
;	genGoto
	jp	00206$
;	music.c 311
;	genLabel
00198$:
;	genAssign
	ld	bc,#0xFF06
;	genAssign
;	AOP_HL for _mus_data1
;	AOP_STK for _mus_update1_sloc2_1_0
	ld	hl,#_mus_data1
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_HL for _mus_data1
;	genPlusIncr
	ld	hl,#_mus_data1
	inc	(hl)
	jr	nz,00294$
	inc	hl
	inc	(hl)
00294$:
;	genPointerGet
;	AOP_STK for _mus_update1_sloc2_1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 312
;	genGoto
	jp	00206$
;	music.c 314
;	genLabel
00199$:
;	genGoto
	jp	00206$
;	music.c 316
;	genLabel
00200$:
;	genGoto
	jp	00206$
;	music.c 318
;	genLabel
00201$:
;	genAssign
;	AOP_HL for _mus_loop1
;	AOP_HL for _mus_data1
	ld	hl,#_mus_loop1
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_data1
	ld	(hl+),a
	ld	(hl),e
;	music.c 319
;	genAssign
;	AOP_HL for _mus_done1
	ld	hl,#_mus_done1
	ld	(hl),#0x01
;	music.c 320
;	genAssign
;	AOP_HL for _mus_data1
	ld	hl,#_mus_data1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	cp	a,#0x13
	jp	nz,00206$
	jr	00296$
00295$:
	jp	00206$
00296$:
;	music.c 321
;	genAssign
;	AOP_HL for _mus_wait1
	ld	hl,#_mus_wait1
	ld	(hl),#0xFF
;	music.c 322
;	genRet
;	music.c 328
;	genLabel
00208$:
;	genEndFunction
	lda	sp,8(sp)
	ret
___mus_update1_end:
;	music.c 331
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_update2
; ---------------------------------
___mus_update2_start:
_mus_update2:
	lda	sp,-8(sp)
;	music.c 335
;	genIfx
;	AOP_HL for _mus_slide2
	xor	a,a
	ld	hl,#_mus_slide2
	or	a,(hl)
	jp	z,00111$
;	genAnd
;	AOP_HL for _mus_step
	ld	hl,#_mus_step
	ld	a,(hl)
	and	a,#0x03
	jr	nz,00217$
	jp	00218$
00217$:
	jp	00111$
00218$:
;	music.c 336
;	genCmpGt
;	AOP_HL for _mus_target2
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_freq2
	ld	a,(hl)
	ld	hl,#_mus_target2
	sub	a,(hl)
	ld	hl,#_mus_freq2 + 1
	ld	a,(hl)
	ld	hl,#_mus_target2 + 1
	sbc	a,(hl)
	jp	nc,00108$
;	music.c 337
;	genCast
;	AOP_HL for _mus_slide2
	ld	hl,#_mus_slide2
	ld	c,(hl)
	ld	b,#0x00
;	genPlus
;	AOP_HL for _mus_freq2
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_freq2
	ld	a,(hl)
	add	a,c
	ld	(hl+),a
	ld	a,(hl)
	adc	a,b
	ld	(hl),a
;	music.c 338
;	genCmpGt
;	AOP_HL for _mus_freq2
;	AOP_HL for _mus_target2
	ld	hl,#_mus_target2
	ld	a,(hl)
	ld	hl,#_mus_freq2
	sub	a,(hl)
	ld	hl,#_mus_target2 + 1
	ld	a,(hl)
	ld	hl,#_mus_freq2 + 1
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 339
;	genAssign
;	AOP_HL for _mus_target2
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_target2
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_freq2
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00109$
;	genLabel
00108$:
;	music.c 342
;	genCmpLt
;	AOP_HL for _mus_target2
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_target2
	ld	a,(hl)
	ld	hl,#_mus_freq2
	sub	a,(hl)
	ld	hl,#_mus_target2 + 1
	ld	a,(hl)
	ld	hl,#_mus_freq2 + 1
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 343
;	genCast
;	AOP_HL for _mus_slide2
	ld	hl,#_mus_slide2
	ld	c,(hl)
	ld	b,#0x00
;	genMinus
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_freq2
	ld	a,(hl)
	sub	a,c
	ld	(hl+),a
	ld	a,(hl)
	sbc	a,b
;	music.c 344
;	genCmpLt
;	AOP_HL for _mus_freq2
;	AOP_HL for _mus_target2
	ld      (hl-),a
	ld	a,(hl)
	ld	hl,#_mus_target2
	sub	a,(hl)
	ld	hl,#_mus_freq2 + 1
	ld	a,(hl)
	ld	hl,#_mus_target2 + 1
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 345
;	genAssign
;	AOP_HL for _mus_target2
;	AOP_HL for _mus_freq2
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_freq2
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00109$:
;	music.c 348
;	genAssign
	ld	bc,#0xFF18
;	genCast
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_freq2
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 349
;	genAssign
	ld	bc,#0xFF19
;	genRightShift
;	AOP_HL for _mus_freq2
;	AOP_STK for _mus_update2_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genCast
;	AOP_STK for _mus_update2_sloc0_1_0
	dec	hl
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00111$:
;	music.c 352
;	genIfx
;	AOP_HL for _mus_vib_delay2
	xor	a,a
	ld	hl,#_mus_vib_delay2
	or	a,(hl)
	jp	z,00116$
;	music.c 353
;	genMinus
;	AOP_HL for _mus_vib_delay2
	dec	(hl)
;	genGoto
	jp	00117$
;	genLabel
00116$:
;	music.c 355
;	genIfx
;	AOP_HL for _mus_vib_speed2
	xor	a,a
	ld	hl,#_mus_vib_speed2
	or	a,(hl)
	jp	z,00117$
;	music.c 356
;	genPlus
;	AOP_HL for _mus_vib_pos2
;	AOP_HL for _mus_vib_speed2
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_vib_pos2
	ld	a,(hl)
	ld	hl,#_mus_vib_speed2
	add	a,(hl)
;	genAnd
;	AOP_HL for _mus_vib_pos2
	ld	c,a
	and	a,#0x3F
	ld	hl,#_mus_vib_pos2
	ld	(hl),a
;	music.c 357
;	genAssign
;	AOP_HL for _mus_vib_table2
	ld	hl,#_mus_vib_table2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genMinus
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_freq2
	ld	a,(hl)
	sub	a,c
	ld	c,a
	inc	hl
	ld	a,(hl)
	sbc	a,b
	ld	b,a
;	genPlus
;	AOP_HL for _mus_vib_table2
;	AOP_HL for _mus_vib_pos2
;	AOP_STK for _mus_update2_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_vib_table2
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#_mus_vib_pos2
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,3(sp)
;	genPointerGet
;	AOP_STK for _mus_update2_sloc0_1_0
;	AOP_STK for _mus_update2_sloc1_1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
;	genCast
;	AOP_STK for _mus_update2_sloc1_1_0
;	AOP_STK for _mus_update2_sloc0_1_0
	ld	a,(hl+)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update2_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for _mus_update2_vib_freq_1_1
	lda	hl,5(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	music.c 359
;	genAssign
	ld	bc,#0xFF18
;	genCast
;	AOP_STK for _mus_update2_vib_freq_1_1
	dec	hl
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 360
;	genAssign
	ld	bc,#0xFF19
;	genRightShift
;	AOP_STK for _mus_update2_vib_freq_1_1
;	AOP_STK for _mus_update2_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genCast
;	AOP_STK for _mus_update2_sloc0_1_0
	dec	hl
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00117$:
;	music.c 363
;	genIfx
;	AOP_HL for _mus_wait2
	xor	a,a
	ld	hl,#_mus_wait2
	or	a,(hl)
	jp	z,00186$
;	music.c 364
;	genMinus
;	AOP_HL for _mus_wait2
	dec	(hl)
;	music.c 365
;	genIfx
;	AOP_HL for _mus_wait2
	xor	a,a
	or	a,(hl)
;	genRet
;	music.c 368
;	genLabel
	jp	nz,00188$
00186$:
;	music.c 369
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00219$
	inc	hl
	inc	(hl)
00219$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 370
;	genCmpLt
;	AOP_STK for _mus_update2_note_1_1
	ld	a,(hl)
	cp	#0x14
	jp	c,00135$
;	music.c 371
;	genAnd
;	AOP_STK for _mus_update2_note_1_1
	ld	a,(hl)
	and	a,#0x80
	jr	nz,00220$
	jp	00123$
00220$:
;	music.c 372
;	genXor
;	AOP_STK for _mus_update2_note_1_1
	ld	a,#0x80
	lda	hl,7(sp)
	xor	a,(hl)
	ld	(hl),a
;	music.c 373
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00221$
	inc	hl
	inc	(hl)
00221$:
;	genPointerGet
;	AOP_HL for _mus_wait2
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	hl,#_mus_wait2
	ld	(hl),a
;	genGoto
	jp	00124$
;	genLabel
00123$:
;	music.c 376
;	genAssign
;	AOP_HL for _mus_length2
;	AOP_HL for _mus_wait2
	ld	hl,#_mus_length2
	ld	a,(hl)
	ld	hl,#_mus_wait2
	ld	(hl),a
;	genLabel
00124$:
;	music.c 378
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x21
	jp	nz,00132$
	jr	00223$
00222$:
	jp	00132$
00223$:
;	music.c 379
;	genRet
	jp	00188$
;	genLabel
00132$:
;	music.c 380
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x20
	jp	nz,00129$
	jr	00225$
00224$:
	jp	00129$
00225$:
;	music.c 381
;	genAssign
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_freq2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	music.c 382
;	genAssign
	ld	bc,#0xFF17
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	genGoto
	jp	00133$
;	genLabel
00129$:
;	music.c 384
;	genIfx
;	AOP_HL for _mus_porta2
	xor	a,a
	ld	hl,#_mus_porta2
	or	a,(hl)
	jp	z,00126$
;	music.c 385
;	genLeftShift
;	AOP_HL for _mus_octave2
	ld	hl,#_mus_octave2
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update2_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,7(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_freq
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_HL for _mus_po2
;	AOP_STK for _mus_update2_sloc0_1_0
	ld	hl,#_mus_po2
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update2_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_HL for _mus_target2
	ld	a,c
	add	a,#0x80
	ld	hl,#_mus_target2
	ld	(hl),a
	ld	a,b
	adc	a,#0xFF
	inc	hl
	ld	(hl),a
;	genGoto
	jp	00127$
;	genLabel
00126$:
;	music.c 387
;	genLeftShift
;	AOP_HL for _mus_octave2
	ld	hl,#_mus_octave2
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update2_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,7(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_freq
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_HL for _mus_po2
;	AOP_STK for _mus_update2_sloc0_1_0
	ld	hl,#_mus_po2
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update2_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_HL for _mus_freq2
	ld	a,c
	add	a,#0x80
	ld	hl,#_mus_freq2
	ld	(hl),a
	ld	a,b
	adc	a,#0xFF
	inc	hl
	ld	(hl),a
;	genLabel
00127$:
;	music.c 389
;	genAssign
	ld	bc,#0xFF17
;	genOr
;	AOP_HL for _mus_volume2
;	AOP_HL for _mus_env2
	ld	hl,#_mus_volume2
	ld	a,(hl)
	ld	hl,#_mus_env2
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00133$:
;	music.c 391
;	genAssign
	ld	bc,#0xFF18
;	genCast
;	AOP_HL for _mus_freq2
	ld	hl,#_mus_freq2
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 392
;	genAssign
	ld	bc,#0xFF19
;	genRightShift
;	AOP_HL for _mus_freq2
;	AOP_STK for _mus_update2_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for _mus_update2_sloc0_1_0
;	AOP_STK for _mus_update2_sloc2_1_0
	dec	hl
	ld	a,(hl)
	or	a,#0x80
	lda	hl,0(sp)
	ld	(hl),a
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,1(sp)
;	genCast
;	AOP_STK for _mus_update2_sloc2_1_0
	ld      (hl-),a
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 393
;	genRet
	jp	00188$
;	genLabel
00135$:
;	music.c 395
;	genCmpGt
;	AOP_STK for _mus_update2_note_1_1
	ld	a,#0x13
	lda	hl,7(sp)
	sub	a,(hl)
	jp	c,00186$
;	genJumpTab
;	AOP_STK for _mus_update2_note_1_1
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#00230$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00230$:
	jp	00136$
	jp	00137$
	jp	00138$
	jp	00139$
	jp	00140$
	jp	00141$
	jp	00142$
	jp	00143$
	jp	00144$
	jp	00145$
	jp	00149$
	jp	00159$
	jp	00169$
	jp	00170$
	jp	00176$
	jp	00177$
	jp	00178$
	jp	00179$
	jp	00180$
	jp	00181$
;	music.c 397
;	genLabel
00136$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00231$
	inc	hl
	inc	(hl)
00231$:
;	genPointerGet
;	AOP_HL for _mus_length2
	ld	a,(bc)
	ld	hl,#_mus_length2
	ld	(hl),a
;	music.c 398
;	genGoto
	jp	00186$
;	music.c 400
;	genLabel
00137$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00232$
	inc	hl
	inc	(hl)
00232$:
;	genPointerGet
;	AOP_HL for _mus_octave2
	ld	a,(bc)
	ld	hl,#_mus_octave2
	ld	(hl),a
;	music.c 401
;	genGoto
	jp	00186$
;	music.c 403
;	genLabel
00138$:
;	genPlus
;	AOP_HL for _mus_octave2
;	genPlusIncr
	ld	hl,#_mus_octave2
	inc	(hl)
;	music.c 404
;	genGoto
	jp	00186$
;	music.c 406
;	genLabel
00139$:
;	genMinus
;	AOP_HL for _mus_octave2
	ld	hl,#_mus_octave2
	dec	(hl)
;	music.c 407
;	genGoto
	jp	00186$
;	music.c 409
;	genLabel
00140$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00233$
	inc	hl
	inc	(hl)
00233$:
;	genPointerGet
;	AOP_HL for _mus_volume2
	ld	a,(bc)
	ld	hl,#_mus_volume2
	ld	(hl),a
;	music.c 410
;	genAssign
	ld	bc,#0xFF17
;	genOr
;	AOP_HL for _mus_volume2
;	AOP_HL for _mus_env2
	ld	a,(hl)
	ld	hl,#_mus_env2
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 411
;	genGoto
	jp	00186$
;	music.c 413
;	genLabel
00141$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00234$
	inc	hl
	inc	(hl)
00234$:
;	genPointerGet
;	AOP_HL for _mus_env2
	ld	a,(bc)
	ld	hl,#_mus_env2
	ld	(hl),a
;	music.c 414
;	genAssign
	ld	bc,#0xFF17
;	genOr
;	AOP_HL for _mus_volume2
;	AOP_HL for _mus_env2
	ld	hl,#_mus_volume2
	ld	a,(hl)
	ld	hl,#_mus_env2
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 415
;	genGoto
	jp	00186$
;	music.c 417
;	genLabel
00142$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00235$
	inc	hl
	inc	(hl)
00235$:
;	genPointerGet
;	AOP_HL for _mus_duty2
	ld	a,(bc)
	ld	hl,#_mus_duty2
	ld	(hl),a
;	music.c 418
;	genAssign
	ld	bc,#0xFF16
;	genLeftShift
;	AOP_HL for _mus_duty2
;	AOP_STK for _mus_update2_sloc2_1_0
	ld	a,(hl)
	srl	a
	rr	a
	rr	a
	and	a,#0xE0
	lda	hl,0(sp)
;	genAssign (pointer)
;	AOP_STK for _mus_update2_sloc2_1_0
	ld      (hl),a
; Removed redundent load
	ld	(bc),a
;	music.c 419
;	genGoto
	jp	00186$
;	music.c 421
;	genLabel
00143$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00236$
	inc	hl
	inc	(hl)
00236$:
;	genPointerGet
;	AOP_HL for _mus_pan2
	ld	a,(bc)
	ld	hl,#_mus_pan2
	ld	(hl),a
;	music.c 422
;	genAssign
	ld	bc,#0xFF25
;	genAssign
;	AOP_STK for _mus_update2_sloc2_1_0
	lda	hl,0(sp)
	ld	(hl),#0x25
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _mus_update2_sloc2_1_0
;	AOP_STK for _mus_update2_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	inc	hl
;	genAnd
;	AOP_STK for _mus_update2_sloc1_1_0
;	AOP_STK for _mus_update2_sloc2_1_0
	ld      (hl),a
; Removed redundent load
	and	a,#0xDD
	dec	hl
	dec	hl
	ld	(hl),a
;	genLeftShift
;	AOP_HL for _mus_pan2
;	AOP_STK for _mus_update2_sloc1_1_0
	ld	hl,#_mus_pan2
	ld	a,(hl)
	add	a,a
	lda	hl,2(sp)
;	genOr
;	AOP_STK for _mus_update2_sloc2_1_0
;	AOP_STK for _mus_update2_sloc1_1_0
	ld      (hl-),a
	dec	hl
	ld	a,(hl+)
	inc	hl
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 423
;	genGoto
	jp	00186$
;	music.c 425
;	genLabel
00144$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00237$
	inc	hl
	inc	(hl)
00237$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_HL for _mus_porta2
	ld	hl,#_mus_porta2
	ld	(hl),c
;	genAssign
;	AOP_HL for _mus_slide2
	ld	hl,#_mus_slide2
	ld	(hl),c
;	music.c 426
;	genGoto
	jp	00186$
;	music.c 428
;	genLabel
00145$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00238$
	inc	hl
	inc	(hl)
00238$:
;	genPointerGet
;	AOP_HL for _mus_slide2
	ld	a,(bc)
	ld	hl,#_mus_slide2
	ld	(hl),a
;	music.c 429
;	genAssign
;	AOP_HL for _mus_porta2
	ld	hl,#_mus_porta2
	ld	(hl),#0x00
;	music.c 430
;	genCmpLt
;	AOP_HL for _mus_slide2
	ld	hl,#_mus_slide2
	ld	a,(hl)
	cp	#0x80
	jp	c,00147$
;	music.c 431
;	genAssign
;	AOP_HL for _mus_target2
	ld	hl,#_mus_target2
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;	music.c 432
;	genMinus
;	AOP_HL for _mus_slide2
	ld	hl,#_mus_slide2
	ld	a,(hl)
	add	a,#0x80
	ld	(hl),a
;	genGoto
	jp	00186$
;	genLabel
00147$:
;	music.c 434
;	genAssign
;	AOP_HL for _mus_target2
	ld	hl,#_mus_target2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	music.c 435
;	genMinus
;	AOP_HL for _mus_slide2
	ld	a,#0x80
	ld	hl,#_mus_slide2
	sub	a,(hl)
	ld	(hl),a
;	music.c 437
;	genGoto
	jp	00186$
;	music.c 439
;	genLabel
00149$:
;	genAssign
;	AOP_HL for _mus_vib_pos2
	ld	hl,#_mus_vib_pos2
	ld	(hl),#0x00
;	music.c 440
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00239$
	inc	hl
	inc	(hl)
00239$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 441
;	genAnd
;	AOP_STK for _mus_update2_note_1_1
;	AOP_HL for _mus_vib_speed2
	ld	a,(hl)
	and	a,#0x0F
	ld	hl,#_mus_vib_speed2
	ld	(hl),a
;	music.c 442
;	genRightShift
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	a,(hl)
	srl	a
	srl	a
	srl	a
	srl	a
;	music.c 443
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	ld      (hl),a
; Removed redundent load
	cp	a,#0x01
	jp	nz,00157$
	jr	00241$
00240$:
	jp	00157$
00241$:
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib1
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00158$
;	genLabel
00157$:
;	music.c 444
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00154$
	jr	00243$
00242$:
	jp	00154$
00243$:
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib2
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00158$
;	genLabel
00154$:
;	music.c 445
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x03
	jp	nz,00151$
	jr	00245$
00244$:
	jp	00151$
00245$:
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib3
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00158$
;	genLabel
00151$:
;	music.c 446
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib4
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00158$:
;	music.c 447
;	genAssign
;	AOP_HL for _mus_vib_delay2
	ld	hl,#_mus_vib_delay2
	ld	(hl),#0x00
;	music.c 448
;	genGoto
	jp	00186$
;	music.c 450
;	genLabel
00159$:
;	genAssign
;	AOP_HL for _mus_vib_pos2
	ld	hl,#_mus_vib_pos2
	ld	(hl),#0x00
;	music.c 451
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00246$
	inc	hl
	inc	(hl)
00246$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 452
;	genAnd
;	AOP_STK for _mus_update2_note_1_1
;	AOP_HL for _mus_vib_speed2
	ld	a,(hl)
	and	a,#0x0F
	ld	hl,#_mus_vib_speed2
	ld	(hl),a
;	music.c 453
;	genRightShift
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	a,(hl)
	srl	a
	srl	a
	srl	a
	srl	a
;	music.c 454
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	ld      (hl),a
; Removed redundent load
	cp	a,#0x01
	jp	nz,00167$
	jr	00248$
00247$:
	jp	00167$
00248$:
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib1
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00168$
;	genLabel
00167$:
;	music.c 455
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00164$
	jr	00250$
00249$:
	jp	00164$
00250$:
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib2
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00168$
;	genLabel
00164$:
;	music.c 456
;	genCmpEq
;	AOP_STK for _mus_update2_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	cp	a,#0x03
	jp	nz,00161$
	jr	00252$
00251$:
	jp	00161$
00252$:
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib3
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00168$
;	genLabel
00161$:
;	music.c 457
;	genAddrOf
;	AOP_HL for _mus_vib_table2
	ld	de,#_vib4
	ld	hl,#_mus_vib_table2
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00168$:
;	music.c 458
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00253$
	inc	hl
	inc	(hl)
00253$:
;	genPointerGet
;	AOP_HL for _mus_vib_delay2
	ld	a,(bc)
	ld	hl,#_mus_vib_delay2
	ld	(hl),a
;	music.c 459
;	genGoto
	jp	00186$
;	music.c 461
;	genLabel
00169$:
;	genPlus
;	AOP_HL for _mus_rep_depth2
;	genPlusIncr
	ld	hl,#_mus_rep_depth2
	inc	(hl)
;	music.c 462
;	genCast
;	AOP_HL for _mus_rep_depth2
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep2
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_HL for _mus_data2
	ld	e,c
	ld	d,b
	ld	hl,#_mus_data2
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	music.c 463
;	genGoto
	jp	00186$
;	music.c 465
;	genLabel
00170$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00256$
	inc	hl
	inc	(hl)
00256$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	(hl),c
;	music.c 466
;	genPlus
;	AOP_HL for _mus_rep_depth2
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,#<_mus_repeats2
	ld	hl,#_mus_rep_depth2
	add	a,(hl)
	ld	c,a
	ld	a,#>_mus_repeats2
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	nz,00172$
;	music.c 467
;	genAssign (pointer)
;	AOP_STK for _mus_update2_note_1_1
	lda	hl,7(sp)
	ld	a,(hl)
	ld	(bc),a
;	music.c 468
;	genCast
;	AOP_HL for _mus_rep_depth2
;	AOP_STK for _mus_update2_sloc2_1_0
	ld	hl,#_mus_rep_depth2
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genLeftShift
;	AOP_STK for _mus_update2_sloc2_1_0
;	AOP_STK for _mus_update2_sloc0_1_0
	dec	hl
	ld	a,(hl)
	lda	hl,3(sp)
	ld      (hl-),a
	dec	hl
	ld	a,(hl)
	lda	hl,4(sp)
	ld      (hl-),a
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _mus_update2_sloc0_1_0
;	AOP_STK for _mus_update2_sloc2_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_rep2
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _mus_update2_sloc2_1_0
;	AOP_HL for _mus_data2
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	hl,#_mus_data2
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genLabel
00172$:
;	music.c 470
;	genPointerGet
;	AOP_STK for _mus_update2_sloc2_1_0
	ld	a,(bc)
	lda	hl,0(sp)
;	genMinus
;	AOP_STK for _mus_update2_sloc2_1_0
;	AOP_STK for _mus_update2_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	add	a,#0xFF
	inc	hl
	inc	hl
;	genAssign (pointer)
;	AOP_STK for _mus_update2_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	ld	(bc),a
;	music.c 471
;	genIfx
;	AOP_STK for _mus_update2_sloc1_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00174$
;	music.c 472
;	genCast
;	AOP_HL for _mus_rep_depth2
	ld	hl,#_mus_rep_depth2
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep2
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_HL for _mus_data2
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	hl,#_mus_data2
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genGoto
	jp	00186$
;	genLabel
00174$:
;	music.c 474
;	genMinus
;	AOP_HL for _mus_rep_depth2
	ld	hl,#_mus_rep_depth2
	dec	(hl)
;	music.c 476
;	genGoto
	jp	00186$
;	music.c 478
;	genLabel
00176$:
;	genAssign
;	AOP_HL for _mus_data2
;	AOP_HL for _mus_loop2
	ld	hl,#_mus_data2
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_loop2
	ld	(hl+),a
	ld	(hl),e
;	music.c 479
;	genGoto
	jp	00186$
;	music.c 481
;	genLabel
00177$:
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00261$
	inc	hl
	inc	(hl)
00261$:
;	genPointerGet
;	AOP_HL for _mus_po2
	ld	a,(bc)
	ld	hl,#_mus_po2
	ld	(hl),a
;	music.c 482
;	genGoto
	jp	00186$
;	music.c 484
;	genLabel
00178$:
;	genAssign
	ld	bc,#0xFF06
;	genAssign
;	AOP_HL for _mus_data2
;	AOP_STK for _mus_update2_sloc2_1_0
	ld	hl,#_mus_data2
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_HL for _mus_data2
;	genPlusIncr
	ld	hl,#_mus_data2
	inc	(hl)
	jr	nz,00262$
	inc	hl
	inc	(hl)
00262$:
;	genPointerGet
;	AOP_STK for _mus_update2_sloc2_1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 485
;	genGoto
	jp	00186$
;	music.c 487
;	genLabel
00179$:
;	genGoto
	jp	00186$
;	music.c 489
;	genLabel
00180$:
;	genGoto
	jp	00186$
;	music.c 491
;	genLabel
00181$:
;	genAssign
;	AOP_HL for _mus_loop2
;	AOP_HL for _mus_data2
	ld	hl,#_mus_loop2
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_data2
	ld	(hl+),a
	ld	(hl),e
;	music.c 492
;	genAssign
;	AOP_HL for _mus_done2
	ld	hl,#_mus_done2
	ld	(hl),#0x01
;	music.c 493
;	genAssign
;	AOP_HL for _mus_data2
	ld	hl,#_mus_data2
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	cp	a,#0x13
	jp	nz,00186$
	jr	00264$
00263$:
	jp	00186$
00264$:
;	music.c 494
;	genAssign
;	AOP_HL for _mus_wait2
	ld	hl,#_mus_wait2
	ld	(hl),#0xFF
;	music.c 495
;	genRet
;	music.c 498
;	genLabel
00188$:
;	genEndFunction
	lda	sp,8(sp)
	ret
___mus_update2_end:
;	music.c 502
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_update3
; ---------------------------------
___mus_update3_start:
_mus_update3:
	lda	sp,-5(sp)
;	music.c 505
;	genIfx
;	AOP_HL for _mus_wait3
	xor	a,a
	ld	hl,#_mus_wait3
	or	a,(hl)
	jp	z,00145$
;	music.c 506
;	genMinus
;	AOP_HL for _mus_wait3
	dec	(hl)
;	music.c 507
;	genIfx
;	AOP_HL for _mus_wait3
	xor	a,a
	or	a,(hl)
;	genRet
;	music.c 510
;	genLabel
	jp	nz,00147$
00145$:
;	music.c 511
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00160$
	inc	hl
	inc	(hl)
00160$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update3_note_1_1
	lda	hl,4(sp)
	ld	(hl),c
;	music.c 512
;	genCmpLt
;	AOP_STK for _mus_update3_note_1_1
	ld	a,(hl)
	cp	#0x14
	jp	c,00115$
;	music.c 513
;	genAnd
;	AOP_STK for _mus_update3_note_1_1
	ld	a,(hl)
	and	a,#0x80
	jr	nz,00161$
	jp	00106$
00161$:
;	music.c 514
;	genXor
;	AOP_STK for _mus_update3_note_1_1
	ld	a,#0x80
	lda	hl,4(sp)
	xor	a,(hl)
	ld	(hl),a
;	music.c 515
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00162$
	inc	hl
	inc	(hl)
00162$:
;	genPointerGet
;	AOP_HL for _mus_wait3
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	hl,#_mus_wait3
	ld	(hl),a
;	genGoto
	jp	00107$
;	genLabel
00106$:
;	music.c 517
;	genAssign
;	AOP_HL for _mus_length3
;	AOP_HL for _mus_wait3
	ld	hl,#_mus_length3
	ld	a,(hl)
	ld	hl,#_mus_wait3
	ld	(hl),a
;	genLabel
00107$:
;	music.c 519
;	genCmpEq
;	AOP_STK for _mus_update3_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,4(sp)
	ld	a,(hl)
	cp	a,#0x21
	jp	nz,00112$
	jr	00164$
00163$:
	jp	00112$
00164$:
;	music.c 520
;	genRet
	jp	00147$
;	genLabel
00112$:
;	music.c 521
;	genCmpEq
;	AOP_STK for _mus_update3_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,4(sp)
	ld	a,(hl)
	cp	a,#0x20
	jp	nz,00109$
	jr	00166$
00165$:
	jp	00109$
00166$:
;	music.c 522
;	genAssign
;	AOP_HL for _mus_freq3
	ld	hl,#_mus_freq3
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	music.c 523
;	genAssign
	ld	bc,#0xFF1C
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	genGoto
	jp	00113$
;	genLabel
00109$:
;	music.c 525
;	genLeftShift
;	AOP_HL for _mus_octave3
	ld	hl,#_mus_octave3
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update3_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,4(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genCast
; Removed redundent load
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_freq
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_HL for _mus_po3
;	AOP_STK for _mus_update3_sloc0_1_0
	ld	hl,#_mus_po3
	ld	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _mus_update3_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_HL for _mus_freq3
	ld	a,c
	add	a,#0x80
	ld	hl,#_mus_freq3
	ld	(hl),a
	ld	a,b
	adc	a,#0xFF
	inc	hl
	ld	(hl),a
;	music.c 526
;	genAssign
	ld	bc,#0xFF1C
;	genAssign (pointer)
;	AOP_HL for _mus_volume3
	ld	hl,#_mus_volume3
	ld	a,(hl)
	ld	(bc),a
;	genLabel
00113$:
;	music.c 528
;	genAssign
	ld	bc,#0xFF1A
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 529
;	genAssign
	ld	bc,#0xFF1A
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	music.c 530
;	genAssign
	ld	bc,#0xFF1D
;	genCast
;	AOP_HL for _mus_freq3
	ld	hl,#_mus_freq3
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 531
;	genAssign
	ld	bc,#0xFF1E
;	genRightShift
;	AOP_HL for _mus_freq3
;	AOP_STK for _mus_update3_sloc0_1_0
	inc	hl
	ld	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for _mus_update3_sloc0_1_0
;	AOP_STK for _mus_update3_sloc1_1_0
	dec	hl
	ld	a,(hl)
	or	a,#0x80
	dec	hl
	dec	hl
	ld	(hl),a
	lda	hl,3(sp)
	ld	a,(hl)
	dec	hl
	dec	hl
;	genCast
;	AOP_STK for _mus_update3_sloc1_1_0
	ld      (hl-),a
	ld	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 532
;	genRet
	jp	00147$
;	genLabel
00115$:
;	music.c 534
;	genCmpGt
;	AOP_STK for _mus_update3_note_1_1
	ld	a,#0x13
	lda	hl,4(sp)
	sub	a,(hl)
	jp	c,00145$
;	genJumpTab
;	AOP_STK for _mus_update3_note_1_1
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#00169$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00169$:
	jp	00116$
	jp	00117$
	jp	00118$
	jp	00119$
	jp	00120$
	jp	00121$
	jp	00122$
	jp	00123$
	jp	00124$
	jp	00125$
	jp	00126$
	jp	00127$
	jp	00128$
	jp	00129$
	jp	00135$
	jp	00136$
	jp	00137$
	jp	00138$
	jp	00139$
	jp	00140$
;	music.c 536
;	genLabel
00116$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00170$
	inc	hl
	inc	(hl)
00170$:
;	genPointerGet
;	AOP_HL for _mus_length3
	ld	a,(bc)
	ld	hl,#_mus_length3
	ld	(hl),a
;	music.c 537
;	genGoto
	jp	00145$
;	music.c 539
;	genLabel
00117$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00171$
	inc	hl
	inc	(hl)
00171$:
;	genPointerGet
;	AOP_HL for _mus_octave3
	ld	a,(bc)
	ld	hl,#_mus_octave3
	ld	(hl),a
;	music.c 540
;	genGoto
	jp	00145$
;	music.c 542
;	genLabel
00118$:
;	genPlus
;	AOP_HL for _mus_octave3
;	genPlusIncr
	ld	hl,#_mus_octave3
	inc	(hl)
;	music.c 543
;	genGoto
	jp	00145$
;	music.c 545
;	genLabel
00119$:
;	genMinus
;	AOP_HL for _mus_octave3
	ld	hl,#_mus_octave3
	dec	(hl)
;	music.c 546
;	genGoto
	jp	00145$
;	music.c 548
;	genLabel
00120$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00172$
	inc	hl
	inc	(hl)
00172$:
;	genPointerGet
;	AOP_HL for _mus_volume3
	ld	a,(bc)
	ld	hl,#_mus_volume3
	ld	(hl),a
;	music.c 549
;	genGoto
	jp	00145$
;	music.c 551
;	genLabel
00121$:
;	genGoto
	jp	00145$
;	music.c 553
;	genLabel
00122$:
;	genGoto
	jp	00145$
;	music.c 555
;	genLabel
00123$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00173$
	inc	hl
	inc	(hl)
00173$:
;	genPointerGet
;	AOP_HL for _mus_pan3
	ld	a,(bc)
	ld	hl,#_mus_pan3
	ld	(hl),a
;	music.c 556
;	genAssign
	ld	bc,#0xFF25
;	genAssign
;	AOP_STK for _mus_update3_sloc1_1_0
	lda	hl,0(sp)
	ld	(hl),#0x25
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _mus_update3_sloc1_1_0
;	AOP_STK for _mus_update3_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	inc	hl
;	genAnd
;	AOP_STK for _mus_update3_sloc0_1_0
;	AOP_STK for _mus_update3_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	and	a,#0xBB
	dec	hl
	dec	hl
	ld	(hl),a
;	genLeftShift
;	AOP_HL for _mus_pan3
;	AOP_STK for _mus_update3_sloc0_1_0
	ld	hl,#_mus_pan3
	ld	a,(hl)
	add	a,a
	add	a,a
	lda	hl,2(sp)
;	genOr
;	AOP_STK for _mus_update3_sloc1_1_0
;	AOP_STK for _mus_update3_sloc0_1_0
	ld      (hl-),a
	dec	hl
	ld	a,(hl+)
	inc	hl
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 557
;	genGoto
	jp	00145$
;	music.c 559
;	genLabel
00124$:
;	genGoto
	jp	00145$
;	music.c 561
;	genLabel
00125$:
;	genGoto
	jp	00145$
;	music.c 563
;	genLabel
00126$:
;	genGoto
	jp	00145$
;	music.c 565
;	genLabel
00127$:
;	genGoto
	jp	00145$
;	music.c 567
;	genLabel
00128$:
;	genPlus
;	AOP_HL for _mus_rep_depth3
;	genPlusIncr
	ld	hl,#_mus_rep_depth3
	inc	(hl)
;	music.c 568
;	genCast
;	AOP_HL for _mus_rep_depth3
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep3
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_HL for _mus_data3
	ld	e,c
	ld	d,b
	ld	hl,#_mus_data3
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	music.c 569
;	genGoto
	jp	00145$
;	music.c 571
;	genLabel
00129$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00176$
	inc	hl
	inc	(hl)
00176$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update3_note_1_1
	lda	hl,4(sp)
	ld	(hl),c
;	music.c 572
;	genPlus
;	AOP_HL for _mus_rep_depth3
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,#<_mus_repeats3
	ld	hl,#_mus_rep_depth3
	add	a,(hl)
	ld	c,a
	ld	a,#>_mus_repeats3
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	nz,00131$
;	music.c 573
;	genAssign (pointer)
;	AOP_STK for _mus_update3_note_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(bc),a
;	music.c 574
;	genCast
;	AOP_HL for _mus_rep_depth3
;	AOP_STK for _mus_update3_sloc1_1_0
	ld	hl,#_mus_rep_depth3
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genLeftShift
;	AOP_STK for _mus_update3_sloc1_1_0
;	AOP_STK for _mus_update3_sloc0_1_0
	dec	hl
	ld	a,(hl+)
	inc	hl
	ld      (hl-),a
	ld	a,(hl+)
	inc	hl
	ld      (hl-),a
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _mus_update3_sloc0_1_0
;	AOP_STK for _mus_update3_sloc1_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_rep3
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _mus_update3_sloc1_1_0
;	AOP_HL for _mus_data3
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	hl,#_mus_data3
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genLabel
00131$:
;	music.c 576
;	genPointerGet
;	AOP_STK for _mus_update3_sloc1_1_0
	ld	a,(bc)
	lda	hl,0(sp)
;	genMinus
;	AOP_STK for _mus_update3_sloc1_1_0
;	AOP_STK for _mus_update3_sloc0_1_0
	ld      (hl),a
; Removed redundent load
	add	a,#0xFF
	inc	hl
	inc	hl
;	genAssign (pointer)
;	AOP_STK for _mus_update3_sloc0_1_0
	ld      (hl),a
; Removed redundent load
	ld	(bc),a
;	music.c 577
;	genIfx
;	AOP_STK for _mus_update3_sloc0_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00133$
;	music.c 578
;	genCast
;	AOP_HL for _mus_rep_depth3
	ld	hl,#_mus_rep_depth3
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep3
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_HL for _mus_data3
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	hl,#_mus_data3
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genGoto
	jp	00145$
;	genLabel
00133$:
;	music.c 580
;	genMinus
;	AOP_HL for _mus_rep_depth3
	ld	hl,#_mus_rep_depth3
	dec	(hl)
;	music.c 582
;	genGoto
	jp	00145$
;	music.c 584
;	genLabel
00135$:
;	genAssign
;	AOP_HL for _mus_data3
;	AOP_HL for _mus_loop3
	ld	hl,#_mus_data3
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_loop3
	ld	(hl+),a
	ld	(hl),e
;	music.c 585
;	genGoto
	jp	00145$
;	music.c 587
;	genLabel
00136$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00181$
	inc	hl
	inc	(hl)
00181$:
;	genPointerGet
;	AOP_HL for _mus_po3
	ld	a,(bc)
	ld	hl,#_mus_po3
	ld	(hl),a
;	music.c 588
;	genGoto
	jp	00145$
;	music.c 590
;	genLabel
00137$:
;	genAssign
	ld	bc,#0xFF06
;	genAssign
;	AOP_HL for _mus_data3
;	AOP_STK for _mus_update3_sloc1_1_0
	ld	hl,#_mus_data3
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	ld	hl,#_mus_data3
	inc	(hl)
	jr	nz,00182$
	inc	hl
	inc	(hl)
00182$:
;	genPointerGet
;	AOP_STK for _mus_update3_sloc1_1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 591
;	genGoto
	jp	00145$
;	music.c 593
;	genLabel
00138$:
;	genGoto
	jp	00145$
;	music.c 595
;	genLabel
00139$:
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data3
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00183$
	inc	hl
	inc	(hl)
00183$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update3_note_1_1
	lda	hl,4(sp)
	ld	(hl),c
;	music.c 596
;	genAssign
	ld	bc,#0xFF1A
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	music.c 597
;	genPlus
;	AOP_HL for _mus_song
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_song
	ld	a,(hl)
	add	a,#0x08
	ld	c,a
	inc	hl
	ld	a,(hl)
	adc	a,#0x00
	ld	b,a
;	genLeftShift
;	AOP_STK for _mus_update3_note_1_1
;	AOP_STK for _mus_update3_sloc1_1_0
	lda	hl,4(sp)
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
	lda	hl,0(sp)
;	genPlus
;	AOP_STK for _mus_update3_sloc1_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld      (hl),a
	ld      l,a
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0010
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	hl,#0xFF30
	push	hl
;	genCall
	call	_memcpy
	lda	sp,6(sp)
;	music.c 598
;	genAssign
	ld	bc,#0xFF1A
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	music.c 599
;	genGoto
	jp	00145$
;	music.c 601
;	genLabel
00140$:
;	genAssign
;	AOP_HL for _mus_loop3
;	AOP_HL for _mus_data3
	ld	hl,#_mus_loop3
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_data3
	ld	(hl+),a
	ld	(hl),e
;	music.c 602
;	genAssign
;	AOP_HL for _mus_done3
	ld	hl,#_mus_done3
	ld	(hl),#0x01
;	music.c 603
;	genAssign
;	AOP_HL for _mus_data3
	ld	hl,#_mus_data3
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	cp	a,#0x13
	jp	nz,00145$
	jr	00185$
00184$:
	jp	00145$
00185$:
;	music.c 604
;	genAssign
;	AOP_HL for _mus_wait3
	ld	hl,#_mus_wait3
	ld	(hl),#0xFF
;	music.c 605
;	genRet
;	music.c 608
;	genLabel
00147$:
;	genEndFunction
	lda	sp,5(sp)
	ret
___mus_update3_end:
;	music.c 612
;	genLabel
;	genFunction
;	---------------------------------
; Function mus_update4
; ---------------------------------
___mus_update4_start:
_mus_update4:
	lda	sp,-6(sp)
;	music.c 615
;	genAnd
;	AOP_HL for _mus_step
	ld	hl,#_mus_step
	ld	a,(hl)
	and	a,#0x03
	ld	c,a
;	genNot
	xor	a,a
	or	a,c
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	c,a
;	genAnd
;	AOP_HL for _mus_slide4
	ld	hl,#_mus_slide4
	ld	a,(hl)
	and	a,c
;	genIfx
	or	a,a
	jp	z,00113$
;	music.c 616
;	genCast
;	AOP_HL for _mus_freq4
	ld	hl,#_mus_freq4
	ld	c,(hl)
	ld	b,#0x00
;	genCmpGt
;	AOP_HL for _mus_target4
	ld	a,c
	ld	hl,#_mus_target4
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	jp	nc,00108$
;	music.c 617
;	genPlus
;	AOP_HL for _mus_freq4
;	AOP_HL for _mus_slide4
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_freq4
	ld	a,(hl)
	ld	hl,#_mus_slide4
	add	a,(hl)
	ld	hl,#_mus_freq4
;	music.c 618
;	genCast
;	AOP_HL for _mus_freq4
;	AOP_STK for _mus_update4_sloc0_1_0
	ld      (hl),a
; Removed redundent load
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genCmpGt
;	AOP_STK for _mus_update4_sloc0_1_0
;	AOP_HL for _mus_target4
	ld	hl,#_mus_target4
	ld	a,(hl)
	lda	hl,3(sp)
	sub	a,(hl)
	ld	hl,#_mus_target4 + 1
	ld	a,(hl)
	lda	hl,4(sp)
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 619
;	genCast
;	AOP_HL for _mus_target4
;	AOP_HL for _mus_freq4
	ld	hl,#_mus_target4
	ld	a,(hl)
	ld	hl,#_mus_freq4
	ld	(hl),a
;	genGoto
	jp	00109$
;	genLabel
00108$:
;	music.c 622
;	genCmpLt
;	AOP_HL for _mus_target4
	ld	hl,#_mus_target4
	ld	a,(hl)
	sub	a,c
	inc	hl
	ld	a,(hl)
	sbc	a,b
	jp	nc,00109$
;	music.c 623
;	genMinus
;	AOP_HL for _mus_freq4
;	AOP_HL for _mus_slide4
	ld	hl,#_mus_freq4
	ld	a,(hl)
	ld	hl,#_mus_slide4
	sub	a,(hl)
	ld	hl,#_mus_freq4
;	music.c 624
;	genCast
;	AOP_HL for _mus_freq4
	ld      (hl),a
	ld      c,a
	ld	b,#0x00
;	genCmpLt
;	AOP_HL for _mus_target4
	ld	a,c
	ld	hl,#_mus_target4
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	jp	nc,00109$
;	music.c 625
;	genCast
;	AOP_HL for _mus_target4
;	AOP_HL for _mus_freq4
	dec	hl
	ld	a,(hl)
	ld	hl,#_mus_freq4
	ld	(hl),a
;	genLabel
00109$:
;	music.c 628
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00113$
;	genAssign
	ld	bc,#0xFF22
;	genOr
;	AOP_HL for _mus_freq4
;	AOP_HL for _mus_noise_step
	ld	hl,#_mus_freq4
	ld	a,(hl)
	ld	hl,#_mus_noise_step
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00113$:
;	music.c 631
;	genIfx
;	AOP_HL for _mus_wait4
	xor	a,a
	ld	hl,#_mus_wait4
	or	a,(hl)
	jp	z,00178$
;	music.c 632
;	genMinus
;	AOP_HL for _mus_wait4
	dec	(hl)
;	music.c 633
;	genIfx
;	AOP_HL for _mus_wait4
	xor	a,a
	or	a,(hl)
;	genRet
;	music.c 636
;	genLabel
	jp	nz,00180$
00178$:
;	music.c 637
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00208$
	inc	hl
	inc	(hl)
00208$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update4_note_1_1
	lda	hl,5(sp)
	ld	(hl),c
;	music.c 638
;	genCmpLt
;	AOP_STK for _mus_update4_note_1_1
	ld	a,(hl)
	cp	#0x14
	jp	c,00139$
;	music.c 639
;	genAnd
;	AOP_STK for _mus_update4_note_1_1
	ld	a,(hl)
	and	a,#0x80
	jr	nz,00209$
	jp	00119$
00209$:
;	music.c 640
;	genXor
;	AOP_STK for _mus_update4_note_1_1
	ld	a,#0x80
	lda	hl,5(sp)
	xor	a,(hl)
	ld	(hl),a
;	music.c 641
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00210$
	inc	hl
	inc	(hl)
00210$:
;	genPointerGet
;	AOP_HL for _mus_wait4
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	hl,#_mus_wait4
	ld	(hl),a
;	genGoto
	jp	00120$
;	genLabel
00119$:
;	music.c 643
;	genAssign
;	AOP_HL for _mus_length4
;	AOP_HL for _mus_wait4
	ld	hl,#_mus_length4
	ld	a,(hl)
	ld	hl,#_mus_wait4
	ld	(hl),a
;	genLabel
00120$:
;	music.c 645
;	genCmpEq
;	AOP_STK for _mus_update4_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,5(sp)
	ld	a,(hl)
	cp	a,#0x21
	jp	nz,00132$
	jr	00212$
00211$:
	jp	00132$
00212$:
;	music.c 646
;	genRet
	jp	00180$
;	genLabel
00132$:
;	music.c 647
;	genCmpEq
;	AOP_STK for _mus_update4_note_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,5(sp)
	ld	a,(hl)
	cp	a,#0x20
	jp	nz,00129$
	jr	00214$
00213$:
	jp	00129$
00214$:
;	music.c 648
;	genAssign
;	AOP_HL for _mus_freq4
	ld	hl,#_mus_freq4
	ld	(hl),#0x00
;	music.c 649
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00133$
;	genAssign
	ld	bc,#0xFF21
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	genGoto
	jp	00133$
;	genLabel
00129$:
;	music.c 651
;	genIfx
;	AOP_HL for _mus_porta4
	xor	a,a
	ld	hl,#_mus_porta4
	or	a,(hl)
	jp	z,00124$
;	music.c 652
;	genMinus
;	AOP_HL for _mus_octave4
	ld	hl,#_mus_octave4
	ld	a,(hl)
	add	a,#0xFF
;	genLeftShift
	ld	c,a
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update4_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,5(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,#<_noise_freq
	add	a,c
	ld	c,a
	ld	a,#>_noise_freq
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_HL for _mus_target4
	ld	hl,#_mus_target4
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;	genGoto
	jp	00125$
;	genLabel
00124$:
;	music.c 654
;	genMinus
;	AOP_HL for _mus_octave4
	ld	hl,#_mus_octave4
	ld	a,(hl)
	add	a,#0xFF
;	genLeftShift
	ld	c,a
	sla	a
	rl	a
	rl	a
	rl	a
	and	a,#0xF0
;	genPlus
;	AOP_STK for _mus_update4_note_1_1
;	Can't optimise plus by inc, falling back to the normal way
	ld	c,a
	lda	hl,5(sp)
	add	a,(hl)
;	genMinus
	ld	c,a
	add	a,#0xEC
	ld	c,a
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,#<_noise_freq
	add	a,c
	ld	c,a
	ld	a,#>_noise_freq
	adc	a,#0x00
	ld	b,a
;	genPointerGet
;	AOP_HL for _mus_freq4
	ld	a,(bc)
	ld	hl,#_mus_freq4
	ld	(hl),a
;	genLabel
00125$:
;	music.c 656
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00133$
;	genAssign
	ld	bc,#0xFF21
;	genOr
;	AOP_HL for _mus_volume4
;	AOP_HL for _mus_env4
	ld	hl,#_mus_volume4
	ld	a,(hl)
	ld	hl,#_mus_env4
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00133$:
;	music.c 658
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00137$
;	music.c 659
;	genCmpEq
;	AOP_HL for _mus_enabled4
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00135$
	jr	00216$
00215$:
	jp	00135$
00216$:
;	music.c 660
;	genMinus
;	AOP_HL for _mus_enabled4
	ld	hl,#_mus_enabled4
	dec	(hl)
;	music.c 661
;	genAssign
	ld	bc,#0xFF21
;	genOr
;	AOP_HL for _mus_volume4
;	AOP_HL for _mus_env4
	ld	hl,#_mus_volume4
	ld	a,(hl)
	ld	hl,#_mus_env4
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	genLabel
00135$:
;	music.c 663
;	genAssign
	ld	bc,#0xFF22
;	genOr
;	AOP_HL for _mus_freq4
;	AOP_HL for _mus_noise_step
	ld	hl,#_mus_freq4
	ld	a,(hl)
	ld	hl,#_mus_noise_step
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 664
;	genAssign
	ld	bc,#0xFF23
;	genAssign (pointer)
	ld	a,#0x80
	ld	(bc),a
;	genLabel
00137$:
;	music.c 666
;	genRet
	jp	00180$
;	genLabel
00139$:
;	music.c 668
;	genCmpGt
;	AOP_STK for _mus_update4_note_1_1
	ld	a,#0x13
	lda	hl,5(sp)
	sub	a,(hl)
	jp	c,00178$
;	genJumpTab
;	AOP_STK for _mus_update4_note_1_1
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#00217$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00217$:
	jp	00140$
	jp	00141$
	jp	00142$
	jp	00143$
	jp	00144$
	jp	00147$
	jp	00150$
	jp	00151$
	jp	00154$
	jp	00155$
	jp	00159$
	jp	00160$
	jp	00161$
	jp	00162$
	jp	00168$
	jp	00169$
	jp	00170$
	jp	00171$
	jp	00172$
	jp	00173$
;	music.c 670
;	genLabel
00140$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00218$
	inc	hl
	inc	(hl)
00218$:
;	genPointerGet
;	AOP_HL for _mus_length4
	ld	a,(bc)
	ld	hl,#_mus_length4
	ld	(hl),a
;	music.c 671
;	genGoto
	jp	00178$
;	music.c 673
;	genLabel
00141$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00219$
	inc	hl
	inc	(hl)
00219$:
;	genPointerGet
;	AOP_HL for _mus_octave4
	ld	a,(bc)
	ld	hl,#_mus_octave4
	ld	(hl),a
;	music.c 674
;	genGoto
	jp	00178$
;	music.c 676
;	genLabel
00142$:
;	genPlus
;	AOP_HL for _mus_octave4
;	genPlusIncr
	ld	hl,#_mus_octave4
	inc	(hl)
;	music.c 677
;	genGoto
	jp	00178$
;	music.c 679
;	genLabel
00143$:
;	genMinus
;	AOP_HL for _mus_octave4
	ld	hl,#_mus_octave4
	dec	(hl)
;	music.c 680
;	genGoto
	jp	00178$
;	music.c 682
;	genLabel
00144$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00220$
	inc	hl
	inc	(hl)
00220$:
;	genPointerGet
;	AOP_HL for _mus_volume4
	ld	a,(bc)
	ld	hl,#_mus_volume4
	ld	(hl),a
;	music.c 683
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00178$
;	genAssign
	ld	bc,#0xFF21
;	genOr
;	AOP_HL for _mus_volume4
;	AOP_HL for _mus_env4
	ld	hl,#_mus_volume4
	ld	a,(hl)
	ld	hl,#_mus_env4
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 684
;	genGoto
	jp	00178$
;	music.c 686
;	genLabel
00147$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00221$
	inc	hl
	inc	(hl)
00221$:
;	genPointerGet
;	AOP_HL for _mus_env4
	ld	a,(bc)
	ld	hl,#_mus_env4
	ld	(hl),a
;	music.c 687
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00178$
;	genAssign
	ld	bc,#0xFF21
;	genOr
;	AOP_HL for _mus_volume4
;	AOP_HL for _mus_env4
	ld	hl,#_mus_volume4
	ld	a,(hl)
	ld	hl,#_mus_env4
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 688
;	genGoto
	jp	00178$
;	music.c 690
;	genLabel
00150$:
;	genGoto
	jp	00178$
;	music.c 692
;	genLabel
00151$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00222$
	inc	hl
	inc	(hl)
00222$:
;	genPointerGet
;	AOP_HL for _mus_pan4
	ld	a,(bc)
	ld	hl,#_mus_pan4
	ld	(hl),a
;	music.c 693
;	genIfx
;	AOP_HL for _mus_enabled4
	xor	a,a
	ld	hl,#_mus_enabled4
	or	a,(hl)
	jp	z,00178$
;	genAssign
	ld	bc,#0xFF25
;	genAssign
;	AOP_STK for _mus_update4_sloc0_1_0
	lda	hl,3(sp)
	ld	(hl),#0x25
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _mus_update4_sloc0_1_0
;	AOP_STK for _mus_update4_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genAnd
;	AOP_STK for _mus_update4_sloc1_1_0
;	AOP_STK for _mus_update4_sloc0_1_0
	ld      (hl),a
; Removed redundent load
	and	a,#0x77
	inc	hl
	ld	(hl),a
;	genLeftShift
;	AOP_HL for _mus_pan4
;	AOP_STK for _mus_update4_sloc1_1_0
	ld	hl,#_mus_pan4
	ld	a,(hl)
	sla	a
	rl	a
	rl	a
	and	a,#0xF8
	lda	hl,2(sp)
;	genOr
;	AOP_STK for _mus_update4_sloc0_1_0
;	AOP_STK for _mus_update4_sloc1_1_0
	ld	(hl+),a
	ld	a,(hl)
	dec	hl
	or	a,(hl)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 694
;	genGoto
	jp	00178$
;	music.c 696
;	genLabel
00154$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00223$
	inc	hl
	inc	(hl)
00223$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_HL for _mus_porta4
	ld	hl,#_mus_porta4
	ld	(hl),c
;	genAssign
;	AOP_HL for _mus_slide4
	ld	hl,#_mus_slide4
	ld	(hl),c
;	music.c 697
;	genGoto
	jp	00178$
;	music.c 699
;	genLabel
00155$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00224$
	inc	hl
	inc	(hl)
00224$:
;	genPointerGet
;	AOP_HL for _mus_slide4
	ld	a,(bc)
	ld	hl,#_mus_slide4
	ld	(hl),a
;	music.c 700
;	genAssign
;	AOP_HL for _mus_porta4
	ld	hl,#_mus_porta4
	ld	(hl),#0x00
;	music.c 701
;	genCmpLt
;	AOP_HL for _mus_slide4
	ld	hl,#_mus_slide4
	ld	a,(hl)
	cp	#0x80
	jp	c,00157$
;	music.c 702
;	genAssign
;	AOP_HL for _mus_target4
	ld	hl,#_mus_target4
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;	music.c 703
;	genMinus
;	AOP_HL for _mus_slide4
	ld	hl,#_mus_slide4
	ld	a,(hl)
	add	a,#0x80
	ld	(hl),a
;	genGoto
	jp	00178$
;	genLabel
00157$:
;	music.c 705
;	genAssign
;	AOP_HL for _mus_target4
	ld	hl,#_mus_target4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	music.c 706
;	genMinus
;	AOP_HL for _mus_slide4
	ld	a,#0x80
	ld	hl,#_mus_slide4
	sub	a,(hl)
	ld	(hl),a
;	music.c 708
;	genGoto
	jp	00178$
;	music.c 710
;	genLabel
00159$:
;	genGoto
	jp	00178$
;	music.c 712
;	genLabel
00160$:
;	genGoto
	jp	00178$
;	music.c 714
;	genLabel
00161$:
;	genPlus
;	AOP_HL for _mus_rep_depth4
;	genPlusIncr
	ld	hl,#_mus_rep_depth4
	inc	(hl)
;	music.c 715
;	genCast
;	AOP_HL for _mus_rep_depth4
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep4
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_HL for _mus_data4
	ld	e,c
	ld	d,b
	ld	hl,#_mus_data4
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	music.c 716
;	genGoto
	jp	00178$
;	music.c 718
;	genLabel
00162$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00227$
	inc	hl
	inc	(hl)
00227$:
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for _mus_update4_note_1_1
	lda	hl,5(sp)
	ld	(hl),c
;	music.c 719
;	genPlus
;	AOP_HL for _mus_rep_depth4
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,#<_mus_repeats4
	ld	hl,#_mus_rep_depth4
	add	a,(hl)
	ld	c,a
	ld	a,#>_mus_repeats4
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	nz,00164$
;	music.c 720
;	genAssign (pointer)
;	AOP_STK for _mus_update4_note_1_1
	lda	hl,5(sp)
	ld	a,(hl)
	ld	(bc),a
;	music.c 721
;	genCast
;	AOP_HL for _mus_rep_depth4
;	AOP_STK for _mus_update4_sloc0_1_0
	ld	hl,#_mus_rep_depth4
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genLeftShift
;	AOP_STK for _mus_update4_sloc0_1_0
;	AOP_STK for _mus_update4_sloc2_1_0
	dec	hl
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl),a
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,1(sp)
	ld      (hl-),a
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _mus_update4_sloc2_1_0
;	AOP_STK for _mus_update4_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#_mus_rep4
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,3(sp)
;	genPointerGet
;	AOP_STK for _mus_update4_sloc0_1_0
;	AOP_HL for _mus_data4
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	hl,#_mus_data4
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genLabel
00164$:
;	music.c 723
;	genPointerGet
;	AOP_STK for _mus_update4_sloc2_1_0
	ld	a,(bc)
	lda	hl,0(sp)
;	genMinus
;	AOP_STK for _mus_update4_sloc2_1_0
;	AOP_STK for _mus_update4_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	add	a,#0xFF
	inc	hl
	inc	hl
;	genAssign (pointer)
;	AOP_STK for _mus_update4_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	ld	(bc),a
;	music.c 724
;	genIfx
;	AOP_STK for _mus_update4_sloc1_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00166$
;	music.c 725
;	genCast
;	AOP_HL for _mus_rep_depth4
	ld	hl,#_mus_rep_depth4
	ld	c,(hl)
	ld	b,#0x00
;	genLeftShift
	sla	c
	rl	b
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#_mus_rep4
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_HL for _mus_data4
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	hl,#_mus_data4
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genGoto
	jp	00178$
;	genLabel
00166$:
;	music.c 727
;	genMinus
;	AOP_HL for _mus_rep_depth4
	ld	hl,#_mus_rep_depth4
	dec	(hl)
;	music.c 729
;	genGoto
	jp	00178$
;	music.c 731
;	genLabel
00168$:
;	genAssign
;	AOP_HL for _mus_data4
;	AOP_HL for _mus_loop4
	ld	hl,#_mus_data4
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_loop4
	ld	(hl+),a
	ld	(hl),e
;	music.c 732
;	genGoto
	jp	00178$
;	music.c 734
;	genLabel
00169$:
;	genGoto
	jp	00178$
;	music.c 736
;	genLabel
00170$:
;	genAssign
	ld	bc,#0xFF06
;	genAssign
;	AOP_HL for _mus_data4
;	AOP_STK for _mus_update4_sloc2_1_0
	ld	hl,#_mus_data4
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	ld	hl,#_mus_data4
	inc	(hl)
	jr	nz,00232$
	inc	hl
	inc	(hl)
00232$:
;	genPointerGet
;	AOP_STK for _mus_update4_sloc2_1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
	ld	(bc),a
;	music.c 737
;	genGoto
	jp	00178$
;	music.c 739
;	genLabel
00171$:
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _mus_data4
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00233$
	inc	hl
	inc	(hl)
00233$:
;	genPointerGet
	ld	a,(bc)
;	genLeftShift
;	AOP_HL for _mus_noise_step
	ld	c,a
	sla	a
	rl	a
	rl	a
	and	a,#0xF8
	ld	hl,#_mus_noise_step
	ld	(hl),a
;	music.c 740
;	genGoto
	jp	00178$
;	music.c 742
;	genLabel
00172$:
;	genGoto
	jp	00178$
;	music.c 744
;	genLabel
00173$:
;	genAssign
;	AOP_HL for _mus_loop4
;	AOP_HL for _mus_data4
	ld	hl,#_mus_loop4
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_mus_data4
	ld	(hl+),a
	ld	(hl),e
;	music.c 745
;	genAssign
;	AOP_HL for _mus_done4
	ld	hl,#_mus_done4
	ld	(hl),#0x01
;	music.c 746
;	genAssign
;	AOP_HL for _mus_data4
	ld	hl,#_mus_data4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	cp	a,#0x13
	jp	nz,00178$
	jr	00235$
00234$:
	jp	00178$
00235$:
;	music.c 747
;	genAssign
;	AOP_HL for _mus_wait4
	ld	hl,#_mus_wait4
	ld	(hl),#0xFF
;	music.c 748
;	genRet
;	music.c 751
;	genLabel
00180$:
;	genEndFunction
	lda	sp,6(sp)
	ret
___mus_update4_end:
	.area _CODE
