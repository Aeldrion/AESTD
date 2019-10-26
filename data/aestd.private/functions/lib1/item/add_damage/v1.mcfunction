# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# This function already saves the item, so aestd:item/save doesn't need to run
function aestd1:item/get_max_durability
execute store result score #aestd.item.damage aestd.var run data get storage aestd:data Item.tag.Damage
execute store result storage aestd:data Item.tag.Damage byte 1 run scoreboard players operation #aestd.item.damage aestd.var += @s aestd.item.dmg
function aestd1:item/load

execute if score #aestd aestd.item.dmg >= @s aestd.item.drblt run function aestd1:item/break
