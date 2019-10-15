# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

function aestd1:item/save
execute store result score #aestd.item.count aestd.var run data get storage aestd:data Item.Count
execute store result storage aestd:data Item.Count byte 1 run scoreboard players operation #aestd.item.count aestd.var += @s aestd.item.count
function aestd1:item/load
