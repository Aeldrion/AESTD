execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=aestd.player.setting_position] aestd.pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=aestd.player.setting_position] aestd.pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=aestd.player.setting_position] aestd.pos.z
teleport @p[tag=aestd.player.setting_position] @s
kill @s
