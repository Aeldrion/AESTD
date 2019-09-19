# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets up the overworld save chunk

# Place a protective layer of bedrock
fill -30000000 1 8880 -29999985 1 8895 minecraft:bedrock

# Place blocks
execute unless block -30000000 0 8888 minecraft:yellow_shulker_box run setblock -30000000 0 8888 minecraft:yellow_shulker_box
execute unless block -30000000 0 8889 minecraft:oak_wall_sign run setblock -30000000 0 8889 minecraft:oak_wall_sign[facing=south]
fill 1519204 4 0 1519204 5 0 minecraft:air
