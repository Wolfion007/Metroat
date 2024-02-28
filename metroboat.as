opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

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
# 2 "C:\Users\dines\Desktop\METROBOAT\metroboat.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\dines\Desktop\METROBOAT\metroboat.c"
	dw 0x3F72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_command
	FNCALL	_main,_data
	FNCALL	_main,___wmul
	FNCALL	_initial,_command
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNROOT	_main
	global	_PORTB
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"metroboat.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_command
?_command:	; 0 bytes @ 0x0
	global	??_command
??_command:	; 0 bytes @ 0x0
	global	?_data
?_data:	; 0 bytes @ 0x0
	global	??_data
??_data:	; 0 bytes @ 0x0
	global	?_initial
?_initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	command@y
command@y:	; 1 bytes @ 0x1
	global	data@z
data@z:	; 1 bytes @ 0x1
	ds	1
	global	??_initial
??_initial:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	4
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xC
	ds	2
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
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xA
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xA
	ds	3
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x11
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x14
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1E
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0x21
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x23
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x25
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0x27
	ds	2
	global	main@m
main@m:	; 2 bytes @ 0x29
	ds	2
	global	main@o
main@o:	; 2 bytes @ 0x2B
	ds	2
	global	main@p
main@p:	; 2 bytes @ 0x2D
	ds	2
	global	main@q
main@q:	; 2 bytes @ 0x2F
	ds	2
	global	main@distance
main@distance:	; 2 bytes @ 0x31
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x33
	ds	2
	global	main@n
main@n:	; 2 bytes @ 0x35
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0x37
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x39
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x3B
	ds	2
	global	main@moisture
main@moisture:	; 2 bytes @ 0x3D
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     63      63
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   _initial->_command
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                37    37      0    2411
;;                                             30 BANK0     33    33      0
;;                            _initial
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _command
;;                               _data
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _initial                                              0     0      0      22
;;                            _command
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             6     3      3     300
;;                                             12 COMMON     2     2      0
;;                                             10 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                             14 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _data                                                 2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initial
;;     _command
;;   ___awtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;   ___awdiv
;;   ___awmod
;;   _command
;;   _data
;;   ___wmul
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
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3F      3F       5       78.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "C:\Users\dines\Desktop\METROBOAT\metroboat.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  l               2   59[BANK0 ] int 
;;  a               2   57[BANK0 ] int 
;;  n               2   53[BANK0 ] int 
;;  c               2   51[BANK0 ] int 
;;  q               2   47[BANK0 ] int 
;;  p               2   45[BANK0 ] int 
;;  o               2   43[BANK0 ] int 
;;  m               2   41[BANK0 ] int 
;;  f               2   39[BANK0 ] int 
;;  e               2   37[BANK0 ] int 
;;  d               2   35[BANK0 ] int 
;;  b               2   33[BANK0 ] int 
;;  r               2    0        int 
;;  g               2    0        int 
;;  moisture        2   61[BANK0 ] int 
;;  temp            2   55[BANK0 ] int 
;;  distance        2   49[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      30       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      33       0       0       0
;;Total ram usage:       33 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initial
;;		___awtoft
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_command
;;		_data
;;		___wmul
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\dines\Desktop\METROBOAT\metroboat.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	37
	
l2550:	
;metroboat.c: 35: int moisture;
;metroboat.c: 36: int temp,distance;
;metroboat.c: 37: TRISB=0x0F;PORTB=0x00;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l2552:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	38
	
l2554:	
;metroboat.c: 38: TRISD=0x00;PORTD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	
l2556:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	39
	
l2558:	
;metroboat.c: 39: TRISC=0x00;PORTC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	
l2560:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	41
	
l2562:	
;metroboat.c: 41: initial();
	fcall	_initial
	line	42
	
l2564:	
;metroboat.c: 42: T1CON=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(16)	;volatile
	line	43
;metroboat.c: 43: while(1)
	
l570:	
	line	45
	
l2566:	
;metroboat.c: 44: {
;metroboat.c: 45: TMR1H=0x00;
	clrf	(15)	;volatile
	line	46
	
l2568:	
;metroboat.c: 46: TMR1L=0x00;
	clrf	(14)	;volatile
	line	47
	
l2570:	
;metroboat.c: 47: RB1=1;
	bsf	(49/8),(49)&7
	line	48
	
l2572:	
;metroboat.c: 48: _delay((unsigned long)((0.01)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u3207:
decfsz	(??_main+0)+0,f
	goto	u3207
opt asmopt_on

	line	49
	
l2574:	
;metroboat.c: 49: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	50
;metroboat.c: 50: while(RB0==0);
	goto	l571
	
l572:	
	
l571:	
	btfss	(48/8),(48)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l572
u3160:
	
l573:	
	line	51
;metroboat.c: 51: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	52
;metroboat.c: 52: while(RB0==1);
	goto	l574
	
l575:	
	
l574:	
	btfsc	(48/8),(48)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l575
u3170:
	
l576:	
	line	53
;metroboat.c: 53: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	54
	
l2576:	
;metroboat.c: 54: temp=((TMR1H<<8)|TMR1L);
	movf	(15),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u3185:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u3185
	movf	(14),w	;volatile
	iorwf	0+(??_main+0)+0,w
	movwf	(main@temp)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@temp)
	line	55
	
l2578:	
;metroboat.c: 55: distance=(temp*0.017);
	movf	(main@temp+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(main@temp),w
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
	movlw	0x44
	movwf	(?___ftmul)
	movlw	0x8b
	movwf	(?___ftmul+1)
	movlw	0x3c
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@distance+1)
	addwf	(main@distance+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@distance)
	addwf	(main@distance)

	line	56
	
l2580:	
;metroboat.c: 56: int a=0000,b,c,d,e,f,g;
	movlw	low(0)
	movwf	(main@a)
	movlw	high(0)
	movwf	((main@a))+1
	line	57
	
l2582:	
;metroboat.c: 57: a=distance/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@distance+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@distance),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	58
	
l2584:	
;metroboat.c: 58: b=distance%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@distance+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@distance),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	line	59
	
l2586:	
;metroboat.c: 59: c=a/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@a+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@a),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@c)
	addwf	(main@c)

	line	60
	
