# Written by Aeldrion, 18w50a
# Tames a wolf and sets its owner to a player with a given UUID (see aestd:player/get_uuid)
# Input: save chunk/aestd.PlayerUUID, output: sender's OwnerUUID

data modify entity @s OwnerUUID set from block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID
