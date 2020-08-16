# Save scores
scoreboard players operation #save.in.x aestd = $in.vector.x aestd.math
scoreboard players operation #save.in.y aestd = $in.vector.y aestd.math
scoreboard players operation #save.in.z aestd = $in.vector.z aestd.math
scoreboard players operation #save.out.x aestd = $out.vector.x aestd.math
scoreboard players operation #save.out.y aestd = $out.vector.y aestd.math
scoreboard players operation #save.out.z aestd = $out.vector.z aestd.math

# Motion -> vector
data modify storage aestd:data Motion set from entity @s Motion
execute store result score $in.vector.x aestd.math run data get storage aestd:data Motion[0] 1000
execute store result score $in.vector.y aestd.math run data get storage aestd:data Motion[1] 1000
execute store result score $in.vector.z aestd.math run data get storage aestd:data Motion[2] 1000
function aestd1:math/set_vector_magnitude

# Vector -> motion
execute store result data aestd:data Motion[0] double 0.001 run scoreboard players get $out.vector.x aestd.math
execute store result data aestd:data Motion[1] double 0.001 run scoreboard players get $out.vector.y aestd.math
execute store result data aestd:data Motion[2] double 0.001 run scoreboard players get $out.vector.z aestd.math
data modify entity @s Motion set from storage aestd:data Motion

# Restore previous scores
scoreboard players operation $in.vector.x aestd.math = #save.in.x aestd
scoreboard players operation $in.vector.y aestd.math = #save.in.y aestd
scoreboard players operation $in.vector.z aestd.math = #save.in.z aestd
scoreboard players operation $out.vector.x aestd.math = #save.out.x aestd
scoreboard players operation $out.vector.y aestd.math = #save.out.y aestd
scoreboard players operation $out.vector.z aestd.math = #save.out.z aestd