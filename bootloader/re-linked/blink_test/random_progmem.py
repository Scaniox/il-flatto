import random

f = open("progmem_array.h", "w")

f_str = """
//AUTO_GENERATED
#include <avr/pgmspace.h>
PROGMEM const int data[] = {
"""

for _ in range(100):
	f_str += f"	0x{random.randbytes(2).hex()},\n"

f_str += "};\n"

f.write(f_str)
f.close()
