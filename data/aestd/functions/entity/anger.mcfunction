# Written by Aeldrion, Minecraft 19w05a
# Makes the sender angry at a player with a given UUID if it can (see aestd:player/get_uuid)

execute at @s[type=!#aestd:undead] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.damage.thing_that_makes_mobs_angry","aestd"],Duration:10,DurationOnUse:0,WaitTime:0,Particle:"block air",Effects:[{Id:7b,Duration:10,Amplifier:30b,ShowParticles:0b}],Radius:1.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f}
execute at @s[type=#aestd:undead] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.damage.thing_that_makes_mobs_angry","aestd"],Duration:10,DurationOnUse:0,WaitTime:0,Particle:"block air",Effects:[{Id:6b,Duration:10,Amplifier:30b,ShowParticles:0b}],Radius:1.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f}
execute at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=aestd.damage.thing_that_makes_mobs_angry,limit=1,sort=nearest] OwnerUUIDLeast set from block 1519204 6 0 RecordItem.tag.aestd.PlayerUUIDLeast
execute at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=aestd.damage.thing_that_makes_mobs_angry,limit=1,sort=nearest] OwnerUUIDMost set from block 1519204 6 0 RecordItem.tag.aestd.PlayerUUIDMost
