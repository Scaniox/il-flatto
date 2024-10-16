.include "part_defs/atmega1284pdef.inc"
.include "ram_map.inc"
f800:	rjmp	RESET_ISR
f802:	nop
f804:	rjmp	NO_ISR
f806:	nop
f808:	rjmp	NO_ISR
f80a:	nop
f80c:	rjmp	INT2_ISR
f80e:	nop
; f810:	rjmp	NO_ISR
; f812:	nop
; f814:	rjmp	NO_ISR
; f816:	nop
; f818:	rjmp	NO_ISR
; f81a:	nop
; f81c:	rjmp	NO_ISR
; f81e:	nop
; f820:	rjmp	NO_ISR
; f822:	nop
; f824:	rjmp	NO_ISR
; f826:	nop
; f828:	rjmp	NO_ISR
; f82a:	nop
; f82c:	rjmp	NO_ISR
; f82e:	nop
; f830:	rjmp	NO_ISR
; f832:	nop
; f834:	rjmp	NO_ISR
; f836:	nop
; f838:	rjmp	NO_ISR
; f83a:	nop
; f83c:	rjmp	NO_ISR
; f83e:	nop
; f840:	rjmp	NO_ISR
; f842:	nop
; f844:	rjmp	NO_ISR
; f846:	nop
; f848:	rjmp	NO_ISR
; f84a:	nop
; f84c:	rjmp	NO_ISR
; f84e:	nop
; f850:	rjmp	NO_ISR
; f852:	nop
; f854:	rjmp	NO_ISR
; f856:	nop
; f858:	rjmp	NO_ISR
; f85a:	nop
; f85c:	rjmp	NO_ISR
; f85e:	nop
; f860:	rjmp	NO_ISR
; f862:	nop
; f864:	rjmp	NO_ISR
; f866:	nop
; f868:	rjmp	NO_ISR
; f86a:	nop
; f86c:	rjmp	NO_ISR
; f86e:	nop
; f870:	rjmp	NO_ISR
; f872:	nop
; f874:	rjmp	NO_ISR
; f876:	nop
; f878:	rjmp	NO_ISR
; f87a:	nop

; 	USB_descriptor
usbDesc_str0:	.word	0x0304	; type 03 legnth 4
f87e:	.word	0x0409	; lang: eng

usbDesc_str1:	.word	0x031c	; type 03 length 1c
f882:	.word	0x0077	; w
f884:	.word	0x0077	; w
f886:	.word	0x0077	; w
f888:	.word	0x002e	; .
f88a:	.word	0x0066	; f
f88c:	.word	0x0069	; i
f88e:	.word	0x0073	; s
f890:	.word	0x0063	; c
f892:	.word	0x0068	; h
f894:	.word	0x006c	; l
f896:	.word	0x002e	; .
f898:	.word	0x0064	; d
f89a:	.word	0x0065	; e

usbDesc_str2:	.word	0x030e  ; type 3 length 0e
f89e:	.word	0x0055	; U
f8a0:	.word	0x0053	; S
f8a2:	.word	0x0042	; B
f8a4:	.word	0x0061	; a
f8a6:	.word	0x0073	; s
f8a8:	.word	0x0070	; p
	; DEVICE DESC
usbDesc_dev:	.word	0x0112
f8ac:	.word	0x0110
f8ae:	.word	0x00ff
f8b0:	.word	0x0800
f8b2:	.word	0x16c0	; vid
f8b4:	.word	0x05dc	; pid
f8b6:	.word	0x0102	; bcdDevice
f8b8:	.word	0x0201	; has string desc 1 and 2
f8ba:	.word	usbTxLen	; has 1 config, no serial no
	; CONFIG DESC
usbDesc_cfg:	.word	0x0209	; type 2 length 9
f8be:	.word	0x0012
f8c0:	.word	usbMsgLen
f8c2:	.word	0x8000
f8c4:	.word	0x0932
f8c6:	.word	0x0004
f8c8:	.word	0x0000
f8ca:	.word	0x0000
f8cc:	.word	0x0000

; main entry point
RESET_ISR:	eor	r1, r1
f8da:	ldi	r17, 0x01	; 1
	ldi	r24, 0xff
	out	DDRA, r24
	
	ldi	r30, lo8(usbDesc_str0)
	ldi	r31, hi8(usbDesc_str0)
	adiw	r30, 0x00
	ldi	r23, hh8(usbDesc_str0)
	out	RAMPZ, r23
	elpm	r24, Z
	out	PORTA, r24
	out	PORTA, r1


f8d0:	out	SREG, r1	; SREG = 0
f8d2:	ldi	r28, 0xFF	; Y = 0x10FF
f8d4:	ldi	r29, 0x10	; 
f8d6:	out	SPH, r29	; SP = 0x10FF
f8d8:	out	SPL, r28	; 

;	store 0xffa5 into ram usbMsgLen:usbTxLen
f8dc:	ldi	r26, 0x00	; X = usbTxLen
f8de:	ldi	r27, 0x01	; 
f8e0:	ldi	r30, 0xFE	; Z = 0xFFFE 
f8e2:	ldi	r31, 0xFF	; 
f8e4:	rjmp	f8ea
	out	RAMPZ, r23
f8e6:	elpm	r0, Z+
f8e8:	st	X+, r0		; 
f8ea:	cpi	r26, 0x02	; X == 0x0102
f8ec:	cpc	r27, r17
f8ee:	brne	f8e6

