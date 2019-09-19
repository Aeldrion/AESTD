# Author: Aeldrion
# Version: 19w38a
# Project: AESTD

# If the block at context position is a player head, sets the head to a player's (see function aestd:player/get_name)
# Input: storage aestd:data PlayerName tag

data modify block ~ ~ ~ Owner.Name set from storage aestd:data PlayerName
