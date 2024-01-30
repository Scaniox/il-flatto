# RE-LINKED MAKEFILE

CC = avr-gcc

MMCU = atmega1284p
# MMCU = atmega644p

build\recompiled.o: original_decompiled_labels.asm clean
	avr-as -mmcu=$(MMCU) original_decompiled_labels.asm -o build\recompiled.o

build\recompiled.elf: build\recompiled.o
	avr-ld build\recompiled.o -T linkerscripts\link_$(MMCU).ld -o build\recompiled.elf -mavr51

build\recompiled.hex: build\recompiled.elf
	avr-objcopy -O ihex build\recompiled.elf build\recompiled.hex

assemble: build\recompiled.hex

upload: build\recompiled.hex
	avrdude -c um232h -p $(MMCU) -U flash:w:"C:\Users\alexl\projects\il-flatto\bootloader\re-linked\build\recompiled.hex":i 

test: upload
	sleep 1
	avrdude -c usbasp -p $(MMCU)  -U flash:w:"C:\Users\alexl\projects\il-flatto\bootloader\tests\blink\blink.hex":i 

disassemble:
	avr-objdump  -m avr5 -D ORIGINAL_atmega644pa-12mhz_2048.hex > original_decompiled.dump

clean:
	rm build\recompiled.o build\recompiled.elf build\recompiled.hex || true