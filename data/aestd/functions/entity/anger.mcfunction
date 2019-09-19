# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Makes the executing entity angry at an entity with a given UUID if it can (see aestd:entity/get_uuid)
# Also includes the effects of aestd:entity/fake_damage, for technical reasons
# If the executing entity is neutral or hostile, it will become angry at the target entity.
# If the entity whose UUID was last saved in the save chunk is a player, the entity's death will count as a player kill and experience orbs will drop.
# Does not work for players (obviously).

execute unless entity @s[nbt={HurtTime:10s}] run tag @s add aestd.damage.summon_cloud
execute if entity @s[tag=aestd.damage.summon_cloud] run kill @e[type=minecraft:area_effect_cloud, tag=aestd.damage.thing_that_makes_mobs_angry, distance=..1, limit=1, sort=nearest]

# Summon cloud in the overworld and set OwnerUUID
execute at @s[tag=aestd.damage.summon_cloud, type=!#aestd:undead] in minecraft:overworld run summon minecraft:area_effect_cloud -30000000 0 8880 {Tags: ["aestd.damage.thing_that_makes_mobs_angry", "aestd","aestd.new"], Duration: 10, DurationOnUse: 0, WaitTime: 0, Particle: "block air", Effects:[{Id: 7b, Duration: 10, Amplifier: 31b, ShowParticles:0b}], Radius: 1.0f, RadiusOnUse: 0.0f, RadiusPerTick: 0.0f}
execute at @s[tag=aestd.damage.summon_cloud, type=#aestd:undead] in minecraft:overworld run summon minecraft:area_effect_cloud -30000000 0 8880 {Tags: ["aestd.damage.thing_that_makes_mobs_angry", "aestd","aestd.new"], Duration: 10, DurationOnUse: 0, WaitTime: 0, Particle: "block air", Effects:[{Id: 6b, Duration: 10, Amplifier: 31b, ShowParticles:0b}], Radius: 1.0f, RadiusOnUse: 0.0f, RadiusPerTick: 0.0f}
execute at @s[tag=aestd.damage.summon_cloud] in minecraft:overworld run data modify entity @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1, sort=nearest] OwnerUUIDLeast set from storage aestd:data UUID.Least
execute at @s[tag=aestd.damage.summon_cloud] in minecraft:overworld run data modify entity @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1, sort=nearest] OwnerUUIDMost set from storage aestd:data UUID.Most

# Teleport in the same dimension at the same position
execute at @s[tag=aestd.damage.summon_cloud] run teleport @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1] @s
execute at @s[tag=aestd.damage.summon_cloud] run tag @e[type=minecraft:area_effect_cloud, tag=aestd.new, limit=1, sort=nearest] remove aestd.new

tag @s remove aestd.damage.summon_cloud
