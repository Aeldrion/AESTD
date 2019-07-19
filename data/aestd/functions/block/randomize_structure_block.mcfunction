# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Randomly modifies the mirror/rotation settings of a load structure block
# If the sender has the aestd.block.adjust_structure_pos tag, the structure loading position will be adjusted symmetrically to the structure block (only works if its mirror/rotation settings are set to default when calling the function).
# For instance, if the structure block is in the middle of the bounding box and posX and posZ are set, the structure block would still be in the middle of the bounding box after the operation.
# Input: context, output: mirror/rotation

# Get posX/posZ
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result score #aestd.structure_block aestd.coords.x run data get block ~ ~ ~ posX
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result score #aestd.structure_block aestd.coords.z run data get block ~ ~ ~ posZ
scoreboard players set #-1 aestd.math.var -1

# Modify mirror
scoreboard players set @s aestd.random.max 3
function aestd:math/random
execute if score @s aestd.random matches 0 run data merge block ~ ~ ~ {mirror:"NONE"}
execute if score @s aestd.random matches 1 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT"}
execute if score @s aestd.random matches 2 run data merge block ~ ~ ~ {mirror:"FRONT_BACK"}
execute if score @s aestd.random matches 1 run scoreboard players operation #aestd.structure_block aestd.coords.z *= #-1 aestd.math.var
execute if score @s aestd.random matches 2 run scoreboard players operation #aestd.structure_block aestd.coords.x *= #-1 aestd.math.var

# Modify rotation
scoreboard players set @s aestd.random.max 4
function aestd:math/random
execute if score @s aestd.random matches 0 run data merge block ~ ~ ~ {rotation:"NONE"}
execute if score @s aestd.random matches 1 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute if score @s aestd.random matches 2 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute if score @s aestd.random matches 3 run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
execute if score @s aestd.random matches 1 run scoreboard players operation #aestd.structure_block aestd.coords.x >< #aestd.structure_block aestd.coords.z
execute if score @s aestd.random matches 3 run scoreboard players operation #aestd.structure_block aestd.coords.x >< #aestd.structure_block aestd.coords.z
execute if score @s aestd.random matches 1..2 run scoreboard players operation #aestd.structure_block aestd.coords.x *= #-1 aestd.math.var
execute if score @s aestd.random matches 2..3 run scoreboard players operation #aestd.structure_block aestd.coords.z *= #-1 aestd.math.var

# Set new posX/posZ
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result block ~ ~ ~ posX int 1 run scoreboard players get #aestd.structure_block aestd.coords.x
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result block ~ ~ ~ posZ int 1 run scoreboard players get #aestd.structure_block aestd.coords.z
