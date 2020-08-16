# Determine grid cell coordinates
scoreboard players operation #x aestd.math = $in.x aestd.math
scoreboard players operation #z aestd.math = $in.z aestd.math

scoreboard players operation #floor(x) aestd.math = #x aestd.math
scoreboard players operation #floor(z) aestd.math = #z aestd.math
scoreboard players operation #floor(z) aestd.math /= $1000 aestd.math.const
scoreboard players operation #floor(x) aestd.math /= $1000 aestd.math.const

scoreboard players operation #ceil(x) aestd.math = #floor(x) aestd.math
scoreboard players operation #ceil(z) aestd.math = #floor(z) aestd.math
scoreboard players add #ceil(x) aestd.math 1
scoreboard players add #ceil(z) aestd.math 1


# Determine interpolation weights
scoreboard players operation #sx aestd.math = $in.x aestd.math
scoreboard players operation #sz aestd.math = $in.z aestd.math
scoreboard players operation #sz aestd.math %= $1000 aestd.math.const
scoreboard players operation #sx aestd.math %= $1000 aestd.math.const


# Calculate grid point gradients
scoreboard players operation #ix aestd.math = #floor(x) aestd.math
scoreboard players operation #iz aestd.math = #floor(z) aestd.math
function aestd.private:lib1/math/perlin_noise/dotgridgradient_v2
scoreboard players operation #n(0,0) aestd.math = #dot_product aestd.math

scoreboard players operation #ix aestd.math = #ceil(x) aestd.math
scoreboard players operation #iz aestd.math = #floor(z) aestd.math
function aestd.private:lib1/math/perlin_noise/dotgridgradient_v2
scoreboard players operation #n(1,0) aestd.math = #dot_product aestd.math

scoreboard players operation #ix aestd.math = #floor(x) aestd.math
scoreboard players operation #iz aestd.math = #ceil(z) aestd.math
function aestd.private:lib1/math/perlin_noise/dotgridgradient_v2
scoreboard players operation #n(0,1) aestd.math = #dot_product aestd.math

scoreboard players operation #ix aestd.math = #ceil(x) aestd.math
scoreboard players operation #iz aestd.math = #ceil(z) aestd.math
function aestd.private:lib1/math/perlin_noise/dotgridgradient_v2
scoreboard players operation #n(1,1) aestd.math = #dot_product aestd.math


# Interpolate
scoreboard players operation $in aestd.math = #sx aestd.math
function aestd1:math/smoothstep
scoreboard players operation $in.min aestd.math = #n(0,0) aestd.math
scoreboard players operation $in.max aestd.math = #n(1,0) aestd.math
scoreboard players operation $in.parameter aestd.math = $out aestd.math
function aestd1:math/linear_interpolation
scoreboard players operation #ix0 aestd.math = $out aestd.math

scoreboard players operation $in aestd.math = #sx aestd.math
function aestd1:math/smoothstep
scoreboard players operation $in.min aestd.math = #n(0,1) aestd.math
scoreboard players operation $in.max aestd.math = #n(1,1) aestd.math
scoreboard players operation $in.parameter aestd.math = $out aestd.math
function aestd1:math/linear_interpolation
scoreboard players operation #ix1 aestd.math = $out aestd.math

scoreboard players operation $in aestd.math = #sz aestd.math
function aestd1:math/smoothstep
scoreboard players operation $in.min aestd.math = #ix0 aestd.math
scoreboard players operation $in.max aestd.math = #ix1 aestd.math
scoreboard players operation $in.parameter aestd.math = $out aestd.math
function aestd1:math/linear_interpolation


# [-1000, 1000]  ->  [0, 1000]
scoreboard players add $out aestd.math 1000
scoreboard players operation $out aestd.math /= $2 aestd.math.const


# Reset input values
scoreboard players operation $in aestd.math = #x aestd.math
scoreboard players operation $in aestd.math2 = #x aestd.math
