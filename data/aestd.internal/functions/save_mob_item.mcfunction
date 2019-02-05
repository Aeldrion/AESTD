# Written by Aeldrion, Minecraft 19w05a
# Saves an item from a mob's inventory to the save chunk

execute if score @s aestd.item_slot matches -1 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s HandItems[0]
execute if score @s aestd.item_slot matches -2 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s HandItems[1]

execute if score @s aestd.item_slot matches 100 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s ArmorItems[0]
execute if score @s aestd.item_slot matches 101 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s ArmorItems[1]
execute if score @s aestd.item_slot matches 102 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s ArmorItems[2]
execute if score @s aestd.item_slot matches 103 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s ArmorItems[3]

execute if score @s aestd.item_slot matches -106 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem append from entity @s HandItems[1]
