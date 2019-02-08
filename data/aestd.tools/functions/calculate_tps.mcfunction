# Written by Aeldrion, Minecraft 19w05a
# Calculates the TPS on a ten second timespan

worldborder set 30000000
worldborder add -1000000 500
tag @s remove aestd.using_worldborder
execute unless entity @a[tag=aestd.using_worldborder] run schedule function aestd.tools:tps/end 10s
tag @s[tag=!aestd.using_worldborder] add aestd.using_worldborder