;	clear ram 0x0137:0x0102
; f8f0:	ldi	r17, 0x01	; 1
f8f2:	ldi	r26, 0x02	; X = 0x0102
f8f4:	ldi	r27, 0x01	; 
f8f6:	rjmp	f8fa
f8f8:	st	X+, r1

f8fa:	cpi	r26, 0x37	; 55
f8fc:	cpc	r27, r17
f8fe:	brne	f8f8

f900:	rcall	CHECK_BUTTON
NO_ISR:
f902:	rjmp	f902;WHILE1_END


; NO_ISR:	rjmp	f800


f906:	mov	r26, r24
f908:	mov	r27, r25
f90a:	ldi	r24, 0x00	; 0
f90c:	ldi	r25, 0x00	; 0
f90e:	ldi	r20, 0x01	; 1
f910:	ldi	r21, 0xA0	; 160
f912:	com	r22
f914:	ldi	r19, 0x00	; 0
f916:	rjmp	f92a
f918:	ld	r18, X+
f91a:	eor	r24, r18
f91c:	ror	r25
f91e:	ror	r24
f920:	brcs	f926
f922:	eor	r24, r20
f924:	eor	r25, r21
f926:	subi	r19, 0xE0	; 224
f928:	brcs	f91c
f92a:	subi	r22, 0xFF	; 255
f92c:	brcs	f918
f92e:	ret
f930:	rcall	f906
f932:	st	X+, r24
f934:	st	X+, r25
f936:	ret


; isr for int2
INT2_ISR:	push	r28
f93a:	in	r28, SREG	;
f93c:	push	r28		; SREG onto stack
f93e:	inc	r28		;
f940:	sbis	PINB, 3	; 3
f942:	brne	f93e
f944:	sbis	PINB, 3	; 3
f946:	rjmp	f95a
f948:	sbis	PINB, 3	; 3
f94a:	rjmp	f95a
f94c:	sbis	PINB, 3	; 3
f94e:	rjmp	f95a
f950:	sbis	PINB, 3	; 3
f952:	rjmp	f95a
f954:	sbis	PINB, 3	; 3
f956:	rjmp	f95a
f958:	rjmp	fa9c
f95a:	push	r29
f95c:	lds	r28, 0x011A	;  0x80011a
f960:	eor	r29, r29
f962:	subi	r28, 0xDF	; 223
f964:	sbci	r29, 0xFE	; 254
f966:	sbis	PINB, 3	; 3
f968:	rjmp	f96e
f96a:	pop	r29
f96c:	rjmp	f944
f96e:	push	r18
f970:	push	r16
f972:	push	r17
f974:	in	r16, PINB	; 3
f976:	ldi	r18, 0xFF	; 255
f978:	bst	r16, 3
f97a:	bld	r18, 0
f97c:	push	r20
f97e:	push	r19
f980:	in	r17, PINB	; 3
f982:	ldi	r20, 0xFF	; 255
f984:	eor	r16, r17
f986:	bst	r16, 3
f988:	bld	r18, 1
f98a:	ldi	r19, 0x0B	; 11
f98c:	rjmp	f9f0
f98e:	andi	r20, 0xFE	; 254
f990:	mov	r16, r17
f992:	in	r17, PINB	; 3
f994:	ori	r18, 0x01	; 1
f996:	rjmp	f9e8
f998:	mov	r17, r16
f99a:	andi	r20, 0xFD	; 253
f99c:	ori	r18, 0x02	; 2
f99e:	nop
f9a0:	in	r16, PINB	; 3
f9a2:	rjmp	f9f6
f9a4:	andi	r20, 0xFB	; 251
f9a6:	ori	r18, 0x04	; 4
f9a8:	mov	r16, r17
f9aa:	nop
f9ac:	in	r17, PINB	; 3
f9ae:	rjmp	fa06
f9b0:	in	r17, PINB	; 3
f9b2:	andi	r20, 0xF7	; 247
f9b4:	ori	r18, 0x08	; 8
f9b6:	rjmp	fa0c
f9b8:	andi	r20, 0xEF	; 239
f9ba:	in	r16, PINB	; 3
f9bc:	ori	r18, 0x10	; 16
f9be:	rjmp	fa18
f9c0:	andi	r20, 0xDF	; 223
f9c2:	in	r17, PINB	; 3
f9c4:	ori	r18, 0x20	; 32
f9c6:	rjmp	fa26
f9c8:	andi	r20, 0xBF	; 191
f9ca:	in	r16, PINB	; 3
f9cc:	ori	r18, 0x40	; 64
f9ce:	rjmp	fa34
f9d0:	eor	r20, r18
f9d2:	in	r16, PINB	; 3
f9d4:	st	Y+, r20
f9d6:	ldi	r20, 0xFF	; 255
f9d8:	nop
f9da:	eor	r17, r16
f9dc:	bst	r17, 3
f9de:	bld	r18, 0
f9e0:	in	r17, PINB	; 3
f9e2:	andi	r17, 0x0C	; 12
f9e4:	breq	fa58
f9e6:	andi	r18, 0xF9	; 249
f9e8:	breq	f98e
f9ea:	eor	r16, r17
f9ec:	bst	r16, 3
f9ee:	bld	r18, 1
f9f0:	in	r16, PINB	; 3
f9f2:	andi	r18, 0xF3	; 243
f9f4:	breq	f998
f9f6:	subi	r19, 0x01	; 1
f9f8:	brcs	fa50
f9fa:	eor	r17, r16
f9fc:	bst	r17, 3
f9fe:	bld	r18, 2
fa00:	in	r17, PINB	; 3
fa02:	andi	r18, 0xE7	; 231
fa04:	breq	f9a4
fa06:	eor	r16, r17
fa08:	bst	r16, 3
fa0a:	bld	r18, 3
fa0c:	andi	r18, 0xCF	; 207
fa0e:	breq	f9b0
fa10:	in	r16, PINB	; 3
fa12:	eor	r17, r16
fa14:	bst	r17, 3
fa16:	bld	r18, 4
fa18:	andi	r18, 0x9F	; 159
fa1a:	breq	f9b8
fa1c:	rjmp	fa1e
fa1e:	in	r17, PINB	; 3
fa20:	eor	r16, r17
fa22:	bst	r16, 3
fa24:	bld	r18, 5
fa26:	andi	r18, 0x3F	; 63
fa28:	breq	f9c0
fa2a:	rjmp	fa2c
fa2c:	in	r16, PINB	; 3
fa2e:	eor	r17, r16
fa30:	bst	r17, 3
fa32:	bld	r18, 6
fa34:	cpi	r18, 0x02	; 2
fa36:	brcs	f9c8
fa38:	rjmp	fa3a
fa3a:	in	r17, PINB	; 3
fa3c:	eor	r16, r17
fa3e:	bst	r16, 3
fa40:	bld	r18, 7
fa42:	cpi	r18, 0x04	; 4
fa44:	brcc	f9d0
fa46:	andi	r20, 0x7F	; 127
fa48:	ori	r18, 0x80	; 128
fa4a:	in	r17, PINB	; 3
fa4c:	nop
fa4e:	rjmp	fa42
fa50:	ldi	r17, 0x04	; 4
fa52:	out	EIFR, r17	; 28
fa54:	eor	r16, r16
fa56:	rjmp	fa86
fa58:	subi	r19, 0x0B	; 11
fa5a:	neg	r19
fa5c:	sub	r28, r19
fa5e:	sbci	r29, 0x00	; 0
fa60:	ldi	r17, 0x04	; 4
fa62:	out	EIFR, r17	; 28
fa64:	ld	r16, Y
fa66:	cpi	r16, 0xC3	; 195
fa68:	breq	faa4
fa6a:	cpi	r16, 0x4B	; 75
fa6c:	breq	faa4
fa6e:	lds	r18, usbDeviceAddr	; usbDeviceAddr  0x800118
fa72:	ldd	r17, Y+1	; 0x01
fa74:	add	r17, r17
fa76:	cpse	r17, r18
fa78:	rjmp	fa54
fa7a:	cpi	r16, 0x69	; 105
fa7c:	breq	face
fa7e:	cpi	r16, 0x2D	; 45
fa80:	breq	fa86
fa82:	cpi	r16, 0xE1	; 225
fa84:	brne	fa54
fa86:	sts	0x011F, r16	;  0x80011f
fa8a:	pop	r19
fa8c:	pop	r20
fa8e:	pop	r17
fa90:	pop	r16
fa92:	pop	r18
fa94:	pop	r29
fa96:	in	r28, EIFR	; 28
fa98:	sbrc	r28, 2
fa9a:	rjmp	f93e
fa9c:	pop	r28
fa9e:	out	SREG, r28	; 63
faa0:	pop	r28
faa2:	reti


