execute store result score #health aestd run data get entity @s Health 100
scoreboard players operation #health aestd -= $in.damage aestd

execute if score #health aestd matches ..0 run function aestd.private:lib1/entity/damage/mob_v2/kill
execute if score #health aestd matches 1.. run function aestd.private:lib1/enitty/damage/mob_v2/survive