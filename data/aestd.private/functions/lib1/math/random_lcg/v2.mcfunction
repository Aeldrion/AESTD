scoreboard players operation #lcg.x aestd.math *= #lcg.multiplier aestd.math
scoreboard players operation #lcg.x aestd.math += #lcg.increment aestd.math
scoreboard players operation #lcg.x aestd.math %= #lcg.modulus aestd.math

scoreboard players operation $out aestd.math = #lcg.x aestd.math
scoreboard players operation $out aestd.math /= $8 aestd.math.const
scoreboard players operation $out aestd.math %= $in aestd.math