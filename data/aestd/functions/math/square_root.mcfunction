# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Calculates the square root of a given number
# If input is strictly negative, resets output
# Input: aestd.math.in, output: aestd.math.out

# Initialising
execute if entity @s[tag=!aestd.square_root.computing] run scoreboard players set #aestd.square_root.xn aestd.math.var 1000
execute if entity @s[tag=!aestd.square_root.computing] run scoreboard players set #aestd.square_root.n aestd.math.var 0
execute if entity @s[tag=!aestd.square_root.computing,scores={aestd.math.in=..-1}] run scoreboard players set #aestd.square_root.n aestd.math.var 10
tag @s add aestd.square_root.computing

# x(n+1) = 1/2(xn+s/xn)
scoreboard players operation #aestd.square_root.s/xn aestd.math.var = @s aestd.math.in
scoreboard players operation #aestd.square_root.s/xn aestd.math.var /= #aestd.square_root.xn aestd.math.var

scoreboard players operation #aestd.square_root.xn+s/xn aestd.math.var = #aestd.square_root.s/xn aestd.math.var
scoreboard players operation #aestd.square_root.xn+s/xn aestd.math.var += #aestd.square_root.xn aestd.math.var

scoreboard players operation #aestd.square_root.1/2(xn+s/xn) aestd.math.var = #aestd.square_root.xn+s/xn aestd.math.var
scoreboard players set #aestd.2 aestd.math.var 2
scoreboard players operation #aestd.square_root.1/2(xn+s/xn) aestd.math.var /= #aestd.2 aestd.math.var

scoreboard players operation #aestd.square_root.xn aestd.math.var = #aestd.square_root.1/2(xn+s/xn) aestd.math.var
scoreboard players add #aestd.square_root.n aestd.math.var 1

# Repeat until n=10
execute if score #aestd.square_root.n aestd.math.var matches ..9 run function aestd:math/square_root
execute if score #aestd.square_root.n aestd.math.var matches 10.. run scoreboard players operation @s aestd.math.out = #aestd.square_root.xn aestd.math.var
execute if score #aestd.square_root.n aestd.math.var matches 10.. run tag @s remove aestd.square_root.computing
execute if score #aestd.square_root.n aestd.math.var matches 10.. run scoreboard players reset #aestd.square_root.n aestd.math.var

execute if score @s aestd.math.in matches ..-1 run scoreboard players reset @s aestd.math.out
