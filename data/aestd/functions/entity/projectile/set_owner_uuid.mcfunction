# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets the executing entity's owner to an entity with a given UUID (see aestd:entity/get_uuid)
# Input: storage aestd:data UUID.Least|UUID.Most tags

execute unless data entity @s OwnerUUIDLeast run data merge entity @s {OwnerUUIDLeast:0L,OwnerUUIDMost:0L}
data modify entity @s OwnerUUIDLeast set from storage aestd:data UUID.Least
data modify entity @s OwnerUUIDMost set from storage aestd:data UUID.Most