l2588:	
;metroboat.c: 60: d=a%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@a+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@a),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	(0+(?___awmod)),w
	clrf	(main@d)
	addwf	(main@d)

	line	61
	
l2590:	
;metroboat.c: 61: e=c/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@c+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@c),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@e+1)
	addwf	(main@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@e)
	addwf	(main@e)

	line	62
	
l2592:	
;metroboat.c: 62: f=c%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@c+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@c),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@f+1)
	addwf	(main@f+1)
	movf	(0+(?___awmod)),w
	clrf	(main@f)
	addwf	(main@f)

	line	63
	
l2594:	
;metroboat.c: 63: command(0x80);
	movlw	(080h)
	fcall	_command
	line	64
	
l2596:	
;metroboat.c: 64: data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	fcall	_data
	line	65
	
l2598:	
;metroboat.c: 65: data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	fcall	_data
	line	66
	
l2600:	
;metroboat.c: 66: data(d+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@d),w
	addlw	030h
	fcall	_data
	line	67
	
l2602:	
;metroboat.c: 67: data(b+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	030h
	fcall	_data
	line	68
	
l2604:	
;metroboat.c: 68: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u3217:
	decfsz	((??_main+0)+0),f
	goto	u3217
	decfsz	((??_main+0)+0+1),f
	goto	u3217
	decfsz	((??_main+0)+0+2),f
	goto	u3217
opt asmopt_on

	line	69
	
l2606:	
;metroboat.c: 69: command(0x01);
	movlw	(01h)
	fcall	_command
	line	70
	
l2608:	
;metroboat.c: 70: command(0x06);
	movlw	(06h)
	fcall	_command
	line	71
	
l2610:	
;metroboat.c: 71: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	72
	
l2612:	
;metroboat.c: 72: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	73
	
l2614:	
;metroboat.c: 73: _delay((unsigned long)((0.01)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u3227:
decfsz	(??_main+0)+0,f
	goto	u3227
opt asmopt_on

	line	74
	
l2616:	
;metroboat.c: 74: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	75
	
l2618:	
;metroboat.c: 75: temp=((TMR1H<<8)|TMR1L);
	movf	(15),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u3195:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u3195
	movf	(14),w	;volatile
	iorwf	0+(??_main+0)+0,w
	movwf	(main@temp)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@temp)
	line	76
	
l2620:	
;metroboat.c: 76: moisture =( moisture * 100) / (1023);
	movf	(main@moisture+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@moisture),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@moisture+1)
	addwf	(main@moisture+1)
	movf	(0+(?___wmul)),w
	clrf	(main@moisture)
	addwf	(main@moisture)

	
l2622:	
	movlw	low(03FFh)
	movwf	(?___awdiv)
	movlw	high(03FFh)
	movwf	((?___awdiv))+1
	movf	(main@moisture+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@moisture),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@moisture+1)
	addwf	(main@moisture+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@moisture)
	addwf	(main@moisture)

	line	77
	
