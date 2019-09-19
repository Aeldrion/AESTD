# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Places a player head on the executing entity's head slot, replacing any helmet the entity may be wearing. The skin corresponds to the player name saved in the save chunk (see function aestd:player/get_name)
# For players, the player function alternative (aestd:player/set_head) should be more efficient
# Input: storage aestd:data PlayerName tag

data modify entity @s[type=!minecraft:player] ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}}
execute in minecraft:overworld run data modify entity @s[type=!minecraft:player] ArmorItems[3].tag.SkullOwner set from storage aestd:data PlayerName
execute if entity @s[type=minecraft:player] run function aestd:player/set_head
