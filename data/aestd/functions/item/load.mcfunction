# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads an item to the sender's inventory (see aestd:item/save)
# Input: save chunk/aestd.SavedItem, output: sender|aestd.item.slot

execute if entity @s in minecraft:overworld run data remove block 1519204 2 0 Items
execute if entity @s in minecraft:overworld run data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedItem

execute if entity @s[type=minecraft:player,tag=!aestd.item.container] in minecraft:overworld run function aestd.internal:load_player_item
execute if entity @s[type=minecraft:item,tag=!aestd.item.container] in minecraft:overworld run function aestd.internal:load_dropped_item
execute if entity @s[type=#aestd:mobs,tag=!aestd.item.container] in minecraft:overworld run function aestd.internal:load_mob_item
execute if entity @s[tag=aestd.item.container] in minecraft:overworld run function aestd.internal:load_container_item

## If the sender is an item entity, its data will be changed directly from the save chunk

## If the sender is a player, its aestd.item.slot score determines in what slot the item will be loaded
# https://d1u5p3l4wpay3k.cloudfront.net/minecraft_gamepedia/b/b2/Items_slot_number.png?version=ef44f4a9d557e1d793780c5674ac76ec
# -1 mainhand
# -2 offhand
# 0-9 hotbar
# 10-35 inventory
# 100-101-102-103 armor (feet to head)

## If the sender is a mob, its aestd.item.slot score determines in what slot the item will be loaded
# -1 mainhand
# -2 offhand
# 100-101-102-103 armor (feet to head)

## If the sender has the aestd.item.container tag, the item will be loaded in a container's slot at context position instead. aestd.item.slot corresponds to the item's Slot tag (eg. 4 for the middle of a dropper)
