# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the sender's owner to an entity with a given UUID (see aestd:entity/get_uuid)
# Note: This is for projectiles only. For animals, use aestd:entity/tame

execute unless data entity @s OwnerUUIDLeast run data merge entity @s {OwnerUUIDLeast:0L,OwnerUUIDMost:0L}
execute in minecraft:overworld run data modify entity @s OwnerUUIDLeast set from block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast
execute in minecraft:overworld run data modify entity @s OwnerUUIDMost set from block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDMost
