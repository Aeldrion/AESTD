# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Places a player head with a player's name on the entity's head slot (see function aestd:player/get_name)
# Input: save chunk/aestd.PlayerName, output: sender's head slot

# WARNING: Does not work on players

data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}}
execute in minecraft:overworld run data modify entity @s ArmorItems[3].tag.SkullOwner set from block 1519204 6 0 RecordItem.tag.aestd.PlayerName
