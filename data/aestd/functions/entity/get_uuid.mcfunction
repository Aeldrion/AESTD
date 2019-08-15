# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the UUID least/most pair of the executing entity to the save chunk's data item
# The entity whose UUID was last saved has the aestd.uuid_selected tag
# This UUID can then be used in aestd:entity/anger, aestd:entity/damage, aestd:entity/projectile/set_owner_uuid and aestd:entity/wolf/tame
# Output: save chunk (1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast|RecordItem.tag.aestd.EntityUUIDMost)

execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast set from entity @s UUIDLeast
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDMost set from entity @s UUIDMost
tag @e[tag=aestd.uuid_selected,limit=1] remove aestd.uuid_selected
tag @s add aestd.uuid_selected

# Note: the aestd:player/get_uuid function retrieves the full length string UUID, which is only used by aestd:entity/wolf/tame