faa4:	lds	r18, 0x011F	;  0x80011f
faa8:	and	r18, r18
faaa:	breq	fa8a
faac:	lds	r17, usbRxLen	; usbRxLen  0x80011d
fab0:	and	r17, r17
fab2:	brne	faf8
fab4:	cpi	r19, 0x04	; 4
fab6:	brmi	fafc
fab8:	sts	usbRxLen, r19	; usbRxLen  0x80011d
fabc:	sts	usbRxToken, r18	; usbRxToken  0x800119
fac0:	lds	r17, 0x011A	;  0x80011a
fac4:	ldi	r19, 0x0B	; 11
fac6:	sub	r19, r17
fac8:	sts	0x011A, r19	;  0x80011a
facc:	rjmp	fafc
face:	lds	r16, usbRxLen	; usbRxLen  0x80011d
fad2:	cpi	r16, 0x01	; 1
fad4:	brge	faf8
fad6:	ldi	r16, 0x5A	; 90
fad8:	lds	r19, usbTxLen	; usbTxLen  0x800100
fadc:	sbrc	r19, 4
fade:	rjmp	fb00
fae0:	sts	usbTxLen, r16	; usbTxLen  0x800100
fae4:	ldi	r28, 0x0D	; 13
fae6:	ldi	r29, 0x01	; 1
fae8:	rjmp	fb08
faea:	ror	r18
faec:	brcc	fb18
faee:	subi	r21, 0x01	; 1
faf0:	brne	fb1c
faf2:	add	r18, r18
faf4:	nop
faf6:	rjmp	faea
faf8:	ldi	r20, 0x5A	; 90
fafa:	rjmp	fb02
fafc:	ldi	r20, 0xD2	; 210
fafe:	rjmp	fb02
fb00:	mov	r20, r19
fb02:	ldi	r28, 0x14	; 20
fb04:	ldi	r29, 0x00	; 0
fb06:	ldi	r19, 0x02	; 2
fb08:	in	r17, DDRB	; 4
fb0a:	ori	r17, 0x0C	; 12
fb0c:	sbi	PORTB, 3	; 5
fb0e:	out	DDRB, r17	; 4
fb10:	in	r16, PORTB	; 5
fb12:	ldi	r18, 0x40	; 64
fb14:	ldi	r17, 0x0C	; 12
fb16:	push	r21
fb18:	eor	r16, r17
fb1a:	ldi	r21, 0x06	; 6
fb1c:	out	PORTB, r16	; 5
fb1e:	ror	r18
fb20:	brcc	fb2a
fb22:	subi	r21, 0x01	; 1
fb24:	brne	fb2e
fb26:	add	r18, r18
fb28:	rjmp	fb1c
fb2a:	eor	r16, r17
fb2c:	ldi	r21, 0x06	; 6
fb2e:	nop
fb30:	subi	r19, 0xAB	; 171
fb32:	out	PORTB, r16	; 5
fb34:	brcs	faea
fb36:	ror	r18
fb38:	brcc	fb44
fb3a:	subi	r21, 0x01	; 1
fb3c:	brne	fb48
fb3e:	add	r18, r18
fb40:	nop
fb42:	rjmp	fb36
fb44:	eor	r16, r17
fb46:	ldi	r21, 0x06	; 6
fb48:	ror	r18
fb4a:	out	PORTB, r16	; 5
fb4c:	brcc	fb56
fb4e:	subi	r21, 0x01	; 1
fb50:	brne	fb5a
fb52:	add	r18, r18
fb54:	rjmp	fb48
fb56:	eor	r16, r17
fb58:	ldi	r21, 0x06	; 6
fb5a:	ld	r18, Y+
fb5c:	and	r19, r19
fb5e:	out	PORTB, r16	; 5
fb60:	brne	faea
fb62:	andi	r16, 0xF3	; 243
fb64:	lds	r17, usbNewDeviceAddr	; usbNewDeviceAddr  0x80011e
fb68:	add	r17, r17
fb6a:	subi	r28, 0x16	; 22
fb6c:	sbci	r29, 0x00	; 0
fb6e:	out	PORTB, r16	; 5
fb70:	breq	fb76
fb72:	sts	usbDeviceAddr, r17	; usbDeviceAddr  0x800118
fb76:	ldi	r17, 0x04	; 4
fb78:	out	EIFR, r17	; 28
fb7a:	ori	r16, 0x08	; 8
fb7c:	in	r17, DDRB	; 4
fb7e:	andi	r17, 0xF3	; 243
fb80:	mov	r20, r16
fb82:	andi	r20, 0xF3	; 243
fb84:	pop	r21
fb86:	rjmp	fb88
fb88:	rjmp	fb8a
fb8a:	out	PORTB, r16	; 5
fb8c:	out	DDRB, r17	; 4
fb8e:	out	PORTB, r20	; 5
fb90:	rjmp	fa8a


