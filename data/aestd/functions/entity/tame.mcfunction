# Written by Aeldrion, 19w05a
# Tames a wolf and sets its owner to a player with a given UUID (see aestd:player/get_uuid)
# Input: save chunk/aestd.PlayerUUID, output: sender's OwnerUUID

execute in minecraft:overworld run data modify entity @s OwnerUUID set from block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID
