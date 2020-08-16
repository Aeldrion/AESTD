execute if score $in.exponent aestd.math matches 2..30 run scoreboard players operation $out aestd.math *= $in.base aestd.math
scoreboard players remove $in.exponent aestd.math 1
execute if score $in.exponent aestd.math matches 2..29 run function aestd.private:lib1/math/power/loop_v2
