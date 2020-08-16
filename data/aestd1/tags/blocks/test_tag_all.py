# Use this script to see a list of blocks that should be in #aestd1:all but aren't
# Includes leaves because it's a bit trickier to check for the #minecraft:leaves tag since it's not part of AESTD but it's all good
# I will use this for future maintenance but am making this available 

import urllib.request
import json

def get_blocks(tags):
	values = []
	for tag in tags:
		with open(tag+".json", mode="r") as file:
			file_contents = json.loads("".join(file.readlines()))
			values += file_contents["values"]
	return values

# Loading blocks from Arcensoth's mcdata GitHub repository
data = urllib.request.urlopen("https://raw.githubusercontent.com/Arcensoth/mcdata/master/processed/reports/blocks/blocks.min.json")
blocks = json.loads(data.readline()).keys()

# Loading blocks from AESTD block tags
blocks_in_tags = get_blocks(["opaque", "cubic", "noncubic", "air", "glass"])

# Comparing
print("------------")
print("The following blocks are in registries but cannot be found in block tags:")
count = 0
for block in blocks:
	if block not in blocks_in_tags:
		print(" " + block)
		count += 1
if count == 0:
	print(" (none)")
else:
	print("Total:", count)
	print("* Ignoring leaves because the default tag is used")

print("------------")
print("The following blocks are in block tags but do not exist:")
count = 0
for block in blocks_in_tags:
	if block[0] != "#" and block not in blocks:
		print(" " + block)
		count += 1
if count == 0:
	print(" (none)")
else:
	print("Total:", count)