CHECK_BUTTON:	in	r24, MCUSR	; read MCUSR
fb94:	andi	r24, 0x0A	; is WDRF or EXTRF set?
fb96:	brne	YES_BTLD	; yes bootloader
fb98:	rjmp	NO_BTLD		; no bootloader


YES_BTLD:	out	MCUSR, r1	; reset MCUSR
fb9c:	ldi	r24, 0x18	; 24
fb9e:	in	r0, SREG	; r0 = 
fba0:	cli
fba2:	sts	0x0060, r24	;  0x800060
fba6:	sts	0x0060, r1	;  0x800060
fbaa:	out	SREG, r0	; 63
fbac:	ldi	r24, 0x01	; 1
fbae:	out	MCUCR, r24	; 53
fbb0:	ldi	r24, 0x02	; 2
fbb2:	out	MCUCR, r24	; 53
fbb4:	lds	r24, 0x0069	;  0x800069
fbb8:	ori	r24, 0x30	; 48
fbba:	sts	0x0069, r24	;  0x800069
fbbe:	sbi	EIMSK, 2	; 29
fbc0:	sbi	DDRB, 3	; 4
fbc2:	ldi	r18, 0x00	; 0
fbc4:	rjmp	fbce
;	startup delay
fbc6:	ldi	r24, 0xB8	; 184
fbc8:	ldi	r25, 0x0B	; 11
fbca:	sbiw	r24, 0x01	; 1
fbcc:	brne	fbca
fbce:	subi	r18, 0x01	; 1
fbd0:	brne	fbc6
;	more setup
fbd2:	cbi	DDRB, 3	; 4
fbd4:	sei
fbd6:	sbi	DDRB, 7	; DDRB7 = 1
fbd8:	sbi	PORTB, 7	; PORTB7 = 1
fbda:	eor	r12, r12
fbdc:	eor	r13, r13

MAIN_LOOP:	lds	r25, usbRxLen	; usbRxLen  0x80011d
	sbi	PORTB, 7	
	cbi	PORTB, 7	
fbe2:	subi	r25, 0x03	; 3
fbe4:	sbrc	r25, 7
fbe6:	rjmp	skip_rx		; 

;	usbprocessRX
usbprocessRX:	lds	r24, 0x011A	;  0x80011a
fbec:	ldi	r16, 0x0C	; 12
fbee:	ldi	r17, 0x00	; 0
fbf0:	sub	r16, r24
fbf2:	sbc	r17, r1
fbf4:	subi	r16, 0xDF	; 223
fbf6:	sbci	r17, 0xFE	; 254
fbf8:	lds	r24, usbRxToken	; usbRxToken == USBPID_SETUP 
fbfc:	cpi	r24, 0x2D	
fbfe:	breq	USBPID_SETUP
fc00:	rjmp	USBPID_OUT

