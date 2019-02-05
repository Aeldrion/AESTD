# Written by Aeldrion, Minecraft 19w05a
# Saves an item to the save chunk (see aestd:item/load)
# Input: sender|aestd.item_slot, output: save chunk/aestd.SavedItem

data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem set value {id:"minecraft:air",Count:1b,Slot:0b}
execute if entity @s[type=minecraft:player] run function aestd.internal:save_player_item
execute unless entity @s[type=minecraft:player] run function aestd.internal:save_mob_item
data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.Slot set value 0b

# aestd.item_slot determines what slot the item will be saved from
# https://d1u5p3l4wpay3k.cloudfront.net/minecraft_gamepedia/b/b2/Items_slot_number.png?version=ef44f4a9d557e1d793780c5674ac76ec
# -1 mainhand
# -2 offhand
# 0-9 hotbar
# 10-35 inventory
# 100-101-102-103 armor (feet to head)
# This works for mobs and for players
