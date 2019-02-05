# Written by Aeldrion, Minecraft 19w05a
# Randomly changes the settings of a load structure block
# Input: context, output: mirror/rotation

scoreboard players set @s aestd.random.max 3
function aestd:math/random
execute if score @s aestd.random matches 0 run data merge block ~ ~ ~ {mirror:"NONE"}
execute if score @s aestd.random matches 1 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT"}
execute if score @s aestd.random matches 2 run data merge block ~ ~ ~ {mirror:"FRONT_BACK"}

scoreboard players set @s aestd.random.max 4
function aestd:math/random
execute if score @s aestd.random matches 0 run data merge block ~ ~ ~ {rotation:"NONE"}
execute if score @s aestd.random matches 1 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute if score @s aestd.random matches 2 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute if score @s aestd.random matches 3 run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