USBPID_SETUP:	cpi	r25, 0x08	; /* Setup size must be always 8 bytes. Ignore otherwise. */
fc04:	breq	fc08
fc06:	rjmp	exitProcesRX
fc08:	ldi	r24, 0xC3	
fc0a:	sts	0x010D, r24	; usbTxBuf[0] = USBPID_DATA0
fc0e:	ldi	r24, 0x5A	
fc10:	sts	usbTxLen, r24	; usbTxLen = USBPID_NAK
fc14:	sts	usbMsgFlags, r1	; usbMsgFlags = 0
fc18:	movw	r26, r16
fc1a:	ld	r19, X
fc1c:	mov	r24, r19	; load RAM[r16] to r24
fc1e:	andi	r24, 0x60	; type = rq->bmRequestType & USBRQ_TYPE_MASK
fc20:	adiw	r26, 0x01	; 1
fc22:	ld	r18, X	; load RAM[r16+1] to r18
fc24:	and	r24, r24
fc26:	brne	usbFuncSetup
fc28:	rjmp	usbDrvrSetup

usbFuncSetup:	ldi	r24, 0x02	; 2
fc2c:	ldi	r25, 0x01	; 1
fc2e:	sts	usbMsgPtr_H, r25	; usbMsgPtr_H  0x80011c
fc32:	sts	usbMsgPtr_L, r24	; usbMsgPtr_L  0x80011b
fc36:	cpi	r18, 0x03	; 3
fc38:	brne	fc90
fc3a:	cli
fc3c:	movw	r26, r16
fc3e:	adiw	r26, 0x02	; 2
fc40:	ld	r30, X
fc42:	sbiw	r26, 0x02	; 2
fc44:	cpi	r30, 0x30	; 48
fc46:	brne	fc5c
fc48:	adiw	r26, 0x04	; 4
fc4a:	ld	r30, X
fc4c:	add	r30, r30
fc4e:	andi	r30, 0x06	; 6
fc50:	ldi	r31, 0x00	; 0
fc52:	ldi	r24, 0x21	; 33
fc54:	sts	0x0057, r24	;  0x800057
	out	RAMPZ, r23
fc58:	elpm	r30, Z
fc5a:	rjmp	fc86
fc5c:	cpi	r30, 0x50	; 80
fc5e:	breq	fc68
fc60:	cpi	r30, 0x58	; 88
fc62:	breq	fc68
fc64:	ldi	r30, 0x00	; 0
fc66:	rjmp	fc86
fc68:	andi	r30, 0x0F	; 15
fc6a:	lsr	r30
fc6c:	lsr	r30
fc6e:	lsr	r30
fc70:	movw	r26, r16
fc72:	adiw	r26, 0x03	; 3
fc74:	ld	r24, X
fc76:	lsr	r24
fc78:	lsr	r24
fc7a:	or	r30, r24
fc7c:	ldi	r31, 0x00	; 0
fc7e:	ldi	r24, 0x09	; 9
fc80:	sts	0x0057, r24	;  0x800057
	out	RAMPZ, r23
fc84:	elpm	r30, Z
fc86:	sei
fc88:	sts	0x0105, r30	;  0x800105
fc8c:	ldi	r25, 0x04	; 4
fc8e:	rjmp	fdae
fc90:	cpi	r18, 0x05	; 5
fc92:	brne	fc98
fc94:	ldi	r25, 0x01	; 1
fc96:	rjmp	fdae
fc98:	mov	r24, r18
fc9a:	subi	r24, 0x04	; 4
fc9c:	cpi	r24, 0x06	; 6
fc9e:	brcc	fccc
fca0:	movw	r30, r16
fca2:	ldd	r24, Z+2	; 0x02
fca4:	ldd	r25, Z+3	; 0x03
fca6:	sts	0x0109, r25	;  0x800109
fcaa:	sts	0x0108, r24	;  0x800108
fcae:	cpi	r18, 0x09	; 9
fcb0:	breq	fcd6
fcb2:	ldd	r25, Z+6	; 0x06
fcb4:	sts	0x010A, r25	;  0x80010a
fcb8:	ldd	r24, Z+5	; 0x05
fcba:	andi	r24, 0x02	; 2
fcbc:	sts	0x010B, r24	;  0x80010b
fcc0:	sts	0x010C, r18	;  0x80010c
fcc4:	sbrc	r19, 7
fcc6:	rjmp	fda4
fcc8:	ldi	r18, 0xFF	; 255
fcca:	rjmp	fda6
fccc:	cpi	r18, 0x02	; 2
fcce:	brne	fcd6
fcd0:	ldi	r24, 0x01	; 1
fcd2:	sts	0x0107, r24	;  0x800107
fcd6:	ldi	r25, 0x00	; 0
fcd8:	rjmp	fdae

