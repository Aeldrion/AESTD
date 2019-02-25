# Written by Aeldrion, Minecraft 19w05a
# Removes all NBT data from an item (see aestd:item/save for slot index)
# Input: sender|aestd.item_slot

function aestd:item/save
execute in minecraft:overworld run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag
function aestd:item/load
