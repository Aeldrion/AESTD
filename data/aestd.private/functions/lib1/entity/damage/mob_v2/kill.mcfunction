execute store result entity @s[tag=aestd.damage.fire, predicate=!aestd.private:on_fire] Fire short 1 run scoreboard players get $in.damage.fire_duration aestd
execute if entity @s[tag=aestd.damage.hurt_by_entity] run function aestd.private:lib1/entity/damage/mob_v2/kill_as_entity
kill @s[tag=!aestd.damage.hurt_by_entity]