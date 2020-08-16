# Get current health
execute store result score #health aestd run data get entity @s Health 100
execute store result score #absorption aestd run data get entity @s AbsorptionAmount 100
scoreboard players operation #health aestd += #absorption aestd
scoreboard players operation #health aestd -= $in.damage aestd

# Kill the player only if damage exceeds current health
execute if score #health aestd matches ..0 run function aestd.private:lib1/entity/damage/player_v2/kill
execute if score #health aestd matches 1.. run function aestd.private:lib1/enitty/damage/player_v2/survive