# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute unless entity @s[nbt={HurtTime:10s}] run tag @s add aestd.damage.summon_cloud
execute if entity @s[tag=aestd.damage.summon_cloud] run kill @e[type=minecraft:area_effect_cloud, tag=aestd.damage.thing_that_makes_mobs_angry, distance=..1, limit=1, sort=nearest]

# Summon cloud in the overworld and set OwnerUUID
execute at @s[tag=aestd.damage.summon_cloud, type=!#aestd.private:undead] in minecraft:overworld run summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd.damage.thing_that_makes_mobs_angry", "aestd","aestd.new"], Duration: 10, DurationOnUse: 0, WaitTime: 0, Particle: "block air", Effects:[{Id: 7b, Duration: 10, Amplifier: 31b, ShowParticles:0b}], Radius: 1.0f, RadiusOnUse: 0.0f, RadiusPerTick: 0.0f}
execute at @s[tag=aestd.damage.summon_cloud, type=#aestd.private:undead] in minecraft:overworld run summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd.damage.thing_that_makes_mobs_angry", "aestd","aestd.new"], Duration: 10, DurationOnUse: 0, WaitTime: 0, Particle: "block air", Effects:[{Id: 6b, Duration: 10, Amplifier: 31b, ShowParticles:0b}], Radius: 1.0f, RadiusOnUse: 0.0f, RadiusPerTick: 0.0f}
execute at @s[tag=aestd.damage.summon_cloud] in minecraft:overworld run data modify entity @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1, sort=nearest] OwnerUUIDLeast set from storage aestd:data UUID.Least
execute at @s[tag=aestd.damage.summon_cloud] in minecraft:overworld run data modify entity @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1, sort=nearest] OwnerUUIDMost set from storage aestd:data UUID.Most

# Teleport in the same dimension at the same position
execute at @s[tag=aestd.damage.summon_cloud] run teleport @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1] @s
execute at @s[tag=aestd.damage.summon_cloud] run tag @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1, sort=nearest] remove aestd.new

tag @s remove aestd.damage.summon_cloud
