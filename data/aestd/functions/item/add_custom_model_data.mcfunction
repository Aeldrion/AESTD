# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Adds a value to the custom model data field of an item (see aestd:item/save for slot index and details)
# Input: aestd.item.slot|aestd.item.cmd

function aestd:item/save
execute store result score #aestd.item.custom_model_data aestd.var run data get storage aestd:data Item.tag.CustomModelData
execute store result storage aestd:data Item.tag.CustomModelData byte 1 run scoreboard players operation #aestd.item.custom_model_data aestd.var += @s aestd.item.cmd
function aestd:item/load
