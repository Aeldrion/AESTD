# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute unless data entity @s OwnerUUIDLeast run data merge entity @s {OwnerUUIDLeast:0L,OwnerUUIDMost:0L}
data modify entity @s OwnerUUIDLeast set from storage aestd:data UUID.Least
data modify entity @s OwnerUUIDMost set from storage aestd:data UUID.Most
