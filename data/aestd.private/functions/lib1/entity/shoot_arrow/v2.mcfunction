execute if entity @s[type=minecraft:player] anchored eyes run function aestd.private:lib1/entity/shoot_arrow/as_player_v2
execute if entity @s[type=!minecraft:player] anchored eyes run function aestd.private:lib1/entity/shoot_arrow/as_mob_v2
data modify entity @e[type=minecraft:arrow, tag=aestd.new, limit=1] Owner set from entity @s UUID
tag @e[type=minecraft:arrow, tag=aestd.new, limit=1] remove aestd.new
playsound minecraft:entity.arrow.shoot master @a