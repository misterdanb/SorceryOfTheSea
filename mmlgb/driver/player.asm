;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Wed Sep 12 19:33:30 2018

;--------------------------------------------------------
	.module lcc53870
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _togglePaused
	.globl _paused
	.globl _selection
	.globl _oldjoystate
	.globl _joystate
	.globl _sprites_data
	.globl _background_tiles
	.globl _background_data
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
_joystate::
	.ds 1
_oldjoystate::
	.ds 1
_selection::
	.ds 1
_paused::
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
;	player.c 15
;	genLabel
;	genFunction
;	---------------------------------
; Function togglePaused
; ---------------------------------
___togglePaused_start:
_togglePaused:
	
;	player.c 16
;	genNot
;	AOP_HL for _paused
	xor	a,a
	ld	hl,#_paused
	or	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
;	player.c 17
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_HL for _paused
	ld      (hl),a
; Removed redundent load
	push	af
	inc	sp
;	genCall
	call	_mus_setPaused
	lda	sp,1(sp)
;	player.c 18
;	genIfx
;	AOP_HL for _paused
	xor	a,a
	ld	hl,#_paused
	or	a,(hl)
	jp	z,00102$
;	player.c 19
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0C02
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 20
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0E03
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	genGoto
	jp	00104$
;	genLabel
00102$:
;	player.c 22
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0802
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 23
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0A03
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	genLabel
00104$:
;	genEndFunction
	
	ret
