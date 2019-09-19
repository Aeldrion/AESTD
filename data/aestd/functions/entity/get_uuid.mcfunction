# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Saves the UUID least/most pair of the executing entity to the save chunk's data item
# The entity whose UUID was last saved has the aestd.uuid_selected tag
# This UUID can then be used in aestd:entity/anger, aestd:entity/damage, aestd:entity/projectile/set_owner_uuid and aestd:entity/wolf/tame
# Output: storage aestd:data UUID.Least|UUID.Most tags

data modify storage aestd:data UUID.Least set from entity @s UUIDLeast
data modify storage aestd:data UUID.Most set from entity @s UUIDMost
tag @e[tag=aestd.uuid_selected, limit=1] remove aestd.uuid_selected
tag @s add aestd.uuid_selected

# Note: the aestd:player/get_uuid function retrieves the full length string UUID, which is only used by aestd:entity/wolf/tame
