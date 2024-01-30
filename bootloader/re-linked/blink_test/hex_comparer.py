import intelhex as ih, os

compiled = ih.IntelHex("build/compiled.hex")
read = ih.IntelHex("build/readback.hex")

same = True
match_error = ""

compiled_bin = compiled.tobinarray()
read_bin = read.tobinarray()

for index, comp_byte in enumerate(compiled_bin):
	if( comp_byte == read_bin[index]):
		pass # all good
	else:
		same = False
		match_error = f"addr: {index}, comp: {comp_byte:02x}, read: {read_bin[index]:02x}"

if(same):
	print("files are equivalent, readback test passed")
else:
	print(f"error - files are dissimilar:\n{match_error}\nreformatted files written to compare folder")
	compiled.write_hex_file(r"compare\compiled.hex")
	read.write_hex_file(r"compare\read.hex")
