# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Merges NBT to the 'tag' tag of an item (see aestd:item/save for slot index and details)
# Input: aestd.item.slot|save chunk (1519204 6 0 RecordItem.tag.aestd.nbt)

function aestd:item/save
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag merge from block 1519204 6 0 RecordItem.tag.aestd.nbt
function aestd:item/load
