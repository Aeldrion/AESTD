# Written by Aeldrion, Minecraft 19w05a
# Adds to the damage of an item (see aestd:item/save for slot index)
# Input: aestd.item_dmg|aestd.item_slot, output: sender

function aestd:item/save
execute store result score #aestd aestd.item_dmg run data get block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Damage
execute store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Damage int 1 run scoreboard players operation #aestd aestd.item_dmg += @s aestd.item_dmg
function aestd:item/load

function aestd:item/get_max_durability
execute if score #aestd aestd.item_dmg >= @s aestd.item_drblt run function aestd:item/break
