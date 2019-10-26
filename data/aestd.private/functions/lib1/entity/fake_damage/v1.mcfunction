# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

effect give @s minecraft:resistance 1 255 true
effect give @s[type=#aestd.private:undead] minecraft:instant_health 1 1
effect give @s[type=!#aestd.private:undead] minecraft:instant_damage 1 1

# Needs area effect cloud, boss mobs are not affected by the /effect command.
execute at @s[type=#aestd.private:bosses] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 10, DurationOnUse: 0, WaitTime: 0, Particle: "block air", Effects: [{Id: 6b, Duration: 10, ShowParticles: 0b}, {Id:7b, Duration:10, ShowParticles: 0b}], Radius: 2.0f, RadiusOnUse: 0.0f, RadiusPerTick: 0.0f}
