scoreboard players operation #save.exponent aestd.math = $in.exponent aestd.math

scoreboard players operation $out aestd.math = $in.base aestd.math
execute if score $in.exponent aestd.math matches 2..30 run function aestd.private:lib1/math/power/loop_v2

scoreboard players operation $in.exponent aestd.math = #save.exponent aestd.math