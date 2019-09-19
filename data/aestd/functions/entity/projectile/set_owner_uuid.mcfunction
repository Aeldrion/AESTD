# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the executing entity's owner to an entity with a given UUID (see aestd:entity/get_uuid)
# Input: save chunk (1519204 6 0 RecordItem.tag.aestd.OwnerUUIDLeast|RecordItem.tag.aestd.OwnerUUIDMost)

execute unless data entity @s OwnerUUIDLeast run data merge entity @s {OwnerUUIDLeast:0L,OwnerUUIDMost:0L}
execute in minecraft:overworld run data modify entity @s OwnerUUIDLeast set from storage aestd:data UUID.Least
execute in minecraft:overworld run data modify entity @s OwnerUUIDMost set from storage aestd:data UUID.Most