___togglePaused_end:
_background_data:
	.db #0x89
	.db #0xFF
	.db #0x46
	.db #0xFF
	.db #0x40
	.db #0xFF
	.db #0x80
	.db #0xFF
	.db #0x01
	.db #0xFF
	.db #0x02
	.db #0xFF
	.db #0x62
	.db #0xFF
	.db #0x91
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x03
	.db #0x02
	.db #0x03
	.db #0x02
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0xE0
	.db #0xE0
	.db #0xF1
	.db #0x71
	.db #0xF1
	.db #0xF1
	.db #0xFB
	.db #0xFB
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xF5
	.db #0xF5
	.db #0xC3
	.db #0xC3
	.db #0xE7
	.db #0xE4
	.db #0xE7
	.db #0xE5
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xC1
	.db #0xC1
	.db #0xE3
	.db #0xE3
	.db #0xE3
	.db #0xE3
	.db #0xF7
	.db #0xF7
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xEB
	.db #0xEB
	.db #0x87
	.db #0x87
	.db #0xCF
	.db #0xC9
	.db #0xCF
	.db #0xCB
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0x80
	.db #0x80
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0xC0
	.db #0x1F
	.db #0x1F
	.db #0x3F
	.db #0x0F
	.db #0x7F
	.db #0x5F
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0x7E
	.db #0xF0
	.db #0xF0
	.db #0xF9
	.db #0xF9
	.db #0xF1
	.db #0xF1
	.db #0x01
	.db #0x01
	.db #0x71
	.db #0x71
	.db #0xF9
	.db #0xF9
	.db #0x79
	.db #0x79
	.db #0x39
	.db #0x39
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0x3F
	.db #0xFF
	.db #0x7F
	.db #0xF8
	.db #0xF8
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xF8
	.db #0xF8
	.db #0x80
	.db #0x80
	.db #0xC0
	.db #0xC0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xC0
	.db #0xC0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x01
	.db #0x01
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xF1
	.db #0xF1
	.db #0xF1
	.db #0xF1
	.db #0xF1
	.db #0xF1
	.db #0xE0
	.db #0xE0
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xE7
	.db #0xC3
	.db #0xC3
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xE3
	.db #0xE3
	.db #0xE3
	.db #0xE3
	.db #0xE3
	.db #0xE3
	.db #0xC1
	.db #0xC1
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0xCF
	.db #0x87
	.db #0x87
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xFC
	.db #0xFC
	.db #0xFE
	.db #0xFE
	.db #0xFE
	.db #0xFE
	.db #0xFC
	.db #0xFC
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x7F
	.db #0x7F
	.db #0x7F
	.db #0x7F
	.db #0x3F
	.db #0x3F
	.db #0x1F
	.db #0x1F
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xF9
	.db #0xF9
	.db #0xF9
	.db #0xF9
	.db #0xF1
	.db #0xF1
	.db #0xE0
	.db #0xE0
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xE0
	.db #0xC0
	.db #0xC0
	.db #0x80
	.db #0x80
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x07
	.db #0x07
	.db #0x09
	.db #0x0F
	.db #0x1E
	.db #0x11
	.db #0x30
	.db #0x21
	.db #0x33
	.db #0x27
	.db #0x00
	.db #0x00
	.db #0x70
	.db #0x70
	.db #0x88
	.db #0xF8
	.db #0x24
	.db #0xBC
	.db #0x3F
	.db #0x3F
	.db #0x6C
	.db #0xF0
	.db #0xBF
	.db #0xC0
	.db #0x7F
	.db #0x80
	.db #0x00
	.db #0x00
	.db #0x07
	.db #0x07
	.db #0x08
	.db #0x0F
	.db #0x16
	.db #0x1A
	.db #0xFE
	.db #0xFE
	.db #0x2B
	.db #0x47
	.db #0x9E
	.db #0x01
	.db #0xDF
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x80
	.db #0x80
	.db #0x70
	.db #0xF0
	.db #0x48
	.db #0x78
	.db #0x04
	.db #0xC4
	.db #0x82
	.db #0xC6
	.db #0x62
	.db #0xF2
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x18
	.db #0x18
	.db #0x2C
	.db #0x24
	.db #0x3D
	.db #0x23
	.db #0x1B
	.db #0x16
	.db #0x12
	.db #0x1E
	.db #0x2E
	.db #0x3C
	.db #0x57
	.db #0x64
	.db #0x4B
	.db #0x64
	.db #0x5B
	.db #0x64
	.db #0x55
	.db #0x6A
	.db #0xFF
	.db #0x00
	.db #0x3F
	.db #0x00
	.db #0x1F
	.db #0x00
	.db #0x1F
	.db #0x00
	.db #0x2F
	.db #0x00
	.db #0xD3
	.db #0x20
	.db #0xDC
	.db #0x20
	.db #0xA7
	.db #0x58
	.db #0xFF
	.db #0x00
	.db #0xFF
	.db #0x00
	.db #0xFF
	.db #0x00
	.db #0xFF
	.db #0x00
	.db #0xDF
	.db #0x20
	.db #0xDE
	.db #0x20
	.db #0x21
	.db #0x10
	.db #0xDF
	.db #0x30
	.db #0xCE
	.db #0x62
	.db #0xAC
	.db #0x74
	.db #0xE4
	.db #0x3C
	.db #0xDA
	.db #0x3E
	.db #0x8D
	.db #0x2B
	.db #0x41
	.db #0x2B
	.db #0x95
	.db #0x6B
	.db #0xB5
	.db #0x63
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x0C
	.db #0x0C
	.db #0x16
	.db #0x12
	.db #0x00
	.db #0x00
	.db #0x03
	.db #0x03
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x03
	.db #0x02
	.db #0x01
	.db #0x01
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x2C
	.db #0x24
	.db #0x24
	.db #0x24
	.db #0x96
	.db #0x92
	.db #0x56
	.db #0x52
	.db #0x3B
	.db #0x37
	.db #0x81
	.db #0x18
	.db #0xA0
	.db #0xD0
	.db #0x92
	.db #0x8E
	.db #0x25
	.db #0x32
	.db #0x16
	.db #0x1B
	.db #0x0E
	.db #0x0F
	.db #0x1F
	.db #0x1A
	.db #0x2A
	.db #0x3B
	.db #0x97
	.db #0x9F
	.db #0x9D
	.db #0x95
	.db #0x08
	.db #0x88
	.db #0x6A
	.db #0xC7
	.db #0x43
	.db #0xC1
	.db #0xD8
	.db #0x98
	.db #0x98
	.db #0x88
	.db #0x18
	.db #0x98
	.db #0xB8
	.db #0x18
	.db #0x00
	.db #0x80
	.db #0xA2
	.db #0xC2
	.db #0xCB
	.db #0x3C
	.db #0x16
	.db #0xF3
	.db #0xFF
	.db #0x6D
	.db #0x0D
	.db #0x04
	.db #0x0C
	.db #0x0C
	.db #0x0E
	.db #0x0C
	.db #0x00
	.db #0x00
	.db #0x22
	.db #0x21
	.db #0x42
	.db #0xD6
	.db #0x74
	.db #0xCC
	.db #0x98
	.db #0xB8
	.db #0x7C
	.db #0xAC
	.db #0x2A
	.db #0xEE
	.db #0xF4
	.db #0x7C
	.db #0x5C
	.db #0xD4
	.db #0x88
	.db #0x88
	.db #0x16
	.db #0x12
	.db #0x16
	.db #0x12
	.db #0x24
	.db #0x24
	.db #0x2D
	.db #0x25
	.db #0x6E
	.db #0x76
	.db #0xC0
	.db #0x8C
	.db #0x82
	.db #0x85
	.db #0x24
	.db #0xB8
	.db #0x00
	.db #0x00
	.db #0x60
	.db #0x60
	.db #0xB0
	.db #0x90
	.db #0x30
	.db #0x10
	.db #0x60
	.db #0x20
	.db #0xC0
	.db #0x40
	.db #0x80
	.db #0x80
	.db #0x80
	.db #0x80
	.db #0xAF
	.db #0xD8
	.db #0x44
	.db #0x49
	.db #0x30
	.db #0x3E
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x71
	.db #0x61
	.db #0x1C
	.db #0x18
	.db #0x07
	.db #0x07
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xC7
	.db #0xC3
	.db #0x1C
	.db #0x0C
	.db #0xF0
	.db #0xF0
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x7A
	.db #0x8D
	.db #0x11
	.db #0x49
	.db #0x06
	.db #0x3E
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x80
	.db #0x80
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xFF
	.db #0xFF
