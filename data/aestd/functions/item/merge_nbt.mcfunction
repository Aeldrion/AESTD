# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Merges NBT from storage to the 'tag' tag of an item (see aestd:item/save for slot index and details)
# This can be used to add custom tags as well as default vanilla tags
# Input: aestd.item.slot|storage aestd:input nbt tag

function aestd:item/save
data modify storage aestd:data Item.tag merge from storage aestd:input nbt
function aestd:item/load
