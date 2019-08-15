# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Adds to the count of an item, limiting to the item's stack size (see aestd:item/save for slot index and details)
# Input: aestd.item.slot|aestd.item.count

function aestd:item/save
execute in minecraft:overworld store result score @s aestd.var run data get block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count
scoreboard players operation @s aestd.var += @s aestd.item.count
execute in minecraft:overworld store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count byte 1 run scoreboard players get @s aestd.var
function aestd:item/load
