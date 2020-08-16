# Input: aestd.math scores of #ix, iz
# Output: aestd.math score of #dot_product

# Compute the gradient vector
scoreboard players operation #ix^2+37 aestd.math = #ix aestd.math
scoreboard players operation #ix^2+37 aestd.math *= #ix aestd.math
scoreboard players add #ix^2+37 aestd.math 37
scoreboard players operation #ix^2+37 aestd.math += $in.seed aestd.math

scoreboard players operation #iz^2+11 aestd.math = #iz aestd.math
scoreboard players operation #iz^2+11 aestd.math *= #iz aestd.math
scoreboard players add #iz^2+11 aestd.math 12

scoreboard players operation #(ix^2+37)(iz^2+11)%100 aestd.math = #ix^2+37 aestd.math
scoreboard players operation #(ix^2+37)(iz^2+11)%100 aestd.math *= #iz^2+11 aestd.math
scoreboard players operation #(ix^2+37)(iz^2+11)%100 aestd.math %= $100 aestd.math.const
scoreboard players operation #(*4+30)%100 aestd.math = #(ix^2+37)(iz^2+11)%100 aestd.math
scoreboard players operation #(*4+30)%100 aestd.math *= $4 aestd.math.const
scoreboard players add #(*4+30)%100 aestd.math 30
scoreboard players operation #(*4+30)%100 aestd.math %= $100 aestd.math.const

execute if score #(*4+30)%100 aestd.math matches 0..24 run scoreboard players set #gx aestd.math 1
execute if score #(*4+30)%100 aestd.math matches 0..24 run scoreboard players set #gz aestd.math 0
execute if score #(*4+30)%100 aestd.math matches 25..49 run scoreboard players set #gx aestd.math 0
execute if score #(*4+30)%100 aestd.math matches 25..49 run scoreboard players set #gz aestd.math 1
execute if score #(*4+30)%100 aestd.math matches 50..74 run scoreboard players set #gx aestd.math -1
execute if score #(*4+30)%100 aestd.math matches 50..74 run scoreboard players set #gz aestd.math 0
execute if score #(*4+30)%100 aestd.math matches 75..99 run scoreboard players set #gx aestd.math 0
execute if score #(*4+30)%100 aestd.math matches 75..99 run scoreboard players set #gz aestd.math -1


# Compute the distance vector
scoreboard players operation #ix aestd.math *= $1000 aestd.math.const
scoreboard players operation #iz aestd.math *= $1000 aestd.math.const

scoreboard players operation #dx aestd.math = #x aestd.math
scoreboard players operation #dx aestd.math -= #ix aestd.math
scoreboard players operation #dz aestd.math = #z aestd.math
scoreboard players operation #dz aestd.math -= #iz aestd.math


# Compute the dot product
scoreboard players operation #dx aestd.math *= #gx aestd.math
scoreboard players operation #dz aestd.math *= #gz aestd.math
scoreboard players operation #dot_product aestd.math = #dx aestd.math
scoreboard players operation #dot_product aestd.math += #dz aestd.math
