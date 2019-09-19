# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Changes the damage of an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.dmg

function aestd:item/save
execute store result storage aestd:data Item.tag.Damage int 1 run scoreboard players get @s aestd.item.dmg
function aestd:item/load
