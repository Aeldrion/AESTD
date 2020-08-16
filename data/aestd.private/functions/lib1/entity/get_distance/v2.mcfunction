function aestd1:context/get_position_scale50
scoreboard players operation $in.vector.x aestd = $position.x aestd
scoreboard players operation $in.vector.y aestd = $position.y aestd
scoreboard players operation $in.vector.z aestd = $position.z aestd

function aestd1:entity/get_position_scale50
scoreboard players operation $in.vector.x aestd -= $position.x aestd
scoreboard players operation $in.vector.y aestd -= $position.y aestd
scoreboard players operation $in.vector.z aestd -= $position.z aestd

scoreboard players operation #save.out aestd.math = $out aestd.math
function aestd1:math/get_vector_magnitude
scoreboard players operation $out.distance aestd
execute if entity @s[distance=926..] run scoreboard players set @s aestd.math.out 46300