_background_tiles:
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x03
	.db #0x04
	.db #0x05
	.db #0x06
	.db #0x07
	.db #0x08
	.db #0x09
	.db #0x0A
	.db #0x0B
	.db #0x0C
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x0D
	.db #0x0E
	.db #0x0F
	.db #0x10
	.db #0x11
	.db #0x12
	.db #0x13
	.db #0x14
	.db #0x15
	.db #0x16
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x17
	.db #0x18
	.db #0x19
	.db #0x1A
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x1B
	.db #0x1C
	.db #0x1D
	.db #0x1E
	.db #0x1F
	.db #0x20
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x21
	.db #0x22
	.db #0x23
	.db #0x24
	.db #0x25
	.db #0x26
	.db #0x27
	.db #0x28
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x29
	.db #0x2A
	.db #0x2B
	.db #0x2C
	.db #0x02
	.db #0x2D
	.db #0x2E
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x2F
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
_sprites_data:
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0xFE
	.db #0x00
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x08
	.db #0x9C
	.db #0x1C
	.db #0x9C
	.db #0x1C
	.db #0x9C
	.db #0x1C
	.db #0x9C
	.db #0x1D
	.db #0x9D
	.db #0x1D
	.db #0x9D
	.db #0x1C
	.db #0x9C
	.db #0x1C
	.db #0x9C
	.db #0x1C
	.db #0x9C
	.db #0x08
	.db #0x9C
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x7F
	.db #0x7F
	.db #0x00
	.db #0xFE
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x09
	.db #0x19
	.db #0x19
	.db #0x39
	.db #0x39
	.db #0x79
	.db #0x79
	.db #0xF9
	.db #0xF9
	.db #0xF9
	.db #0xF9
	.db #0xF9
	.db #0x79
	.db #0xF9
	.db #0x39
	.db #0x79
	.db #0x19
	.db #0x39
	.db #0x09
	.db #0x19
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0xFE
	.db #0xFE
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x04
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x0E
	.db #0x8E
	.db #0x04
	.db #0x8E
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x7F
	.db #0x7F
	.db #0x00
	.db #0xFE
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x21
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x71
	.db #0x21
	.db #0x71
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0xFE
	.db #0xFE
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x02
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x03
	.db #0x83
	.db #0x02
	.db #0x83
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x7F
	.db #0x7F
	.db #0x00
	.db #0xFE
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x81
	.db #0x81
	.db #0xC1
	.db #0xC1
	.db #0xE1
	.db #0xF1
	.db #0xF1
	.db #0xF1
	.db #0xF1
	.db #0xC1
	.db #0xE1
	.db #0x81
	.db #0xC1
	.db #0x01
	.db #0x81
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0xFE
	.db #0xFE
	.db #0x00
	.db #0x7F
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x10
	.db #0x98
	.db #0x18
	.db #0x9C
	.db #0x1C
	.db #0x9E
	.db #0x1E
	.db #0x9F
	.db #0x1F
	.db #0x9F
	.db #0x1F
	.db #0x9F
	.db #0x1E
	.db #0x9F
	.db #0x1C
	.db #0x9E
	.db #0x18
	.db #0x9C
	.db #0x10
	.db #0x98
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x80
	.db #0x7F
	.db #0x7F
	.db #0x00
	.db #0xFE
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x81
	.db #0xC1
	.db #0xC1
	.db #0xE1
	.db #0xE1
	.db #0xF1
	.db #0xF1
	.db #0xF9
	.db #0xFD
	.db #0xFD
	.db #0xFD
	.db #0xFD
	.db #0xF1
	.db #0xF9
	.db #0xE1
	.db #0xF1
	.db #0xC1
	.db #0xE1
	.db #0x81
	.db #0xC1
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0xFE
	.db #0xFE
