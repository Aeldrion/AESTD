# Written by Aeldrion, Minecraft 19w05a
# Loads an item to the sender's inventory (see aestd:item/save)
# Input: save chunk/aestd.SavedItem, output: sender|aestd.item_slot

data remove block 1519204 2 0 Items
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedItem
execute if entity @s[type=minecraft:player] run function aestd.internal:load_player_item
execute unless entity @s[type=minecraft:player] run function aestd.internal:load_mob_item

# aestd.item_slot determines what slot the item will be saved to
# https://d1u5p3l4wpay3k.cloudfront.net/minecraft_gamepedia/b/b2/Items_slot_number.png?version=ef44f4a9d557e1d793780c5674ac76ec
# -1 mainhand
# -2 offhand
# 0-9 hotbar
# 10-35 inventory
# 100-101-102-103 armor (feet to head)
# This works for mobs and for players
