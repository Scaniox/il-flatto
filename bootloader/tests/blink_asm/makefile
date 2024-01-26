MMCU = atmega1284p
# MMCU = atmega644p

assemble:
	avr-as -mmcu=$(MMCU) blink_asm.asm -o blink_asm.o
	avr-ld blink_asm.o -T link.ld -o blink_asm.elf -mavr51
	avr-objcopy -O ihex blink_asm.elf blink_asm.hex
	avrdude -c um232h -p $(MMCU) -v -U flash:w:"C:\Users\alexl\projects\il-flatto\bootloader\tests\blink_asm\blink_asm.hex":i 

