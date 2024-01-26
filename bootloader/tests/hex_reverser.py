## completely unneeded - it was found that the rjmp just so happens to look like a jmp with endianness swapped 
## that confused me enough to write this

from pathlib import Path as p

#https://stackoverflow.com/questions/62280009/8-bit-line-checksum-calculator-for-intel-hex
def intel_checksum(value):
  #Remove the : from the beginning of line
  value = value.replace(":","")
  sum = 0
  #Iterate over the bytes in the hex string
  #and add each byte to sum
  for i in range(0,int(len(value)/2)):
      byte = value[i*2:(i*2)+2]
      sum += int("0x" + byte,16)
  #Find the checksum using 2s compliment
  int_checksum = ((sum ^ 0xFF) + 1) & 0xFF #https://stackoverflow.com/a/62280234/2393763
  #Return a string, formatted as 2 characters without leading "0x"
  return "{0:0{1}x}".format(int_checksum,2)


def process_line(line):
    len_bytes = int(line[1:3], base=16)
    addr = line[3:7]
    type = line[7:9]
    body = line[9:-3]

    if (type == "00"):
        outline = f":{len_bytes:02x}{addr}{type}"

        for word in [body[i:i+4] for i in range(0, len(body), 4)]:
            outline += word[::-1]
        
        outline += intel_checksum(outline)
    else:
        outline = line

    return outline

infile = p(input("in file: "))

if(not infile.exists()):
    err = f"file: {infile.as_posix()} doesn't exist"
    raise FileNotFoundError(err)

outfile = p(infile.stem + "_reverse.hex")

if (outfile.exists):
    print(f"{outfile.as_posix()} already exists, removing")

outwrapper = outfile.open("w")

for line in infile.open("r").readlines():
    outwrapper.write(process_line(line)+"\n")

outwrapper.close()
print(f"finished processing:\n{outfile.as_posix()}")