usbDrvrSetup:	movw	r26, r16
fcdc:	adiw	r26, 0x02	; 
fcde:	ld	r24, X	; uchar   value = rq->wValue.bytes[0];
fce0:	sts	0x0116, r1	;  0x800116
fce4:	and	r18, r18
fce6:	brne	fcf4
fce8:	sts	0x0117, r1	;  0x800117
fcec:	ldi	r18, 0x16	; 22
fcee:	ldi	r19, 0x01	; 1
fcf0:	ldi	r25, 0x02	; 2
fcf2:	rjmp	fd9a
fcf4:	cpi	r18, 0x05	; 5
fcf6:	brne	fcfe
fcf8:	sts	usbNewDeviceAddr, r24	; usbNewDeviceAddr = value
fcfc:	rjmp	fd94
fcfe:	cpi	r18, 0x06	; 6
fd00:	brne	fd74
fd02:	movw	r30, r16
fd04:	ldd	r24, Z+3	; 0x03
fd06:	cpi	r24, 0x01	; 1
fd08:	brne	fd10
fd0a:	ldi	r24, lo8(usbDesc_dev)
fd0c:	ldi	r25, hi8(usbDesc_dev)
fd0e:	rjmp	fd18
fd10:	cpi	r24, 0x02	; 2
fd12:	brne	fd24
fd14:	ldi	r24, lo8(usbDesc_cfg)
fd16:	ldi	r25, hi8(usbDesc_cfg)
fd18:	sts	usbMsgPtr_H, r25	; usbMsgPtr_H  0x80011c
fd1c:	sts	usbMsgPtr_L, r24	; usbMsgPtr_L  0x80011b
fd20:	ldi	r25, 0x12	; 18
fd22:	rjmp	msgPtr_is_ROM
fd24:	cpi	r24, 0x03	; 3
fd26:	brne	fd6a
fd28:	movw	r26, r16
fd2a:	adiw	r26, 0x02	; 2
fd2c:	ld	r24, X
fd2e:	and	r24, r24
fd30:	brne	fd42
fd32:	ldi	r24, lo8(usbDesc_str0)
fd34:	ldi	r25, hi8(usbDesc_str0)
fd36:	sts	usbMsgPtr_H, r25	; usbMsgPtr_H  0x80011c
fd3a:	sts	usbMsgPtr_L, r24	; usbMsgPtr_L  0x80011b
fd3e:	ldi	r25, 0x04	; 4
fd40:	rjmp	msgPtr_is_ROM
fd42:	cpi	r24, 0x01	; 1
fd44:	brne	fd56
fd46:	ldi	r24, lo8(usbDesc_str1)
fd48:	ldi	r25, hi8(usbDesc_str1)
fd4a:	sts	usbMsgPtr_H, r25	; usbMsgPtr_H  0x80011c
fd4e:	sts	usbMsgPtr_L, r24	; usbMsgPtr_L  0x80011b
fd52:	ldi	r25, 0x1C	; 28
fd54:	rjmp	msgPtr_is_ROM
fd56:	cpi	r24, 0x02	; 2
fd58:	brne	fd6a
fd5a:	ldi	r24, lo8(usbDesc_str2)
fd5c:	ldi	r25, hi8(usbDesc_str2)
fd5e:	sts	usbMsgPtr_H, r25	; usbMsgPtr_H  0x80011c
fd62:	sts	usbMsgPtr_L, r24	; usbMsgPtr_L  0x80011b
fd66:	ldi	r25, 0x0E	; 14
fd68:	rjmp	msgPtr_is_ROM
fd6a:	ldi	r25, 0x00	; 0
msgPtr_is_ROM:	ldi	r24, 0x40	; 64
fd6e:	sts	usbMsgFlags, r24	; usbMsgFlags  = USB_FLG_MSGPTR_IS_ROM
fd72:	rjmp	fdae

fd74:	cpi	r18, 0x08	; 8
fd76:	brne	fd7e
fd78:	ldi	r18, 0x20	; 32
fd7a:	ldi	r19, 0x01	; 1
fd7c:	rjmp	fd90
fd7e:	cpi	r18, 0x09	; 9
fd80:	brne	fd88
fd82:	sts	0x0120, r24	;  0x800120
fd86:	rjmp	fd94
fd88:	cpi	r18, 0x0A	; 10
fd8a:	brne	fd94
fd8c:	ldi	r18, 0x16	; 22
fd8e:	ldi	r19, 0x01	; 1
fd90:	ldi	r25, 0x01	; 1
fd92:	rjmp	fd9a
fd94:	ldi	r18, 0x16	; 22
fd96:	ldi	r19, 0x01	; 1
fd98:	ldi	r25, 0x00	; 0
fd9a:	sts	usbMsgPtr_H, r19	; usbMsgPtr_H  0x80011c
fd9e:	sts	usbMsgPtr_L, r18	; usbMsgPtr_L  0x80011b
fda2:	rjmp	fdae
fda4:	mov	r18, r25
fda6:	ldi	r24, 0x80	; 128
fda8:	sts	usbMsgFlags, r24	; usbMsgFlags  0x800106
fdac:	rjmp	fdbe

fdae:	movw	r30, r16
fdb0:	ldd	r24, Z+7	; 0x07
fdb2:	and	r24, r24
fdb4:	brne	fdbc
fdb6:	ldd	r18, Z+6	; 0x06
fdb8:	cp	r18, r25
fdba:	brcs	fdbe
fdbc:	mov	r18, r25
fdbe:	sts	usbMsgLen, r18	; usbMsgLen  0x800101
fdc2:	rjmp	exitProcesRX

