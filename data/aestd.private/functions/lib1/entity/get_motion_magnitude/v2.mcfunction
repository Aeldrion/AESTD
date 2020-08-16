scoreboard players operation #save.vector.x aestd = $in.vector.x aestd.math
scoreboard players operation #save.vector.y aestd = $in.vector.y aestd.math
scoreboard players operation #save.vector.z aestd = $in.vector.z aestd.math

data modify storage aestd:data Motion set from entity @s Motion
execute store result score $in.vector.x aestd.math run data get storage aestd:data Motion[0] 1000
execute store result score $in.vector.y aestd.math run data get storage aestd:data Motion[1] 1000
execute store result score $in.vector.z aestd.math run data get storage aestd:data Motion[2] 1000
function aestd1:math/get_vector_magnitude

scoreboard players operation $in.vector.x aestd.math = #save.vector.x aestd
scoreboard players operation $in.vector.y aestd.math = #save.vector.y aestd
scoreboard players operation $in.vector.z aestd.math = #save.vector.z aestd