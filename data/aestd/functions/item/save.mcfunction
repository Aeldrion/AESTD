# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves an item to the save chunk (see aestd:item/load)
# Input: sender|aestd.item.slot, output: save chunk/aestd.SavedItem

execute if entity @s in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem set value {id:"minecraft:air",Count:1b,Slot:0b}

execute if entity @s[type=minecraft:player,tag=!aestd.item.container] in minecraft:overworld run function aestd.internal:save_player_item
execute if entity @s[type=minecraft:item,tag=!aestd.item.container] in minecraft:overworld run function aestd.internal:save_dropped_item
execute if entity @s[type=#aestd:mobs,tag=!aestd.item.container] in minecraft:overworld run function aestd.internal:save_mob_item
execute if entity @s[tag=aestd.item.container] run function aestd.internal:save_container_item

execute if entity @s in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Slot set value 0b

## If the sender is an item entity, it will be directly saved to the save chunk

## If the sender is a player, its aestd.item.slot score determines what slot the item will be saved from
# https://d1u5p3l4wpay3k.cloudfront.net/minecraft_gamepedia/b/b2/Items_slot_number.png?version=ef44f4a9d557e1d793780c5674ac76ec
# -1 mainhand
# -2 offhand
# 0-9 hotbar
# 10-35 inventory
# 100-101-102-103 armor (feet to head)

## If the sender is a mob, its aestd.item.slot score determines what slot the item will be saved from
# -1 mainhand
# -2 offhand
# 100-101-102-103 armor (feet to head)

## If the sender has the aestd.item.container tag, the item will be saved from a container's slot at context position instead. aestd.item.slot corresponds to the item's Slot tag (eg. 4 for the middle of a dropper)
