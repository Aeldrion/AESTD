# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

data modify storage aestd:data Item set value {id: "minecraft:air", Count: 1b}
execute if score @s aestd.block.id matches 0..199 run function aestd.private:lib1/item/set_block_id/tree1_1941
execute if score @s aestd.block.id matches 200..399 run function aestd.private:lib1/item/set_block_id/tree2_1941
execute if score @s aestd.block.id matches 400..599 run function aestd.private:lib1/item/set_block_id/tree3_1941
execute if score @s aestd.block.id matches 600..799 run function aestd.private:lib1/item/set_block_id/tree4_1941
function aestd1:item/load
