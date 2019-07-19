# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Adds to the damage of an item (see aestd:item/save for slot index)
# Input: aestd.item.dmg|aestd.item.slot, output: sender

# This function already saves the item, so aestd:item/save doesn't need to run
function aestd:item/get_max_durability
execute store result score #aestd aestd.item.dmg run data get block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Damage
execute store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Damage int 1 run scoreboard players operation #aestd aestd.item.dmg += @s aestd.item.dmg
function aestd:item/load

execute if score #aestd aestd.item.dmg >= @s aestd.item.drblt run function aestd:item/break
