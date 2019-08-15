# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Tames the executing wolf and sets its owner to a player with a given UUID (see aestd:player/get_uuid)
# Input: save chunk (1519204 6 0 RecordItem.tag.aestd.PlayerUUID)

execute in minecraft:overworld run data modify entity @s OwnerUUID set from block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID
