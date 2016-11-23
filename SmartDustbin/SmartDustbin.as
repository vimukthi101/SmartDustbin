opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

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
# 3 "G:\SmartDustbin\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "G:\SmartDustbin\main.c"
	dw 0X3F39 ;#
	FNCALL	_main,_Delay_us
	FNCALL	_main,___awdiv
	FNCALL	_main,_Delay_ms
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	file	"SmartDustbin.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Delay_us
?_Delay_us:	; 2 bytes @ 0x0
	global	?_Delay_ms
?_Delay_ms:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_Delay_us
??_Delay_us:	; 0 bytes @ 0x2
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0     255
;;                                              9 COMMON     4     4      0
;;                           _Delay_us
;;                            ___awdiv
;;                           _Delay_ms
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     195
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _Delay_ms                                             2     0      2       0
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _Delay_us                                             2     0      2       0
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Delay_us
;;   ___awdiv
;;   _Delay_ms
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "G:\SmartDustbin\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               2   11[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_us
;;		___awdiv
;;		_Delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\SmartDustbin\main.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [allreg]
	line	7
	
l1849:	
;main.c: 6: int a;
;main.c: 7: TRISB = 0b00010000;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	8
	
l1851:	
;main.c: 8: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	9
	
l1853:	
;main.c: 9: T1CON = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	11
;main.c: 11: while(1){
	
l689:	
	line	12
;main.c: 12: TMR1H = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(15)	;volatile
	line	13
;main.c: 13: TMR1L = 0;
	clrf	(14)	;volatile
	line	14
;main.c: 14: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	15
	
l1855:	
;main.c: 15: PORTB = 0b00000001;
	movlw	(01h)
	movwf	(6)	;volatile
	line	16
	
l1857:	
;main.c: 16: Delay_us(10);
	movlw	low(0Ah)
	movwf	(?_Delay_us)
	movlw	high(0Ah)
	movwf	((?_Delay_us))+1
	fcall	_Delay_us
	line	17
	
l1859:	
;main.c: 17: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	19
;main.c: 19: while(!PORTB){
	goto	l690
	
l691:	
	line	20
	
l1861:	
;main.c: 20: T1CON = 0b00000001;
	movlw	(01h)
	movwf	(16)	;volatile
	line	21
	
l690:	
	line	19
	movf	(6),w	;volatile
	skipz
	goto	u2140
	goto	l1861
u2140:
	goto	l1865
	
l692:	
	line	22
;main.c: 21: }
;main.c: 22: while(PORTB){
	goto	l1865
	
l694:	
	line	23
	
l1863:	
;main.c: 23: T1CON = 0b00000000;
	clrf	(16)	;volatile
	goto	l1865
	line	24
	
l693:	
	line	22
	
l1865:	
	movf	(6),f
	skipz	;volatile
	goto	u2151
	goto	u2150
u2151:
	goto	l1863
u2150:
	goto	l1867
	
l695:	
	line	26
	
l1867:	
;main.c: 24: }
;main.c: 26: a = (TMR1L | (TMR1H<<8));
	movf	(15),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	iorwf	(14),w	;volatile
	movwf	(main@a)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@a)
	line	27
	
l1869:	
;main.c: 27: a = a/58;
	movlw	low(03Ah)
	movwf	(?___awdiv)
	movlw	high(03Ah)
	movwf	((?___awdiv))+1
	movf	(main@a+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@a),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	28
	
l1871:	
;main.c: 28: a = a + 1;
	movf	(main@a),w
	addlw	low(01h)
	movwf	(main@a)
	movf	(main@a+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@a)
	line	29
	
l1873:	
;main.c: 29: if(a>=2 && a<=400){
	movf	(main@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(02h)
	subwf	(main@a),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1879
u2160:
	
l1875:	
	movf	(main@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0191h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(0191h)
	subwf	(main@a),w
u2175:

	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l1879
u2170:
	line	31
	
l1877:	
;main.c: 31: PORTC = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
;main.c: 32: } else {
	goto	l1881
	
l696:	
	line	34
	
l1879:	
;main.c: 34: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l1881
	line	35
	
l697:	
	line	36
	
l1881:	
;main.c: 35: }
;main.c: 36: Delay_ms(400);
	movlw	low(0190h)
	movwf	(?_Delay_ms)
	movlw	high(0190h)
	movwf	((?_Delay_ms))+1
	fcall	_Delay_ms
	goto	l689
	line	37
	
l698:	
	line	11
	goto	l689
	
l699:	
	line	38
	
l700:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awdiv
psect	text54,local,class=CODE,delta=2
global __ptext54
__ptext54:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
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
psect	text54
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1425:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u1011
	goto	u1010
u1011:
	goto	l1429
u1010:
	line	11
	
l1427:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1429
	line	13
	
l849:	
	line	14
	
l1429:	
	btfss	(___awdiv@dividend+1),7
	goto	u1021
	goto	u1020
u1021:
	goto	l1435
u1020:
	line	15
	
l1431:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1433:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1435
	line	17
	
l850:	
	line	18
	
l1435:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l1437:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l1457
u1030:
	line	20
	
l1439:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1445
	
l853:	
	line	22
	
l1441:	
	movlw	01h
	
u1045:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1045
	line	23
	
l1443:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1445
	line	24
	
l852:	
	line	21
	
l1445:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l1441
u1050:
	goto	l1447
	
l854:	
	goto	l1447
	line	25
	
l855:	
	line	26
	
l1447:	
	movlw	01h
	
u1065:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1065
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1075
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1075:
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l1453
u1070:
	line	28
	
l1449:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1451:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1453
	line	30
	
l856:	
	line	31
	
l1453:	
	movlw	01h
	
u1085:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1085
	line	32
	
l1455:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l1447
u1090:
	goto	l1457
	
l857:	
	goto	l1457
	line	33
	
l851:	
	line	34
	
l1457:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1100
	goto	l1461
u1100:
	line	35
	
l1459:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1461
	
l858:	
	line	36
	
l1461:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l859
	
l1463:	
	line	37
	
l859:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_Delay_ms
	global	_Delay_us
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
