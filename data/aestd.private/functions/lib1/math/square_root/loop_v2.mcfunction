# x(n+1) = 1/2(xn+s/xn)
scoreboard players operation #1/2(xn+s/xn) aestd.math = $in aestd.math
scoreboard players operation #1/2(xn+s/xn) aestd.math /= #xn aestd.math
scoreboard players operation #1/2(xn+s/xn) aestd.math += #xn aestd.math
scoreboard players operation #1/2(xn+s/xn) aestd.math /= $2 aestd.math.const

scoreboard players operation #xn aestd.math = #1/2(xn+s/xn) aestd.math
scoreboard players remove #n aestd.math 1

# Repeat until n=0
execute if score #n aestd.math matches 1.. run function aestd.private:lib1/math/square_root/loop_v2