l2624:	
;metroboat.c: 77: moisture = temp*moisture;
	movf	(main@temp+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@temp),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movf	(main@moisture+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(main@moisture),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@moisture+1)
	addwf	(main@moisture+1)
	movf	(0+(?___wmul)),w
	clrf	(main@moisture)
	addwf	(main@moisture)

	line	78
;metroboat.c: 78: int l=0000,m,n,o,p,q,r;
	movlw	low(0)
	movwf	(main@l)
	movlw	high(0)
	movwf	((main@l))+1
	line	79
	
l2626:	
;metroboat.c: 79: l=moisture/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@moisture+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@moisture),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@l+1)
	addwf	(main@l+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@l)
	addwf	(main@l)

	line	80
	
l2628:	
;metroboat.c: 80: m=moisture%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@moisture+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@moisture),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m+1)
	addwf	(main@m+1)
	movf	(0+(?___awmod)),w
	clrf	(main@m)
	addwf	(main@m)

	line	81
	
l2630:	
;metroboat.c: 81: n=l/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@l+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@l),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@n+1)
	addwf	(main@n+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@n)
	addwf	(main@n)

	line	82
	
l2632:	
;metroboat.c: 82: o=l%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@l+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@l),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@o+1)
	addwf	(main@o+1)
	movf	(0+(?___awmod)),w
	clrf	(main@o)
	addwf	(main@o)

	line	83
	
l2634:	
;metroboat.c: 83: p=n/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@n+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@n),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@p+1)
	addwf	(main@p+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@p)
	addwf	(main@p)

	line	84
	
l2636:	
;metroboat.c: 84: q=n%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@n+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@n),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@q+1)
	addwf	(main@q+1)
	movf	(0+(?___awmod)),w
	clrf	(main@q)
	addwf	(main@q)

	line	85
	
l2638:	
;metroboat.c: 85: command(0x80);
	movlw	(080h)
	fcall	_command
	line	86
	
l2640:	
;metroboat.c: 86: data(p+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@p),w
	addlw	030h
	fcall	_data
	line	87
	
l2642:	
;metroboat.c: 87: data(q+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@q),w
	addlw	030h
	fcall	_data
	line	88
	
l2644:	
;metroboat.c: 88: data(o+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@o),w
	addlw	030h
	fcall	_data
	line	89
	
l2646:	
;metroboat.c: 89: data(m+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@m),w
	addlw	030h
	fcall	_data
	line	90
	
l2648:	
;metroboat.c: 90: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u3237:
	decfsz	((??_main+0)+0),f
	goto	u3237
	decfsz	((??_main+0)+0+1),f
	goto	u3237
	decfsz	((??_main+0)+0+2),f
	goto	u3237
opt asmopt_on

	line	91
	
l577:	
	line	43
	goto	l570
	
l578:	
	line	92
	
l579:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initial
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:

;; *************** function _initial *****************
;; Defined at:
;;		line 26 in file "C:\Users\dines\Desktop\METROBOAT\metroboat.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text238
	file	"C:\Users\dines\Desktop\METROBOAT\metroboat.c"
	line	26
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l2548:	
;metroboat.c: 27: command(0x38);
	movlw	(038h)
	fcall	_command
	line	28
;metroboat.c: 28: command(0x01);
	movlw	(01h)
	fcall	_command
	line	29
;metroboat.c: 29: command(0x06);
	movlw	(06h)
	fcall	_command
	line	30
;metroboat.c: 30: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	31
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	___awtoft
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text239
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 7
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2538:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	line	37
	
l2540:	
	btfss	(___awtoft@c+1),7
	goto	u3151
	goto	u3150
u3151:
	goto	l724
u3150:
	line	38
	
l2542:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	line	40
	
l724:	
	line	41
	
l2544:	
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
	
l2546:	
	line	42
	
