# Author: Aeldrion
# Version: 1.16
# Project: AESTD

data modify storage aestd:data UUID set from entity @s UUID
tag @e[tag=aestd.uuid_selected, limit=1] remove aestd.uuid_selected
tag @s add aestd.uuid_selected
