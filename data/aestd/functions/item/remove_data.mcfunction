# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Removes all NBT data from an item (name, enchantments, lore, damage…) (see aestd:item/save for slot index)
# Input: aestd.item.slot

function aestd:item/save
data remove storage aestd:data Item.tag
function aestd:item/load
