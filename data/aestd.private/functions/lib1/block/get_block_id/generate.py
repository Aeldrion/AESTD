import math
import urllib.request
import json

# Loading blocks from Arcensoth's mcdata GitHub repository
data = urllib.request.urlopen("https://raw.githubusercontent.com/Arcensoth/mcdata/master/processed/reports/blocks/data.min.json")
blocks = list(json.loads(data.readline()).keys())
version = "1.16.2"

# This file is conveniently made available as part of the AESTD data pack, because I am cool and nice.
# Please don't judge my code too harshly. Thanks.

with open("v2.mcfunction", mode="w") as file:
	file.write("# Generated for version " + version + "\n")
	file.write("scoreboard players set #block_found aestd 0\n")
	
	branches_count = math.ceil(len(blocks)/100)
	for i in range(branches_count):
		file.write("execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/{v}_{n} run function aestd.private:lib1/block/get_block_num_id/{v}_{n}\n".format(v=version, n=i))

		with open("{v}_{n}.mcfunction".format(v=version, n=i), mode="w") as branch:
			branch.write("# Generated for version " + version + "\n")

			branch_blocks = blocks[i*100 : min((i+1)*100, len(blocks))]
			for j in range(len(branch_blocks)):
				branch.write("execute if block ~ ~ ~ {block} run data modify storage aestd:out BlockState.Name set value \"{block}\"\n".format(block=branch_blocks[j]))
				
			with open("tags/{v}_{n}.json".format(v=version, n=i), mode="w") as tag:
				tag.write('{\n	"values": [\n		"' + '",\n		"'.join(branch_blocks) + '"\n	]\n}')

	file.write("execute if score #block_found aestd matches 0 run scoreboard players set $block.id aestd -1")
