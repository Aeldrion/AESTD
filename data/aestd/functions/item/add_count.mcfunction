# Written by Aeldrion, Minecraft 1.14
# Adds to the count an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.count

function aestd:item/save
execute in minecraft:overworld store result score @s aestd.var run data get block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count
scoreboard players operation @s aestd.var += @s aestd.item.count
execute in minecraft:overworld store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count byte 1 run scoreboard players get @s aestd.var
function aestd:item/load
