# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

data modify storage aestd:data UUID.Least set from entity @s UUIDLeast
data modify storage aestd:data UUID.Most set from entity @s UUIDMost
tag @e[tag=aestd.uuid_selected, limit=1] remove aestd.uuid_selected
tag @s add aestd.uuid_selected
