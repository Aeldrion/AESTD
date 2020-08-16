scoreboard players operation #x² aestd.math = $in aestd.math
scoreboard players operation #x² aestd.math *= $in aestd.math
scoreboard players operation #x² aestd.math /= $1000 aestd.math.const

scoreboard players set #3-2x aestd.math 3000
scoreboard players operation #3-2x aestd.math -= $in aestd.math
scoreboard players operation #3-2x aestd.math -= $in aestd.math

scoreboard players operation $out aestd.math = #x² aestd.math
scoreboard players operation $out aestd.math *= #3-2x aestd.math
scoreboard players operation $out aestd.math /= $1000 aestd.math.const

# Clamping
execute if score $in aestd.math matches ..0 run scoreboard players set $out aestd.math 0
execute if score $in aestd.math matches 1000.. run scoreboard players set $out aestd.math 1000