l725:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;;  f2              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   25[BANK0 ] unsigned um
;;  sign            1   29[BANK0 ] unsigned char 
;;  cntr            1   28[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text240
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 7
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2488:	
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
	goto	u3011
	goto	u3010
u3011:
	goto	l686
u3010:
	line	57
	
l2490:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	
l2492:	
	goto	l687
	
l686:	
	line	58
	
l2494:	
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
	goto	u3021
	goto	u3020
u3021:
	goto	l688
u3020:
	line	59
	
l2496:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	
l2498:	
	goto	l687
	
l688:	
	line	60
	
l2500:	
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
u3035:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3030:
	addlw	-1
	skipz
	goto	u3035
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
u3045:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3040:
	addlw	-1
	skipz
	goto	u3045
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
	
l2502:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l2504:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l2506:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l2508:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l2510:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	70
	
l689:	
	line	71
	
l2512:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l690
u3050:
	line	72
	
l2514:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3061
	addwf	(___ftmul@f3_as_product+1),f
u3061:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3062
	addwf	(___ftmul@f3_as_product+2),f
u3062:

	
l690:	
	line	73
	
l2516:	
	movlw	01h
u3075:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3075

	line	74
	
l2518:	
	movlw	01h
u3085:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3085
	line	75
	
l2520:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l689
u3090:
	
l691:	
	line	76
	
l2522:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	77
	
l692:	
	line	78
	
l2524:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l693
u3100:
	line	79
	
l2526:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3111
	addwf	(___ftmul@f3_as_product+1),f
u3111:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3112
	addwf	(___ftmul@f3_as_product+2),f
u3112:

	
l693:	
	line	80
	
l2528:	
	movlw	01h
u3125:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3125

	line	81
	
l2530:	
	movlw	01h
u3135:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3135

	line	82
	
l2532:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l692
u3140:
	
l694:	
	line	83
	
l2534:	
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
	
l2536:	
	line	84
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	_data
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:

;; *************** function _data *****************
;; Defined at:
;;		line 17 in file "C:\Users\dines\Desktop\METROBOAT\metroboat.c"
;; Parameters:    Size  Location     Type
;;  z               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  z               1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text241
	file	"C:\Users\dines\Desktop\METROBOAT\metroboat.c"
	line	17
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 7
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	line	18
	
l2478:	
;metroboat.c: 18: PORTD=z;
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	19
	
l2480:	
;metroboat.c: 19: RC0=1;
	bsf	(56/8),(56)&7
	line	20
	
l2482:	
;metroboat.c: 20: RC1=0;
	bcf	(57/8),(57)&7
	line	21
	
l2484:	
;metroboat.c: 21: RC2=1;
	bsf	(58/8),(58)&7
	line	22
;metroboat.c: 22: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u3247:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u3247
	nop2	;nop
	clrwdt
opt asmopt_on

	line	23
	
l2486:	
;metroboat.c: 23: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	24
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _command *****************
;; Defined at:
;;		line 8 in file "C:\Users\dines\Desktop\METROBOAT\metroboat.c"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text242
	file	"C:\Users\dines\Desktop\METROBOAT\metroboat.c"
	line	8
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	9
	
l2468:	
;metroboat.c: 9: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	10
	
l2470:	
;metroboat.c: 10: RC0=0;
	bcf	(56/8),(56)&7
	line	11
	
l2472:	
;metroboat.c: 11: RC1=0;
	bcf	(57/8),(57)&7
	line	12
	
l2474:	
;metroboat.c: 12: RC2=1;
	bsf	(58/8),(58)&7
	line	13
;metroboat.c: 13: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u3257:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u3257
	nop2	;nop
	clrwdt
opt asmopt_on

	line	14
	
l2476:	
;metroboat.c: 14: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	15
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
	global	___awmod
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text243
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2384:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2386:	
	btfss	(___awmod@dividend+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l796
u2860:
	line	10
	
l2388:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	line	12
	
l796:	
	line	13
	
l2390:	
	btfss	(___awmod@divisor+1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l797
u2870:
	line	14
	
l2392:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l797:	
	line	15
	
l2394:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2881
	goto	u2880
u2881:
	goto	l798
u2880:
	line	16
	
l2396:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l799
	
l800:	
	line	18
	
l2398:	
	movlw	01h
	
u2895:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2895
	line	19
	
l2400:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l799:	
	line	17
	
l2402:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l800
u2900:
	
l801:	
	line	21
	
l802:	
	line	22
	
l2404:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2915
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2915:
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l803
u2910:
	line	23
	
l2406:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l803:	
	line	24
	
l2408:	
	movlw	01h
	
u2925:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2925
	line	25
	
l2410:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l802
u2930:
	
l804:	
	line	26
	
l798:	
	line	27
	
l2412:	
	movf	(___awmod@sign),w
	skipz
	goto	u2940
	goto	l805
u2940:
	line	28
	
l2414:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l805:	
	line	29
	
l2416:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2418:	
	line	30
	
l806:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text244
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2346:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2348:	
	btfss	(___awdiv@divisor+1),7
	goto	u2761
	goto	u2760
u2761:
	goto	l728
u2760:
	line	11
	
l2350:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	line	13
	
l728:	
	line	14
	
l2352:	
	btfss	(___awdiv@dividend+1),7
	goto	u2771
	goto	u2770
u2771:
	goto	l729
u2770:
	line	15
	
l2354:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2356:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l729:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l730
u2780:
	line	20
	
l2358:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l731
	
l732:	
	line	22
	
l2360:	
	movlw	01h
	
u2795:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2795
	line	23
	
l2362:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l731:	
	line	21
	
l2364:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l732
u2800:
	
l733:	
	line	25
	
l734:	
	line	26
	
l2366:	
	movlw	01h
	
u2815:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2815
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2825
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2825:
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l735
u2820:
	line	28
	
l2368:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2370:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l735:	
	line	31
	
l2372:	
	movlw	01h
	
u2835:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2835
	line	32
	
l2374:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l734
u2840:
	
l736:	
	line	33
	
l730:	
	line	34
	
l2376:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2850
	goto	l737
u2850:
	line	35
	
l2378:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l737:	
	line	36
	
l2380:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2382:	
	line	37
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
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
;; This function uses a non-reentrant model
;;
psect	text245
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2288:	
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
	goto	u2651
	goto	u2650
u2651:
	goto	l697
u2650:
	line	50
	
l2290:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2292:	
	goto	l698
	
l697:	
	line	51
	
l2294:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2665:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2660:
	addlw	-1
	skipz
	goto	u2665
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2296:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2298:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2300:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2302:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2304:	
	btfss	(___fttol@exp1),7
	goto	u2671
	goto	u2670
u2671:
	goto	l699
u2670:
	line	57
	
l2306:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l700
u2680:
	line	58
	
l2308:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2310:	
	goto	l698
	
l700:	
	line	59
	
l701:	
	line	60
	
l2312:	
	movlw	01h
u2695:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2695

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l701
u2700:
	
l702:	
	line	62
	goto	l703
	
l699:	
	line	63
	
l2314:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l704
u2710:
	line	64
	
l2316:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2318:	
	goto	l698
	
l704:	
	line	65
	goto	l705
	
l706:	
	line	66
	
l2320:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2725:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2725
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	line	68
	
l705:	
	line	65
	
l2322:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l706
u2730:
	
l707:	
	line	69
	
l703:	
	line	70
	
l2324:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2740
	goto	l708
u2740:
	line	71
	
l2326:	
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
	
l708:	
	line	72
	
l2328:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l2330:	
	line	73
	
l698:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
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
;;		___ftmul
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text246
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2214:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2460
	goto	l922
u2460:
	
l2216:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l920
u2470:
	
l922:	
	line	65
	
l2218:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	
l2220:	
	goto	l923
	
l920:	
	line	66
	goto	l924
	
l925:	
	line	67
	
l2222:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2485:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2485

	line	69
	
l924:	
	line	66
	
l2224:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l925
u2490:
	
l926:	
	line	70
	goto	l927
	
l928:	
	line	71
	
l2226:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2228:	
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
	
l2230:	
	movlw	01h
u2505:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2505

	line	74
	
l927:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l928
u2510:
	
l929:	
	line	75
	goto	l930
	
l931:	
	line	76
	
l2232:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2525:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2525
	line	78
	
l930:	
	line	75
	
l2234:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l931
u2530:
	
l932:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l933
u2540:
	line	80
	
l2236:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l933:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2238:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2555:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2550:
	addlw	-1
	skipz
	goto	u2555
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2240:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2560
	goto	l934
u2560:
	line	84
	
l2242:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l934:	
	line	85
	line	86
	
l923:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text247
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2130:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	line	6
	
l588:	
	line	7
	
l2132:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l589
u2180:
	line	8
	
l2134:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l589:	
	line	9
	movlw	01h
	
u2195:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2195
	line	10
	
l2136:	
	movlw	01h
	
u2205:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2205
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l588
u2210:
	
l590:	
	line	12
	
l2138:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l2140:	
	line	13
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
