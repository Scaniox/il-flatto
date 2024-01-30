# MMCU = atmega1284p
MMCU = atmega644p

name = blink
CC = avr-gcc
# FLAGS = -mmcu=atmega644p -DF_CPU=12000000 -Wall -Os -Wl,--section-start=.text=0x7C00
FLAGS = -mmcu=atmega644p -DF_CPU=12000000 -Wall -Os -Wl,-Tlink.ld

test: build\compiled.hex build\readback.hex
	python hex_comparer.py

build\readback.hex: upload
	echo "enter bootloader"
	sleep 10
	avrdude -c usbasp  -p $(MMCU) -V -U flash:r:"build\readback.hex":i

upload: build\compiled.hex
	avrdude -c usbasp  -p $(MMCU) -V -U flash:w:"build\compiled.hex":i 

build\compiled.hex: build\$(name).elf
	avr-objcopy -O ihex build\$(name).elf build\compiled.hex

build\$(name).elf: $(name).c progmem_array.h
	$(CC) $(FLAGS) $(name).c -o build\$(name).elf

progmem_array.h: FORCE
	python random_progmem.py

clean:
	rm build\$(name).hex build\$(name).elf

FORCE: ;