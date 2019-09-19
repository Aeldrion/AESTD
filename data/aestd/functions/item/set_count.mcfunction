# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets the count an item (see aestd:item/save for slot index)
# Input: aestd.item.slot|aestd.item.count

function aestd:item/save
execute store result storage aestd:data Item.Count byte 1 run scoreboard players get @s aestd.item.count
function aestd:item/load
