import re

file_name = "original_decompiled_labels"



f = open(file_name,"r")
text = f.read()
f.close()

match_pattern = r"(	(in|out)	.*)0x3e"
replace_pattern = r"\g<1>SREG"

re.sub(match_pattern, replace_pattern, text)

f = open(file_name,"w")
f.write(text)
f.close()