execute if entity @s[gamemode=!adventure, gamemode=!survival] run summon minecraft:arrow ^ ^ ^1 {Tags: ["aestd.new"], pickup: 2b}
execute if entity @s[gamemode=!creative, gamemode=!spectator] run summon minecraft:arrow ^ ^ ^1 {Tags: ["aestd.new"], pickup: 1b}
execute as @e[type=minecraft:arrow, tag=aestd.new, limit=1] positioned as @s positioned ^ ^ ^12 run function aestd1:entity/set_motion_from_position
