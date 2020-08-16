# Calculate x², y², z²
scoreboard players operation #var1 aestd.math = $in.vector.x aestd.math
scoreboard players operation #var2 aestd.math = $in.vector.y aestd.math
scoreboard players operation #var3 aestd.math = $in.vector.z aestd.math
scoreboard players operation #var1 aestd.math *= #var1 aestd.math
scoreboard players operation #var2 aestd.math *= #var2 aestd.math
scoreboard players operation #var3 aestd.math *= #var3 aestd.math

# Sum and square root
scoreboard players operation #save aestd.math.in = $in aestd.math
scoreboard players operation $in aestd.math = #var1 aestd.math
scoreboard players operation $in aestd.math += #var2 aestd.math
scoreboard players operation $in aestd.math += #var3 aestd.math
function aestd1:math/square_root
scoreboard players operation $in aestd.math = #save aestd.math.in