USBPID_OUT:	lds	r24, usbMsgFlags	; usbMsgFlags  0x800106
fdc8:	sbrs	r24, 7
fdca:	rjmp	exitProcesRX
fdcc:	lds	r24, 0x010A	;  0x80010a
fdd0:	mov	r15, r25
fdd2:	cp	r24, r25
fdd4:	brcc	fdd8
fdd6:	mov	r15, r24
fdd8:	sub	r24, r15
fdda:	sts	0x010A, r24	;  0x80010a
fdde:	eor	r14, r14
fde0:	and	r24, r24
fde2:	brne	fde8
fde4:	eor	r14, r14
fde6:	inc	r14
fde8:	lds	r24, 0x010C	;  0x80010c
fdec:	cpi	r24, 0x07	; 7
fdee:	brcc	fdf4
fdf0:	ldi	r19, 0x00	; 0
fdf2:	rjmp	fe90
fdf4:	movw	r28, r16
fdf6:	rjmp	fe10
fdf8:	lds	r24, 0x0108	;  0x800108
fdfc:	lds	r25, 0x0109	;  0x800109
fe00:	adiw	r24, 0x01	; 1
fe02:	sts	0x0109, r25	;  0x800109
fe06:	sts	0x0108, r24	;  0x800108
fe0a:	sbiw	r24, 0x01	; 1
fe0c:	ld	r22, Y+
fe0e:	rcall	ffde
fe10:	movw	r18, r28
fe12:	sub	r18, r16
fe14:	cp	r18, r15
fe16:	brcs	fdf8
fe18:	rjmp	fe96
fe1a:	lds	r30, 0x0108	;  0x800108
fe1e:	lds	r31, 0x0109	;  0x800109
fe22:	and	r30, r30
fe24:	brne	fe38
fe26:	cli
fe28:	ldi	r24, 0x03	; 3
fe2a:	sts	0x0057, r24	;  0x800057
	out	RAMPZ, r1
fe2e:	spm
fe30:	sei
fe32:	in	r0, SPMCSR	; 55
fe34:	sbrc	r0, 0
fe36:	rjmp	fe32
fe38:	subi	r19, 0xFE	; 254
fe3a:	cli
fe3c:	movw	r26, r16
fe3e:	ld	r24, X+
fe40:	ld	r25, X+
fe42:	movw	r16, r26
fe44:	ldi	r18, 0x01	; 1
fe46:	movw	r0, r24
fe48:	sts	0x0057, r18	;  0x800057
	out	RAMPZ, r1
fe4c:	spm
fe4e:	eor	r1, r1
fe50:	sei
fe52:	movw	r24, r30
fe54:	adiw	r24, 0x02	; 2
fe56:	sts	0x0109, r25	;  0x800109
fe5a:	sts	0x0108, r24	;  0x800108
fe5e:	and	r24, r24
fe60:	breq	fe72
fe62:	and	r14, r14
fe64:	breq	fe90
fe66:	cp	r19, r15
fe68:	brcs	fe90
fe6a:	lds	r24, 0x010B	;  0x80010b
fe6e:	and	r24, r24
fe70:	breq	fe90
fe72:	cli
fe74:	ldi	r24, 0x05	; 5
fe76:	sts	0x0057, r24	;  0x800057
	out	RAMPZ, r1
fe7a:	spm
fe7c:	sei
fe7e:	in	r0, SPMCSR	; 55
fe80:	sbrc	r0, 0
fe82:	rjmp	fe7e
fe84:	cli
fe86:	ldi	r24, 0x11	; 17
fe88:	sts	0x0057, r24	;  0x800057
	out	RAMPZ, r1
fe8c:	spm
fe8e:	sei
fe90:	cp	r19, r15
fe92:	brcc	fe96
fe94:	rjmp	fe1a
fe96:	and	r14, r14
fe98:	breq	exitProcesRX
fe9a:	sts	usbMsgLen, r1	; usbMsgLen  0x800101
; 	end of usbProcessRx

exitProcesRX:	sts	usbRxLen, r1	; usbRxLen = 0

skip_rx:	lds	r24, usbTxLen	; usbTxLen  0x800100
fea6:	sbrs	r24, 4
fea8:	rjmp	waitForSE0
feaa:	lds	r24, usbMsgLen	; usbMsgLen  0x800101
feae:	cpi	r24, 0xFF	; 255
feb0:	brne	usbBuildTx
feb2:	rjmp	waitForSE0

;	usbBuildTxBlock
usbBuildTx:	mov	r17, r24
feb6:	cpi	r24, 0x09	; 9
feb8:	brcs	febc
feba:	ldi	r17, 0x08	; 8
febc:	sub	r24, r17
febe:	sts	usbMsgLen, r24	; usbMsgLen  0x800101
fec2:	lds	r24, 0x010D	; usbTxBuf[0]  0x80010d
fec6:	ldi	r25, 0x88	; 136
fec8:	eor	r24, r25
feca:	sts	0x010D, r24	; usbTxBuf[0]  0x80010d
fece:	and	r17, r17
fed0:	brne	fed4
fed2:	rjmp	ff68
fed4:	lds	r24, usbMsgFlags	; usbMsgFlags  0x800106
fed8:	sbrs	r24, 7
feda:	rjmp	ff30
fedc:	lds	r24, 0x010A	;  0x80010a
fee0:	cp	r24, r17
fee2:	brcc	fee6
fee4:	mov	r17, r24
fee6:	sub	r24, r17
fee8:	sts	0x010A, r24	;  0x80010a
feec:	ldi	r28, 0x0E	; 14
feee:	ldi	r29, 0x01	; 1
fef0:	rjmp	ff20
fef2:	lds	r24, 0x010C	;  0x80010c
fef6:	lds	r30, 0x0108	;  0x800108
fefa:	lds	r31, 0x0109	;  0x800109
fefe:	cpi	r24, 0x07	; 7
ff00:	brcs	ff08
ff02:	movw	r24, r30
ff04:	rcall	ffce
ff06:	rjmp	ff0a
	out	RAMPZ, r23
