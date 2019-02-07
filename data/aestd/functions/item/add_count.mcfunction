# Written by Aeldrion, Minecraft 19w05a
# Adds to the count an item (see aestd:item/save for slot index)
# Input: sender|aestd.item_slot|aestd.item_count

function aestd:item/save
execute store result score @s aestd.var run data get block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count
scoreboard players operation @s aestd.var += @s aestd.item_count
execute store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count byte 1 run scoreboard players get @s aestd.var
function aestd:item/load
