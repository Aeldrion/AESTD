# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Places a player head on the executing player's head slot, replacing any helmet the player may be wearing. The skin corresponds to the player name saved in the save chunk (see function aestd:player/get_name)

execute in minecraft:overworld run replaceitem block 1519204 2 0 container.0 minecraft:player_head{SkullOwner:{Name:""}}
execute in minecraft:overworld run data modify block 1519204 2 0 Items[0].tag.SkullOwner set from block 1519204 6 0 RecordItem.tag.aestd.PlayerName
execute in minecraft:overworld run loot replace entity @s armor.head 1 mine 1519204 2 0 minecraft:air{drop_contents:1b}
