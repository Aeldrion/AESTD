# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Adds to the damage of an item (see aestd:item/save for slot index and details)
# Breaks the item if durability becomes negative.
# Negative inputs will repair the item instead of damaging it.
# Input: aestd.item.slot|aestd.item.dmg

# This function already saves the item, so aestd:item/save doesn't need to run
function aestd:item/get_max_durability
execute store result score #aestd.item.damage aestd.var run data get storage aestd:data Item.tag.Damage
execute store result storage aestd:data Item.tag.Damage byte 1 run scoreboard players operation #aestd.item.damage aestd.var += @s aestd.item.dmg
function aestd:item/load

execute if score #aestd aestd.item.dmg >= @s aestd.item.drblt run function aestd:item/break
