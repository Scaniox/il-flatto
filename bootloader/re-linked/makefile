# RE-LINKED MAKEFILE

CC = avr-gcc

# MMCU = atmega1284p
MMCU = atmega644p

recompiled.o: original_decompiled_labels.asm
	avr-as -mmcu=$(MMCU) original_decompiled_labels.asm -o recompiled.o

recompiled.elf: recompiled.o
	avr-ld recompiled.o -T link_$(MMCU).ld -o recompiled.elf -mavr51

recompiled.hex: recompiled.elf
	avr-objcopy -O ihex recompiled.elf recompiled.hex

assemble: recompiled.hex

upload: recompiled.hex
	avrdude -c um232h -p $(MMCU) -v -U flash:w:"C:\Users\alexl\projects\il-flatto\bootloader\re-linked\recompiled.hex":i 

disassemble:
	avr-objdump  -m avr5 -D ORIGINAL_atmega644pa-12mhz_2048.hex > original_decompiled.dump

clean:
	rm recompiled.o recompiled.elf recompiled.hex