# Written by Aeldrion, Minecraft 1.14
# Makes the sender angry at an entity with a given UUID if it can (see aestd:entity/get_uuid)

execute unless entity @s[nbt={HurtTime:10s}] run tag @s add aestd.damage.summon_cloud
execute if entity @s[tag=aestd.damage.summon_cloud] run kill @e[type=minecraft:area_effect_cloud,tag=aestd.damage.thing_that_makes_mobs_angry,distance=..1,limit=1,sort=nearest]

# Summon cloud and set OwnerUUID
execute at @s[tag=aestd.damage.summon_cloud,type=!#aestd:undead] in minecraft:overworld run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.damage.thing_that_makes_mobs_angry","aestd","aestd.just_spawned"],Duration:10,DurationOnUse:0,WaitTime:0,Particle:"block air",Effects:[{Id:7b,Duration:10,Amplifier:31b,ShowParticles:0b}],Radius:1.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f}
execute at @s[tag=aestd.damage.summon_cloud,type=#aestd:undead] in minecraft:overworld run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.damage.thing_that_makes_mobs_angry","aestd","aestd.just_spawned"],Duration:10,DurationOnUse:0,WaitTime:0,Particle:"block air",Effects:[{Id:6b,Duration:1,Amplifier:31b,ShowParticles:0b}],Radius:1.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f}
execute at @s[tag=aestd.damage.summon_cloud] in minecraft:overworld run data modify entity @e[type=minecraft:area_effect_cloud,tag=aestd.just_spawned,limit=1,sort=nearest] OwnerUUIDLeast set from block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast
execute at @s[tag=aestd.damage.summon_cloud] in minecraft:overworld run data modify entity @e[type=minecraft:area_effect_cloud,tag=aestd.just_spawned,limit=1,sort=nearest] OwnerUUIDMost set from block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDMost

# Teleport in the same dimension
execute at @s[tag=aestd.damage.summon_cloud] run teleport @e[type=minecraft:area_effect_cloud,tag=aestd.just_spawned,limit=1] @s
execute at @s[tag=aestd.damage.summon_cloud] run tag @e[type=minecraft:area_effect_cloud,tag=aestd.just_spawned,limit=1,sort=nearest] remove aestd.just_spawned

tag @s remove aestd.damage.summon_cloud
