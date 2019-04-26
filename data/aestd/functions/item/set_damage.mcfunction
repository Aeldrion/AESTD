# Written by Aeldrion, Minecraft 1.14
# Changes the damage of an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.dmg

function aestd:item/save
execute in minecraft:overworld store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Damage int 1 run scoreboard players get @s aestd.item.dmg
function aestd:item/load
