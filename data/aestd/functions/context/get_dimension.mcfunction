# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Stores the context dimension into a score
# Output: aestd.dimension

scoreboard players reset #aestd aestd.dimension

execute positioned -30000000 0 8880 if predicate aestd:in_the_nether run scoreboard players set #aestd aestd.dimension -1
execute positioned -30000000 0 8880 if predicate aestd:in_overworld run scoreboard players set #aestd aestd.dimension 0
execute positioned -30000000 0 8880 if predicate aestd:in_the_end run scoreboard players set #aestd aestd.dimension 1

scoreboard players operation @s aestd.dimension = #aestd aestd.dimension

# -1: The Nether
# 0: Overworld
# 1: The End
