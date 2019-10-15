# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

# Saves an item from a mob's inventory to storage

execute if score @s aestd.item.slot matches -1 run data modify storage aestd:data Item set from entity @s HandItems[0]
execute if score @s aestd.item.slot matches -2 run data modify storage aestd:data Item set from entity @s HandItems[1]

execute if score @s aestd.item.slot matches 100 run data modify storage aestd:data Item set from entity @s ArmorItems[0]
execute if score @s aestd.item.slot matches 101 run data modify storage aestd:data Item set from entity @s ArmorItems[1]
execute if score @s aestd.item.slot matches 102 run data modify storage aestd:data Item set from entity @s ArmorItems[2]
execute if score @s aestd.item.slot matches 103 run data modify storage aestd:data Item set from entity @s ArmorItems[3]

execute if score @s aestd.item.slot matches -106 run data modify storage aestd:data Item set from entity @s HandItems[1]
