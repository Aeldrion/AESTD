# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Sets up the overworld save chunk

# Place a protective layer of bedrock
fill -30000000 1 7776 -29999985 1 7791 minecraft:bedrock

# Place blocks
execute unless block -30000000 0 7777 minecraft:yellow_shulker_box run setblock -30000000 0 7777 minecraft:yellow_shulker_box
execute unless block -30000000 0 7778 minecraft:oak_wall_sign run setblock -30000000 0 7778 minecraft:oak_wall_sign[facing=south]
