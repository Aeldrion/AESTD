# Written by Aeldrion, Minecraft 19w05a
# Sets the count an item (see aestd:item/save for slot index)
# Input: sender|aestd.item_slot|aestd.item_count

function aestd:item/save
execute store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Count byte 1 run scoreboard players get @s aestd.item_count
function aestd:item/load
