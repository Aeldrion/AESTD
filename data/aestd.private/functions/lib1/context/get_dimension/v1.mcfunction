# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players reset #aestd aestd.dimension

execute positioned -30000000 0 7776 if predicate aestd1:in_dimension/the_nether run scoreboard players set #aestd aestd.dimension -1
execute positioned -30000000 0 7776 if predicate aestd1:in_dimension/overworld run scoreboard players set #aestd aestd.dimension 0
execute positioned -30000000 0 7776 if predicate aestd1:in_dimension/the_end run scoreboard players set #aestd aestd.dimension 1

scoreboard players operation @s aestd.dimension = #aestd aestd.dimension
