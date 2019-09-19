# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Tames the executing wolf and sets its owner to a player with a given UUID (see aestd:player/get_uuid)
# Input: storage aestd:data UUID.String tag

execute in minecraft:overworld run data modify entity @s OwnerUUID set from storage aestd:data UUID.String
