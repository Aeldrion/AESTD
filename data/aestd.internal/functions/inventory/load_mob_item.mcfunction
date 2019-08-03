# Written by Aeldrion, Minecraft 1.14
# Loads an item to a mob's inventory from the save chunk

execute if score @s aestd.item.slot matches -1 run data modify entity @s HandItems[0] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem
execute if score @s aestd.item.slot matches -2 run data modify entity @s HandItems[1] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem

execute if score @s aestd.item.slot matches 100 run data modify entity @s ArmorItems[0] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem
execute if score @s aestd.item.slot matches 101 run data modify entity @s ArmorItems[1] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem
execute if score @s aestd.item.slot matches 102 run data modify entity @s ArmorItems[2] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem
execute if score @s aestd.item.slot matches 103 run data modify entity @s ArmorItems[3] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem

execute if score @s aestd.item.slot matches -106 run data modify entity @s HandItems[1] set from block 1519204 6 0 RecordItem.tag.aestd.SavedItem
