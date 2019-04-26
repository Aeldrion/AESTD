# Written by Aeldrion, Minecraft 1.14
# Sets the count an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.count

function aestd:item/save
execute in minecraft:overworld store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count byte 1 run scoreboard players get @s aestd.item.count
function aestd:item/load
