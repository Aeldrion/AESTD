# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# If the block at context position is a player head, sets the head to a player's (see function aestd:player/get_name)
# Input: save chunk (1519204 6 0 RecordItem.tag.aestd.PlayerName)

data modify block ~ ~ ~ Owner.Name set from block 1519204 6 0 RecordItem.tag.aestd.PlayerName
