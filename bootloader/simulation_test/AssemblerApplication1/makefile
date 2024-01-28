# SIMULATION MAKEFILE

CC = avr-gcc

# MMCU = atmega1284pcd
MMCU = atmega644p

assemble:
	avr-as -mmcu=$(MMCU) main.asm -o AssemblerApplication1.o
	avr-ld AssemblerApplication1.o -T link_$(MMCU).ld -o AssemblerApplication1.elf -mavr51
	avr-objcopy -O ihex AssemblerApplication1.elf AssemblerApplication1.obj

clean:
	rm AssemblerApplication1.o AssemblerApplication1.elf AssemblerApplication1.hex