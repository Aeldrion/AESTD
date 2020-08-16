# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

function aestd1:item/save
execute store result storage aestd:data Item.tag.Damage int 1 run scoreboard players get @s aestd.item.dmg
function aestd1:item/load
