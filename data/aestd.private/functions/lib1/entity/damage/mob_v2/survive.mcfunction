execute store result entity @s Health float 0.01 run scoreboard players get #health aestd
execute store result entity @s[tag=aestd.damage.fire, predicate=!aestd.private:on_fire] Fire short 1 run scoreboard players get $in.damage.fire_duration aestd
execute unless entity @s[tag=aestd.damage.hurt_by_entity] run function aestd1:entity/fake_damage
execute if entity @s[tag=aestd.damage.hurt_by_entity] run function aestd1:entity/anger