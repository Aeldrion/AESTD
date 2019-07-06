# Written by Aeldrion, Minecraft 1.14.2
# Input: aestd.coords.x|aestd.coords.z|(aestd.seed), output: aestd.math.out


scoreboard players set #aestd.1000 aestd.math.var 1000
scoreboard players set #aestd.4 aestd.math.var 4

# Determine grid cell coordinates
scoreboard players operation #aestd.perlin_noise.x aestd.math.var = @s aestd.coords.x
scoreboard players operation #aestd.perlin_noise.z aestd.math.var = @s aestd.coords.z

scoreboard players operation #aestd.perlin_noise.floor(x) aestd.math.var = #aestd.perlin_noise.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.floor(x) aestd.math.var /= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin_noise.floor(z) aestd.math.var = #aestd.perlin_noise.z aestd.math.var
scoreboard players operation #aestd.perlin_noise.floor(z) aestd.math.var /= #aestd.1000 aestd.math.var

scoreboard players operation #aestd.perlin_noise.ceil(x) aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
scoreboard players add #aestd.perlin_noise.ceil(x) aestd.math.var 1
scoreboard players operation #aestd.perlin_noise.ceil(z) aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
scoreboard players add #aestd.perlin_noise.ceil(z) aestd.math.var 1

# Determine interpolation weights
scoreboard players operation #aestd.perlin_noise.sx aestd.math.var = @s aestd.coords.x
scoreboard players operation #aestd.perlin_noise.sx aestd.math.var %= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin_noise.sz aestd.math.var = @s aestd.coords.z
scoreboard players operation #aestd.perlin_noise.sz aestd.math.var %= #aestd.1000 aestd.math.var


# Calculate grid point gradients
scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var *= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var *= #aestd.1000 aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(0,0) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var

scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.ceil(x) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var *= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var *= #aestd.1000 aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(1,0) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var

scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var *= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.ceil(z) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var *= #aestd.1000 aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(0,1) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var

scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.ceil(x) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var *= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.ceil(z) aestd.math.var
#scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var *= #aestd.1000 aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(1,1) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var


# Interpolate
scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.sx aestd.math.var
function aestd:math/smoothstep
scoreboard players operation @s aestd.math.var = @s aestd.math.out
scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.n(0,0) aestd.math.var
scoreboard players operation @s aestd.math.in2 = #aestd.perlin_noise.n(1,0) aestd.math.var
function aestd:math/linear_interpolation
scoreboard players operation #aestd.perlin_noise.ix0 aestd.math.var = @s aestd.math.out

scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.sx aestd.math.var
function aestd:math/smoothstep
scoreboard players operation @s aestd.math.var = @s aestd.math.out
scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.n(0,1) aestd.math.var
scoreboard players operation @s aestd.math.in2 = #aestd.perlin_noise.n(1,1) aestd.math.var
function aestd:math/linear_interpolation
scoreboard players operation #aestd.perlin_noise.ix1 aestd.math.var = @s aestd.math.out

scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.sz aestd.math.var
function aestd:math/smoothstep
scoreboard players operation @s aestd.math.var = @s aestd.math.out
scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.ix0 aestd.math.var
scoreboard players operation @s aestd.math.in2 = #aestd.perlin_noise.ix1 aestd.math.var
function aestd:math/linear_interpolation
