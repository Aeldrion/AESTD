# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Returns an ID corresponding to the structure at context position
# If none is found, sets to 0
# If context position is in the intersection of two different structures, the highest ID is returned

# Call loot table and insert into chest
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score #aestd aestd.structure run loot insert -30000000 0 7777 loot aestd.internal:structure

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.structure = #aestd aestd.structure

# 1: Buried treasure
# 2: Desert pyramid
# 3: End city
# 4: Fortress
# 5: Igloo
# 6: Jungle temple
# 7: Woodland mansion
# 8: Abandoned mineshaft
# 9: Ocean monument
# 10: Ocean ruin
# 11: Pillager outpost
# 12: Shipwreck
# 13: Stronghold
# 14: Swamp hut
# 15: Village