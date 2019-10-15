# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

function aestd1:item/save
execute store result score #aestd.item.custom_model_data aestd.var run data get storage aestd:data Item.tag.CustomModelData
execute store result storage aestd:data Item.tag.CustomModelData byte 1 run scoreboard players operation #aestd.item.custom_model_data aestd.var += @s aestd.item.cmd
function aestd1:item/load
