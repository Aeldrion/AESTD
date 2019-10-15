# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

execute as @a[scores={aestd.click_coas=1..}] at @s run function #aestd1:click_coas
scoreboard players reset @a aestd.click_coas
