opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 16 "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 16 "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F ;#
	FNCALL	_main,_adc_initialize
	FNCALL	_main,_adc_on
	FNCALL	_main,_lcd_initialize
	FNCALL	_main,_lcd_putstr
	FNCALL	_main,_lcd_2ndline
	FNCALL	_main,_ui_adc_read
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lbtoft
	FNCALL	_main,_pow
	FNCALL	_main,___fttol
	FNCALL	_main,___lwmod
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_putchar
	FNCALL	_main,_delay_ms
	FNCALL	_pow,___ftge
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,___ftneg
	FNCALL	_pow,_log
	FNCALL	_pow,___ftmul
	FNCALL	_pow,_exp
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftmul
	FNCALL	_exp,_floor
	FNCALL	_exp,___fttol
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftsub
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_ldexp
	FNCALL	_exp,___ftdiv
	FNCALL	_log,___ftge
	FNCALL	_log,_frexp
	FNCALL	_log,___ftmul
	FNCALL	_log,___ftadd
	FNCALL	_log,_eval_poly
	FNCALL	_log,___awtoft
	FNCALL	_lcd_putstr,_lcd_2ndline
	FNCALL	_lcd_putstr,_lcd_putchar
	FNCALL	_lcd_initialize,_set_lcd_e
	FNCALL	_lcd_initialize,_send_lcd_data
	FNCALL	_lcd_initialize,_lcd_clear
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_floor,_frexp
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	___ftsub,___ftadd
	FNCALL	_lcd_putchar,_send_lcd_data
	FNCALL	_lcd_goto,_send_lcd_data
	FNCALL	_lcd_2ndline,_send_lcd_data
	FNCALL	_lcd_clear,_send_lcd_data
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	___lltoft,___ftpack
	FNCALL	___altoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_send_lcd_data,_set_lcd_rs
	FNCALL	_send_lcd_data,_set_lcd_data
	FNCALL	_send_lcd_data,_set_lcd_e
	FNROOT	_main
	global	exp@coeff
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xf0
	retlw	0xff
	retlw	0xbe

	retlw	0xe2
	retlw	0xa9
	retlw	0x3e

	retlw	0x83
	retlw	0x76
	retlw	0xbe

	retlw	0xae
	retlw	0x2b
	retlw	0x3e

	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0xd2
	retlw	0x13
	retlw	0x3d

	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global	exp@coeff
	global	log@coeff
	global	lcd_bcd@F1131
	global	_errno
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB7
_RB7	set	55
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC5
_RC5	set	61
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ADCS2
_ADCS2	set	1278
	global	_ADFM
_ADFM	set	1279
	global	_PCFG0
_PCFG0	set	1272
	global	_PCFG1
_PCFG1	set	1273
	global	_PCFG2
_PCFG2	set	1274
	global	_PCFG3
_PCFG3	set	1275
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_1:	
	retlw	67	;'C'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	0
psect	strings
	file	"S58798_MiniProject.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
lcd_bcd@F1131:
       ds      10

_errno:
       ds      2

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
	clrf	((__pbssBANK1)+10)&07Fh
	clrf	((__pbssBANK1)+11)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	?_exp
?_exp:	; 3 bytes @ 0x0
	global	exp@x
exp@x:	; 3 bytes @ 0x0
	ds	3
	global	_exp$3527
_exp$3527:	; 3 bytes @ 0x3
	ds	3
	global	exp@exp
exp@exp:	; 2 bytes @ 0x6
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x8
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0x9
	global	pow@x
pow@x:	; 3 bytes @ 0x9
	ds	3
	global	pow@y
pow@y:	; 3 bytes @ 0xC
	ds	3
	global	_pow$3821
_pow$3821:	; 3 bytes @ 0xF
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x12
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x13
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x17
	ds	2
	global	main@D
main@D:	; 8 bytes @ 0x19
	ds	8
	global	main@temperature
main@temperature:	; 2 bytes @ 0x21
	ds	2
	global	main@i
main@i:	; 1 bytes @ 0x23
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_set_lcd_e
?_set_lcd_e:	; 0 bytes @ 0x0
	global	??_set_lcd_e
??_set_lcd_e:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_set_lcd_rs
?_set_lcd_rs:	; 0 bytes @ 0x0
	global	??_set_lcd_rs
??_set_lcd_rs:	; 0 bytes @ 0x0
	global	?_set_lcd_data
?_set_lcd_data:	; 0 bytes @ 0x0
	global	??_set_lcd_data
??_set_lcd_data:	; 0 bytes @ 0x0
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x0
	global	?_adc_initialize
?_adc_initialize:	; 0 bytes @ 0x0
	global	??_adc_initialize
??_adc_initialize:	; 0 bytes @ 0x0
	global	?_adc_on
?_adc_on:	; 0 bytes @ 0x0
	global	??_adc_on
??_adc_on:	; 0 bytes @ 0x0
	global	?_lcd_initialize
?_lcd_initialize:	; 0 bytes @ 0x0
	global	?_lcd_2ndline
?_lcd_2ndline:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_putchar
?_lcd_putchar:	; 0 bytes @ 0x0
	global	?_lcd_putstr
?_lcd_putstr:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?_ui_adc_read
?_ui_adc_read:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	set_lcd_e@b_output
set_lcd_e@b_output:	; 1 bytes @ 0x0
	global	set_lcd_rs@b_output
set_lcd_rs@b_output:	; 1 bytes @ 0x0
	global	set_lcd_data@uc_data
set_lcd_data@uc_data:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	delay_ms@ui_value
delay_ms@ui_value:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	?_send_lcd_data
?_send_lcd_data:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	send_lcd_data@uc_data
send_lcd_data@uc_data:	; 1 bytes @ 0x1
	ds	1
	global	??_send_lcd_data
??_send_lcd_data:	; 0 bytes @ 0x2
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x2
	global	??_ui_adc_read
??_ui_adc_read:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	??_frexp
??_frexp:	; 0 bytes @ 0x4
	global	send_lcd_data@b_rs
send_lcd_data@b_rs:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	ui_adc_read@temp
ui_adc_read@temp:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_lcd_initialize
??_lcd_initialize:	; 0 bytes @ 0x5
	global	??_lcd_2ndline
??_lcd_2ndline:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	??_lcd_putchar
??_lcd_putchar:	; 0 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	lcd_goto@uc_position
lcd_goto@uc_position:	; 1 bytes @ 0x6
	global	lcd_putchar@c_data
lcd_putchar@c_data:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_putstr
??_lcd_putstr:	; 0 bytes @ 0x7
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	lcd_putstr@csz_string
lcd_putstr@csz_string:	; 1 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xC
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xA
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xA
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xA
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xA
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xC
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xC
	ds	2
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xE
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x10
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x11
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x11
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x11
	global	?___altoft
?___altoft:	; 3 bytes @ 0x11
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x11
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x11
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x11
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x11
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x11
	ds	3
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0x14
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x14
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x14
	ds	1
	global	??___altoft
??___altoft:	; 0 bytes @ 0x15
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0x15
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x16
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x16
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x17
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x17
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x17
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x17
	ds	1
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x18
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x18
	ds	2
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1A
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1B
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1C
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1D
	ds	2
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1F
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x20
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x21
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x22
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x25
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x26
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x27
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x27
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2A
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x2D
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x31
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x32
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x33
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x34
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x34
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x34
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x34
	global	floor@x
floor@x:	; 3 bytes @ 0x34
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x34
	ds	3
	global	??_floor
??_floor:	; 0 bytes @ 0x37
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x37
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x37
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x38
	ds	1
	global	??_ldexp
??_ldexp:	; 0 bytes @ 0x39
	ds	2
	global	floor@expon
floor@expon:	; 2 bytes @ 0x3B
	global	_ldexp$3573
_ldexp$3573:	; 3 bytes @ 0x3B
	ds	3
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x3E
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x3E
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x41
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x42
	ds	2
	global	??_eval_poly
??_eval_poly:	; 0 bytes @ 0x44
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x45
	ds	3
	global	?_log
?_log:	; 3 bytes @ 0x48
	global	log@x
log@x:	; 3 bytes @ 0x48
	ds	3
	global	??_log
??_log:	; 0 bytes @ 0x4B
	ds	1
	global	log@exp
log@exp:	; 2 bytes @ 0x4C
	ds	2
	global	??_exp
??_exp:	; 0 bytes @ 0x4E
	ds	1
	global	??_pow
??_pow:	; 0 bytes @ 0x4F
	ds	1
