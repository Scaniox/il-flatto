
CC = avr-gcc

# MMCU = atmega1284p
MMCU = atmega644p

assemble:
	avr-as -mmcu=$(MMCU) original_decompiled_labels.asm -o recompiled.o
	avr-ld recompiled.o -T link_$(MMCU).ld -o recompiled.elf -mavr51
	avr-objcopy -O ihex recompiled.elf recompiled.hex
	avrdude -c um232h -p $(MMCU) -v -U flash:w:"C:\Users\alexl\projects\il-flatto\bootloader\re-linked\recompiled.hex":i 

disassemble:
	avr-objdump  -m avr5 -D ORIGINAL_atmega644pa-12mhz_2048.hex > original_decompiled.dump

clean:
	rm recompiled.o recompiled.elf recompiled.hex