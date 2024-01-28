import re

file_name = "original_decompiled_labels.asm"

reg_labels = {
	"SREG"	:	"0x3f",
	"SPL"	:	"0x3d",
	"SPH"	:	"0x3e",
	"RAMPZ"	:	"0x3b",
	"SPMCSR":	"0x37",
	"MCUCR"	:	"0x35",
	"MCUSR"	:	"0x34",
	"SMCR"	:	"0x33",
	"OCDR"	:	"0x31",
	"ACSR"	:	"0x30",
	"SPDR"	:	"0x2e",
	"SPSR"	:	"0x2d",
	"SPCR"	:	"0x2c",
	"GPIOR2":	"0x2b",
	"GPIOR1":	"0x2a",
	"OCR0B"	:	"0x28",
	"OCR0A"	:	"0x27",
	"TCNT0"	:	"0x26",
	"TCCR0B":	"0x25",
	"TCCR0A":	"0x24",
	"GTCCR"	:	"0x23",
	"EEARH"	:	"0x22",
	"EEARL"	:	"0x21",
	"EEDR"	:	"0x20",
	"EECR"	:	"0x1f",
	"GPIOR0":	"0x1e",
	"EIMSK"	:	"0x1d",
	"EIFR"	:	"0x1c",
	"PCIFR"	:	"0x1b",
	"TIFR3"	:	"0x18",
	"TIFR2"	:	"0x17",
	"TIFR1"	:	"0x16",
	"TIFR0"	:	"0x15",
	"PORTD"	:	"0x0b",
	"DDRD"	:	"0x0a",
	"PIND"	:	"0x09",
	"PORTC"	:	"0x08",
	"DDRC"	:	"0x07",
	"PINC"	:	"0x06",
	"PORTB"	:	"0x05",
	"DDRB"	:	"0x04",
	"PINB"	:	"0x03",
	"PORTA"	:	"0x02",
	"DDRA"	:	"0x01",
	"PINA"	:	"0x00",
}

f = open(file_name,"r")
text = f.read()
f.close()

for reg_lab, reg_addr in reg_labels.items():
	match_pattern = r"(	(in|out|cbi|sbi|sbic|sbis)	.*){0}".format(reg_addr)
	replace_pattern = r"\g<1>{0}".format(reg_lab)

	text = re.sub(match_pattern, replace_pattern, text)



f = open(file_name,"w")
f.write(text)
f.close()