;	player.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function main
; ---------------------------------
___main_start:
_main:
	lda	sp,-3(sp)
;	player.c 28
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_disable_interrupts
;	player.c 30
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_display_off
;	player.c 32
;	genAssign
;	AOP_HL for _selection
	ld	hl,#_selection
	ld	(hl),#0x00
;	player.c 33
;	genAssign
;	AOP_HL for _paused
	ld	hl,#_paused
	ld	(hl),#0x00
;	player.c 36
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_song_data
	push	hl
;	genCall
	call	_mus_init
	lda	sp,2(sp)
;	player.c 37
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_mus_update
	push	hl
;	genCall
	call	_add_TIM
	lda	sp,2(sp)
;	player.c 40
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_background_data
	push	hl
;	genIpush
	ld	hl,#0x3000
	push	hl
;	genCall
	call	_set_bkg_data
	lda	sp,4(sp)
;	player.c 41
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_background_tiles
	push	hl
;	genIpush
	ld	hl,#0x1214
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genCall
	call	_set_bkg_tiles
	lda	sp,6(sp)
;	player.c 43
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_sprites_data
	push	hl
;	genIpush
	ld	hl,#0x1400
	push	hl
;	genCall
	call	_set_sprite_data
	lda	sp,4(sp)
;	player.c 45
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0400
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 46
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0601
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 48
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0802
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 49
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0A03
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 51
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x1004
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 52
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x1205
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 54
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0006
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 55
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0207
	push	hl
;	genCall
	call	_set_sprite_tile
	lda	sp,2(sp)
;	player.c 57
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6838
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 58
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6840
	push	hl
;	genIpush
	ld	a,#0x01
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 60
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6850
	push	hl
;	genIpush
	ld	a,#0x02
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 61
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6858
	push	hl
;	genIpush
	ld	a,#0x03
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 63
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6868
	push	hl
;	genIpush
	ld	a,#0x04
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 64
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6870
	push	hl
;	genIpush
	ld	a,#0x05
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 66
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6738
	push	hl
;	genIpush
	ld	a,#0x06
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 67
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x6740
	push	hl
;	genIpush
	ld	a,#0x07
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	player.c 69
;	genAssign
	ld	bc,#0xFF40
;	genAssign
;	AOP_STK for _main_sloc0_1_0
	lda	hl,1(sp)
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genOr
;	AOP_STK for _main_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	or	a,#0x01
;	genAssign (pointer)
	ld	(bc),a
;	player.c 70
;	genAssign
	ld	bc,#0xFF40
;	genAssign
;	AOP_STK for _main_sloc0_1_0
	inc	hl
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genOr
;	AOP_STK for _main_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	or	a,#0x04
;	genAssign (pointer)
	ld	(bc),a
;	player.c 71
;	genAssign
	ld	bc,#0xFF40
;	genAssign
;	AOP_STK for _main_sloc0_1_0
	inc	hl
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genOr
;	AOP_STK for _main_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	or	a,#0x02
;	genAssign (pointer)
	ld	(bc),a
