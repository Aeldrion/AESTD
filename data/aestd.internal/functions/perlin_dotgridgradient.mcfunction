# Written by Aeldrion, Minecraft 1.14.2
# Used internally by aestd:math/perlin_noise
# Input: aestd.math.var scores of #aestd.perlin.dgg.ix, iz
# Output: aestd.math.var score of #aestd.perlin.dgg.dot_product

# Compute the gradient vector
scoreboard players set #aestd.100 aestd.math.var 100
scoreboard players set #aestd.4 aestd.math.var 4

scoreboard players operation #aestd.perlin.dgg.ix^2+37 aestd.math.var = #aestd.perlin.dgg.ix aestd.math.var
scoreboard players operation #aestd.perlin.dgg.ix^2+37 aestd.math.var *= #aestd.perlin.dgg.ix aestd.math.var
scoreboard players add #aestd.perlin.dgg.ix^2+37 aestd.math.var 37
scoreboard players operation #aestd.perlin.dgg.ix^2+37 aestd.math.var += @s aestd.math.seed

scoreboard players operation #aestd.perlin.dgg.iz^2+11 aestd.math.var = #aestd.perlin.dgg.iz aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz^2+11 aestd.math.var *= #aestd.perlin.dgg.iz aestd.math.var
scoreboard players add #aestd.perlin.dgg.iz^2+11 aestd.math.var 12

scoreboard players operation #aestd.perlin.dgg.(ix^2+37)(iz^2+11)%100 aestd.math.var = #aestd.perlin.dgg.ix^2+37 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.(ix^2+37)(iz^2+11)%100 aestd.math.var *= #aestd.perlin.dgg.iz^2+11 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.(ix^2+37)(iz^2+11)%100 aestd.math.var %= #aestd.100 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.(*4+30)%100 aestd.math.var = #aestd.perlin.dgg.(ix^2+37)(iz^2+11)%100 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.(*4+30)%100 aestd.math.var *= #aestd.4 aestd.math.var
scoreboard players add #aestd.perlin.dgg.(*4+30)%100 aestd.math.var 30
scoreboard players operation #aestd.perlin.dgg.(*4+30)%100 aestd.math.var %= #aestd.100 aestd.math.var

execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin.dgg.gx aestd.math.var 1
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin.dgg.gz aestd.math.var 0
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin.dgg.gx aestd.math.var 0
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin.dgg.gz aestd.math.var 1
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin.dgg.gx aestd.math.var -1
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin.dgg.gz aestd.math.var 0
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin.dgg.gx aestd.math.var 0
execute if score #aestd.perlin.dgg.(*4+30)%100 aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin.dgg.gz aestd.math.var -1


# Compute the distance vector
scoreboard players operation #aestd.perlin.dgg.ix aestd.math.var *= #aestd.1000 aestd.math.var
scoreboard players operation #aestd.perlin.dgg.iz aestd.math.var *= #aestd.1000 aestd.math.var

scoreboard players operation #aestd.perlin.dgg.dx aestd.math.var = #aestd.perlin_noise.x aestd.math.var
scoreboard players operation #aestd.perlin.dgg.dx aestd.math.var -= #aestd.perlin.dgg.ix aestd.math.var
scoreboard players operation #aestd.perlin.dgg.dz aestd.math.var = #aestd.perlin_noise.z aestd.math.var
scoreboard players operation #aestd.perlin.dgg.dz aestd.math.var -= #aestd.perlin.dgg.iz aestd.math.var


# Compute the dot product
scoreboard players operation #aestd.perlin.dgg.dx aestd.math.var *= #aestd.perlin.dgg.gx aestd.math.var
scoreboard players operation #aestd.perlin.dgg.dz aestd.math.var *= #aestd.perlin.dgg.gz aestd.math.var
scoreboard players operation #aestd.perlin.dgg.dot_product aestd.math.var = #aestd.perlin.dgg.dx aestd.math.var
scoreboard players operation #aestd.perlin.dgg.dot_product aestd.math.var += #aestd.perlin.dgg.dz aestd.math.var
