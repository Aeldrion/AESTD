# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Uses a modified Perlin noise algorithm to generate values between -1000 and 1000
# Interpolates between thousands (actual Perlin noise interpolates between integers but the scoreboard cannot compute decimals)
# Input: aestd.math.in|aestd.math.in2|(aestd.seed), output: aestd.math.out


# Determine grid cell coordinates
scoreboard players operation #aestd.perlin_noise.x aestd.math.var = @s aestd.math.in
scoreboard players operation #aestd.perlin_noise.z aestd.math.var = @s aestd.math.in2

scoreboard players set $1000 aestd.math.var 1000
scoreboard players operation #aestd.perlin_noise.floor(x) aestd.math.var = #aestd.perlin_noise.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.floor(x) aestd.math.var /= $1000 aestd.math.var
scoreboard players operation #aestd.perlin_noise.floor(z) aestd.math.var = #aestd.perlin_noise.z aestd.math.var
scoreboard players operation #aestd.perlin_noise.floor(z) aestd.math.var /= $1000 aestd.math.var

scoreboard players operation #aestd.perlin_noise.ceil(x) aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
scoreboard players add #aestd.perlin_noise.ceil(x) aestd.math.var 1
scoreboard players operation #aestd.perlin_noise.ceil(z) aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
scoreboard players add #aestd.perlin_noise.ceil(z) aestd.math.var 1


# Determine interpolation weights
scoreboard players operation #aestd.perlin_noise.sx aestd.math.var = @s aestd.math.in
scoreboard players operation #aestd.perlin_noise.sx aestd.math.var %= $1000 aestd.math.var
scoreboard players operation #aestd.perlin_noise.sz aestd.math.var = @s aestd.math.in2
scoreboard players operation #aestd.perlin_noise.sz aestd.math.var %= $1000 aestd.math.var


# Calculate grid point gradients
scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(0,0) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var

scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.ceil(x) aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(1,0) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var

scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.ceil(z) aestd.math.var
function aestd.internal:perlin_dotgridgradient
scoreboard players operation #aestd.perlin_noise.n(0,1) aestd.math.var = #aestd.perlin.dgg.dot_product aestd.math.var

scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var = #aestd.perlin_noise.ceil(x) aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var = #aestd.perlin_noise.ceil(z) aestd.math.var
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


# [0, 1000]
scoreboard players set $2 aestd.math.var 2
scoreboard players add @s aestd.math.out 1000
scoreboard players operation @s aestd.math.out /= $2 aestd.math.var

scoreboard players operation @s aestd.math.in = #aestd.perlin_noise.x aestd.math.var
scoreboard players operation @s aestd.math.in2 = #aestd.perlin_noise.x aestd.math.var