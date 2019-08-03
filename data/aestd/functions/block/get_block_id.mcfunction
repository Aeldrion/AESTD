# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the numerical block ID of a block. This ID corresponds to the protocol_id found in registries.json.
# Input: context, output: aestd.block.id

execute if block ~ ~ ~ #aestd.internal:block_id_tree/quarter_1 run function aestd.internal:block_id/get/1
execute if block ~ ~ ~ #aestd.internal:block_id_tree/quarter_2 run function aestd.internal:block_id/get/2
execute if block ~ ~ ~ #aestd.internal:block_id_tree/quarter_3 run function aestd.internal:block_id/get/3
execute if block ~ ~ ~ #aestd.internal:block_id_tree/quarter_4 run function aestd.internal:block_id/get/4

# Note: minimum optimization has been done with this tree but it should go deeper because two hundred commands for getting a block's ID is a lot