;	player.c 72
;	genAssign
	ld	bc,#0xFF40
;	genAssign
;	AOP_STK for _main_sloc0_1_0
	inc	hl
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genAnd
;	AOP_STK for _main_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	and	a,#0xDF
;	genAssign (pointer)
	ld	(bc),a
;	player.c 73
;	genAssign
	ld	bc,#0xFF40
;	genAssign
;	AOP_STK for _main_sloc0_1_0
	inc	hl
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0xFF
;	genPointerGet
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genOr
;	AOP_STK for _main_sloc1_1_0
	ld      (hl),a
; Removed redundent load
	or	a,#0x80
;	genAssign (pointer)
	ld	(bc),a
;	player.c 75
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_enable_interrupts
;	player.c 76
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x05
	push	af
	inc	sp
;	genCall
	call	_set_interrupts
	lda	sp,1(sp)
;	player.c 78
;	genAssign
;	AOP_HL for _oldjoystate
	ld	hl,#_oldjoystate
	ld	(hl),#0x00
;	genAssign
;	AOP_HL for _joystate
	ld	hl,#_joystate
	ld	(hl),#0x00
;	player.c 80
;	genLabel
00130$:
;	player.c 81
;	genAssign
;	AOP_HL for _joystate
;	AOP_HL for _oldjoystate
	ld	hl,#_joystate
	ld	a,(hl)
	ld	hl,#_oldjoystate
	ld	(hl),a
;	player.c 82
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_joypad
;	AOP_HL for _joystate
	ld	hl,#_joystate
	ld	(hl),e
;	player.c 84
;	genAnd
;	AOP_HL for _joystate
	ld	hl,#_joystate
	ld	a,(hl)
	and	a,#0x80
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00102$
;	genAnd
;	AOP_HL for _oldjoystate
	ld	hl,#_oldjoystate
	ld	a,(hl)
	and	a,#0x80
	ld	b,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	b
	jp	z,00102$
00150$:
;	player.c 85
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_togglePaused
;	genLabel
00102$:
;	player.c 88
;	genAnd
;	AOP_HL for _joystate
	ld	hl,#_joystate
	ld	a,(hl)
	and	a,#0x02
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00108$
;	genAnd
;	AOP_HL for _oldjoystate
	ld	hl,#_oldjoystate
	ld	a,(hl)
	and	a,#0x02
	ld	b,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	b
	jp	z,00108$
00151$:
;	player.c 89
;	genCmpEq
;	AOP_HL for _selection
; genCmpEq: left 1, right 1, result 0
	ld	hl,#_selection
	ld	a,(hl)
	or	a,a
	jp	nz,00105$
	jr	00153$
00152$:
	jp	00105$
00153$:
;	player.c 90
;	genAssign
;	AOP_HL for _selection
	ld	hl,#_selection
	ld	(hl),#0x02
;	genGoto
	jp	00106$
;	genLabel
00105$:
;	player.c 92
;	genMinus
;	AOP_HL for _selection
	ld	hl,#_selection
	dec	(hl)
;	genLabel
00106$:
;	player.c 94
;	genMult
;	AOP_HL for _selection
	ld	hl,#_selection
	ld	e,(hl)
	ld	d,#0x00
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for _main_sloc0_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#0x0038
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,1(sp)
	ld	(hl+),a
	ld	(hl),d
;	genCast
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	a,(hl)
	dec	hl
	ld	(hl),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x67
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _main_sloc1_1_0
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,#0x06
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
	pop	bc
;	player.c 95
;	genPlus
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,c
	add	a,#0x40
	ld	c,a
	ld	a,b
	adc	a,#0x00
	ld	b,a
;	genCast
; Removed redundent load
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x67
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genIpush
	ld	a,#0x07
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	genLabel
00108$:
;	player.c 98
;	genAnd
;	AOP_HL for _joystate
	ld	hl,#_joystate
	ld	a,(hl)
	and	a,#0x01
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00114$
;	genAnd
;	AOP_HL for _oldjoystate
	ld	hl,#_oldjoystate
	ld	a,(hl)
	and	a,#0x01
	ld	b,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	b
	jp	z,00114$
