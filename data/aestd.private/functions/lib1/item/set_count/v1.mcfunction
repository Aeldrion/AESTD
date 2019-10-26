# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

function aestd1:item/save
execute store result storage aestd:data Item.Count byte 1 run scoreboard players get @s aestd.item.count
function aestd1:item/load
