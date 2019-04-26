# Written by Aeldrion, Minecraft 1.14
# Sets the player head at context position to a player's name (see function aestd:player/get_name)
# Input: save chunk/aestd.PlayerName, output: context/Owner

data modify block ~ ~ ~ Owner.Name set from block 1519204 6 0 RecordItem.tag.aestd.PlayerName
