scoreboard players operation $out.vector.x aestd.math = $in.vector.x aestd.math
scoreboard players operation $out.vector.y aestd.math = $in.vector.y aestd.math
scoreboard players operation $out.vector.z aestd.math = $in.vector.z aestd.math

scoreboard players operation $out.vector.x aestd.math *= $in aestd.math
scoreboard players operation $out.vector.y aestd.math *= $in aestd.math
scoreboard players operation $out.vector.z aestd.math *= $in aestd.math

function aestd1:math/get_vector_magnitude

scoreboard players operation $out.vector.x aestd.math /= $out aestd.math
scoreboard players operation $out.vector.y aestd.math /= $out aestd.math
scoreboard players operation $out.vector.z aestd.math /= $out aestd.math
