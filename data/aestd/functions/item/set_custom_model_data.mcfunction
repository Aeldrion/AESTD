# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Changes the custom model data field of an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.cmd

function aestd:item/save
execute store result storage aestd:data Item.tag.CustomModelData int 1 run scoreboard players get @s aestd.item.cmd
function aestd:item/load
