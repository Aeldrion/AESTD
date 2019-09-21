# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Saves an item to the storage (see aestd:item/load)
# The slot index is detailed below
# Input: aestd.item.slot, output: storage aestd:data Item

execute if entity @s[type=minecraft:player,tag=!aestd.item.container] run function aestd.private:inventory/save_player_item
execute if entity @s[type=minecraft:item,tag=!aestd.item.container] run function aestd.private:inventory/save_dropped_item
execute if entity @s[type=#aestd:mobs,tag=!aestd.item.container] run function aestd.private:inventory/save_mob_item
execute if entity @s[tag=aestd.item.container] run function aestd.private:inventory/save_container_item

data remove storage aestd:data Item.Slot

## If the executing entity is an item entity, it will be directly saved to the save chunk

## If the executing entity is a player, its aestd.item.slot score determines what slot the item will be saved from
# https://d1u5p3l4wpay3k.cloudfront.net/minecraft_gamepedia/b/b2/Items_slot_number.png?version=ef44f4a9d557e1d793780c5674ac76ec
# -1 mainhand
# -2 offhand
# 0-9 hotbar
# 10-35 inventory
# 100-101-102-103 armor (feet to head)

## If the executing entity is a mob, its aestd.item.slot score determines what slot the item will be saved from
# -1 mainhand
# -2 offhand
# 100-101-102-103 armor (feet to head)

## If the executing entity has the aestd.item.container tag, the item will be saved from a container's slot at context position instead. aestd.item.slot corresponds to the item's Slot tag (eg. 4 for the middle of a dropper)