;;Data sizes: Strings 13, constant 57, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     80      80
;; BANK1           80     36      48
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_frexp	 size(1) Largest target is 0
;;
;; ?_ldexp	 size(1) Largest target is 0
;;
;; ?_eval_poly	 size(1) Largest target is 0
;;
;; ?_floor	 size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?_exp	float  size(1) Largest target is 0
;;
;; ?_log	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?_pow	long  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_ui_adc_read	unsigned int  size(1) Largest target is 0
;;
;; eval_poly@d	PTR const  size(1) Largest target is 30
;;		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;;
;; frexp@eptr	PTR int  size(1) Largest target is 2
;;		 -> log@exp(BANK0[2]), floor@expon(BANK0[2]), 
;;
;; lcd_putstr@csz_string	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwmod
;;   _pow->___lwmod
;;   _exp->___lwmod
;;   _log->___lwmod
;;   _lcd_putstr->_lcd_putchar
;;   _lcd_initialize->_send_lcd_data
;;   _eval_poly->___lwmod
;;   _floor->___lwmod
;;   ___ftsub->___lwmod
;;   _lcd_putchar->_send_lcd_data
;;   _lcd_goto->_send_lcd_data
;;   _lcd_2ndline->_send_lcd_data
;;   _lcd_clear->_send_lcd_data
;;   _ldexp->___lwmod
;;   ___lltoft->___lwmod
;;   ___altoft->___lwmod
;;   ___awtoft->___lwmod
;;   ___lbtoft->___lwmod
;;   ___ftmul->___lwmod
;;   ___ftdiv->___lwmod
;;   ___ftadd->___lwmod
;;   _send_lcd_data->_set_lcd_rs
;;   _send_lcd_data->_set_lcd_data
;;   _send_lcd_data->_set_lcd_e
;;   ___fttol->___ftpack
;;   ___lwmod->___fttol
;;   ___lwmod->___ftge
;;   ___lwdiv->___fttol
;;   ___lwdiv->___ftge
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_pow
;;   _pow->_exp
;;   _exp->_log
;;   _log->_eval_poly
;;   _eval_poly->_ldexp
;;   _floor->___ftadd
;;   ___ftsub->___ftadd
;;   _ldexp->___ftadd
;;   ___lltoft->___lwdiv
;;   ___altoft->___lwdiv
;;   ___awtoft->___lwdiv
;;   ___lbtoft->___lwdiv
;;   ___ftmul->___awtoft
;;   ___ftdiv->___lwdiv
;;   ___ftadd->___ftmul
;;   ___lwmod->___fttol
;;   ___lwdiv->___fttol
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_pow
;;   _pow->_exp
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                13    13      0   16035
;;                                             23 BANK1     13    13      0
;;                     _adc_initialize
;;                             _adc_on
;;                     _lcd_initialize
;;                         _lcd_putstr
;;                        _lcd_2ndline
;;                        _ui_adc_read
;;                            ___lwdiv
;;                           ___lbtoft
;;                                _pow
;;                            ___fttol
;;                            ___lwmod
;;                           _lcd_goto
;;                        _lcd_putchar
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _pow                                                 15     9      6   13644
;;                                             79 BANK0      1     1      0
;;                                              9 BANK1     14     8      6
;;                             ___ftge
;;                            ___fttol
;;                           ___lltoft
;;                            ___ftneg
;;                                _log
;;                            ___ftmul
;;                                _exp
;;                           ___lbtoft (ARG)
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _exp                                                 10     7      3    7799
;;                                             78 BANK0      1     1      0
;;                                              0 BANK1      9     6      3
;;                             ___ftge
;;                            ___ftneg
;;                            ___ftmul
;;                              _floor
;;                            ___fttol
;;                           ___awtoft
;;                            ___ftsub
;;                          _eval_poly
;;                              _ldexp
;;                            ___ftdiv
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                                _log (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _log                                                  6     3      3    4263
;;                                             72 BANK0      6     3      3
;;                             ___ftge
;;                              _frexp
;;                            ___ftmul
;;                            ___ftadd
;;                          _eval_poly
;;                           ___awtoft
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putstr                                           2     2      0     331
;;                                              7 COMMON     2     2      0
;;                        _lcd_2ndline
;;                        _lcd_putchar
;; ---------------------------------------------------------------------------------
;; (1) _lcd_initialize                                       2     2      0     242
;;                                              5 COMMON     2     2      0
;;                          _set_lcd_e
;;                      _send_lcd_data
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (3) _eval_poly                                           10     4      6    1854
;;                                             62 BANK0     10     4      6
;;                             ___bmul
;;                            ___ftmul
;;                            ___ftadd
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                              _ldexp (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _floor                                                9     6      3    2259
;;                                             52 BANK0      9     6      3
;;                              _frexp
;;                             ___ftge
;;                            ___fttol
;;                           ___altoft
;;                            ___ftadd
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1094
;;                                             52 BANK0      6     0      6
;;                            ___ftadd
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putchar                                          2     2      0     132
;;                                              5 COMMON     2     2      0
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     132
;;                                              5 COMMON     2     2      0
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_2ndline                                          1     1      0     110
;;                                              5 COMMON     1     1      0
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     110
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (3) _ldexp                                               10     5      5     453
;;                                             52 BANK0     10     5      5
;;                             ___ftge
;;                            ___ftneg
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                             ___bmul (ARG)
;;                            ___ftmul (ARG)
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             6     2      4     278
;;                                             17 BANK0      6     2      4
;;                           ___ftpack
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___altoft                                             8     4      4     347
;;                                             17 BANK0      8     4      4
;;                           ___ftpack
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awtoft                                             6     3      3     300
;;                                             17 BANK0      6     3      3
;;                           ___ftpack
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lbtoft                                             8     5      3     231
;;                                             17 BANK0      8     5      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             16    10      6     535
;;                                             23 BANK0     16    10      6
;;                           ___ftpack
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                              _frexp (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftdiv                                             16    10      6     489
;;                                             17 BANK0     16    10      6
;;                           ___ftpack
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftadd                                             13     7      6    1049
;;                                             39 BANK0     13     7      6
;;                           ___ftpack
;;                            ___lwmod (ARG)
;;                            ___lwdiv (ARG)
;;                            ___ftmul (ARG)
;;                              _frexp (ARG)
;;                           ___awtoft (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _delay_ms                                             4     2      2      22
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _send_lcd_data                                        4     3      1     110
;;                                              1 COMMON     4     3      1
;;                         _set_lcd_rs
;;                       _set_lcd_data
;;                          _set_lcd_e
;; ---------------------------------------------------------------------------------
;; (1) _ui_adc_read                                          6     4      2      47
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _frexp                                                6     2      4     224
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (4) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     159
;;                                             12 COMMON     2     2      0
;;                                             10 BANK0      4     0      4
;;                            ___fttol (ARG)
;;                             ___ftge (ARG)
;;                           ___ftpack (ARG)
;;                            ___ftneg (ARG)
;;                              _frexp (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                             12 COMMON     1     1      0
;;                                             10 BANK0      7     3      4
;;                            ___fttol (ARG)
;;                             ___ftge (ARG)
;;                           ___ftpack (ARG)
;;                            ___ftneg (ARG)
;;                              _frexp (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (3) _set_lcd_data                                         1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _set_lcd_rs                                           1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _set_lcd_e                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _adc_on                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _adc_initialize                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _adc_initialize
;;   _adc_on
;;   _lcd_initialize
;;     _set_lcd_e
;;     _send_lcd_data
;;       _set_lcd_rs
;;       _set_lcd_data
;;       _set_lcd_e
;;     _lcd_clear
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;   _lcd_putstr
;;     _lcd_2ndline
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;     _lcd_putchar
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;   _lcd_2ndline
;;     _send_lcd_data
;;       _set_lcd_rs
;;       _set_lcd_data
;;       _set_lcd_e
;;   _ui_adc_read
;;   ___lwdiv
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;     ___ftge (ARG)
;;     ___ftpack (ARG)
;;     ___ftneg (ARG)
;;     _frexp (ARG)
;;     ___bmul (ARG)
;;   ___lbtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;     ___lwmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;       ___ftge (ARG)
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;     ___lwdiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;       ___ftge (ARG)
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;   _pow
;;     ___ftge
;;     ___fttol
;;       ___ftpack (ARG)
;;     ___lltoft
;;       ___ftpack
;;       ___lwmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       ___lwdiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;     ___ftneg
;;     _log
;;       ___ftge
;;       _frexp
;;       ___ftmul
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         _frexp (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         _frexp (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         ___bmul (ARG)
;;       _eval_poly
;;         ___bmul
;;         ___ftmul
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         ___ftadd
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___bmul (ARG)
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         _ldexp (ARG)
;;           ___ftge
;;           ___ftneg
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               _frexp (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___lwmod (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 ___lwdiv (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___bmul (ARG)
;;       ___awtoft
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;       ___lwmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       ___lwdiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___lwmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       ___lwdiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       _frexp (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;     _exp
;;       ___ftge
;;       ___ftneg
;;       ___ftmul
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         _frexp (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;       _floor
;;         _frexp
;;         ___ftge
;;         ___fttol
;;           ___ftpack (ARG)
;;         ___altoft
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___ftadd
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___bmul (ARG)
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;       ___awtoft
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___bmul (ARG)
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;       _eval_poly
;;         ___bmul
;;         ___ftmul
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         ___ftadd
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___bmul (ARG)
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         _ldexp (ARG)
;;           ___ftge
;;           ___ftneg
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               _frexp (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___lwmod (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 ___lwdiv (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___bmul (ARG)
;;       _ldexp
;;         ___ftge
;;         ___ftneg
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___bmul (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___bmul (ARG)
;;       ___ftdiv
;;         ___ftpack
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;       ___lwmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       ___lwdiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       _log (ARG)
;;         ___ftge
;;         _frexp
;;         ___ftmul
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         ___ftadd
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           _frexp (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___bmul (ARG)
;;         _eval_poly
;;           ___bmul
;;           ___ftmul
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           ___ftadd
;;             ___ftpack
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               _frexp (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___lwmod (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 ___lwdiv (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;             _frexp (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___bmul (ARG)
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _ldexp (ARG)
;;             ___ftge
;;             ___ftneg
;;             ___lwmod (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___lwdiv (ARG)
;;               ___fttol (ARG)
;;                 ___ftpack (ARG)
;;               ___ftge (ARG)
;;               ___ftpack (ARG)
;;               ___ftneg (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               _frexp (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___lwmod (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 ___lwdiv (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___lwmod (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___lwdiv (ARG)
;;                 ___fttol (ARG)
;;                   ___ftpack (ARG)
;;                 ___ftge (ARG)
;;                 ___ftpack (ARG)
;;                 ___ftneg (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;               ___ftmul (ARG)
;;                 ___ftpack
;;                 ___lwmod (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 ___lwdiv (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 _frexp (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___lwmod (ARG)
;;                     ___fttol (ARG)
;;                       ___ftpack (ARG)
;;                     ___ftge (ARG)
;;                     ___ftpack (ARG)
;;                     ___ftneg (ARG)
;;                     _frexp (ARG)
;;                     ___bmul (ARG)
;;                   ___lwdiv (ARG)
;;                     ___fttol (ARG)
;;                       ___ftpack (ARG)
;;                     ___ftge (ARG)
;;                     ___ftpack (ARG)
;;                     ___ftneg (ARG)
;;                     _frexp (ARG)
;;                     ___bmul (ARG)
;;               _frexp (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___lwmod (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;                 ___lwdiv (ARG)
;;                   ___fttol (ARG)
;;                     ___ftpack (ARG)
;;                   ___ftge (ARG)
;;                   ___ftpack (ARG)
;;                   ___ftneg (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;               ___bmul (ARG)
;;         ___awtoft
;;           ___ftpack
;;           ___lwmod (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___lwdiv (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;             ___ftge (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         ___lwmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         ___lwdiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;     ___lbtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;       ___lwmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       ___lwdiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;     ___lwmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;       ___ftge (ARG)
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;     ___lwdiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;       ___ftge (ARG)
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;   ___lwmod
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;     ___ftge (ARG)
;;     ___ftpack (ARG)
;;     ___ftneg (ARG)
;;     _frexp (ARG)
;;     ___bmul (ARG)
;;   _lcd_goto
;;     _send_lcd_data
;;       _set_lcd_rs
;;       _set_lcd_data
;;       _set_lcd_e
;;   _lcd_putchar
;;     _send_lcd_data
;;       _set_lcd_rs
;;       _set_lcd_data
;;       _set_lcd_e
;;   _delay_ms
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      8E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     50      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     24      30       7       60.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      93      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 26 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  D               8   25[BANK1 ] unsigned int [4]
;;  temperature     2   33[BANK1 ] unsigned int 
;;  i               1   35[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  2150[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_adc_initialize
;;		_adc_on
;;		_lcd_initialize
;;		_lcd_putstr
;;		_lcd_2ndline
;;		_ui_adc_read
;;		___lwdiv
;;		___lbtoft
;;		_pow
;;		___fttol
;;		___lwmod
;;		_lcd_goto
;;		_lcd_putchar
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\main.c"
	line	26
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	27
	
l6195:	
;main.c: 27: TRISA = 0b00000100;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	28
;main.c: 28: TRISB = 0b00000111;
	movlw	(07h)
	movwf	(134)^080h	;volatile
	line	29
	
l6197:	
;main.c: 29: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	30
	
l6199:	
;main.c: 30: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	31
	
l6201:	
;main.c: 31: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	33
	
l6203:	
;main.c: 33: unsigned int temperature = 0;
	clrf	(main@temperature)^080h
	clrf	(main@temperature+1)^080h
	line	35
	
l6205:	
;main.c: 34: unsigned int D[4];
;main.c: 35: unsigned char i = 0;
	clrf	(main@i)^080h
	line	37
	
l6207:	
;main.c: 37: adc_initialize();
	fcall	_adc_initialize
	line	38
	
l6209:	
;main.c: 38: adc_on();
	fcall	_adc_on
	line	39
	
l6211:	
;main.c: 39: lcd_initialize();
	fcall	_lcd_initialize
	line	40
	
l6213:	
;main.c: 40: lcd_putstr("Current Temp");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_putstr
	line	41
	
l6215:	
;main.c: 41: lcd_2ndline();
	fcall	_lcd_2ndline
	goto	l6217
	line	43
;main.c: 43: while(1)
	
l2151:	
	line	46
	
l6217:	
;main.c: 44: {
;main.c: 46: if (RB2 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l2152
u4110:
	line	47
	
l6219:	
;main.c: 47: RC5 = 1;
	bsf	(61/8),(61)&7
	line	48
;main.c: 48: }else{
	goto	l6221
	
l2152:	
	line	49
;main.c: 49: RC5 = 0;
	bcf	(61/8),(61)&7
	goto	l6221
	line	50
	
l2153:	
	line	52
	
l6221:	
;main.c: 50: }
;main.c: 52: temperature = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@temperature)^080h
	clrf	(main@temperature+1)^080h
	line	53
	
l6223:	
;main.c: 53: for( i = 0 ; i < 10 ; i++)
	clrf	(main@i)^080h
	
l6225:	
	movlw	(0Ah)
	subwf	(main@i)^080h,w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l6229
u4120:
	goto	l6235
	
l6227:	
	goto	l6235
	line	54
	
l2154:	
	line	55
	
l6229:	
;main.c: 54: {
;main.c: 55: temperature = temperature + ui_adc_read();
	fcall	_ui_adc_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temperature)^080h,w
	addwf	(0+(?_ui_adc_read)),w
	movwf	(main@temperature)^080h
	movf	(main@temperature+1)^080h,w
	skipnc
	incf	(main@temperature+1)^080h,w
	addwf	(1+(?_ui_adc_read)),w
	movwf	1+(main@temperature)^080h
	line	53
	
l6231:	
	movlw	(01h)
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	addwf	(main@i)^080h,f
	
l6233:	
	movlw	(0Ah)
	subwf	(main@i)^080h,w
	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l6229
u4130:
	goto	l6235
	
l2155:	
	line	57
	
l6235:	
;main.c: 56: }
;main.c: 57: temperature = temperature / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temperature+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temperature)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@temperature+1)^080h
	addwf	(main@temperature+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@temperature)^080h
	addwf	(main@temperature)^080h

	line	58
	
l6237:	
;main.c: 58: temperature = temperature / 2 ;
	movf	(main@temperature+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@temperature)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	01h
u4145:
	clrc
	rrf	(??_main+0)^080h+1,f
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u4145
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@temperature)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@temperature+1)^080h
	line	59
	
l6239:	
;main.c: 59: D[3] = temperature;
	movf	(main@temperature+1)^080h,w
	clrf	1+(main@D)^080h+06h
	addwf	1+(main@D)^080h+06h
	movf	(main@temperature)^080h,w
	clrf	0+(main@D)^080h+06h
	addwf	0+(main@D)^080h+06h

	line	60
	
l6241:	
;main.c: 60: for(i=3; i>0; i--){
	movlw	(03h)
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(main@i)^080h
	
l6243:	
	movf	(main@i)^080h,f
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l6247
u4150:
	goto	l6253
	
l6245:	
	goto	l6253
	
l2156:	
	line	61
	
l6247:	
;main.c: 61: D[i-1] = D[i]%((int)pow(10, i));
	movf	(main@i)^080h,w
	fcall	___lbtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lbtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?_pow)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lbtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?_pow)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lbtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?_pow)^080h+03h
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x20
	movwf	(?_pow+1)^080h
	movlw	0x41
	movwf	(?_pow+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	movwf	(?___fttol)
	movf	(1+(?_pow))^080h,w
	movwf	(?___fttol+1)
	movf	(2+(?_pow))^080h,w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+0)^080h+0
	addwf	(??_main+0)^080h+0,w
	addlw	main@D&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___lwmod)+02h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___lwmod)+02h
	fcall	___lwmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+1)^080h+0
	addwf	(??_main+1)^080h+0,w
	addlw	0FEh
	addlw	main@D&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___lwmod)),w
	movwf	indf
	line	62
;main.c: 62: D[i] = D[i]/((int)pow(10, i));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	fcall	___lbtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lbtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?_pow)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lbtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?_pow)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lbtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?_pow)^080h+03h
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x20
	movwf	(?_pow+1)^080h
	movlw	0x41
	movwf	(?_pow+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	movwf	(?___fttol)
	movf	(1+(?_pow))^080h,w
	movwf	(?___fttol+1)
	movf	(2+(?_pow))^080h,w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+0)^080h+0
	addwf	(??_main+0)^080h+0,w
	addlw	main@D&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___lwdiv)+02h
	incf	fsr0,f
	movf	indf,w
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+1)^080h+0
	addwf	(??_main+1)^080h+0,w
	addlw	main@D&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___lwdiv)),w
	movwf	indf
	line	60
	
l6249:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@i)^080h,f
	
l6251:	
	movf	(main@i)^080h,f
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l6247
u4160:
	goto	l6253
	
l2157:	
	line	64
	
l6253:	
;main.c: 63: }
;main.c: 64: lcd_goto(0x41);
	movlw	(041h)
	fcall	_lcd_goto
	line	65
	
l6255:	
;main.c: 65: for(i=4; i>0; i--){
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(main@i)^080h
	
l6257:	
	movf	(main@i)^080h,f
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l6261
u4170:
	goto	l6267
	
l6259:	
	goto	l6267
	
l2158:	
	line	66
	
l6261:	
;main.c: 66: lcd_putchar(D[i-1]+0x30);
	movf	(main@i)^080h,w
	movwf	(??_main+0)^080h+0
	addwf	(??_main+0)^080h+0,w
	addlw	0FEh
	addlw	main@D&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addlw	030h
	fcall	_lcd_putchar
	line	65
	
l6263:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@i)^080h,f
	
l6265:	
	movf	(main@i)^080h,f
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l6261
u4180:
	goto	l6267
	
l2159:	
	line	68
	
l6267:	
;main.c: 67: }
;main.c: 68: lcd_putchar(0xdf);
	movlw	(0DFh)
	fcall	_lcd_putchar
	line	69
;main.c: 69: lcd_putchar('C');
	movlw	(043h)
	fcall	_lcd_putchar
	line	72
	
l6269:	
;main.c: 72: if(temperature >= 75){
	movlw	high(04Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@temperature+1)^080h,w
	movlw	low(04Bh)
	skipnz
	subwf	(main@temperature)^080h,w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l6273
u4190:
	line	73
	
l6271:	
;main.c: 73: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	74
;main.c: 74: RC1 = 1;
	bsf	(57/8),(57)&7
	line	75
;main.c: 75: RC2 = 1;
	bsf	(58/8),(58)&7
	line	76
;main.c: 76: } else if(temperature < 35){
	goto	l6217
	
l2160:	
	
l6273:	
	movlw	high(023h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@temperature+1)^080h,w
	movlw	low(023h)
	skipnz
	subwf	(main@temperature)^080h,w
	skipnc
	goto	u4201
	goto	u4200
u4201:
	goto	l2162
u4200:
	line	78
	
l6275:	
;main.c: 78: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	81
;main.c: 81: if (RB0 == 0){
	btfsc	(48/8),(48)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l6217
u4210:
	line	82
	
l6277:	
;main.c: 82: RB7 = 0;
	bcf	(55/8),(55)&7
	line	83
	
l6279:	
;main.c: 83: delay_ms(0xff);
	movlw	low(0FFh)
	movwf	(?_delay_ms)
	movlw	high(0FFh)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	84
	
l6281:	
;main.c: 84: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	goto	l6217
	line	85
	
l2163:	
	line	86
;main.c: 85: }
;main.c: 86: } else {
	goto	l6217
	
l2162:	
	line	88
;main.c: 88: if (RB1 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l6217
u4220:
	line	89
	
l6283:	
;main.c: 89: RC2 = 1;
	bsf	(58/8),(58)&7
	goto	l6217
	line	90
	
l2165:	
	goto	l6217
	line	91
	
l2164:	
	goto	l6217
	
l2161:	
	goto	l6217
	line	92
	
l2166:	
	line	43
	goto	l6217
	
l2167:	
	goto	l2169
	line	94
;main.c: 90: }
;main.c: 91: }
;main.c: 92: }
;main.c: 94: while(1) continue;
	
l2168:	
	
l2169:	
	goto	l2169
	
l2170:	
	line	95
	
l2171:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_pow
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

;; *************** function _pow *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    9[BANK1 ] int 
;;  y               3   12[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  yi              4   19[BANK1 ] unsigned long 
;;  sign            1   18[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    9[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      14       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___fttol
;;		___lltoft
;;		___ftneg
;;		_log
;;		___ftmul
;;		_exp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text786
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
	line	6
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
	opt	stack 3
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l6157:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l6159:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l6167
u4050:
	line	11
	
l6161:	
	movlw	0x0
	movwf	(?___ftge)
	movlw	0x0
	movwf	(?___ftge+1)
	movlw	0x0
	movwf	(?___ftge+2)
	movf	(pow@y)^080h,w
	movwf	0+(?___ftge)+03h
	movf	(pow@y+1)^080h,w
	movwf	1+(?___ftge)+03h
	movf	(pow@y+2)^080h,w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u4061
	goto	u4060
u4061:
	goto	l2861
u4060:
	line	12
	
l6163:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	13
	
l2861:	
	line	14
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l2862
	
l6165:	
	goto	l2862
	line	15
	
l2860:	
	line	16
	
l6167:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l6173
u4070:
	line	17
	
l6169:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l2862
	
l6171:	
	goto	l2862
	
l2863:	
	line	18
	
l6173:	
	movf	(pow@x)^080h,w
	movwf	(?___ftge)
	movf	(pow@x+1)^080h,w
	movwf	(?___ftge+1)
	movf	(pow@x+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4081
	goto	u4080
u4081:
	goto	l6185
u4080:
	line	19
	
l6175:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	movwf	(?___fttol)
	movf	(pow@y+1)^080h,w
	movwf	(?___fttol+1)
	movf	(pow@y+2)^080h,w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	movf	(2+(?___fttol)),w
	movwf	(pow@yi+2)^080h
	movf	(1+(?___fttol)),w
	movwf	(pow@yi+1)^080h
	movf	(0+(?___fttol)),w
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft)

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u4095
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u4095
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?___lltoft)),w
u4095:
	skipnz
	goto	u4091
	goto	u4090
u4091:
	goto	l6181
u4090:
	line	21
	
l6177:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	22
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l2862
	
l6179:	
	goto	l2862
	line	23
	
l2865:	
	line	24
	
l6181:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi)^080h,w
	andlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pow+0)+0
	movf	(??_pow+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@sign)^080h
	line	25
	
l6183:	
	movf	(pow@x)^080h,w
	movwf	(?___ftneg)
	movf	(pow@x+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(pow@x+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(pow@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(pow@x+2)^080h
	goto	l6185
	line	26
	
l2864:	
	line	27
	
l6185:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3821)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3821+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3821+2)^080h
	
l6187:	
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3821)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3821+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3821+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+2)^080h
	fcall	_exp
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_exp))^080h,w
	movwf	(pow@x)^080h
	movf	(1+(?_exp))^080h,w
	movwf	(pow@x+1)^080h
	movf	(2+(?_exp))^080h,w
	movwf	(pow@x+2)^080h
	line	28
	
l6189:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u4100
	goto	l2866
u4100:
	line	29
	
l6191:	
	movf	(pow@x)^080h,w
	movwf	(?___ftneg)
	movf	(pow@x+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(pow@x+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movf	(1+(?___ftneg)),w
	movwf	(?_pow+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(?_pow+2)^080h
	goto	l2862
	
l6193:	
	goto	l2862
	
l2866:	
	line	30
	line	31
	
l2862:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
;; =============== function _pow ends ============

	signat	_pow,8315
	global	_exp
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:

;; *************** function _exp *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3    0[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2    6[BANK1 ] int 
;;  sign            1    8[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       9       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftneg
;;		___ftmul
;;		_floor
;;		___fttol
;;		___awtoft
;;		___ftsub
;;		_eval_poly
;;		_ldexp
;;		___ftdiv
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text787
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	13
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
	opt	stack 3
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l6105:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	iorwf	(exp@x+1)^080h,w
	iorwf	(exp@x)^080h,w
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l6111
u3990:
	line	32
	
l6107:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x80
	movwf	(?_exp+1)^080h
	movlw	0x3f
	movwf	(?_exp+2)^080h
	goto	l3220
	
l6109:	
	goto	l3220
	
l3219:	
	line	34
	
l6111:	
	movlw	0x72
	movwf	(?___ftge)
	movlw	0x31
	movwf	(?___ftge+1)
	movlw	0x44
	movwf	(?___ftge+2)
	movf	(exp@x)^080h,w
	movwf	0+(?___ftge)+03h
	movf	(exp@x+1)^080h,w
	movwf	1+(?___ftge)+03h
	movf	(exp@x+2)^080h,w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4001
	goto	u4000
u4001:
	goto	l6121
u4000:
	line	35
	
l6113:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	36
	goto	l6117
	
l6115:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x80
	movwf	(?_exp+1)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	goto	l3220
	
l3223:	
	
l6117:	
	movlw	0xff
	movwf	(?_exp)^080h
	movlw	0x7f
	movwf	(?_exp+1)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	goto	l3220
	
l3225:	
	goto	l3220
	
l6119:	
	goto	l3220
	line	37
	
l3221:	
	line	38
	
l6121:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	movwf	(?___ftge)
	movf	(exp@x+1)^080h,w
	movwf	(?___ftge+1)
	movf	(exp@x+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x49
	movwf	0+(?___ftge)+03h
	movlw	0x3a
	movwf	1+(?___ftge)+03h
	movlw	0xc4
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4011
	goto	u4010
u4011:
	goto	l6127
u4010:
	line	39
	
l6123:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	40
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp+2)^080h
	goto	l3220
	
l6125:	
	goto	l3220
	line	41
	
l3226:	
	line	43
	
l6127:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	movwf	(?___ftge)
	movf	(exp@x+1)^080h,w
	movwf	(?___ftge+1)
	movf	(exp@x+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	movlw	0
	btfss	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l6129:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u4020
	goto	l6133
u4020:
	line	45
	
l6131:	
	movf	(exp@x)^080h,w
	movwf	(?___ftneg)
	movf	(exp@x+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(exp@x+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)^080h
	goto	l6133
	
l3227:	
	line	46
	
l6133:	
	movlw	0xaa
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movlw	0xb8
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	47
	
l6135:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	movwf	(?___fttol)
	movf	(1+(?_floor)),w
	movwf	(?___fttol+1)
	movf	(2+(?_floor)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exp+1)^080h
	addwf	(exp@exp+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(exp@exp)^080h
	addwf	(exp@exp)^080h

	line	48
	
l6137:	
	movf	(exp@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftsub)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	49
	
l6139:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly+2)
	movlw	((exp@coeff-__stringbase))&0ffh
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(0+?_eval_poly+03h)
	movlw	low(09h)
	movwf	0+(?_eval_poly)+04h
	movlw	high(09h)
	movwf	(0+(?_eval_poly)+04h)+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(?_ldexp)
	movf	(1+(?_eval_poly)),w
	movwf	(?_ldexp+1)
	movf	(2+(?_eval_poly)),w
	movwf	(?_ldexp+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_ldexp)+03h
	addwf	1+(?_ldexp)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_ldexp)+03h
	addwf	0+(?_ldexp)+03h

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	50
	
l6141:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u4030
	goto	l3228
u4030:
	goto	l6147
	line	52
	
l6143:	
	goto	l6147
	
l6145:	
	movlw	0x0
	movwf	(_exp$3527)^080h
	movlw	0x80
	movwf	(_exp$3527+1)^080h
	movlw	0x7f
	movwf	(_exp$3527+2)^080h
	goto	l3233
	
l3231:	
	
l6147:	
	movlw	0xff
	movwf	(_exp$3527)^080h
	movlw	0x7f
	movwf	(_exp$3527+1)^080h
	movlw	0x7f
	movwf	(_exp$3527+2)^080h
	
l3233:	
	movf	(exp@x+2)^080h,w
	xorwf	(_exp$3527+2)^080h,w
	skipz
	goto	u4045
	movf	(exp@x+1)^080h,w
	xorwf	(_exp$3527+1)^080h,w
	skipz
	goto	u4045
	movf	(exp@x)^080h,w
	xorwf	(_exp$3527)^080h,w
u4045:
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l6153
u4040:
	line	53
	
l6149:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp+2)^080h
	goto	l3220
	
l6151:	
	goto	l3220
	
l3229:	
	line	54
	
l6153:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	0+(?___ftdiv)+03h
	movlw	0x80
	movwf	1+(?___ftdiv)+03h
	movlw	0x3f
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+2)^080h
	goto	l3220
	
l6155:	
	goto	l3220
	line	55
	
l3228:	
	line	56
	line	57
	
l3220:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
;; =============== function _exp ends ============

	signat	_exp,4219
	global	_log
psect	text788,local,class=CODE,delta=2
global __ptext788
__ptext788:

;; *************** function _log *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   72[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2   76[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   72[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		_frexp
;;		___ftmul
;;		___ftadd
;;		_eval_poly
;;		___awtoft
;; This function is called by:
;;		_pow
;;		_log10
;; This function uses a non-reentrant model
;;
psect	text788
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	6
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
	opt	stack 3
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l6083:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x),w
	movwf	(?___ftge)
	movf	(log@x+1),w
	movwf	(?___ftge+1)
	movf	(log@x+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3971
	goto	u3970
u3971:
	goto	l6089
u3970:
	line	25
	
l6085:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3254
	
l6087:	
	goto	l3254
	line	27
	
l3253:	
	line	28
	
l6089:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u3981
	goto	u3980
u3981:
	goto	l6095
u3980:
	line	29
	
l6091:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	30
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3254
	
l6093:	
	goto	l3254
	line	31
	
l3255:	
	line	32
	
l6095:	
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0xbf
	movwf	(?___ftadd+2)
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	movlw	(log@exp)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	0+(?_frexp)+03h
	movf	(log@x),w
	movwf	(?_frexp)
	movf	(log@x+1),w
	movwf	(?_frexp+1)
	movf	(log@x+2),w
	movwf	(?_frexp+2)
	fcall	_frexp
	movf	(0+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_frexp)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_frexp)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(log@x)
	movf	(1+(?___ftadd)),w
	movwf	(log@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(log@x+2)
	line	33
	
l6097:	
	movlw	low(-1)
	addwf	(log@exp),f
	skipnc
	incf	(log@exp+1),f
	movlw	high(-1)
	addwf	(log@exp+1),f
	line	34
	
l6099:	
	movf	(log@x),w
	movwf	(?_eval_poly)
	movf	(log@x+1),w
	movwf	(?_eval_poly+1)
	movf	(log@x+2),w
	movwf	(?_eval_poly+2)
	movlw	((log@coeff-__stringbase))&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(0+?_eval_poly+03h)
	movlw	low(08h)
	movwf	0+(?_eval_poly)+04h
	movlw	high(08h)
	movwf	(0+(?_eval_poly)+04h)+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	line	35
	
l6101:	
	movf	(log@x),w
	movwf	(?___ftadd)
	movf	(log@x+1),w
	movwf	(?___ftadd+1)
	movf	(log@x+2),w
	movwf	(?___ftadd+2)
	movlw	0x72
	movwf	(?___ftmul)
	movlw	0x31
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(log@exp+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(log@exp),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l3254
	
l6103:	
	line	36
	
l3254:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
;; =============== function _log ends ============

	signat	_log,4219
	global	_lcd_putstr
psect	text789,local,class=CODE,delta=2
global __ptext789
__ptext789:

;; *************** function _lcd_putstr *****************
;; Defined at:
;;		line 261 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  csz_string      1    wreg     PTR const unsigned char 
;;		 -> STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  csz_string      1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_2ndline
;;		_lcd_putchar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text789
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	261
	global	__size_of_lcd_putstr
	__size_of_lcd_putstr	equ	__end_of_lcd_putstr-_lcd_putstr
	
_lcd_putstr:	
	opt	stack 4
; Regs used in _lcd_putstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putstr@csz_string stored from wreg
	movwf	(lcd_putstr@csz_string)
	line	263
	
l6069:	
;lcd.c: 263: while (*csz_string != '\0') {
	goto	l6081
	
l1418:	
	line	266
	
l6071:	
;lcd.c: 266: if (*csz_string == '\n' || *csz_string == '\r') {
	movf	(lcd_putstr@csz_string),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0Ah
	skipnz
	goto	u3941
	goto	u3940
u3941:
	goto	l6075
u3940:
	
l6073:	
	movf	(lcd_putstr@csz_string),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0Dh
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l6077
u3950:
	goto	l6075
	
l1421:	
	line	267
	
l6075:	
;lcd.c: 267: lcd_2ndline();
	fcall	_lcd_2ndline
	line	268
;lcd.c: 268: }
	goto	l6079
	line	271
	
l1419:	
	line	272
	
l6077:	
;lcd.c: 271: else {
;lcd.c: 272: lcd_putchar(*csz_string);
	movf	(lcd_putstr@csz_string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_putchar
	goto	l6079
	line	273
	
l1422:	
	line	276
	
l6079:	
;lcd.c: 273: }
;lcd.c: 276: csz_string++;
	movlw	(01h)
	movwf	(??_lcd_putstr+0)+0
	movf	(??_lcd_putstr+0)+0,w
	addwf	(lcd_putstr@csz_string),f
	goto	l6081
	line	277
	
l1417:	
	line	263
	
l6081:	
	movf	(lcd_putstr@csz_string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l6071
u3960:
	goto	l1424
	
l1423:	
	line	278
	
l1424:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putstr
	__end_of_lcd_putstr:
;; =============== function _lcd_putstr ends ============

	signat	_lcd_putstr,4216
	global	_lcd_initialize
psect	text790,local,class=CODE,delta=2
global __ptext790
__ptext790:

;; *************** function _lcd_initialize *****************
;; Defined at:
;;		line 103 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_set_lcd_e
;;		_send_lcd_data
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text790
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	103
	global	__size_of_lcd_initialize
	__size_of_lcd_initialize	equ	__end_of_lcd_initialize-_lcd_initialize
	
_lcd_initialize:	
	opt	stack 4
; Regs used in _lcd_initialize: [wreg+status,2+status,0+pclath+cstack]
	line	106
	
l6057:	
;lcd.c: 106: set_lcd_e(1);
	movlw	(01h)
	fcall	_set_lcd_e
	line	107
	
l6059:	
;lcd.c: 107: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_lcd_initialize+0)+0+1),f
	movlw	101
movwf	((??_lcd_initialize+0)+0),f
u4237:
	decfsz	((??_lcd_initialize+0)+0),f
	goto	u4237
	decfsz	((??_lcd_initialize+0)+0+1),f
	goto	u4237
	nop2
opt asmopt_on

	line	110
	
l6061:	
;lcd.c: 110: send_lcd_data(0, 0b00100000 | 0b00010000 | 0b00001000 | 0b00000000);
	movlw	(038h)
	movwf	(??_lcd_initialize+0)+0
	movf	(??_lcd_initialize+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	114
	
l6063:	
;lcd.c: 114: send_lcd_data(0, 0b00000100 | 0b00000010 | 0b00000000);
	movlw	(06h)
	movwf	(??_lcd_initialize+0)+0
	movf	(??_lcd_initialize+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	117
	
l6065:	
;lcd.c: 117: send_lcd_data(0, 0b00001000 | 0b00000100 | 0b00000000 | 0b00000000);
	movlw	(0Ch)
	movwf	(??_lcd_initialize+0)+0
	movf	(??_lcd_initialize+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	120
	
l6067:	
;lcd.c: 120: lcd_clear();
	fcall	_lcd_clear
	line	121
	
l1396:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_initialize
	__end_of_lcd_initialize:
;; =============== function _lcd_initialize ends ============

	signat	_lcd_initialize,88
	global	_eval_poly
psect	text791,local,class=CODE,delta=2
global __ptext791
__ptext791:

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   62[BANK0 ] PTR const unsigned char 
;;  d               1   65[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   66[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   69[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftmul
;;		___ftadd
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text791
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
	line	5
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
	opt	stack 3
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l6047:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(?___bmul)
	movf	(eval_poly@n),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l6051
	
l3303:	
	line	10
	
l6049:	
	movlw	(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(?___bmul)
	movlw	low(-1)
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	high(-1)
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftadd)
	fcall	stringdir
	movwf	(?___ftadd+1)
	fcall	stringdir
	movwf	(?___ftadd+2)
	movf	(eval_poly@res),w
	movwf	(?___ftmul)
	movf	(eval_poly@res+1),w
	movwf	(?___ftmul+1)
	movf	(eval_poly@res+2),w
	movwf	(?___ftmul+2)
	movf	(eval_poly@x),w
	movwf	0+(?___ftmul)+03h
	movf	(eval_poly@x+1),w
	movwf	1+(?___ftmul)+03h
	movf	(eval_poly@x+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	goto	l6051
	
l3302:	
	line	9
	
l6051:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l6049
u3930:
	goto	l6053
	
l3304:	
	line	11
	
l6053:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l3305
	
l6055:	
	line	12
	
l3305:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
;; =============== function _eval_poly ends ============

	signat	_eval_poly,12411
	global	_floor
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:

;; *************** function _floor *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   52[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   56[BANK0 ] int 
;;  expon           2   59[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_frexp
;;		___ftge
;;		___fttol
;;		___altoft
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text792
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
	line	14
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
	opt	stack 3
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l6019:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(?_frexp)
	movf	(floor@x+1),w
	movwf	(?_frexp+1)
	movf	(floor@x+2),w
	movwf	(?_frexp+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	0+(?_frexp)+03h
	fcall	_frexp
	line	19
	
l6021:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u3891
	goto	u3890
u3891:
	goto	l6033
u3890:
	line	20
	
l6023:	
	movf	(floor@x),w
	movwf	(?___ftge)
	movf	(floor@x+1),w
	movwf	(?___ftge+1)
	movf	(floor@x+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3901
	goto	u3900
u3901:
	goto	l6029
u3900:
	line	21
	
l6025:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l3240
	
l6027:	
	goto	l3240
	
l3239:	
	line	22
	
l6029:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l3240
	
l6031:	
	goto	l3240
	line	23
	
l3238:	
	line	24
	
l6033:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l6037
u3910:
	line	25
	
l6035:	
	goto	l3240
	
l3241:	
	line	26
	
l6037:	
	movf	(floor@x),w
	movwf	(?___fttol)
	movf	(floor@x+1),w
	movwf	(?___fttol+1)
	movf	(floor@x+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft+3)
	movf	(2+(?___fttol)),w
	movwf	(?___altoft+2)
	movf	(1+(?___fttol)),w
	movwf	(?___altoft+1)
	movf	(0+(?___fttol)),w
	movwf	(?___altoft)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(?___ftge)
	movf	(floor@x+1),w
	movwf	(?___ftge+1)
	movf	(floor@x+2),w
	movwf	(?___ftge+2)
	movf	(floor@i),w
	movwf	0+(?___ftge)+03h
	movf	(floor@i+1),w
	movwf	1+(?___ftge)+03h
	movf	(floor@i+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3921
	goto	u3920
u3921:
	goto	l6043
u3920:
	line	28
	
l6039:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0xbf
	movwf	(?___ftadd+2)
	movf	(floor@i),w
	movwf	0+(?___ftadd)+03h
	movf	(floor@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(floor@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l3240
	
l6041:	
	goto	l3240
	
l3242:	
	line	29
	
l6043:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l3240
	
l6045:	
	line	30
	
l3240:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
;; =============== function _floor ends ============

	signat	_floor,4219
	global	___ftsub
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   52[BANK0 ] float 
;;  f1              3   55[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text793
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l6013:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l6015:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l2960
	
l6017:	
	line	20
	
l2960:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_lcd_putchar
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

;; *************** function _lcd_putchar *****************
;; Defined at:
;;		line 240 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  c_data          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c_data          1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_lcd_putstr
;;		_main
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text794
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	240
	global	__size_of_lcd_putchar
	__size_of_lcd_putchar	equ	__end_of_lcd_putchar-_lcd_putchar
	
_lcd_putchar:	
	opt	stack 5
; Regs used in _lcd_putchar: [wreg+status,2+status,0+pclath+cstack]
;lcd_putchar@c_data stored from wreg
	line	242
	movwf	(lcd_putchar@c_data)
	
l6011:	
;lcd.c: 242: send_lcd_data(1, (unsigned char)c_data);
	movf	(lcd_putchar@c_data),w
	movwf	(??_lcd_putchar+0)+0
	movf	(??_lcd_putchar+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(01h)
	fcall	_send_lcd_data
	line	243
	
l1414:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putchar
	__end_of_lcd_putchar:
;; =============== function _lcd_putchar ends ============

	signat	_lcd_putchar,4216
	global	_lcd_goto
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 219 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  uc_position     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_position     1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text795
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	219
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@uc_position stored from wreg
	line	221
	movwf	(lcd_goto@uc_position)
	
l6009:	
;lcd.c: 221: send_lcd_data(0, 0b10000000 | uc_position);
	movf	(lcd_goto@uc_position),w
	iorlw	080h
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	222
	
l1411:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_2ndline
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

;; *************** function _lcd_2ndline *****************
;; Defined at:
;;		line 198 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_lcd_putstr
;;		_main
;; This function uses a non-reentrant model
;;
psect	text796
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	198
	global	__size_of_lcd_2ndline
	__size_of_lcd_2ndline	equ	__end_of_lcd_2ndline-_lcd_2ndline
	
_lcd_2ndline:	
	opt	stack 5
; Regs used in _lcd_2ndline: [wreg+status,2+status,0+pclath+cstack]
	line	200
	
l6007:	
;lcd.c: 200: send_lcd_data(0, 0b10000000 | 0x40);
	movlw	(0C0h)
	movwf	(??_lcd_2ndline+0)+0
	movf	(??_lcd_2ndline+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	201
	
l1408:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_2ndline
	__end_of_lcd_2ndline:
;; =============== function _lcd_2ndline ends ============

	signat	_lcd_2ndline,88
	global	_lcd_clear
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 156 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_lcd_initialize
;; This function uses a non-reentrant model
;;
psect	text797
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	156
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l6005:	
;lcd.c: 158: send_lcd_data(0, 0b00000001);
	clrf	(?_send_lcd_data)
	bsf	status,0
	rlf	(?_send_lcd_data),f
	movlw	(0)
	fcall	_send_lcd_data
	line	159
	
l1402:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_ldexp
psect	text798,local,class=CODE,delta=2
global __ptext798
__ptext798:

;; *************** function _ldexp *****************
;; Defined at:
;;		line 278 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   52[BANK0 ] unsigned char 
;;  newexp          2   55[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text798
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	278
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
	opt	stack 4
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l5955:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l5961
u3830:
	line	280
	
l5957:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3268
	
l5959:	
	goto	l3268
	
l3267:	
	line	282
	
l5961:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u3845:
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	decfsz	btemp+1,f
	goto	u3845
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	
l5963:	
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	287
	
l5965:	
	btfss	(ldexp@newexp+1),7
	goto	u3851
	goto	u3850
u3851:
	goto	l5973
u3850:
	line	288
	
l5967:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	289
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3268
	
l5969:	
	goto	l3268
	line	290
	
l5971:	
	goto	l6001
	line	291
	
l3269:	
	
l5973:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3865
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u3865:

	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l5997
u3860:
	line	292
	
l5975:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	293
	
l5977:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value),w
	movwf	(?___ftge)
	movf	(ldexp@value+1),w
	movwf	(?___ftge+1)
	movf	(ldexp@value+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3871
	goto	u3870
u3871:
	goto	l5993
u3870:
	goto	l5983
	line	294
	
l5979:	
	goto	l5983
	
l5981:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3573)
	movlw	0x80
	movwf	(_ldexp$3573+1)
	movlw	0x7f
	movwf	(_ldexp$3573+2)
	goto	l5985
	
l3274:	
	
l5983:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3573)
	movlw	0x7f
	movwf	(_ldexp$3573+1)
	movlw	0x7f
	movwf	(_ldexp$3573+2)
	goto	l5985
	
l3276:	
	
l5985:	
	movf	(_ldexp$3573),w
	movwf	(?___ftneg)
	movf	(_ldexp$3573+1),w
	movwf	(?___ftneg+1)
	movf	(_ldexp$3573+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l3268
	
l5987:	
	goto	l3268
	
l5989:	
	goto	l6001
	line	295
	
l3272:	
	line	296
	goto	l5993
	
l5991:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3268
	
l3279:	
	
l5993:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3268
	
l3281:	
	goto	l3268
	
l5995:	
	goto	l3268
	
l3277:	
	line	297
	goto	l6001
	line	298
	
l3271:	
	line	300
	
l5997:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	movlw	01h
	movwf	btemp+1
u3885:
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	decfsz	btemp+1,f
	goto	u3885
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	
l5999:	
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	goto	l6001
	line	305
	
l3282:	
	goto	l6001
	
l3270:	
	line	306
	
l6001:	
	goto	l3268
	
l6003:	
	line	307
	
l3268:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
;; =============== function _ldexp ends ============

	signat	_ldexp,8315
	global	___lltoft
psect	text799,local,class=CODE,delta=2
global __ptext799
__ptext799:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   17[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text799
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5945:	
	movlw	(08Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l5949
	
l3115:	
	line	42
	
l5947:	
	movlw	01h
u3815:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3815

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l5949
	line	44
	
l3114:	
	line	41
	
l5949:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l5947
u3820:
	goto	l5951
	
l3116:	
	line	45
	
l5951:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l3117
	
l5953:	
	line	46
	
l3117:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text800,local,class=CODE,delta=2
global __ptext800
__ptext800:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   17[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   24[BANK0 ] unsigned char 
;;  exp             1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text800
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l5927:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l5929:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l5931:	
	btfss	(___altoft@c+3),7
	goto	u3781
	goto	u3780
u3781:
	goto	l5939
u3780:
	line	48
	
l5933:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	
l5935:	
	clrf	(___altoft@sign)
	bsf	status,0
	rlf	(___altoft@sign),f
	goto	l5939
	line	50
	
l3105:	
	line	52
	goto	l5939
	
l3107:	
	line	53
	
l5937:	
	movlw	01h
u3795:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u3795

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l5939
	line	55
	
l3106:	
	line	52
	
l5939:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l5937
u3800:
	goto	l5941
	
l3108:	
	line	56
	
l5941:	
	movf	(___altoft@c),w
	movwf	(?___ftpack)
	movf	(___altoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___altoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l3109
	
l5943:	
	line	57
	
l3109:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___awtoft
psect	text801,local,class=CODE,delta=2
global __ptext801
__ptext801:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   17[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text801
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5919:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3771
	goto	u3770
u3771:
	goto	l5923
u3770:
	line	38
	
l5921:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l5923
	line	40
	
l3013:	
	line	41
	
l5923:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l3014
	
l5925:	
	line	42
	
l3014:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text802,local,class=CODE,delta=2
global __ptext802
__ptext802:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text802
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 6
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lbtoft@c)
	line	29
	
l5915:	
	movf	(___lbtoft@c),w
	movwf	((??___lbtoft+0)+0)
	clrf	((??___lbtoft+0)+0+1)
	clrf	((??___lbtoft+0)+0+2)
	movf	0+(??___lbtoft+0)+0,w
	movwf	(?___ftpack)
	movf	1+(??___lbtoft+0)+0,w
	movwf	(?___ftpack+1)
	movf	2+(??___lbtoft+0)+0,w
	movwf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lbtoft+3)+0
	movf	(??___lbtoft+3)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	goto	l3002
	
l5917:	
	line	30
	
l3002:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text803,local,class=CODE,delta=2
global __ptext803
__ptext803:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[BANK0 ] float 
;;  f2              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   34[BANK0 ] unsigned um
;;  sign            1   38[BANK0 ] unsigned char 
;;  cntr            1   37[BANK0 ] unsigned char 
;;  exp             1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;;		_log10
;; This function uses a non-reentrant model
;;
psect	text803
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l5871
u3630:
	line	57
	
l5867:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2976
	
l5869:	
	goto	l2976
	
l2975:	
	line	58
	
l5871:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l5877
u3640:
	line	59
	
l5873:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2976
	
l5875:	
	goto	l2976
	
l2977:	
	line	60
	
l5877:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3655:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3650:
	addlw	-1
	skipz
	goto	u3655
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3665:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3660:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l5879:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5881:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5883:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5885:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l5887:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5889
	line	70
	
l2978:	
	line	71
	
l5889:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l5893
u3670:
	line	72
	
l5891:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3681
	addwf	(___ftmul@f3_as_product+1),f
u3681:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3682
	addwf	(___ftmul@f3_as_product+2),f
u3682:

	goto	l5893
	
l2979:	
	line	73
	
l5893:	
	movlw	01h
u3695:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3695

	line	74
	
l5895:	
	movlw	01h
u3705:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3705
	line	75
	
l5897:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l5889
u3710:
	goto	l5899
	
l2980:	
	line	76
	
l5899:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5901
	line	77
	
l2981:	
	line	78
	
l5901:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l5905
u3720:
	line	79
	
l5903:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3731
	addwf	(___ftmul@f3_as_product+1),f
u3731:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3732
	addwf	(___ftmul@f3_as_product+2),f
u3732:

	goto	l5905
	
l2982:	
	line	80
	
l5905:	
	movlw	01h
u3745:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3745

	line	81
	
l5907:	
	movlw	01h
u3755:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3755

	line	82
	
l5909:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l5901
u3760:
	goto	l5911
	
l2983:	
	line	83
	
l5911:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l2976
	
l5913:	
	line	84
	
l2976:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text804,local,class=CODE,delta=2
global __ptext804
__ptext804:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   17[BANK0 ] float 
;;  f1              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   28[BANK0 ] float 
;;  sign            1   32[BANK0 ] unsigned char 
;;  exp             1   31[BANK0 ] unsigned char 
;;  cntr            1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text804
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l5823:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l5829
u3550:
	line	56
	
l5825:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2966
	
l5827:	
	goto	l2966
	
l2965:	
	line	57
	
l5829:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l5835
u3560:
	line	58
	
l5831:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2966
	
l5833:	
	goto	l2966
	
l2967:	
	line	59
	
l5835:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l5837:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l5839:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3575:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3570:
	addlw	-1
	skipz
	goto	u3575
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l5841:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3585:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3580:
	addlw	-1
	skipz
	goto	u3585
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l5843:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l5845:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l5847:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l5849
	line	69
	
l2968:	
	line	70
	
l5849:	
	movlw	01h
u3595:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3595
	line	71
	
l5851:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3605
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3605
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3605:
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l5857
u3600:
	line	72
	
l5853:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l5855:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l5857
	line	74
	
l2969:	
	line	75
	
l5857:	
	movlw	01h
u3615:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3615
	line	76
	
l5859:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l5849
u3620:
	goto	l5861
	
l2970:	
	line	77
	
l5861:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l2966
	
l5863:	
	line	78
	
l2966:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text805,local,class=CODE,delta=2
global __ptext805
__ptext805:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   39[BANK0 ] float 
;;  f2              3   42[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   51[BANK0 ] unsigned char 
;;  exp2            1   50[BANK0 ] unsigned char 
;;  sign            1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   39[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text805
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5753:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l5755:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3310
	goto	l5761
u3310:
	
l5757:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l5765
u3320:
	
l5759:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l5765
u3330:
	goto	l5761
	
l2923:	
	line	93
	
l5761:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2924
	
l5763:	
	goto	l2924
	
l2921:	
	line	94
	
l5765:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3340
	goto	l2927
u3340:
	
l5767:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l5771
u3350:
	
l5769:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l5771
u3360:
	
l2927:	
	line	95
	goto	l2924
	
l2925:	
	line	96
	
l5771:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l5773:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2928
u3370:
	line	98
	
l5775:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2928:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2929
u3380:
	line	100
	
l5777:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2929:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5779:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5781:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l5793
u3390:
	goto	l5783
	line	109
	
l2931:	
	line	110
	
l5783:	
	movlw	01h
u3405:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3405
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l5785:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3411
	goto	u3410
u3411:
	goto	l5791
u3410:
	
l5787:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l5783
u3420:
	goto	l5791
	
l2933:	
	goto	l5791
	
l2934:	
	line	113
	goto	l5791
	
l2936:	
	line	114
	
l5789:	
	movlw	01h
u3435:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3435

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l5791
	line	116
	
l2935:	
	line	113
	
l5791:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l5789
u3440:
	goto	l2938
	
l2937:	
	line	117
	goto	l2938
	
l2930:	
	
l5793:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l2938
u3450:
	goto	l5795
	line	120
	
l2940:	
	line	121
	
l5795:	
	movlw	01h
u3465:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3465
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l5797:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3471
	goto	u3470
u3471:
	goto	l5803
u3470:
	
l5799:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l5795
u3480:
	goto	l5803
	
l2942:	
	goto	l5803
	
l2943:	
	line	124
	goto	l5803
	
l2945:	
	line	125
	
l5801:	
	movlw	01h
u3495:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3495

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l5803
	line	127
	
l2944:	
	line	124
	
l5803:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l5801
u3500:
	goto	l2938
	
l2946:	
	goto	l2938
	line	128
	
l2939:	
	line	129
	
l2938:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l5807
u3510:
	line	131
	
l5805:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l5807
	line	133
	
l2947:	
	line	134
	
l5807:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l5811
u3520:
	line	136
	
l5809:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l5811
	line	138
	
l2948:	
	line	139
	
l5811:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3531
	addwf	(___ftadd@f2+1),f
u3531:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3532
	addwf	(___ftadd@f2+2),f
u3532:

	line	141
	
l5813:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l5819
u3540:
	line	142
	
l5815:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l5817:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l5819
	line	145
	
l2949:	
	line	146
	
l5819:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l2924
	
l5821:	
	line	148
	
l2924:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_delay_ms
psect	text806,local,class=CODE,delta=2
global __ptext806
__ptext806:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 100 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\main.c"
;; Parameters:    Size  Location     Type
;;  ui_value        2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text806
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\main.c"
	line	100
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 7
; Regs used in _delay_ms: [wreg]
	line	101
	
l5749:	
;main.c: 101: while (ui_value-- > 0) {
	goto	l2174
	
l2175:	
	line	102
	
l5751:	
;main.c: 102: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_delay_ms+0)+0+1),f
	movlw	125
movwf	((??_delay_ms+0)+0),f
u4247:
	decfsz	((??_delay_ms+0)+0),f
	goto	u4247
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u4247
opt asmopt_on

	line	103
	
l2174:	
	line	101
	movlw	low(01h)
	subwf	(delay_ms@ui_value),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ui_value+1),f
	subwf	(delay_ms@ui_value+1),f
	movlw	high(0FFFFh)
	xorwf	((delay_ms@ui_value+1)),w
	skipz
	goto	u3305
	movlw	low(0FFFFh)
	xorwf	((delay_ms@ui_value)),w
u3305:

	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l5751
u3300:
	goto	l2177
	
l2176:	
	line	104
	
l2177:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_send_lcd_data
psect	text807,local,class=CODE,delta=2
global __ptext807
__ptext807:

;; *************** function _send_lcd_data *****************
;; Defined at:
;;		line 328 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  b_rs            1    wreg     unsigned char 
;;  uc_data         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  b_rs            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_set_lcd_rs
;;		_set_lcd_data
;;		_set_lcd_e
;; This function is called by:
;;		_lcd_initialize
;;		_lcd_clear
;;		_lcd_2ndline
;;		_lcd_goto
;;		_lcd_putchar
;;		_lcd_config
;;		_lcd_home
;; This function uses a non-reentrant model
;;
psect	text807
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	328
	global	__size_of_send_lcd_data
	__size_of_send_lcd_data	equ	__end_of_send_lcd_data-_send_lcd_data
	
_send_lcd_data:	
	opt	stack 5
; Regs used in _send_lcd_data: [wreg+status,2+status,0+pclath+cstack]
;send_lcd_data@b_rs stored from wreg
	line	330
	movwf	(send_lcd_data@b_rs)
	
l5739:	
;lcd.c: 330: set_lcd_rs(b_rs);
	movf	(send_lcd_data@b_rs),w
	fcall	_set_lcd_rs
	line	331
;lcd.c: 331: set_lcd_data(uc_data);
	movf	(send_lcd_data@uc_data),w
	fcall	_set_lcd_data
	line	334
;lcd.c: 334: set_lcd_e(1);
	movlw	(01h)
	fcall	_set_lcd_e
	line	335
	
l5741:	
;lcd.c: 335: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_send_lcd_data+0)+0+1),f
	movlw	125
movwf	((??_send_lcd_data+0)+0),f
u4257:
	decfsz	((??_send_lcd_data+0)+0),f
	goto	u4257
	decfsz	((??_send_lcd_data+0)+0+1),f
	goto	u4257
opt asmopt_on

	line	336
	
l5743:	
;lcd.c: 336: set_lcd_e(0);
	movlw	(0)
	fcall	_set_lcd_e
	line	337
;lcd.c: 337: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_send_lcd_data+0)+0+1),f
	movlw	251
movwf	((??_send_lcd_data+0)+0),f
u4267:
	decfsz	((??_send_lcd_data+0)+0),f
	goto	u4267
	decfsz	((??_send_lcd_data+0)+0+1),f
	goto	u4267
	nop2
opt asmopt_on

	line	340
	
l5745:	
;lcd.c: 340: set_lcd_rs(0);
	movlw	(0)
	fcall	_set_lcd_rs
	line	341
	
l5747:	
;lcd.c: 341: set_lcd_data(0);
	movlw	(0)
	fcall	_set_lcd_data
	line	342
	
l1435:	
	return
	opt stack 0
GLOBAL	__end_of_send_lcd_data
	__end_of_send_lcd_data:
;; =============== function _send_lcd_data ends ============

	signat	_send_lcd_data,8312
	global	_ui_adc_read
psect	text808,local,class=CODE,delta=2
global __ptext808
__ptext808:

;; *************** function _ui_adc_read *****************
;; Defined at:
;;		line 104 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text808
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\adc.c"
	line	104
	global	__size_of_ui_adc_read
	__size_of_ui_adc_read	equ	__end_of_ui_adc_read-_ui_adc_read
	
_ui_adc_read:	
	opt	stack 7
; Regs used in _ui_adc_read: [wreg+status,2+status,0+btemp+1]
	line	105
	
l5719:	
;adc.c: 105: unsigned int temp = 0;
	clrf	(ui_adc_read@temp)
	clrf	(ui_adc_read@temp+1)
	line	107
	
l5721:	
;adc.c: 107: CHS2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	108
	
l5723:	
;adc.c: 108: CHS1 = 1;
	bsf	(252/8),(252)&7
	line	109
	
l5725:	
;adc.c: 109: CHS0 = 0;
	bcf	(251/8),(251)&7
	line	112
	
l5727:	
;adc.c: 112: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_ui_adc_read+0)+0+1),f
	movlw	125
movwf	((??_ui_adc_read+0)+0),f
u4277:
	decfsz	((??_ui_adc_read+0)+0),f
	goto	u4277
	decfsz	((??_ui_adc_read+0)+0+1),f
	goto	u4277
opt asmopt_on

	line	119
	
l5729:	
;adc.c: 119: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	120
;adc.c: 120: while (GO_DONE == 1);
	goto	l696
	
l697:	
	
l696:	
	btfsc	(250/8),(250)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l696
u3290:
	goto	l5731
	
l698:	
	line	124
	
l5731:	
;adc.c: 124: temp = (unsigned int)ADRESH << 8;
	movf	(30),w	;volatile
	movwf	(??_ui_adc_read+0)+0
	clrf	(??_ui_adc_read+0)+0+1
	movf	(??_ui_adc_read+0)+0,w
	movwf	(??_ui_adc_read+0)+1
	clrf	(??_ui_adc_read+0)+0
	movf	0+(??_ui_adc_read+0)+0,w
	movwf	(ui_adc_read@temp)
	movf	1+(??_ui_adc_read+0)+0,w
	movwf	(ui_adc_read@temp+1)
	line	125
	
l5733:	
;adc.c: 125: temp = temp + ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(ui_adc_read@temp),w
	movwf	(ui_adc_read@temp)
	movf	(ui_adc_read@temp+1),w
	skipnc
	incf	(ui_adc_read@temp+1),w
	movwf	((ui_adc_read@temp))+1
	line	126
	
l5735:	
;adc.c: 126: return temp;
	movf	(ui_adc_read@temp+1),w
	clrf	(?_ui_adc_read+1)
	addwf	(?_ui_adc_read+1)
	movf	(ui_adc_read@temp),w
	clrf	(?_ui_adc_read)
	addwf	(?_ui_adc_read)

	goto	l699
	
l5737:	
	line	127
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_ui_adc_read
	__end_of_ui_adc_read:
;; =============== function _ui_adc_read ends ============

	signat	_ui_adc_read,90
	global	_frexp
psect	text809,local,class=CODE,delta=2
global __ptext809
__ptext809:

;; *************** function _frexp *****************
;; Defined at:
;;		line 255 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] unsigned int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> log@exp(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text809
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	255
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
	opt	stack 4
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l5691:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l5699
u3270:
	line	257
	
l5693:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	258
	
l5695:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l3264
	
l5697:	
	goto	l3264
	line	259
	
l3263:	
	line	261
	
l5699:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u3285:
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	decfsz	btemp+1,f
	goto	u3285
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	
l5701:	
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l5703:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l5705:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l5707:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l5709:	
	goto	l3264
	
l5711:	
	line	274
	
l3264:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
;; =============== function _frexp ends ============

	signat	_frexp,8315
	global	___ftge
psect	text810,local,class=CODE,delta=2
global __ptext810
__ptext810:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_floor
;;		_log
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text810
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5653:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l5657
u3210:
	line	7
	
l5655:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3221
	goto	u3222
u3221:
	addwf	(??___ftge+0)+1,f
	
u3222:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3223
	goto	u3224
u3223:
	addwf	(??___ftge+0)+2,f
	
u3224:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l5657
	
l3044:	
	line	8
	
l5657:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l5661
u3230:
	line	9
	
l5659:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3241
	goto	u3242
u3241:
	addwf	(??___ftge+0)+1,f
	
u3242:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3243
	goto	u3244
u3243:
	addwf	(??___ftge+0)+2,f
	
u3244:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l5661
	
l3045:	
	line	10
	
l5661:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5663:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5665:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3255
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3255
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3255:
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l5669
u3250:
	
l5667:	
	clrc
	
	goto	l3046
	
l5447:	
	
l5669:	
	setc
	
	goto	l3046
	
l5449:	
	goto	l3046
	
l5671:	
	line	13
	
l3046:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text811,local,class=CODE,delta=2
global __ptext811
__ptext811:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text811
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l5645:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l5649
u3200:
	line	18
	
l5647:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l5649
	
l3040:	
	line	19
	
l5649:	
	goto	l3041
	
l5651:	
	line	20
	
l3041:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___fttol
psect	text812,local,class=CODE,delta=2
global __ptext812
__ptext812:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text812
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5593:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l5599
u3090:
	line	50
	
l5595:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2987
	
l5597:	
	goto	l2987
	
l2986:	
	line	51
	
l5599:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3105:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3100:
	addlw	-1
	skipz
	goto	u3105
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5601:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5603:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5605:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5607:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5609:	
	btfss	(___fttol@exp1),7
	goto	u3111
	goto	u3110
u3111:
	goto	l5619
u3110:
	line	57
	
l5611:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l5617
u3120:
	line	58
	
l5613:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2987
	
l5615:	
	goto	l2987
	
l2989:	
	goto	l5617
	line	59
	
l2990:	
	line	60
	
l5617:	
	movlw	01h
u3135:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3135

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l5617
u3140:
	goto	l5629
	
l2991:	
	line	62
	goto	l5629
	
l2988:	
	line	63
	
l5619:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l5627
u3150:
	line	64
	
l5621:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2987
	
l5623:	
	goto	l2987
	
l2993:	
	line	65
	goto	l5627
	
l2995:	
	line	66
	
l5625:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3165:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3165
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l5627
	line	68
	
l2994:	
	line	65
	
l5627:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l5625
u3170:
	goto	l5629
	
l2996:	
	goto	l5629
	line	69
	
l2992:	
	line	70
	
l5629:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3180
	goto	l5633
u3180:
	line	71
	
l5631:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l5633
	
l2997:	
	line	72
	
l5633:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2987
	
l5635:	
	line	73
	
l2987:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text813,local,class=CODE,delta=2
global __ptext813
__ptext813:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___abtoft
;;		___lwtoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text813
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5563:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2980
	goto	l5567
u2980:
	
l5565:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l5573
u2990:
	goto	l5567
	
l3287:	
	line	65
	
l5567:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3288
	
l5569:	
	goto	l3288
	
l3285:	
	line	66
	goto	l5573
	
l3290:	
	line	67
	
l5571:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3005:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3005

	goto	l5573
	line	69
	
l3289:	
	line	66
	
l5573:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l5571
u3010:
	goto	l3292
	
l3291:	
	line	70
	goto	l3292
	
l3293:	
	line	71
	
l5575:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l5577:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l5579:	
	movlw	01h
u3025:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3025

	line	74
	
l3292:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l5575
u3030:
	goto	l5583
	
l3294:	
	line	75
	goto	l5583
	
l3296:	
	line	76
	
l5581:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3045:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3045
	goto	l5583
	line	78
	
l3295:	
	line	75
	
l5583:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l5581
u3050:
	
l3297:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l3298
u3060:
	line	80
	
l5585:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3298:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5587:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3075:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3070:
	addlw	-1
	skipz
	goto	u3075
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5589:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3080
	goto	l3299
u3080:
	line	84
	
l5591:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3299:	
	line	85
	line	86
	
l3288:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text814,local,class=CODE,delta=2
global __ptext814
__ptext814:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   10[BANK0 ] unsigned int 
;;  dividend        2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text814
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2921
	goto	u2920
u2921:
	goto	l5559
u2920:
	line	9
	
l5543:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l5549
	
l2895:	
	line	11
	
l5545:	
	movlw	01h
	
u2935:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2935
	line	12
	
l5547:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l5549
	line	13
	
l2894:	
	line	10
	
l5549:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l5545
u2940:
	goto	l5551
	
l2896:	
	goto	l5551
	line	14
	
l2897:	
	line	15
	
l5551:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2955
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2955:
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l5555
u2950:
	line	16
	
l5553:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l5555
	
l2898:	
	line	17
	
l5555:	
	movlw	01h
	
u2965:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2965
	line	18
	
l5557:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l5551
u2970:
	goto	l5559
	
l2899:	
	goto	l5559
	line	19
	
l2893:	
	line	20
	
l5559:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2900
	
l5561:	
	line	21
	
l2900:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text815,local,class=CODE,delta=2
global __ptext815
__ptext815:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   10[BANK0 ] unsigned int 
;;  dividend        2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK0 ] unsigned int 
;;  counter         1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text815
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5515:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5517:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l5537
u2850:
	line	11
	
l5519:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5525
	
l2885:	
	line	13
	
l5521:	
	movlw	01h
	
u2865:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2865
	line	14
	
l5523:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5525
	line	15
	
l2884:	
	line	12
	
l5525:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l5521
u2870:
	goto	l5527
	
l2886:	
	goto	l5527
	line	16
	
l2887:	
	line	17
	
l5527:	
	movlw	01h
	
u2885:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2885
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2895
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2895:
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l5533
u2890:
	line	19
	
l5529:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5531:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5533
	line	21
	
l2888:	
	line	22
	
l5533:	
	movlw	01h
	
u2905:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2905
	line	23
	
l5535:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l5527
u2910:
	goto	l5537
	
l2889:	
	goto	l5537
	line	24
	
l2883:	
	line	25
	
l5537:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2890
	
l5539:	
	line	26
	
l2890:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text816,local,class=CODE,delta=2
global __ptext816
__ptext816:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text816
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l5501:	
	clrf	(___bmul@product)
	line	6
	
l2871:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l5505
u2830:
	line	8
	
l5503:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l5505
	
l2872:	
	line	9
	
l5505:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l5507:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l5509:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2871
u2840:
	goto	l5511
	
l2873:	
	line	12
	
l5511:	
	movf	(___bmul@product),w
	goto	l2874
	
l5513:	
	line	13
	
l2874:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_set_lcd_data
psect	text817,local,class=CODE,delta=2
global __ptext817
__ptext817:

;; *************** function _set_lcd_data *****************
;; Defined at:
;;		line 400 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  uc_data         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_data         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_lcd_data
;; This function uses a non-reentrant model
;;
psect	text817
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	400
	global	__size_of_set_lcd_data
	__size_of_set_lcd_data	equ	__end_of_set_lcd_data-_set_lcd_data
	
_set_lcd_data:	
	opt	stack 5
; Regs used in _set_lcd_data: [wreg]
;set_lcd_data@uc_data stored from wreg
	movwf	(set_lcd_data@uc_data)
	line	401
	
l5499:	
;lcd.c: 401: PORTD = uc_data;
	movf	(set_lcd_data@uc_data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	402
	
l1444:	
	return
	opt stack 0
GLOBAL	__end_of_set_lcd_data
	__end_of_set_lcd_data:
;; =============== function _set_lcd_data ends ============

	signat	_set_lcd_data,4216
	global	_set_lcd_rs
psect	text818,local,class=CODE,delta=2
global __ptext818
__ptext818:

;; *************** function _set_lcd_rs *****************
;; Defined at:
;;		line 380 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  b_output        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b_output        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_lcd_data
;; This function uses a non-reentrant model
;;
psect	text818
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	380
	global	__size_of_set_lcd_rs
	__size_of_set_lcd_rs	equ	__end_of_set_lcd_rs-_set_lcd_rs
	
_set_lcd_rs:	
	opt	stack 5
; Regs used in _set_lcd_rs: [wreg]
;set_lcd_rs@b_output stored from wreg
	movwf	(set_lcd_rs@b_output)
	line	381
	
l5497:	
;lcd.c: 381: RE2 = b_output;
	btfsc	(set_lcd_rs@b_output),0
	goto	u2811
	goto	u2810
	
u2811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	goto	u2824
u2810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
u2824:
	line	382
	
l1441:	
	return
	opt stack 0
GLOBAL	__end_of_set_lcd_rs
	__end_of_set_lcd_rs:
;; =============== function _set_lcd_rs ends ============

	signat	_set_lcd_rs,4216
	global	_set_lcd_e
psect	text819,local,class=CODE,delta=2
global __ptext819
__ptext819:

;; *************** function _set_lcd_e *****************
;; Defined at:
;;		line 360 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
;; Parameters:    Size  Location     Type
;;  b_output        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b_output        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_initialize
;;		_send_lcd_data
;; This function uses a non-reentrant model
;;
psect	text819
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\lcd.c"
	line	360
	global	__size_of_set_lcd_e
	__size_of_set_lcd_e	equ	__end_of_set_lcd_e-_set_lcd_e
	
_set_lcd_e:	
	opt	stack 5
; Regs used in _set_lcd_e: [wreg]
;set_lcd_e@b_output stored from wreg
	movwf	(set_lcd_e@b_output)
	line	361
	
l5459:	
;lcd.c: 361: RE1 = b_output;
	btfsc	(set_lcd_e@b_output),0
	goto	u2751
	goto	u2750
	
u2751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2764
u2750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2764:
	line	362
	
l1438:	
	return
	opt stack 0
GLOBAL	__end_of_set_lcd_e
	__end_of_set_lcd_e:
;; =============== function _set_lcd_e ends ============

	signat	_set_lcd_e,4216
	global	_adc_on
psect	text820,local,class=CODE,delta=2
global __ptext820
__ptext820:

;; *************** function _adc_on *****************
;; Defined at:
;;		line 61 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text820
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\adc.c"
	line	61
	global	__size_of_adc_on
	__size_of_adc_on	equ	__end_of_adc_on-_adc_on
	
_adc_on:	
	opt	stack 7
; Regs used in _adc_on: []
	line	63
	
l5457:	
;adc.c: 63: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	64
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_adc_on
	__end_of_adc_on:
;; =============== function _adc_on ends ============

	signat	_adc_on,88
	global	_adc_initialize
psect	text821,local,class=CODE,delta=2
global __ptext821
__ptext821:

;; *************** function _adc_initialize *****************
;; Defined at:
;;		line 27 in file "C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text821
	file	"C:\Users\user\Documents\SE (Degree)\SEM 3\FEI4205 K1\Mini Project\S58798_MiniProject (C and H Files)\adc.c"
	line	27
	global	__size_of_adc_initialize
	__size_of_adc_initialize	equ	__end_of_adc_initialize-_adc_initialize
	
_adc_initialize:	
	opt	stack 7
; Regs used in _adc_initialize: []
	line	29
	
l5455:	
;adc.c: 29: ADCS2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7
	line	30
;adc.c: 30: ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	line	31
;adc.c: 31: ADCS0 = 0;
	bcf	(254/8),(254)&7
	line	34
;adc.c: 34: PCFG3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1275/8)^080h,(1275)&7
	line	35
;adc.c: 35: PCFG2 = 0;
	bcf	(1274/8)^080h,(1274)&7
	line	36
;adc.c: 36: PCFG1 = 0;
	bcf	(1273/8)^080h,(1273)&7
	line	37
;adc.c: 37: PCFG0 = 0;
	bcf	(1272/8)^080h,(1272)&7
	line	40
;adc.c: 40: ADFM = 1;
	bsf	(1279/8)^080h,(1279)&7
	line	43
;adc.c: 43: ADON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(248/8),(248)&7
	line	44
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_adc_initialize
	__end_of_adc_initialize:
;; =============== function _adc_initialize ends ============

	signat	_adc_initialize,88
psect	text822,local,class=CODE,delta=2
global __ptext822
__ptext822:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
