# Untag 'last shot' trident
tag @e[type=minecraft:trident, tag=aestd.trident.last_shot, limit=1] remove aestd.trident.last_shot

# Summon trident
execute if entity @s[type=minecraft:player, gamemode=!adventure, gamemode=!survival] run summon minecraft:trident ^ ^ ^1 {Tags: ["aestd.trident.last_shot"], pickup: 2b}
execute if entity @s[type=minecraft:player, gamemode=!creative, gamemode=!spectator] run summon minecraft:trident ^ ^ ^1 {Tags: ["aestd.trident.last_shot"], pickup: 1b}
execute unless entity @s[type=minecraft:player] run summon minecraft:trident ^ ^ ^1 {Tags: ["aestd.trident.last_shot"], pickup: 0b}
playsound minecraft:entity.drowned.shoot voice @s ~ ~ ~ 1 0.5
