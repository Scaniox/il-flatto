; can be used to spot if the reset vector is where it is expected to be

.org 0x1F700
	jmp TRAP

.org 0x1F800
RESET:
	ldi r24, 0x11
	sts 0x24, r24 ; ddrb = 0x11
	sts 0x25, r24 ; portb = 0x11

STOP:
	rjmp STOP


TRAP:
	lds r24, 0x25
	com r24
	sts 0x25, r24 ; portb = !portB

	ldi r24, 0xff
	ldi r25, 0xff
	ldi r26, 100

WAIT1:
	subi r24, 1
	BRNE WAIT1
	ldi r24, 0xff
	subi r25, 1
	BRNE WAIT1
	ldi r25, 0xff
	subi r26, 1
	BRNE WAIT1
	

	rjmp TRAP

	