00154$:
;	player.c 99
;	genCmpEq
;	AOP_HL for _selection
; genCmpEq: left 1, right 1, result 0
	ld	hl,#_selection
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00111$
	jr	00156$
00155$:
	jp	00111$
00156$:
;	player.c 100
;	genAssign
;	AOP_HL for _selection
	ld	hl,#_selection
	ld	(hl),#0x00
;	genGoto
	jp	00112$
;	genLabel
00111$:
;	player.c 102
;	genPlus
;	AOP_HL for _selection
;	genPlusIncr
	ld	hl,#_selection
	inc	(hl)
;	genLabel
00112$:
;	player.c 104
;	genMult
;	AOP_HL for _selection
	ld	hl,#_selection
	ld	e,(hl)
	ld	d,#0x00
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for _main_sloc0_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#0x0038
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,1(sp)
	ld	(hl+),a
	ld	(hl),d
;	genCast
;	AOP_STK for _main_sloc0_1_0
;	AOP_STK for _main_sloc1_1_0
	dec	hl
	ld	a,(hl)
	dec	hl
	ld	(hl),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x67
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _main_sloc1_1_0
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,#0x06
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
	pop	bc
;	player.c 105
;	genPlus
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,c
	add	a,#0x40
	ld	c,a
	ld	a,b
	adc	a,#0x00
	ld	b,a
;	genCast
; Removed redundent load
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x67
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genIpush
	ld	a,#0x07
	push	af
	inc	sp
;	genCall
	call	_move_sprite
	lda	sp,3(sp)
;	genLabel
00114$:
;	player.c 108
;	genAnd
;	AOP_HL for _joystate
	ld	hl,#_joystate
	ld	a,(hl)
	and	a,#0x10
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00122$
;	genAnd
;	AOP_HL for _oldjoystate
	ld	hl,#_oldjoystate
	ld	a,(hl)
	and	a,#0x10
	ld	b,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	b
	jp	z,00122$
00157$:
;	player.c 109
;	genCmpEq
;	AOP_HL for _selection
; genCmpEq: left 1, right 1, result 0
	ld	hl,#_selection
	ld	a,(hl)
	or	a,a
	jp	nz,00119$
	jr	00159$
00158$:
	jp	00119$
00159$:
;	player.c 110
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	call	_disable_interrupts
	pop	hl
	ld	c,l
;	player.c 111
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	hl,#_song_data
	push	hl
;	genCall
	call	_mus_init
	lda	sp,2(sp)
	pop	hl
	ld	c,l
;	player.c 112
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	call	_enable_interrupts
	pop	hl
	ld	c,l
;	player.c 113
;	genAssign
;	AOP_HL for _paused
	ld	hl,#_paused
	ld	(hl),#0x01
;	player.c 114
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	call	_togglePaused
	pop	hl
	ld	c,l
;	genGoto
	jp	00122$
;	genLabel
00119$:
;	player.c 116
;	genCmpEq
;	AOP_HL for _selection
; genCmpEq: left 1, right 1, result 0
	ld	hl,#_selection
	ld	a,(hl)
	cp	a,#0x01
	jp	nz,00122$
	jr	00161$
00160$:
	jp	00122$
00161$:
;	player.c 117
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	call	_togglePaused
	pop	hl
	ld	c,l
;	genLabel
00122$:
;	player.c 121
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00127$
;	genCmpEq
;	AOP_HL for _selection
; genCmpEq: left 1, right 1, result 0
	ld	hl,#_selection
	ld	a,(hl)
	cp	a,#0x02
	jp	nz,00127$
	jr	00163$
00162$:
	jp	00127$
00163$:
;	player.c 122
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_disable_interrupts
;	player.c 123
;	genIfx
;	AOP_HL for _paused
	xor	a,a
	ld	hl,#_paused
	or	a,(hl)
	jp	z,00125$
;	player.c 124
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_togglePaused
;	genLabel
00125$:
;	player.c 126
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_mus_update
;	player.c 127
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_enable_interrupts
;	genLabel
00127$:
;	player.c 130
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_wait_vbl_done
;	genGoto
	jp	00130$
;	genLabel
00132$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___main_end:
	.area _CODE
