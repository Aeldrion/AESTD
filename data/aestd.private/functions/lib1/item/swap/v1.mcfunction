# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

# Save item 1 to separate storage
function aestd1:item/save
data modify storage aestd:data Item set from storage aestd:data Item
# Load item 2 to slot 1
scoreboard players operation @s aestd.item.slot >< @s aestd.item.slot2
function aestd1:item/save
scoreboard players operation @s aestd.item.slot >< @s aestd.item.slot2
function aestd1:item/load
# Load item 1 to slot 2
data modify storage aestd:data Item set from storage aestd:data Item
scoreboard players operation @s aestd.item.slot >< @s aestd.item.slot2
function aestd1:item/load
scoreboard players operation @s aestd.item.slot >< @s aestd.item.slot2
data remove storage aestd:data Item