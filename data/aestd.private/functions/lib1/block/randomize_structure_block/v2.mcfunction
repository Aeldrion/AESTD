scoreboard players operation #save.in aestd.math = $in aestd.math
scoreboard players operation #save.out aestd.math = $out aestd.math

# Get posX/posZ and copy scores that get modified
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result score #x aestd run data get block ~ ~ ~ posX
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result score #z aestd run data get block ~ ~ ~ posZ
scoreboard players operation #save.in aestd.math = $in aestd.math
scoreboard players operation #save.out aestd.math = $out aestd.math

# Modify mirror
scoreboard players set $in aestd.math 3
function aestd1:math/random_lcg
execute if score $out aestd.math matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
execute if score $out aestd.math matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"
execute if score $out aestd.math matches 2 run data modify block ~ ~ ~ mirror set value "FRONT_BACK"
execute if score $out aestd.math matches 1 run scoreboard players operation #x aestd *= $-1 aestd.math.const
execute if score $out aestd.math matches 2 run scoreboard players operation #z aestd *= $-1 aestd.math.const

# Modify rotation
scoreboard players set $in aestd.math 4
function aestd1:math/random_lcg
execute if score $out aestd.math matches 0 run data modify block ~ ~ ~ rotation set value "NONE"
execute if score $out aestd.math matches 1 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
execute if score $out aestd.math matches 2 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
execute if score $out aestd.math matches 3 run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"
execute if score $out aestd.math matches 1 run scoreboard players operation #x aestd >< #z aestd
execute if score $out aestd.math matches 3 run scoreboard players operation #x aestd >< #z aestd
execute if score $out aestd.math matches 1..2 run scoreboard players operation #x aestd *= $-1 aestd.math.const
execute if score $out aestd.math matches 2..3 run scoreboard players operation #z aestd *= $-1 aestd.math.const

# Set new posX/posZ and restore scores
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result block ~ ~ ~ posX int 1 run scoreboard players get #x aestd
execute if entity @s[tag=aestd.block.adjust_structure_pos] store result block ~ ~ ~ posZ int 1 run scoreboard players get #z aestd

scoreboard players operation $out aestd.math = #save.out aestd.math
scoreboard players operation $in aestd.math = #save.in aestd.math