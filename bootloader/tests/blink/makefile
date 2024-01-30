
name = blink
CC = avr-gcc
# FLAGS = -mmcu=atmega644p -DF_CPU=12000000 -Wall -Os -Wl,--section-start=.text=0x7C00
FLAGS = -mmcu=atmega644p -DF_CPU=12000000 -Wall -Os -Wl,-Tlink.ld

output.hex: $(name).elf
	avr-objcopy -O ihex $(name).elf $(name).hex


$(name).elf: $(name).c
	$(CC) $(FLAGS) $(name).c -o $(name).elf

clean:
	rm $(name).hex $(name).elf