# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Removes all NBT data from an item (name, enchantments, lore, damage…) (see aestd:item/save for slot index)
# Input: aestd.item.slot

function aestd:item/save
execute in minecraft:overworld run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag
function aestd:item/load
