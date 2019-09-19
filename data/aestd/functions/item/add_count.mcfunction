# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Adds to the count of an item, limiting to the item's stack size (see aestd:item/save for slot index and details)
# Input: aestd.item.slot|aestd.item.count

function aestd:item/save
execute store result score #aestd.item.count aestd.var run data get storage aestd:data Item.Count
execute store result storage aestd:data Item.Count byte 1 run scoreboard players operation #aestd.item.count aestd.var += @s aestd.item.count
function aestd:item/load