ff08:	elpm	r24, Z
ff0a:	st	Y, r24
ff0c:	adiw	r28, 0x01	; 1
ff0e:	lds	r24, 0x0108	;  0x800108
ff12:	lds	r25, 0x0109	;  0x800109
ff16:	adiw	r24, 0x01	; 1
ff18:	sts	0x0109, r25	;  0x800109
ff1c:	sts	0x0108, r24	;  0x800108
ff20:	mov	r24, r17
ff22:	ldi	r25, 0x00	; 0
ff24:	subi	r24, 0xF2	; 242
ff26:	sbci	r25, 0xFE	; 254
ff28:	cp	r28, r24
ff2a:	cpc	r29, r25
ff2c:	brne	fef2
ff2e:	rjmp	ff64
ff30:	lds	r30, usbMsgPtr_L	; usbMsgPtr_L  0x80011b
ff34:	lds	r31, usbMsgPtr_H	; usbMsgPtr_H  0x80011c
ff38:	sbrs	r24, 6
ff3a:	rjmp	ff4e
ff3c:	mov	r25, r17
ff3e:	ldi	r26, 0x0E	; 14
ff40:	ldi	r27, 0x01	; 1
	out	RAMPZ, r23
ff42:	elpm	r24, Z
ff44:	st	X+, r24
ff46:	adiw	r30, 0x01	; 1
ff48:	subi	r25, 0x01	; 1
ff4a:	brne	ff42
ff4c:	rjmp	ff5c
ff4e:	mov	r25, r17
ff50:	ldi	r26, 0x0E	; 14
ff52:	ldi	r27, 0x01	; 1
ff54:	ld	r24, Z+
ff56:	st	X+, r24
ff58:	subi	r25, 0x01	; 1
ff5a:	brne	ff54
ff5c:	sts	usbMsgPtr_H, r31	; usbMsgPtr_H  0x80011c
ff60:	sts	usbMsgPtr_L, r30	; usbMsgPtr_L  0x80011b
ff64:	cpi	r17, 0x09	; 9
ff66:	brcc	ff80
ff68:	ldi	r24, 0x0E	; 14
ff6a:	ldi	r25, 0x01	; 1
ff6c:	mov	r22, r17
ff6e:	rcall	f930
ff70:	mov	r22, r17
ff72:	subi	r22, 0xFC	; 252
ff74:	cpi	r22, 0x0C	; 12
ff76:	breq	ff88
ff78:	ldi	r24, 0xFF	; 255
ff7a:	sts	usbMsgLen, r24	; usbMsgLen  0x800101
ff7e:	rjmp	ff88
ff80:	ldi	r24, 0xFF	; 255
ff82:	sts	usbMsgLen, r24	; usbMsgLen  0x800101
ff86:	ldi	r22, 0x1E	; 30
ff88:	sts	usbTxLen, r22	; usbTxLen  0x800100


waitForSE0:	ldi	r25, 0x14	; wait for SE0 to end (End of packet)
ff8e:	in	r24, PINB	; 3
ff90:	andi	r24, 0x0C	; 12
ff92:	brne	ffa0
ff94:	subi	r25, 0x01	; 1
ff96:	brne	ff8e 	; SE0 has ended

ff98:	sts	usbNewDeviceAddr, r1	; usbNewDeviceAddr  0x80011e
ff9c:	sts	usbDeviceAddr, r1	; usbDeviceAddr  0x800118

ffa0:	lds	r24, 0x0107	;  0x800107
ffa4:	and	r24, r24
ffa6:	brne	ffaa
ffa8:	rjmp	MAIN_LOOP
ffaa:	dec	r12
ffac:	breq	ffb0
ffae:	rjmp	MAIN_LOOP
ffb0:	dec	r13
ffb2:	breq	end_btld	; r12==r13==0 - escape main loop
ffb4:	rjmp	MAIN_LOOP

end_btld:	cbi	PORTB, 7	; 5
ffb8:	cbi	DDRB, 7	; 4
ffba:	cli
ffbc:	out	EIMSK, r1	; 29
ffbe:	sts	0x0069, r1	;  0x800069
ffc2:	ldi	r24, 0x01	; 1
ffc4:	out	MCUCR, r24	; 53
ffc6:	out	MCUCR, r1	; 53

NO_BTLD:	jmp	0	;  0x0
ffcc:	ret


ffce:	sbic	EECR, 1	; 31
ffd0:	rjmp	ffce
ffd2:	out	EEARH, r25	; 34
ffd4:	out	EEARL, r24	; 33
ffd6:	sbi	EECR, 0	; 31
ffd8:	eor	r25, r25
ffda:	in	r24, EEDR	; 32
ffdc:	ret


ffde:	mov	r18, r22
ffe0:	sbic	EECR, 1	; 31
ffe2:	rjmp	ffe0
ffe4:	out	EECR, r1	; 31
ffe6:	out	EEARH, r25	; 34
ffe8:	out	EEARL, r24	; 33
ffea:	out	EEDR, r18	; 32
ffec:	in	r0, SREG	; 63
ffee:	cli
fff0:	sbi	EECR, 2	; 31
fff2:	sbi	EECR, 1	; 31
fff4:	out	SREG, r0	; 63
fff6:	adiw	r24, 0x01	; 1
fff8:	ret


; WHILE1_END:	cli
; fffc:	rjmp	fffc
; .org 0x7fe
fffe:	.word	0xff5a	; ????


