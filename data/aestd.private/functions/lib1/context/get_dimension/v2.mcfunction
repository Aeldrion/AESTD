scoreboard players reset $dimension aestd

execute if predicate aestd1:in_dimension/the_nether run scoreboard players set $dimension aestd -1
execute if predicate aestd1:in_dimension/overworld run scoreboard players set $dimension aestd 0
execute if predicate aestd1:in_dimension/the_end run scoreboard players set $dimension aestd 1