# Written by Aeldrion, Minecraft 1.14
# Removes all NBT data from an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot

function aestd:item/save
execute in minecraft:overworld run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag
function aestd:item/load
