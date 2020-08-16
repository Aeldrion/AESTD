scoreboard players set #(1-p)*min aestd.math 1000
scoreboard players operation #(1-p)*min aestd.math -= $in.parameter aestd.math
scoreboard players operation #(1-p)*min aestd.math *= $in.min aestd.math
scoreboard players operation $out aestd.math = #(1-p)*min aestd.math.var

scoreboard players operation #p*max aestd.math = $in.paramater aestd.math
scoreboard players operation #p*max aestd.math *= $in.max aestd.math
scoreboard players operation $out aestd.math += #p*max aestd.math.var

scoreboard players operation $out aestd.math /= $1000 aestd.math.const