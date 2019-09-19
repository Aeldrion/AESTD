# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets the NBT of the 'tag' tag of an item (see aestd:item/save for slot index)
# Input: aestd.item.slot|storage aestd:input nbt tag

function aestd:item/save
data modify storage aestd:data Item.tag set from storage aestd:input nbt
function aestd:item/load
