# Written by Aeldrion, Minecraft 19w05a

execute as @a[scores={aestd.click_coas=1..}] at @s run function #aestd:click_coas
scoreboard players reset @a aestd.click_coas

kill @e[type=minecraft:item]
