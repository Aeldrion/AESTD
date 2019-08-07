# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Places a block with a given numerical block ID on the executing entity's head slot (see aestd:block/get_block_id)
# Input: aestd.block.id

# WARNING: Does not work on players
execute if score @s aestd.block.id matches 0..199 run function aestd.internal:block_id/set_head/1
execute if score @s aestd.block.id matches 200..399 run function aestd.internal:block_id/set_head/2
execute if score @s aestd.block.id matches 400..599 run function aestd.internal:block_id/set_head/3
execute if score @s aestd.block.id matches 600..799 run function aestd.internal:block_id/set_head/4
