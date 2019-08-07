# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Places a player head on executing entity's head slot, replacing any helmet the entity may be wearing. The skin corresponds to the player name saved in the save chunk (see function aestd:player/get_name)
# For players, the player function alternative (aestd:player/set_head) should be more efficient
# Input: save chunk (1519204 6 0 RecordItem.tag.aestd.PlayerName)

data modify entity @s[type=!minecraft:player] ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}}
execute in minecraft:overworld run data modify entity @s[type=!minecraft:player] ArmorItems[3].tag.SkullOwner set from block 1519204 6 0 RecordItem.tag.aestd.PlayerName
execute if entity @s[type=minecraft:player] run function aestd:player/set_head
