# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Changes an item to a block item with a given block ID (see aestd:item/save for slot index and aestd:block/get_block_id)
# Input: aestd.item.slot|aestd.block.id

function aestd:item/save
execute if score @s aestd.block.id matches 0..199 run function aestd.internal:block_id/set_item/1
execute if score @s aestd.block.id matches 200..399 run function aestd.internal:block_id/set_item/2
execute if score @s aestd.block.id matches 400..599 run function aestd.internal:block_id/set_item/3
execute if score @s aestd.block.id matches 600..799 run function aestd.internal:block_id/set_item/4
function aestd:item/load
