# Calculate delta and run LCG
scoreboard players operation #save aestd.math = $in aestd.math
scoreboard players operation $in aestd.math = $in.max aestd.math
scoreboard players operation $in aestd.math -= $in.min aestd.math
function aestd1:math/random_lcg

# Restore input and add minimum
scoreboard players operation $in aestd.math = #save aestd.math
scoreboard players operation $out aestd.math += $in.min aestd.math